Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8749116A188
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:15:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzQIamRkZ7H3E/Btckxv0ozof7e1XYYPpi3brvkKZo0=; b=pTQgnmR4LfIVpo
	J23LfdFscliMHKNpCXQpLeCN7jfUfOj/JbMOHHgGa0xpqDmW5MTmoPmqIQIqRcnqPM+Z7Tp20HyY5
	8E7+fzBwqYgiZEbfr6x9fkLKrx0gEbC+Oe3jdAAILCpRNttGjijO5BNSxNKHQI090x2w77QxCs2CT
	newIPziTjBk/kCVR6xv8jnnSqP53vyaSYxA7GZ0BFJ11oPhPh1uWdCUYRlv8uRPnF7onMltyUrx88
	1W8/dESb7sdoiKjcFoDKFctc6C+hNmB8Eb7LRmQUwiQ9YkDb1AzQnEndpMSEUamUthf3WNdSJg8Ut
	IStcz/kb/Ur1yo0QoEyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69pu-0006Li-8M; Mon, 24 Feb 2020 09:15:34 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69jf-0001Tq-Ph; Mon, 24 Feb 2020 09:09:13 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 639685B1;
 Mon, 24 Feb 2020 04:09:00 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ni0eeiruakD5t
 A6ey6vkWb0zJTB9V0JwtVa8ytpvb+8=; b=wQpjPS5o64bYXMBU6+EE9Op3/YeIc
 tfo5TtyHY5bq33iZ2YyGFRxz/x8v2X+o8hN7/1I5kuq5oKS5fCkdnYshXVk4DIEH
 Kghhj3Of8Xz7dA5053bJeRsxZhBgzmCivW9g3mwDdbDK10fnLphUIjQzOF0TQhCr
 f1GA5XoJ07fqsWYWcLCNngtkTWi/tGORSqmedAF1hQc+pqvk9ZfE5TL3NmdU/klO
 uNFjo7XpA9KxbOQu+uVYvYiz1uyavriatnja6zTGqw4wt5CGY1eFnRNz5BLoTzzC
 nZLkmSsF3lijIwMmtRrgWmguamGFPrgi2491/T7pQVR+qylKAESFE+Q+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ni0eeiruakD5tA6ey6vkWb0zJTB9V0JwtVa8ytpvb+8=; b=PxWPwJK+
 MTU4ejMmDMqCFiwlZ77+637otX7fMeMhvU4B2C1bJqWU1ABnbczcriaK6KLIfKZF
 jCsHAXSHaUxY0v0dDL8lXdHKVrb9jVK0as9aVN7HfQ3f821XB5U/mC/J/bmb3P+q
 ngzwUdVjyfWmnex3yMGINFIZL5bHBz8tcQ2vA42z332fCp8C4JWw7pF/o++AUl25
 wwKFAPpvuwqhGcmabMaGrGCYNo04PopeKvbZ4Sj+oTMeQW0W9TmLZViZT9x2r1WN
 7aN1zKft+nhjxsL+/nIHgPyqpHwapVMkdGOmI6QtV3ysQMvokm/7G6O3nZqvGldz
 T0jECWYME63pgw==
X-ME-Sender: <xms:q5JTXt0LUFBIad3MUSS6MtwegnkaC4w5NZ8p3Wtnxg-3iZb0zeeWig>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:q5JTXqE6DYsvU0c4eNeVbq8QhODz5T1vUinOqGc3qO8gtuRJFUs5CQ>
 <xmx:q5JTXriSA_Z13-Vw0AA2xhyCUaYr63VhB95jOt4D8hQwxWdzVwLGZw>
 <xmx:q5JTXl8R0e57tHLyrwDm5NmOFxdHxd5Ffe5d8ASqLPUTBJcLWvZAFw>
 <xmx:rJJTXmY6wL-HO1X-tlUSg_fY54nSsAJs1ddHxEIapVojfToLcxJvkn2Fijw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9ECE73060F9B;
 Mon, 24 Feb 2020 04:08:59 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 07/89] clk: bcm: rpi: Allow the driver to be probed by DT
Date: Mon, 24 Feb 2020 10:06:09 +0100
Message-Id: <c358081207dcf4f320a6b7e2932f0d5365bf3242.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010907_932844_4CD1D607 
X-CRM114-Status: GOOD (  13.06  )
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
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
 drivers/clk/bcm/clk-raspberrypi.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 1654fd0eedc9..94870234824c 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -255,15 +255,13 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	struct raspberrypi_clk *rpi;
 	int ret;
 
-	firmware_node = of_find_compatible_node(NULL, NULL,
-					"raspberrypi,bcm2835-firmware");
+	firmware_node = of_parse_phandle(dev->of_node, "raspberrypi,firmware", 0);
 	if (!firmware_node) {
 		dev_err(dev, "Missing firmware node\n");
 		return -ENOENT;
 	}
 
 	firmware = rpi_firmware_get(firmware_node);
-	of_node_put(firmware_node);
 	if (!firmware)
 		return -EPROBE_DEFER;
 
@@ -300,9 +298,16 @@ static int raspberrypi_clk_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct of_device_id raspberrypi_clk_match[] = {
+        { .compatible = "raspberrypi,firmware-clocks" },
+        { },
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
