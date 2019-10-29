Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F066CE8F4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 19:28:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5POB5bsxZvEHXJUPUId73tefd134xfVc78fKoLoMCOc=; b=Dmi/5Jb0Fo52N7
	wwpmrafGx928tLtYkaXUpTPuMQxDANTqAQpXpun2po6zjxBqag8jAj8Y51Op6KzTUV3dsYZUw1S+9
	D/YeI9iAhJC1HIiWLqO6XxFHB27Nk/b7TnBlE8H/X3Jgez20RCp4fizD6lyKoXXHV+kzp3QBAfu/R
	FaFSTkceI1mHBB7L2XB0cLoUHs7RaEJ7fxQTk7jBUJFUFlWa5QphsrVpj1L0c2wOpkZXEI6zvTKhl
	FQqgJtEL8YCZZwguLbTd/Tb6HoNPu9dRPmebxlD62HpbRTikInzD6Fr3PQYlzVuH91mfrJNLy9dHt
	Sxo6+RELCwB1cD/NEYcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPWDt-00076u-L3; Tue, 29 Oct 2019 18:28:05 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPWDi-00076H-Ej
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 18:27:55 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9TIOKxm171399;
 Tue, 29 Oct 2019 18:27:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=3AATR/URPY9uyZaZu/wUmJ2Mmcno1iZta5grAKv46Tg=;
 b=CAURuji1EtN3K6OGy/DGSnsNq4Qj9vpPCto45l5eIF6ATqG1GT6ryOu3pgZmH7zXKCSo
 XJh0NAUoOkB7TYTQHqIfWZsQi6E/LdjOwnWgHPpYYTPdgpN+PcK+GoY4Fi0V/5nKMC0m
 iuhLFcnZfdWtMQ8a1MEjLRCc5vlWyhgxOmMrjjiVwbXeuRYXwDOTNvdHxJDuVtYyDJWY
 xfQ7yt8cBntk0Uj0coyhf2vex2ThVTN+/UlLaemfy+Qh134rQ/d9lWC9l4LZwmb4H44T
 6qT3pgVePGxMzci203Cy1u9N089JXkkZzO86jT7R7U+PHRT3wM13EIH4NE5W8bPE7nqk NQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2vve3qb3je-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2019 18:27:51 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9TI8SEf052470;
 Tue, 29 Oct 2019 18:27:50 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2vxj8gqhyy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2019 18:27:50 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9TIRmHE013828;
 Tue, 29 Oct 2019 18:27:48 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 29 Oct 2019 11:27:47 -0700
Date: Tue, 29 Oct 2019 21:27:42 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kukjin Kim <kgene@kernel.org>
Subject: [PATCH] soc: samsung: exynos-asv: Potential NULL dereference in
 exynos_asv_update_opps()
Message-ID: <20191029182742.GC17569@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910290160
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910290161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_112754_585368_D69DB233 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-samsung-soc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The dev_pm_opp_get_opp_table() returns error pointers if it's disabled
in the config and it returns NULL if there is an error.  This code only
checks for error pointers so it could lead to an Oops inside the
dev_pm_opp_put_opp_table() function.

Fixes: 5ea428595cc5 ("soc: samsung: Add Exynos Adaptive Supply Voltage driver")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
When we add a new driver, could we specify the which prefix will be used
going forward?  In other words commit 5ea428595cc5 could have the
prefix "soc: samsung: exynos-asv: Add Exynos Adaptive Supply Voltage
driver".  The "exynos-asv" bit was missing so the first person to send a
fix has to guess what is desired.

 drivers/soc/samsung/exynos-asv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/samsung/exynos-asv.c b/drivers/soc/samsung/exynos-asv.c
index 8abf4dfaa5c5..30bb7b7cc769 100644
--- a/drivers/soc/samsung/exynos-asv.c
+++ b/drivers/soc/samsung/exynos-asv.c
@@ -93,7 +93,7 @@ static int exynos_asv_update_opps(struct exynos_asv *asv)
 			continue;
 
 		opp_table = dev_pm_opp_get_opp_table(cpu);
-		if (IS_ERR(opp_table))
+		if (IS_ERR_OR_NULL(opp_table))
 			continue;
 
 		if (!last_opp_table || opp_table != last_opp_table) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
