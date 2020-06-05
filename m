Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BB21EF5F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 13:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bqGmac3dCqGl5LGKlW57EPto6H6u7fooIaz9Lwr7nw8=; b=qFcHYcvoLB+mAo
	zvwrVqtxASLXP6Ccyxr1T7SMy0fvDBFcyvG6JrpTCVzkdPyWhXiCqIHKd7VLnP7AJg0xkEHERmMUF
	q+XewKesIsU4QT85peP/cFdwlZVoHaU3f7Aylefr7NAu69N8vLeg06qm2JFjbFGJj4OtKFGCy70ZH
	mqGnEzTrDmt0Jy0Uacfs7f44hyxQW8OoC08OZUoes4FQvE04JJdz8wIMDDMrcms3GFVKh9v6odtAJ
	q5bfbseko6dRfF+aDsUPJOVUP5ns8LyUiRpIziwy4dLCITYb3hKBTCN0J5TYcam0WRhkOazlFaTZz
	pwGyMvq3PLZN4vCoBReg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhA5a-0003rT-Ox; Fri, 05 Jun 2020 11:00:42 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhA5T-0003r0-LL
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 11:00:36 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 055AuhAU009940;
 Fri, 5 Jun 2020 11:00:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=V0ubaUIN8W9lc6XMfm+T9kuHl5SLdA5xza5SBaAtBI0=;
 b=AUp8k3jC/5PRtTKKyrZReG6odvTBwW5ig9t0XdLrUL5hAnVeJgcw3Qbox02bVruKtZWK
 lV9kbAXkCBdUT9tIhJzJC4bLlverzAc9d9Ozo8MfD7WKAkSkd0zgn7se0s/WWJlMHWU7
 bGhkxYaKS7f0nAVKywCIzdul/RVaP8o52XlzNMcn8QemvV5HmRbvfXW58z0l8toJIRQb
 7vdpcvOmK7bEcWE2SUwlvNnxDFV95T8gdQgLRBbaq8Ib7w+dJF9y1i+wOK1ucL80/9F7
 LCyZxAdS5iGNU7lPRstrBKuXjOEU5sh02kNVE2iF/BiixueJHnCllLnl+XoqDCe3yohc rg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 31f91dtac0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 05 Jun 2020 11:00:30 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 055AxR9V016558;
 Fri, 5 Jun 2020 11:00:29 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 31f92sksmy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 05 Jun 2020 11:00:29 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 055B0SBY004168;
 Fri, 5 Jun 2020 11:00:28 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 05 Jun 2020 04:00:27 -0700
Date: Fri, 5 Jun 2020 14:00:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Michal Simek <michal.simek@xilinx.com>,
 Tejas Patel <tejas.patel@xilinx.com>
Subject: [PATCH] soc: xilinx: Fix error code in zynqmp_pm_probe()
Message-ID: <20200605110020.GA978434@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9642
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 mlxscore=0
 malwarescore=0 spamscore=0 suspectscore=0 mlxlogscore=879 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006050084
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9642
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 bulkscore=0
 clxscore=1011 cotscore=-2147483648 malwarescore=0 adultscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=913 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006050084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_040035_787812_2F2ED14F 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jolly Shah <jolly.shah@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This should be returning PTR_ERR() but it returns IS_ERR() instead.

Fixes: ffdbae28d9d1 ("drivers: soc: xilinx: Use mailbox IPI callback")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/soc/xilinx/zynqmp_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/xilinx/zynqmp_power.c b/drivers/soc/xilinx/zynqmp_power.c
index 31ff49fcd078b..c556623dae024 100644
--- a/drivers/soc/xilinx/zynqmp_power.c
+++ b/drivers/soc/xilinx/zynqmp_power.c
@@ -205,7 +205,7 @@ static int zynqmp_pm_probe(struct platform_device *pdev)
 		rx_chan = mbox_request_channel_byname(client, "rx");
 		if (IS_ERR(rx_chan)) {
 			dev_err(&pdev->dev, "Failed to request rx channel\n");
-			return IS_ERR(rx_chan);
+			return PTR_ERR(rx_chan);
 		}
 	} else if (of_find_property(pdev->dev.of_node, "interrupts", NULL)) {
 		irq = platform_get_irq(pdev, 0);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
