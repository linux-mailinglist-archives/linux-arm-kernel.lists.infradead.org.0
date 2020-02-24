Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F50316A245
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:29:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BW5DxBM+4YM1gdEU2yO1zO6zOMUCUSoUT7eML/4otOg=; b=FFM/7pZfLwregR
	xR5LY9TzzMkAfcK6rn7Vy5/+igYsFaLYxc2FWeEPgmLQHeJRLGb/35exLqF6zBpIuSUYrm3zXRUwY
	ZLUDJwiYWqRIQ1fskBsu1E9wsZKvhhVXfHE4xxpdTmDL+d+OXvW4ZfwVtaDU6z+bBEkBwJpRVy3ei
	UpZ9Vx2BUkyd8EBh7wjHicecnelUsj8xKKbhSdaDkwM1gshSVL9Dg6VLz2cYtLIjXY6CvD5GnBlKM
	K2bLsJSszxawVHtE9M0lOST6iVFO0MzE8+ocE+5o5VpFKhc2ipyNk7tD60pTNnJhng0YCWhKIhliL
	0mcF4l9xN+rYEDJOXfPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A2t-0004cb-G5; Mon, 24 Feb 2020 09:28:59 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69ju-0001eR-Nd; Mon, 24 Feb 2020 09:09:25 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 6482C60B;
 Mon, 24 Feb 2020 04:09:20 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=LObIfc2uPqHaL
 Eu4S6D78Ua8XtedAN9FGhZ26j8yxQA=; b=QpH/hA6mRczJnVXK5DEinGcV/68pd
 3gumyS2xzsqJ2Tx/pHiyvxWgDDKBqOvezAjJ0x9qiFWGVgia9I8ggBi0Jh4oPt4j
 Z/ehDvOqkzPsrl5O5OKMN3zEe42WbwVg8SZ3IFXVH4wwq7ZqEWmdqE1+DoW9yK4X
 OWUoMD9uCgyAE+kxXh+bQAd3px8b70MleFBxnrjqrovYnr86LW1s9CqUBmzos/LL
 xSn7jXSgMOoPYl0ZE6i+EU5Ml98lFhlQVALREV7J79KgIWGpjwyIT9LAZH9ov6z9
 IzMTyhxbgHgenk5uFB8wxm7ry6Zvw+BbV+l/R2eVnrZEFEQ6syCQtoaFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=LObIfc2uPqHaLEu4S6D78Ua8XtedAN9FGhZ26j8yxQA=; b=vfXbYVrV
 vd+YtAWNMgMe8lzfTCJoxlSFDDhe9LXb5vPyMLdl5I4Ue0Q2FP2kwAd9kABnCJCt
 xhV+ohacF3k3v+jztHGFEM/oQV9FcWJ8xNUSDAp6NA0FmQZ7dToV7ZTx1Bx+H1xU
 H6NwDZHOeAKUs1HEA52PL6m03ADs6ezLsZCrQ39NDbjU/J2JpoodQKDuPtmy1Q7R
 ku7qF/rR2cdkWuQUOGF2nyJ6DcoRaB18Cl51xD9/AJayyZ3TtHf/VeYzxR4mEmxW
 2j75UdxmJpS8Pvxc7XHa6PNESeTIg694j73Kwwmi60soUXTW6j37rmJ3ZMWcI+dR
 +KfExCtHBlEUrQ==
X-ME-Sender: <xms:v5JTXjrMXTjlfx_By7AhMmkHJN0BiyxyQxuiQjbJYR5vKsfHfs7qMA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudejnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:v5JTXuV-k2XhPX1eMfPPch0im3W9qGeqT553eOWVaG8Nn2Hl54ERfg>
 <xmx:v5JTXuaZn5zcL9uqUR_HhjMP6UnQC4JLGUFvY6z9xB5z91xf8jd7nA>
 <xmx:v5JTXreKjrpXjRwhcU_7Mk0j6ZxJjcMagtkjWOndeG6xsH6xWkPXUw>
 <xmx:wJJTXscKO0QPRpnaCvhRxk2WSJtg19EjLxEWjs8dLfVT3gJtnYtYJcwbR8o>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A32D83060BD1;
 Mon, 24 Feb 2020 04:09:19 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 21/89] clk: bcm: rpi: Add DT provider for the clocks
Date: Mon, 24 Feb 2020 10:06:23 +0100
Message-Id: <f38e173f73f9c9c06291d96d095f5a42002720c9.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010923_141621_46A2FB4E 
X-CRM114-Status: GOOD (  10.28  )
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

For the upcoming registration of the clocks provided by the firmware, make
sure it's exposed to the device tree providers.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index db5de9073930..3f21888a3e3e 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -31,6 +31,8 @@
 
 #define A2W_PLL_FRAC_BITS		20
 
+#define NUM_FW_CLKS			16
+
 struct raspberrypi_clk {
 	struct device *dev;
 	struct rpi_firmware *firmware;
@@ -285,6 +287,7 @@ static struct clk_hw *raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 
 static int raspberrypi_clk_probe(struct platform_device *pdev)
 {
+	struct clk_hw_onecell_data *clk_data;
 	struct device_node *firmware_node;
 	struct device *dev = &pdev->dev;
 	struct rpi_firmware *firmware;
@@ -309,6 +312,11 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	rpi->firmware = firmware;
 	platform_set_drvdata(pdev, rpi);
 
+	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, NUM_FW_CLKS),
+				GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
+
 	hw = raspberrypi_register_pllb(rpi);
 	if (IS_ERR(hw)) {
 		dev_err(dev, "Failed to initialize pllb, %ld\n", PTR_ERR(hw));
@@ -318,6 +326,13 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	hw = raspberrypi_register_pllb_arm(rpi);
 	if (IS_ERR(hw))
 		return PTR_ERR(hw);
+	clk_data->hws[RPI_FIRMWARE_ARM_CLK_ID] = hw;
+	clk_data->num = RPI_FIRMWARE_ARM_CLK_ID + 1;
+
+	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
+					  clk_data);
+	if (ret)
+		return ret;
 
 	rpi->cpufreq = platform_device_register_data(dev, "raspberrypi-cpufreq",
 						     -1, NULL, 0);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
