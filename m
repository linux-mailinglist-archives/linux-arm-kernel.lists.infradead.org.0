Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533351B79C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gv2qbxu8KIIdE8XcX6VxuDpqfY1xZr1/wIdnAKpUblI=; b=jMbYwlLoP6xpiH
	/fd/GS2JxiSDad7o+HECAE/7gZsQWtMQGz4VbGndmyXLrnEJdoS/eihhIyJ1cBb7c+z3dHAV/vkwC
	9BD86PiR5FR+XOn4UfPmk6Lx1Bbi1wVuYFJXCwpP2G0dNP971eaShyw2TBz5rCBXQ4sjcm5kkVB+E
	5KwrN0u9LfTiYphCZowKz+Qf1iZZPdJSI1kQpb8nErFkYh/6rTkmbARRi32bUaoXAMOksQEdkuhbx
	n8HcIoxyI+SWSEp9pLYUlffsfoKQPnI9tCwXte0ZKPEx4q+kcOJdacPw6J0oK54hV1dE7CqL9WhKz
	071kp6kfPUFJT/f/ThBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0Px-0001Xg-Ij; Fri, 24 Apr 2020 15:39:05 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0MZ-0007QN-9U; Fri, 24 Apr 2020 15:35:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 5412A21A;
 Fri, 24 Apr 2020 11:35:30 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=rUe63BFpIMvZr
 fI+zHnOUJolkz68c07yBo2Dpng9F1M=; b=KxgYxG1VVQBgw/WMPSGVKx9LRRYyP
 duEpS9mHn7NbXSLEqHT6AoCYTByR91ZWHQA6FISuUK/LtuBhoSIxoqx8uYo7/bg3
 J9DI8HrWO5YLMy/bw65gHeRJwnLhPh2V/d84EXFXs4zsPqynZq0GbXkTuj3VP7rY
 57nCpjGzJKBHtyYbCwj+q9Iz62RMqzZbDKLYNajMrmgJNHx4WtOPrvnkmNSaRfqw
 BGRUowxKK6myR2C4paq4EdFY/Y6gOqJeI86sXUkhXM6EJG/Ybr5yz/kP7qKMa07Y
 kWr6qNaxPl/mg2F/rvV8LMA+U2wv4LElQckLo8MfhWh6eI2FyGBGWqZwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=rUe63BFpIMvZrfI+zHnOUJolkz68c07yBo2Dpng9F1M=; b=Hd3owlyQ
 wRURYq9Uo5s1IiQ1qcmYX7vYDs8AAChJ1m0V37R+B9IgSJSQU83vIm8vsglbt0Dy
 nMnCBK0FkJi6T81iEcLWbLPutoGrMxLd46FPChMiGQWTgN65D7Qf70SjBzLZHKbU
 Dr+E54HrdOrDmj+6hrY7MzA/I3VLAzjr2r4wMtp9yp7zGKE+Kvw9sKwzGHj91h9U
 4rov/4CuDky9wRNWTZop4Cp9PQQ/lSTu4tYvpfnBQV95sM1X+yNGXWM8pHg6NcGw
 7sQdh3in1Su2R4i9yEgFmPF/tRz0JALxMe0foJACWlGOQh0UGN50thl6ZD4rHlqv
 CV3qwrCt0iL7Lw==
X-ME-Sender: <xms:QQejXsen2X4obe0HmRjl_eazikLH1_wQZHAeWOrYFf_0saq44E45Bw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:QQejXlKJKfHyVWLoXe0BiWCvtzULfFDexVkO33INPfrDtmLD87DjmQ>
 <xmx:QQejXipAbnVDPpFD3g_T6maq7qm_Ppa7PoOTKbpRbEXZUggFb6JOaw>
 <xmx:QQejXmWcZ1UKlGm638mQeDPwcmbEZe3KHtI_ags4XohAzWJ5b7mVZQ>
 <xmx:QQejXnP2-yKPln9oOg-rsLUYMRhXpa3ID7hRaHWlSIFWYLJV5SlgxdVr4MM>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 82F4E3065DA7;
 Fri, 24 Apr 2020 11:35:29 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 05/91] clk: bcm: rpi: Allow the driver to be probed by DT
Date: Fri, 24 Apr 2020 17:33:46 +0200
Message-Id: <0f5319caa4d1b9ba8a83a094abcb681d4be6eb1c.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083535_380523_9B4D7144 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/clk/bcm/clk-raspberrypi.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 1654fd0eedc9..aedeaaf2f66b 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -255,15 +255,22 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
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
 	}
 
 	firmware = rpi_firmware_get(firmware_node);
-	of_node_put(firmware_node);
 	if (!firmware)
 		return -EPROBE_DEFER;
 
@@ -300,9 +307,16 @@ static int raspberrypi_clk_remove(struct platform_device *pdev)
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
