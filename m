Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7555016A1C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:19:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWg9JFca7FlN9AQDXCg+zaP8ri/BuytQnNoHaq/ph/Y=; b=EWgbwOdGHXtLf3
	Hk19RrvwRbst4UTTkg7Zl5zA3fLarT752RoUyKZ2FXg6o7SQ5VVbmo1SMGgKR/yyHYjvdtkprAnzK
	PS7PTK2MB2Ecmg1YsV8/hcvGIoGUfGyOyJoi9qmz91guK+zEC29XURESSvr2OrU2FDarXBLBLmMLE
	mQhwjS6aK3KAnt/xzm0In5J4cdp3UhahVBcJv0csXIligO//OsE+NL3hYFmzqMJgEN9fK20Wm6zIe
	iP/ocIIfaiHQMhcSHV2/c6uWx3LHRqyPvqnjynOfJNu9zZdb19Hd7HXqrTBE+WJKOmF6vN/7SQU+Y
	5juQYIaIY/mADtJBqvnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69tS-0001qD-18; Mon, 24 Feb 2020 09:19:14 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69jr-0001cC-Un; Mon, 24 Feb 2020 09:09:23 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 7F539603;
 Mon, 24 Feb 2020 04:09:17 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ELS0WPf/SOWgR
 mLsSk4Vx+kMgU2ASZug2bi8nH7md6c=; b=TMBFAPqiQDlV01vcC7csL6l6Jblsv
 XplWbTIpQpcKyuLHJwnZZ+DiApNt/fNoOSALHb4nt+Ghfd1MIU6oja0gfKlI5jvr
 +5aAGNhQomjUR+P4P1zxr6Y50LXTLozJpHjvc6WjfgesqSAnlmperdaa6l4nj9cO
 y4GPvDXBZGIhi+UiSWJ0GmRv3MS5r0vk+FiDYD2T6IL2qoysMxXcRlJvJVb2esFd
 PH+IKDvbAsy3yZyvWwjhIPLcWG1CuwIFSjRtzdAlM3EH7XiNBxY7RvFzv2W3/nOy
 xbjFaztlMmiWRZ1mCfp4Q+rAnIWRFrAxJl20ykeTPnS7sJ4HyI3bZwR/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ELS0WPf/SOWgRmLsSk4Vx+kMgU2ASZug2bi8nH7md6c=; b=FuuxalAu
 KOKLyXDU2Ku9QnSoD9UGBID5QMwZyOUxlQCzI+rGXoePHEmgHd5FzpMWaHJ9Gz2p
 yk3mT5h22uiYyO7iZCT+3CW72kQfCJhMTv4+EkjEu11K4gX1SCJi9HzDC9q3A09Z
 g9klkWzLOFyeciDO+8OQUSZCzi0ufUdirInrCzRf3afrW08Tr5oQp4XROdH26Upo
 gH/50hm8TCbe1eujP/pbLoQ1QGtv+wtP+fLbuqAo/HolLgjdeyFoUcpWwJDhxtfM
 j31x/L1k+/uFKwvOl8uFwgr2TTxbHKW0VngrOK1uBJfyb37U5RSKEKK2gzZ0R22+
 jNlz3ngHVmrH6A==
X-ME-Sender: <xms:vZJTXuJ1-jWdW4VXWsFWHY0HK0veN03CWBgfz5yG_d0njBEWfqNg4w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudefnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:vZJTXsFe1SaHn77NtTfc0sqVEfJ-miaNt8M0Km-fdr2L2ufuRXsUmA>
 <xmx:vZJTXr1dVFmmX19BHk2FFa7dfztk34-PNaAiLOrcDImoUJCxtnxHfg>
 <xmx:vZJTXkLCSb75XrMWVLKceFqLMMFT1STJAbyzBJN3TcbQWlAi_EtThg>
 <xmx:vZJTXtjz2B7r7OJMDeDCFTwtThGgYMm81I-WoOHlXlmE6eAoPtQJVlMfqk0>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C00923060BD1;
 Mon, 24 Feb 2020 04:09:16 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 19/89] clk: bcm: rpi: Split pllb clock hooks
Date: Mon, 24 Feb 2020 10:06:21 +0100
Message-Id: <5a40506025566ddab97109fc0a66eb9e0c80d9ab.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010920_262430_91211287 
X-CRM114-Status: GOOD (  10.53  )
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

The driver only supports the pllb for now and all the clock framework hooks
are a mix of the generic firmware interface and the specifics of the pllb.
Since we will support more clocks in the future let's split the generic and
specific hooks

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 30 ++++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 13b7ee148824..6ee2c6639604 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -104,8 +104,8 @@ static int raspberrypi_fw_is_prepared(struct clk_hw *hw)
 }
 
 
-static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
-						 unsigned long parent_rate)
+static unsigned long raspberrypi_fw_get_rate(struct clk_hw *hw,
+					     unsigned long parent_rate)
 {
 	struct raspberrypi_clk_data *data =
 		container_of(hw, struct raspberrypi_clk_data, hw);
@@ -118,21 +118,27 @@ static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
 	if (ret)
 		return ret;
 
-	return val * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+	return val;
 }
 
-static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
-				       unsigned long parent_rate)
+static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
+						 unsigned long parent_rate)
+{
+	return raspberrypi_fw_get_rate(hw, parent_rate) *
+		RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+}
+
+static int raspberrypi_fw_set_rate(struct clk_hw *hw, unsigned long rate,
+				   unsigned long parent_rate)
 {
 	struct raspberrypi_clk_data *data =
 		container_of(hw, struct raspberrypi_clk_data, hw);
 	struct raspberrypi_clk *rpi = data->rpi;
-	u32 new_rate = rate / RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+	u32 _rate = rate;
 	int ret;
 
 	ret = raspberrypi_clock_property(rpi->firmware, data,
-					 RPI_FIRMWARE_SET_CLOCK_RATE,
-					 &new_rate);
+					 RPI_FIRMWARE_SET_CLOCK_RATE, &_rate);
 	if (ret)
 		dev_err_ratelimited(rpi->dev, "Failed to change %s frequency: %d",
 				    clk_hw_get_name(hw), ret);
@@ -140,6 +146,14 @@ static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 	return ret;
 }
 
+static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
+				       unsigned long parent_rate)
+{
+	u32 new_rate = rate / RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+
+	return raspberrypi_fw_set_rate(hw, new_rate, parent_rate);
+}
+
 /*
  * Sadly there is no firmware rate rounding interface. We borrowed it from
  * clk-bcm2835.
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
