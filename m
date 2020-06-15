Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50911F9219
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1CiHFf5IkFzRUzGc48GKHqkCb2kM/QKckPIYg1Qjo0=; b=dw9hZxjbevR8Cn
	8qMBIDi1vVKPwhksXKAdvW1/+zVkGKDBFI3Dkg1KHB4A9ZUXlDxhUjxPWuFpEBma3A9OfItWvtaAg
	HSPHo50fTMU5mTuaE3BYPKQrmtj2Q452rXO72C6ohMtIiT9EygrBsA3a9ELf12z5oqt1C8v26jBfH
	m6vD/9NFNtSauBBa0SuKNC/jJY4/sq8ptoupjxdXYAZIfADXIjtHBXQ32c6Pv/5B8tdL6A2Ts0OAf
	B8M13K4+iZd9LgTPqKN80TDXhpsLjsY2fWeHwbfgGwQzU0+K/+lRduatvSTGTszcHZBBCwOw1dvBJ
	iJQHvJtZ3bwIqBENTVww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkls-0008QU-HC; Mon, 15 Jun 2020 08:47:12 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgc-0001qv-Sb; Mon, 15 Jun 2020 08:41:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E768258014F;
 Mon, 15 Jun 2020 04:41:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:41:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=KRqld367kMSHi
 Xes4D71sSmAl9sm713CRvYZUaoStF8=; b=SUg3kHkJxSeo2Jtu1cMKcUwvUAtu8
 hMy+YOoEh2CkRnHuRoEN4gGWFRTjidUMjqXs//0SZXwADLvLRcZ9Ca0XNiUNpWTN
 tW0Jn82LRKT1tKNZcdbyT2DM5+6rxvD8I5xOsyVh2qziK31PKMpJSR5MzpOnyJmZ
 MetTUYemebS/HOSOrZbOwhIcSgHxTahyUplaVHnMKftMEcT1URtoE3GArCgUblVs
 ThF9OAExYPsK+QvA45ze/TRhzsMeom6ZRJ2bJ5u1yqj1smBh/RU4giYs/2MPTe3M
 RM903A2WeIggRSAgxPvVoVVpPppOj0n+ZlU3uYkOUVnIDP8biUD2tZoBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=KRqld367kMSHiXes4D71sSmAl9sm713CRvYZUaoStF8=; b=tbFKE7/Y
 +91xjwE8pwr383H1EpgtAv1POJk3qYCmXW3bHiJJR7G5+whyLMUCxqc86leg4zZX
 kBMfq1YLUpk5h8UkLraxt9+LtRZKUx+DLLSbEbivtok/zB4HS9yuyswV7er0iFMk
 4FoGqIIER28/a+8FHPJzc5LQH2H11PTpu1905rVQKFy3SveB4KbkETZ6zyia6z9y
 SadWbb339MxTPq1wiFF5T2f961YvNHnAOzP9y1Tv+ZXCNtg6BslqG7keSakpIkc3
 4PN0tIZUfM5ls4HWHaH8CSzjNZDT8e49ya3gd+Pw6pNby0iOXLKOqLrfyi7eSpZj
 ZoQlbpICzi3GZg==
X-ME-Sender: <xms:STTnXjiFSmAy_ABDg4NLaz0cZPonN0OCWEzQyojXmZEw7XvNU7iQmg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudegne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:STTnXgAlAZtKJqlSgOPZWTsPzEy2JQwsTzKRwguvItlmTvZLRXKwHQ>
 <xmx:STTnXjEZGxr_ew0ydmsGaiNk8sR071KAuWRX3li4JgK01sOEUp5uXg>
 <xmx:STTnXgQsO3KBK_YVgq9tC4__TNzx9z1Wqwrv8UYyS3i_Toz7EZ4GnQ>
 <xmx:STTnXsdVQwacgpIa1wvg1_YLa359C2ibhfYyAjUAapoe45eoRiC87Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8943D3280065;
 Mon, 15 Jun 2020 04:41:45 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 16/27] clk: bcm: rpi: Rename is_prepared function
Date: Mon, 15 Jun 2020 10:40:56 +0200
Message-Id: <ac93cc4e245316bb7e7426ac5ab0de8f3d919731.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014147_075505_F75AD9AA 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.224 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The raspberrypi_fw_pll_is_on function doesn't only apply to PLL
registered in the driver, but any clock exposed by the firmware.

Since we also implement the is_prepared hook, make the function
consistent with the other function names.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 3fce49a65a79..58ac1b104429 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -85,7 +85,7 @@ static int raspberrypi_clock_property(struct rpi_firmware *firmware,
 	return 0;
 }
 
-static int raspberrypi_fw_pll_is_on(struct clk_hw *hw)
+static int raspberrypi_fw_is_prepared(struct clk_hw *hw)
 {
 	struct raspberrypi_clk_data *data =
 		container_of(hw, struct raspberrypi_clk_data, hw);
@@ -166,7 +166,7 @@ static int raspberrypi_pll_determine_rate(struct clk_hw *hw,
 }
 
 static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
-	.is_prepared = raspberrypi_fw_pll_is_on,
+	.is_prepared = raspberrypi_fw_is_prepared,
 	.recalc_rate = raspberrypi_fw_pll_get_rate,
 	.set_rate = raspberrypi_fw_pll_set_rate,
 	.determine_rate = raspberrypi_pll_determine_rate,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
