Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E19C75E9B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8Wkv5wj8COKVdd7TZqkxS2G23TzYLQSsDbfZTMckcg=; b=kdltVtvhc7WrtH
	r0k0k/E8Ul98K6orJU4kdEd8xA1GwklYjFq4xS6b9VTkfTJM1GOiT/uS8vVZMKZLIto10rE6t7WV0
	6ir9S9XMrZG5ldVPlLugJbYRxvx5RcJ6/gleFIZcxGZLmVDhVqbampu0aZl7srxCTIANxGLS4lcLl
	EV0NIFPrnGVOTxlCOIUu1mP7swaEc4d61YtKSC2tEQ7DbzwHiV2FcKX2+Nsl3oASlC2bMB4bAbRN1
	XJ4BdgG2DWy93fEmUS8BXxtw49579VNvhGGuhIt3w9ouoT5KhJIp/pXKoBPfoDiRs7pcH1BfMfN8f
	MsHqiplifQ/TjnxjHcEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqt3d-0000Ps-0j; Fri, 26 Jul 2019 05:46:21 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsyS-0004Ca-PL
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:41:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 051FE4355;
 Fri, 26 Jul 2019 01:41:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:41:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=96HDwA1KWSlr1
 9z+QpunC8hx6SLZq+UnHYXQwHcXkFU=; b=PJqh0bvLeaKgD2NqicKEJ94S/a3LL
 kFt1pQ5EygtTNHC232CnW/Fd6Ctom6HceFM8fY/lJL9WlVJDSf5XjCN0u/dTH1ys
 JeGszkZwMKJ2b37ZJWjoct3WkyO1QClIEJ3Vn6ZmpheVPMb6GJAOdI4TrZByi2L2
 +OGDG43AmYi0sL4y9fu64ubmZ/FK17ANVZVD02gTd3o/l3g8Q2lWygvanK8qpZBs
 TFm422rSTFFHsTJJC/HR+wovjrUS9gAgoe91Dq4Vl5DvozuY/MTpucGQ+eAnx3un
 QAga5IJwZIPi9iX2UbI0nP510oFMk+Fznm4Y4X8xUr3JEPRX9AOxW91bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=96HDwA1KWSlr19z+QpunC8hx6SLZq+UnHYXQwHcXkFU=; b=A53jHgX4
 GwBj4+1G0L9HFs2xkk3MrixMIvd5bKcmLNJFYVxPhsHuBdTBehuffYVGT7EdD8wd
 qXooMjAnnXmny3clMDeKF1w9lsdx992J0WvaDzj3sNbrlQvG12JWGZv97xzamI1c
 WHKSIsSmeCP6IY0a3ufQceFqNoLsS94ovzv/ExnBLipcsNjxnEXmS7r4G2GKGrxe
 48CG8F1kyjr2zzBiZrmDbkhrV2hzPboqSu+axqLU1xN+LEF/ydOCh70A9CmDGzV7
 Y/QI+Z8+dGJmgKFu5fCaUeVBbyzEl4nw3I5/wdt+Z7tMuBI67LXMfpCkqt7xLHe7
 qW/nu9QT+uIoHg==
X-ME-Sender: <xms:a5I6XSQWww8d0o8v0tDGmlFI3TWkmmVBfOpZdlodkWR_EQv0s7AepA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpeeg
X-ME-Proxy: <xmx:a5I6XcC6ST4sZJKRAsSp06FuhNg-03NNhM043alZlzyevi_gPE4w4A>
 <xmx:a5I6Xa3w1y062V_kynqwvElwkX_oNWc_eoIHLnu6CZkRMqSFgWi4hA>
 <xmx:a5I6XSXxp3vIRVEKy1e0Cz7yAETRAc19THqGBvRixMCCY73qJsG-DQ>
 <xmx:a5I6Xafw3xhBHieWEz2AgWI_-NvYhOSyYuIPrRIWdJ6crHloprwReg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id BC628380075;
 Fri, 26 Jul 2019 01:40:55 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [RFC PATCH 15/17] ipmi: kcs: aspeed: Implement v2 bindings
Date: Fri, 26 Jul 2019 15:09:57 +0930
Message-Id: <20190726053959.2003-16-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224101_169963_B512728E 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Corey Minyard <minyard@acm.org>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The v2 bindings allow us to extract the resources from the devicetree.
The table in the driver is retained to derive the channel index, which
removes the need for kcs_chan property from the v1 bindings. The v2
bindings allow us to reduce the number of warnings generated by the
existing devicetree nodes.

Cc: Haiyue Wang <haiyue.wang@linux.intel.com>
Cc: Corey Minyard <minyard@acm.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: openipmi-developer@lists.sourceforge.net
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 156 +++++++++++++++++++++++------
 1 file changed, 127 insertions(+), 29 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index e3dd09022589..509e0d3c6eb1 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -12,6 +12,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/platform_device.h>
 #include <linux/poll.h>
 #include <linux/regmap.h>
@@ -233,38 +234,133 @@ static const struct kcs_ioreg ast_kcs_bmc_ioregs[KCS_CHANNEL_MAX] = {
 	{ .idr = LPC_IDR4, .odr = LPC_ODR4, .str = LPC_STR4 },
 };
 
+static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct platform_device *pdev)
+{
+	struct aspeed_kcs_bmc *priv;
+	struct device_node *np;
+	struct kcs_bmc *kcs;
+	u32 channel;
+	u32 slave;
+	int rc;
+
+	np = pdev->dev.of_node;
+
+	rc = of_property_read_u32(np, "kcs_chan", &channel);
+	if ((rc != 0) || (channel == 0 || channel > KCS_CHANNEL_MAX)) {
+		dev_err(&pdev->dev, "no valid 'kcs_chan' configured\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs_bmc), channel);
+	if (!kcs)
+		return ERR_PTR(-ENOMEM);
+
+	priv = kcs_bmc_priv(kcs);
+	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
+	if (IS_ERR(priv->map)) {
+		dev_err(&pdev->dev, "Couldn't get regmap\n");
+		return ERR_PTR(-ENODEV);
+	}
+
+	rc = of_property_read_u32(np, "kcs_addr", &slave);
+	if (rc) {
+		dev_err(&pdev->dev, "no valid 'kcs_addr' configured\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	kcs->ioreg = ast_kcs_bmc_ioregs[channel - 1];
+	aspeed_kcs_set_address(kcs, slave);
+
+	return 0;
+}
+
+static int aspeed_kcs_calculate_channel(const struct kcs_ioreg *regs)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ast_kcs_bmc_ioregs); i++) {
+		if (!memcmp(&ast_kcs_bmc_ioregs[i], regs, sizeof(*regs)))
+			return i + 1;
+	}
+
+	return -EINVAL;
+}
+
+static struct kcs_bmc *aspeed_kcs_probe_of_v2(struct platform_device *pdev)
+{
+	struct aspeed_kcs_bmc *priv;
+	struct device_node *np;
+	struct kcs_ioreg ioreg;
+	struct kcs_bmc *kcs;
+	const __be32 *reg;
+	int channel;
+	u32 slave;
+	int rc;
+
+	np = pdev->dev.of_node;
+
+	/* Don't translate addresses, we want offsets for the regmaps */
+	reg = of_get_address(np, 0, NULL, NULL);
+	if (!reg)
+		return ERR_PTR(-EINVAL);
+	ioreg.idr = be32_to_cpup(reg);
+
+	reg = of_get_address(np, 1, NULL, NULL);
+	if (!reg)
+		return ERR_PTR(-EINVAL);
+	ioreg.odr = be32_to_cpup(reg);
+
+	reg = of_get_address(np, 2, NULL, NULL);
+	if (!reg)
+		return ERR_PTR(-EINVAL);
+	ioreg.str = be32_to_cpup(reg);
+
+	channel = aspeed_kcs_calculate_channel(&ioreg);
+	if (channel < 0)
+		return ERR_PTR(channel);
+
+	kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs_bmc), channel);
+	if (!kcs)
+		return ERR_PTR(-ENOMEM);
+
+	kcs->ioreg = ioreg;
+
+	priv = kcs_bmc_priv(kcs);
+	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
+	if (IS_ERR(priv->map)) {
+		dev_err(&pdev->dev, "Couldn't get regmap\n");
+		return ERR_PTR(-ENODEV);
+	}
+
+	rc = of_property_read_u32(np, "slave-reg", &slave);
+	if (rc)
+		return ERR_PTR(rc);
+
+	aspeed_kcs_set_address(kcs, slave);
+
+	return kcs;
+}
+
 static int aspeed_kcs_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct aspeed_kcs_bmc *priv;
 	struct kcs_bmc *kcs_bmc;
-	u32 chan, addr;
+	struct device_node *np;
 	int rc;
 
-	rc = of_property_read_u32(dev->of_node, "kcs_chan", &chan);
-	if ((rc != 0) || (chan == 0 || chan > KCS_CHANNEL_MAX)) {
-		dev_err(dev, "no valid 'kcs_chan' configured\n");
-		return -ENODEV;
-	}
+	np = pdev->dev.of_node;
+	if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc") ||
+			of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc"))
+		kcs_bmc = aspeed_kcs_probe_of_v1(pdev);
+	else if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc-v2") ||
+			of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc-v2"))
+		kcs_bmc = aspeed_kcs_probe_of_v2(pdev);
+	else
+		return -EINVAL;
+
+	if (IS_ERR(kcs_bmc))
+		return PTR_ERR(kcs_bmc);
 
-	rc = of_property_read_u32(dev->of_node, "kcs_addr", &addr);
-	if (rc) {
-		dev_err(dev, "no valid 'kcs_addr' configured\n");
-		return -ENODEV;
-	}
-
-	kcs_bmc = kcs_bmc_alloc(dev, sizeof(*priv), chan);
-	if (!kcs_bmc)
-		return -ENOMEM;
-
-	priv = kcs_bmc_priv(kcs_bmc);
-	priv->map = syscon_node_to_regmap(dev->parent->of_node);
-	if (IS_ERR(priv->map)) {
-		dev_err(dev, "Couldn't get regmap\n");
-		return -ENODEV;
-	}
-
-	kcs_bmc->ioreg = ast_kcs_bmc_ioregs[chan - 1];
 	kcs_bmc->io_inputb = aspeed_kcs_inb;
 	kcs_bmc->io_outputb = aspeed_kcs_outb;
 
@@ -274,7 +370,6 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(dev, kcs_bmc);
 
-	aspeed_kcs_set_address(kcs_bmc, addr);
 	aspeed_kcs_enable_channel(kcs_bmc, true);
 
 	rc = misc_register(&kcs_bmc->miscdev);
@@ -283,9 +378,10 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 		return rc;
 	}
 
-	pr_info("channel=%u addr=0x%x idr=0x%x odr=0x%x str=0x%x\n",
-		chan, addr,
-		kcs_bmc->ioreg.idr, kcs_bmc->ioreg.odr, kcs_bmc->ioreg.str);
+	dev_dbg(&pdev->dev,
+		"Probed KCS device %d (IDR=0x%x, ODR=0x%x, STR=0x%x)\n",
+		kcs_bmc->channel, kcs_bmc->ioreg.idr, kcs_bmc->ioreg.odr,
+		kcs_bmc->ioreg.str);
 
 	return 0;
 }
@@ -302,6 +398,8 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
 static const struct of_device_id ast_kcs_bmc_match[] = {
 	{ .compatible = "aspeed,ast2400-kcs-bmc" },
 	{ .compatible = "aspeed,ast2500-kcs-bmc" },
+	{ .compatible = "aspeed,ast2400-kcs-bmc-v2" },
+	{ .compatible = "aspeed,ast2500-kcs-bmc-v2" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, ast_kcs_bmc_match);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
