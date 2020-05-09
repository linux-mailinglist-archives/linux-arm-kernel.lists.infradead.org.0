Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423521CBCA5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 04:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PhJ7oS6khLDQbc28SMQZ6pKRijh9xpytEp3ftYrKqF8=; b=VTmA3Qe4ee29NB
	nHBSNFI9z5mbqC5NfrzNzAE9npk6oVxE6B+jy3Wr7IQ5nY8b9zgcazxlE4kDQ4uA+QnwD/xP664Vh
	6BbvjovubsHcnElwucSeFj8VNcK2QCpYpl5FTfvQ7nKOe7fTFMJRFPkG75KF+5/UoZtiveHq9yEaQ
	7BkGWz9p+vBsETkI6JyJzTFfrPaKTiaffegruYV53QCnaL8wMwE1nTZ++JXszr0OjMySwCgmjK6eT
	oaAKZnwAq8gn1xezbOD2YM7ACWMQf2gMAHjtNH2tXgA5HBV5o/+rjxANoP3QBlUJuoGNpcnm6Kp2c
	wArJp9Q1kb4ntkiiVCjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXFhL-0006mT-Ij; Sat, 09 May 2020 02:58:43 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXFhE-0006lc-Jr
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 02:58:38 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1DF718F04DBA6D651016;
 Sat,  9 May 2020 10:58:26 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Sat, 9 May 2020 10:58:17 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>, Alexandre Bailon <abailon@baylibre.com>, Leonard Crestez
 <leonard.crestez@nxp.com>
Subject: [PATCH -next] interconnect: imx: Fix return value check in
 imx_icc_node_init_qos()
Date: Sat, 9 May 2020 03:02:14 +0000
Message-ID: <20200509030214.14435-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_195837_227594_3349D5A7 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, Wei Yongjun <weiyongjun1@huawei.com>,
 Hulk Robot <hulkci@huawei.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case of error, the function of_parse_phandle() returns NULL pointer
not ERR_PTR(). The IS_ERR() test in the return value check should be
replaced with NULL test.

Fixes: f0d8048525d7 ("interconnect: Add imx core driver")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/interconnect/imx/imx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/interconnect/imx/imx.c b/drivers/interconnect/imx/imx.c
index 6884212511f0..ac420f86008e 100644
--- a/drivers/interconnect/imx/imx.c
+++ b/drivers/interconnect/imx/imx.c
@@ -90,10 +90,10 @@ static int imx_icc_node_init_qos(struct icc_provider *provider,
 			node->name, node->id);
 	} else {
 		dn = of_parse_phandle(dev->of_node, adj->phandle_name, 0);
-		if (IS_ERR(dn)) {
-			dev_warn(dev, "Failed to parse %s: %ld\n",
-				 adj->phandle_name, PTR_ERR(dn));
-			return PTR_ERR(dn);
+		if (!dn) {
+			dev_warn(dev, "Failed to parse %s\n",
+				 adj->phandle_name);
+			return -ENODEV;
 		}
 		/* Allow scaling to be disabled on a per-node basis */
 		if (!dn || !of_device_is_available(dn)) {




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
