Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707F497300
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uGqMoZ0NCgDfx3LkTgwjv6RP/oseSuIAYxl/TUKg9qQ=; b=VZoxRFuakeLPBQ
	U++fQQ9ObhzrreQE0cDwlGAlxRndY+Wpb00Ju7oHoF0LgEEIdEILoREdqjNxx4Uy6wQWLeUErXZR2
	G9OCOwgrfJ1835BvkIZdpONlUiUcCvcHe/VZviT7Y3YwN4mk/ldtOdG2OhgPoxaY5xJnUWUs0R1wX
	GxksnnbdRL7og8Pe2A4PYgAGUX93M434CeIkQs02yfAO1kECYDfIHYPEV59KdnHNq+NJ3Y4NkCNQH
	uDOolbyfTA2bb5Z4uZMRtCL1kQmOQJ5CtAoJm8/1hYuordntx2qbsbR326xnp+Lb+T2+/FQCmXPuQ
	fLbkciuMNJfArd8P+NEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Khv-0003Eb-Tu; Wed, 21 Aug 2019 07:06:59 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0KhS-0003Dk-Cj
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:06:34 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7L748MM065586;
 Wed, 21 Aug 2019 07:06:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=eIL56nE/v5J5wgXacoh7ataFYepKi+JaBEV1KC2ZerA=;
 b=CoombSlkWRADBJyfkyxQBnjIcic1m+R7g146uZbOzI5Q2NCK2rJzbjHQNv0ecVzlZw5z
 3khmhUaX4o6ZEbwcYeA1/feSavEBpI/0kn0Vu+sHmhK018+cY832m7IWFK6YhxkjTMF5
 aWnxcrh6mEFD0c+RJE50t6x+8FP4P7nIgY08ZwUyxIE/nLCQX8+16Vr5wPJ7zM2sr9Vk
 Ubz0U0VWcp64OI9alL7ADWBOrTzaQNvOxkKwraUWooIdLhcy8t7EdW4rmJQEkyXL0aO0
 4ibBxr+d9fJypHqNLTTK8wPVCdrbWWGmfe5454WTIoaSg1wpAEc+AnTJxXRFtzZp2HfR pQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2uea7qub3v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 07:06:19 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7L74ELt174828;
 Wed, 21 Aug 2019 07:06:18 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2ug1ga8hpy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 07:06:18 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7L76EMS021546;
 Wed, 21 Aug 2019 07:06:14 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 21 Aug 2019 00:06:13 -0700
Date: Wed, 21 Aug 2019 10:06:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Derek Kiernan <derek.kiernan@xilinx.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>
Subject: [PATCH 1/4] misc: xilinx_sdfec: Fix a couple small information leaks
Message-ID: <20190821070606.GA26957@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908210076
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908210076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_000631_143875_4C43839E 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These structs have holes in them so we end up disclosing a few bytes of
uninitialized stack data.

drivers/misc/xilinx_sdfec.c:305 xsdfec_get_status() warn: check that 'status' doesn't leak information (struct has a hole after 'activity')
drivers/misc/xilinx_sdfec.c:449 xsdfec_get_turbo() warn: check that 'turbo_params' doesn't leak information (struct has a hole after 'scale')

We need to zero out the holes with memset().

Fixes: 6bd6a690c2e7 ("misc: xilinx_sdfec: Add stats & status ioctls")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/misc/xilinx_sdfec.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 912e939dec62..dc1b8b412712 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -295,6 +295,7 @@ static int xsdfec_get_status(struct xsdfec_dev *xsdfec, void __user *arg)
 	struct xsdfec_status status;
 	int err;
 
+	memset(&status, 0, sizeof(status));
 	spin_lock_irqsave(&xsdfec->error_data_lock, xsdfec->flags);
 	status.state = xsdfec->state;
 	xsdfec->state_updated = false;
@@ -440,6 +441,7 @@ static int xsdfec_get_turbo(struct xsdfec_dev *xsdfec, void __user *arg)
 	if (xsdfec->config.code == XSDFEC_LDPC_CODE)
 		return -EIO;
 
+	memset(&turbo_params, 0, sizeof(turbo_params));
 	reg_value = xsdfec_regread(xsdfec, XSDFEC_TURBO_ADDR);
 
 	turbo_params.scale = (reg_value & XSDFEC_TURBO_SCALE_MASK) >>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
