Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD45A16A131
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvoCzsOkQ7Ooj5V4DQ9ctWI0fpuLu1H/rjk91hf1uBo=; b=ei2BxvpifeLLNP
	//iVpLG20aaR7QrvJ4c7Spn74N0GBZQV2wu0A9YgUDoQnWMzaAGjYu4D8PS3CELMwWFjUeAne2Net
	QAwIYPHOJCvTvcZFpxgplIJ7vC8Ml/S0ZNV3KmauS/PsDTHyR+A9ZenwmNxGvU5zqkHaGi/kc0UQ4
	NvGoZw7JtYCsGQ5gc75kdDwlbgjB7lq1Si/EAZWTqIkqDnZzwEM01pGjpADGRALdEqNhDm1VcEuT6
	LuFjR45sx+v98m+YcxYIJl3Sk3jycCQ9EeIRuUQoFLc1Wmo6aILqY8btNHljm8JOSzFpv/9YvA3GJ
	0Gi5mekaLOqcS/tFM7Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69lL-0001yW-A6; Mon, 24 Feb 2020 09:10:51 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69ja-0001Qq-Tp; Mon, 24 Feb 2020 09:09:07 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 5AF454CD;
 Mon, 24 Feb 2020 04:08:56 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:08:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=8vrsYnMg3+xlG
 wkxA2xqTXt5S7dQQOBwNLJokfKT5TI=; b=MeEGm8ydYTSDljDyxAs5wLbVVWQrV
 ZLc+D4bpc6kIWpyJTtjbRUZAdIm7Ho4neycCK2r7oX5b2WQI9O4AzKdlL+6zzD9z
 eMCb0E8IAaRikxxmmaHPI7zNa6oaMXBPgho3XFDnZPz+B8muLWHE+JnIAtPMbST2
 WdqreU0RTYMSF5vcnSBLgUTYhP/FTo9lRBtqt90SUajuBoeWphrqja3NHLAtJTS6
 h7BL0HGfEE9KUUfOTuOmIcUYR/6dd0cEJCF8Ta6jc0hmC+3Ms+YXvSxbbY5WV129
 By0cqCutzcXGKC8E2by+EnNBJlvoqtgGMjR9FE0Y/cHbnHh0twqb1BtjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=8vrsYnMg3+xlGwkxA2xqTXt5S7dQQOBwNLJokfKT5TI=; b=zzlQpzty
 TQi+s9EWJWK2dZJ3xg6Rrr/ChaWBFHaPKGXqTxduw6vEWfblw87uof8xbmFmV0gL
 OIMvoutCNzlimhGippaMJBNmnY4cpX/eoQuovotdlX2c581aEfwKruTrQfnQm5zc
 VRMs8gUwP9ELDykd49fk7oJrrN3rCYShYffseJQvf9ARD4xiVlohsb9/KoVgWg8A
 WJLsLegxr3un88Js5NBTyDIjCvOoIa7f7xf1PHhBg5ljrEFHe40tB9riscSvmK+2
 YZax7iskHT1iH3bBjKnTujW1TF/Nw4wxjMvde5xhVebtGILX5orSXl7ffljcDmsu
 Zsvn3NTHszT1qA==
X-ME-Sender: <xms:ppJTXjTmQpTuM8_FjJ4Lcv_wIY6cYU5OJjn656Dm8k2QC7jyeh2s4w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ppJTXsWL0OGsKJoUQUu_qHB-GBs4IF5zq4_afrl4OfY2LE01e5Y-uQ>
 <xmx:ppJTXoeLpU0IHK2dJP-nL9wOWpJ8K7n9H_DjmfWma_018eFICKL2-A>
 <xmx:ppJTXvwR_zBnusltx-lZlhZShIXI-9zuW-QuSh6E4tbH3lE8Vzjxww>
 <xmx:qJJTXsdgiH4mN_Q1Y_kAZwvirdItS31sFpZWycjD-4YKr5qjkm-WTw22ksI>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E275F3060F9B;
 Mon, 24 Feb 2020 04:08:53 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 03/89] i2c: brcmstb: Support BCM2711 HDMI BSC controllers
Date: Mon, 24 Feb 2020 10:06:05 +0100
Message-Id: <1ed75ec6dc9310afd768c0bbfd8e73268e8cdfa9.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010903_012407_9D266AFD 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Wolfram Sang <wsa@the-dreams.de>, Kamal Dasu <kdasu.kdev@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-i2c@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The HDMI blocks in the BCM2771 have an i2c controller to retrieve the
EDID. This block is split into two parts, the BSC and the AUTO_I2C,
lying in two separate register areas.

The AUTO_I2C block has a mailbox-like interface and will take away the
BSC control from the CPU if enabled. However, the BSC is the actually
the same controller than the one supported by the brcmstb driver, and
the AUTO_I2C doesn't really bring any immediate benefit.

Let's use the BSC then, but let's also tie the AUTO_I2C registers with a
separate compatible so that we can enable AUTO_I2C if needed in the
future.

The AUTO_I2C is enabled by default at boot though, so we first need to
release the BSC from the AUTO_I2C control.

Cc: Kamal Dasu <kdasu.kdev@gmail.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Wolfram Sang <wsa@the-dreams.de>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: linux-i2c@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/i2c/busses/i2c-brcmstb.c | 33 +++++++++++++++++++++++++++++++++-
 1 file changed, 33 insertions(+)

diff --git a/drivers/i2c/busses/i2c-brcmstb.c b/drivers/i2c/busses/i2c-brcmstb.c
index 506991596b68..169a2836922d 100644
--- a/drivers/i2c/busses/i2c-brcmstb.c
+++ b/drivers/i2c/busses/i2c-brcmstb.c
@@ -580,6 +580,31 @@ static void brcmstb_i2c_set_bsc_reg_defaults(struct brcmstb_i2c_dev *dev)
 	brcmstb_i2c_set_bus_speed(dev);
 }
 
+#define AUTOI2C_CTRL0		0x26c
+#define AUTOI2C_CTRL0_RELEASE_BSC	BIT(1)
+
+static int bcm2711_release_bsc(struct brcmstb_i2c_dev *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev->device);
+	struct resource *iomem;
+	void __iomem *autoi2c;
+
+	/* Map hardware registers */
+	iomem = platform_get_resource_byname(pdev, IORESOURCE_MEM, "auto-i2c");
+	autoi2c = devm_ioremap_resource(&pdev->dev, iomem);
+	if (IS_ERR(autoi2c))
+		return PTR_ERR(autoi2c);
+
+	writel(AUTOI2C_CTRL0_RELEASE_BSC, autoi2c + AUTOI2C_CTRL0);
+	devm_iounmap(&pdev->dev, autoi2c);
+
+	/* We need to reset the controller after the release */
+	dev->bsc_regmap->iic_enable = 0;
+	bsc_writel(dev, dev->bsc_regmap->iic_enable, iic_enable);
+
+	return 0;
+}
+
 static int brcmstb_i2c_probe(struct platform_device *pdev)
 {
 	int rc = 0;
@@ -609,6 +634,13 @@ static int brcmstb_i2c_probe(struct platform_device *pdev)
 		goto probe_errorout;
 	}
 
+	if (of_device_is_compatible(dev->device->of_node,
+				    "brcm,bcm2711-hdmi-i2c")) {
+		rc = bcm2711_release_bsc(dev);
+		if (rc)
+			goto probe_errorout;
+	}
+
 	rc = of_property_read_string(dev->device->of_node, "interrupt-names",
 				     &int_name);
 	if (rc < 0)
@@ -705,6 +737,7 @@ static SIMPLE_DEV_PM_OPS(brcmstb_i2c_pm, brcmstb_i2c_suspend,
 static const struct of_device_id brcmstb_i2c_of_match[] = {
 	{.compatible = "brcm,brcmstb-i2c"},
 	{.compatible = "brcm,brcmper-i2c"},
+	{.compatible = "brcm,bcm2711-hdmi-i2c"},
 	{},
 };
 MODULE_DEVICE_TABLE(of, brcmstb_i2c_of_match);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
