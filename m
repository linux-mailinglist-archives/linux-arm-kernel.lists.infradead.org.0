Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3E41E4815
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldty9JT+xb2O0Hfc5Mb+JVC19Z/Pp5zoAZf+hI/oEAs=; b=VEsiYQt2DFwnCb
	JTg7qtziIp5heFCSDHwdFd2KpYlX+ADF4H9nbHDIZTsumpXS2Mug4siMNsFJ34DHt9W0Azj7skrIg
	Jx+idvSoWldNlC1mHpOPVq3Op02soizAW1aOfmiLmqc8CDA1vAtAz6WWp0dfRfq/nieV7F75JB9Xa
	CS0KNTj6RY2jUK7qgGfITH7x2yi8PGz9jG+RAmY/6dBhLDvOyHIgjZa5UpkZaMuE13zcB2wrt0vyU
	LAYTC9Vd3HIcnMeml8u2CypfhBCWS+kzQ8iE4JBOgXzRx01ZFuxA+HLqPQK8mShJW8wqcSdccIPKq
	b2mQUcCJOycofc8Ap7uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyH9-0004N1-5V; Wed, 27 May 2020 15:47:27 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFO-000383-I5; Wed, 27 May 2020 15:45:42 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 25BC1581DBE;
 Wed, 27 May 2020 11:45:33 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Fs62D7m8qEeAr
 zhgkrU642z9hHS4Rj749FWecfiG/o4=; b=XjckTWmVA6AXaIlgfI9V+QFwJly7R
 4UiZgG59MvYGw6CiErHPl/z9fd/W9e71PY/N68H3W4tnDQYwmg1nmaoEEzedwq4J
 HW/cm5gmq2OD+VNCMyNsqsJPpKOsZsygfyxAGp12BKiWBu2l1bUDMiRZl9bpEsd2
 FfXB8yJP9AHdIhmTwBoha9Aur7BJj4U2FjpOf6OG2SVqsNzzltIaW7e29tLesjXM
 +epiKvwHMK7WK2hV1ignXsbzBS6g39YjHrr4DUIaZnlDqKRLXuBLIXvPfGx9o9O9
 GhIleWg8VHxaWq11blCKGiEEga81NLpxvVvZUauMIgZnsWj2de4/y70Dg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Fs62D7m8qEeArzhgkrU642z9hHS4Rj749FWecfiG/o4=; b=3K3sodad
 21MsV92ZB8yiWHKxwl1/j6ZB+uc1E2+IKMTH34+nxjVe09dGLzwM9Bz24Yu+7T4L
 KyrY7uEkcM9TbYqd8Wa31fC6uh4yvq0SddiMI18rw5XNPVZYJWjY1N2ldTz2HMAE
 T656jywveCIWWWFai1O7npnh1GhdZCWTwz2TxlTwPYB7Sq4fxyTNe9WZ/sXWfwV/
 1YDBWiQrMx+Yz8LX9ieVchxCjemnl4bFpwFBiysTAkouwcvLctC/yi8qeW/4z7on
 W1K9l2S61wsYqMt/gWOfcS66nsq+Yx4NTFUBhJva32qvISbw+LjbL+w/86+wIBPv
 SiBn4nZzNC3XzQ==
X-ME-Sender: <xms:HYvOXk2mREsszkBd7EIT862kgP7bk8QhLWEFv9WOcDbQnfWksMz7Pw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:HYvOXvEYlhYkG05LbFMT835S4jQE1LQuyf_wFeuUYahlSU9gEExpDA>
 <xmx:HYvOXs583WuM22YTAw0jRWwHrJ6wPrS_xysEqBuug5NP_gnvXi1OLw>
 <xmx:HYvOXt2jOuKATwmt65KCo8NXtLZq67PzGXmDNDzMa0ayu12Sj6Yvvw>
 <xmx:HYvOXtY0PSP1gcz2X6BhOa6AvV1Iwad68KutJpUq9WCqXEnP53AHlg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B977A328005A;
 Wed, 27 May 2020 11:45:32 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 04/25] clk: bcm: rpi: Allow the driver to be probed by DT
Date: Wed, 27 May 2020 17:45:00 +0200
Message-Id: <fa709f71b27aadf987685f7cae2a65cc3cef8e3d.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084538_732291_652D74C5 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current firmware clock driver for the RaspberryPi can only be probed by
manually registering an associated platform_device.

While this works fine for cpufreq where the device gets attached a clkdev
lookup, it would be tedious to maintain a table of all the devices using
one of the clocks exposed by the firmware.

Since the DT on the other hand is the perfect place to store those
associations, make the firmware clocks driver probe-able through the device
tree so that we can represent it as a node.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 1654fd0eedc9..8610355bda47 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -255,8 +255,16 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	struct raspberrypi_clk *rpi;
 	int ret;
 
-	firmware_node = of_find_compatible_node(NULL, NULL,
-					"raspberrypi,bcm2835-firmware");
+	/*
+	 * We can be probed either through the an old-fashioned
+	 * platform device registration or through a DT node that is a
+	 * child of the firmware node. Handle both cases.
+	 */
+	if (dev->of_node)
+		firmware_node = of_get_parent(dev->of_node);
+	else
+		firmware_node = of_find_compatible_node(NULL, NULL,
+							"raspberrypi,bcm2835-firmware");
 	if (!firmware_node) {
 		dev_err(dev, "Missing firmware node\n");
 		return -ENOENT;
@@ -300,9 +308,16 @@ static int raspberrypi_clk_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct of_device_id raspberrypi_clk_match[] = {
+	{ .compatible = "raspberrypi,firmware-clocks" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, raspberrypi_clk_match);
+
 static struct platform_driver raspberrypi_clk_driver = {
 	.driver = {
 		.name = "raspberrypi-clk",
+		.of_match_table = raspberrypi_clk_match,
 	},
 	.probe          = raspberrypi_clk_probe,
 	.remove		= raspberrypi_clk_remove,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
