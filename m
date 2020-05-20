Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 359571DB2BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5kNowsbgZ9NlBdkWPG0MKxnPhDqFwMTbhzsA5n8IUr8=; b=ct8f9DMxCa8wTc
	+ErFdrNzxWpATOp8VaEKOEn7pDNj3fFCsC6w63UcQnik+CGlc2tmigEtiAEIDBmdT+O9J3qXeqdhN
	PUYCPUbwyHz13zJv3RKkHMcUqZHgSw1OIV3QwI2bKGEdEbchxE7jGr/dQodI0k6wSTfttOxxUaV3l
	kmjol2VuvT+RsmcLYy2zDsbRIi3niLgR2Q1pE8k9g0pLLJOU9Pc4z2yykYfdlOg8OYUzNRoa6aa3D
	y7JGXHHQAD6TtPY05pw0f8BSRXCDrQk0OTOkJZp3kNxlZ39fTcI3c5Bp37mGSymr9CRf6Gtv1v9it
	v6hC5lCn91dDDv6Mul8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNWK-0006jS-D2; Wed, 20 May 2020 12:08:24 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNWA-0006iW-9k
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:08:15 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04KC89T5192735;
 Wed, 20 May 2020 12:08:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=pZAPjeoI2xoUqEyaRPjaQ4Ox+SaH6agdK7O7UIhiaI0=;
 b=PmDTRhJ9cWXHzK89OejwhJak/4sjFjjNPeEbxdHQaF7r06QC6pr9WRgN0ilMhw5cJKl2
 wC60n+oE6j4fVtTd4B28Mza+bHvft/nChjJDxJRiXLSaoFmKhAsA7QEEnsgr/5aWvWZE
 ym/RolFsfFkhLrXA4air15JpCoYAxt5xOmMOX1rhoRIBnT57+sKwDOr1fj4vSx8oiDp2
 QyadLQ5QskZLhjnYe2IQMM44OaM8XOZE4QLJG/ae295IHSdjuZBBPS+XZcGTAX2m1XbO
 taErhF5wx5UIDfN6sc5SCuCDDmTRKcL6wFe9XAp+TTXZwUSIileeZzhXn3BlIPjvDx1i aA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 31501r980m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 12:08:11 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04KC3AJ6104590;
 Wed, 20 May 2020 12:08:11 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 31502063tv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 May 2020 12:08:11 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04KC8AEi017587;
 Wed, 20 May 2020 12:08:10 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 20 May 2020 05:08:09 -0700
Date: Wed, 20 May 2020 15:08:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] bus: arm-integrator-lm: Fix an IS_ERR() vs NULL check
Message-ID: <20200520120804.GI172354@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 mlxlogscore=999
 adultscore=0 bulkscore=0 suspectscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005200105
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 spamscore=0
 mlxlogscore=999 clxscore=1015 priorityscore=1501 cotscore=-2147483648
 impostorscore=0 bulkscore=0 adultscore=0 malwarescore=0 phishscore=0
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005200106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_050814_478558_E0A6F428 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The of_find_matching_node() function returns NULL on error, it never
returns error pointers.  This doesn't really impact runtime very much
because if "syscon" is NULL then syscon_node_to_regmap() will return
-EINVAL.  The only runtime difference is that now it returns -ENODEV.

Fixes: ccea5e8a5918 ("bus: Add driver for Integrator/AP logic modules")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
The first patch which added this file doesn't give a good hint what the
subsystem prefix should be so I just guessed "bus: arm-integrator-lm:".

 drivers/bus/arm-integrator-lm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/bus/arm-integrator-lm.c b/drivers/bus/arm-integrator-lm.c
index 669ea7e1f92e..845b6c43fef8 100644
--- a/drivers/bus/arm-integrator-lm.c
+++ b/drivers/bus/arm-integrator-lm.c
@@ -78,10 +78,10 @@ static int integrator_ap_lm_probe(struct platform_device *pdev)
 
 	/* Look up the system controller */
 	syscon = of_find_matching_node(NULL, integrator_ap_syscon_match);
-	if (IS_ERR(syscon)) {
+	if (!syscon) {
 		dev_err(dev,
 			"could not find Integrator/AP system controller\n");
-		return PTR_ERR(syscon);
+		return -ENODEV;
 	}
 	map = syscon_node_to_regmap(syscon);
 	if (IS_ERR(map)) {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
