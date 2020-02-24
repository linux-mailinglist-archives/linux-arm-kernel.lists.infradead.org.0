Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FF316A1AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:16:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qWz/bqZYk0cB+NHAik9kxiWf1jbyPrHnH3dZ7rIaGM=; b=M5N9dfnhE6UNFD
	R7mxNRiReztEAZX9xia07IiztAu54BTFyiKfTdNuR0RsQrH/SAMQj3QjeEsulonskxBDISBWGcav1
	7oIO8R/vp43i2PDucTRuRJvCIR3zUhvOHSX+98Nys4P4j1BV3EeCI1FJ0m+lnPLIUcIb1lbtry2/x
	o4wdiE6wQFeqEw7Uj9CyKx6EFnxrpY597JYLDBsanjvE4HmjwLD5WTpVvZxF+tvVSPr4/5K0yHtlG
	aw3BF5ZEPJ4KGZVt5YeYX1tjm2Udey3gBLFzxYY5rY22g4l1xiya0ENQIJNtMdw6uuiwfT3AV+ZO/
	8pz1TKXk5XbjVynjxOaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69qk-0007yY-Kr; Mon, 24 Feb 2020 09:16:26 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69jl-0001Wl-0W; Mon, 24 Feb 2020 09:09:17 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id E70965ED;
 Mon, 24 Feb 2020 04:09:08 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=yfyJY9G17qrJj
 XohnDOqJFpG8FxZglZ0yvMVK3Y0mkc=; b=w1xpShNMEm0WP4xbqD59Z7UmcGOv4
 icc5QZ2m3GVw8eE+WjmtuxXK+ro8wetqbUcv020I/qNva0YzK9zkUqQGC8WFrBxv
 jA2/frzieUdpOeDmQVRkgkZkuiNDhmEpfLuN7N9lLRMIm6d2cAGG/O2/lTS4b97X
 BN98hy9DiAwd3ztQEeFITFu9JsOXTvWiFGjWlQ4kj+kh6Wvq6MgTZuP8Ts7fbaG8
 jeXWwT79f/HTtUhoMCILYPJvjPEVMEzuKHpbetKa/UV4LOf9ZK6aeEk1bzKi8bbi
 h8dasIhzm/bFm0n5vMStQpJZbJRyXwKVg7VtBj65NoXAxSDj3hpg517qA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=yfyJY9G17qrJjXohnDOqJFpG8FxZglZ0yvMVK3Y0mkc=; b=qFq9xRnz
 9bNYXpjwYpXXbgidYsvVGElx2PQvywqaT4RQOVHcE9vgFG8GwPJ3QTBLHdcQAiq0
 ix6UkVmkd4rijEPgLPJXaCfG3HjG9XAelvTzIT3aJawgQTsCgdwCtGb70arpfcMZ
 Xxu7wuUM6m13kg8tP6ZumCApnI8pQGygxpNXkpchzYbRsYoIdjevD6Xi+nWUlh1z
 puOhUS4ladmdjr/EdeEQ6q/0AFvCC0jzD4uo8xZmGsHEfrOVYxfmdVku7SHY+EKW
 5EDV+kjiSa5JzNsaBjR7+tZcr23ECt/2PDdkEaKITTYOiBqu8fer2OJScHyq9P+q
 tJCeBGN5d5QufA==
X-ME-Sender: <xms:tJJTXvDoW7qOocvwX6hGfYXq8bL4HOdYhS4klV7OoxCp8ocSMuaB3Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepleenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:tJJTXgft2VgKiqHTp10tXoY17B-O46UrYVT02JaT3zGqEoLN3M7pOQ>
 <xmx:tJJTXpmsOkL9e0kkVoUCU39c9NOwXq0Lt6Vr8F_xYX5sTPFJhJqTtQ>
 <xmx:tJJTXnH35rNZO5mubA75zCIZwGqsh8YoVLIGmPwfaniL_g8djf65sA>
 <xmx:tJJTXgh-y41J72gfSdeIMy_RppAAMHWSdpcl4rg7z6sMf04YiCqASsvXRwE>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 368143060FE0;
 Mon, 24 Feb 2020 04:09:08 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 13/89] clk: bcm: rpi: Switch to clk_hw_register_clkdev
Date: Mon, 24 Feb 2020 10:06:15 +0100
Message-Id: <75dd8f658a253649c176509f0d8d3dd10354ce51.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010913_159050_DDDE104E 
X-CRM114-Status: GOOD (  11.84  )
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

Since we don't care about retrieving the clk_lookup structure pointer
returned by clkdev_hw_create, we can just use the clk_hw_register_clkdev
function.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 0c1d6c292302..b97c7ec61376 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -237,7 +237,6 @@ static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
 
 static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 {
-	struct clk_lookup *pllb_arm_lookup;
 	int ret;
 
 	ret = devm_clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
@@ -246,11 +245,11 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 		return ret;
 	}
 
-	pllb_arm_lookup = clkdev_hw_create(&raspberrypi_clk_pllb_arm.hw,
-					   NULL, "cpu0");
-	if (!pllb_arm_lookup) {
-		dev_err(rpi->dev, "Failed to initialize pllb_arm_lookup\n");
-		return -ENOMEM;
+	ret = clk_hw_register_clkdev(&raspberrypi_clk_pllb_arm.hw,
+				     NULL, "cpu0");
+	if (ret) {
+		dev_err(rpi->dev, "Failed to initialize clkdev\n");
+		return ret;
 	}
 
 	return 0;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
