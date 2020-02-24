Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC5016A1C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:19:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8aqjjYBXFFeIjIyTSlo7Ayiyl4ffHJ64SWmX0kdJ++Q=; b=ZZOiLX7B6dqjfq
	7mYJGTinYvznAIlO/eOdz/PP171I4DKNlzlsC1TPtHzq0yAzfm+MnOxrtoHp1TmCKIbDaMpXzKtNz
	4kjJIj174zAMm2d+lv7GM9ELwP9vVNq2uvZd0AezOvnuK+v4cFrCtAo1KGmnUdAkeZ31Qs5VaqXeo
	zdUEuB+nB0Nfdzf68tXV7DBYXGsEtgchuCy3RWxAmRr5b/WHlMVQ1LVlzUEYNYtvIlQV1WknJH4wk
	YJkNRX7F79Q2oEJm1icaQpSnepSf09f72YJBSp5KrJgeWU089l8hZQE8RC8VDK7rU8lJqucjJB+SJ
	yoqrhv0iAi5nSAOImSIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69t6-0001Zd-T2; Mon, 24 Feb 2020 09:18:52 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69jq-0001b8-Jc; Mon, 24 Feb 2020 09:09:22 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 0EBDF601;
 Mon, 24 Feb 2020 04:09:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=CB7SzUe6JIoJx
 R6zFLxGf3ne1PVHiTVHh0yVa9JCn4s=; b=Iarp4NyUrldn+Fy5XRCH4Pa4Wh/X+
 z3eY5aNCUkb56hp4+mGhr26cO2Wwj8IDlfcd5aJabBiOEyw4MjnC9syyWfErr/zY
 pLr7IlwfHwYx+G8CSPHVIwEZkyj37T5TuC0RDxUIOCsczKYxhbrT35lCfKgz0EJl
 8f56n93ObLAL6U7ybEHvt9dBfu6ExYU6EKESRI87AwaoxOuOSLheoc/XZ8OLpz1f
 4GWTZZqViZmTqjHsrcqg+lMS4rOtTCBSPDwhpi6424pY0+8zdshF6TeNalbizO+E
 +bgKHHmtuSwmjg3UFR+1JDlY65dWu1XAwAg0CoYuIyVazzlp6zHxRanoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=CB7SzUe6JIoJxR6zFLxGf3ne1PVHiTVHh0yVa9JCn4s=; b=SS66gsoE
 6SabthsyYt7CiJnMhzSe9gBKbEq6Goj9uV9R3rCDBJzXFyhBWtaThIQ5EGGomWBk
 NqUop21jS+wN51CORWtkHLEqur28owvxbGkRVP4Um2JjN9OKphn1qvUCqNwrqjL4
 GwLeD6ztQZPgtSKkec2G8xTVwY377OKnZT+ZtAcTEB1kpO5DykztEfUfthKdxCUU
 8W3pQs9U8Y+DXQeLOH4ynvO8O0Fo/frM2xWK4ULlOrejNdAA6BWsjR6B0RXIaogr
 FS0dpZG19B7s5A5LG1nerJcbiKj3o2mMrDD3WJNMpyUMuf42VgnzVdFVqziMYWar
 Q1zBNpYirR2ztw==
X-ME-Sender: <xms:u5JTXg4W6s43O6ybYa7l3nFnwrbKBs31Si2Gm9zIuTLIh-8BIToy0A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudefnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:u5JTXogR_y0aq2rRybWBvFD2E7PMKkyOm-h_xR8sCFJkoDyPz8phwA>
 <xmx:u5JTXmmU-ExXIbEx1oj2gvpz9stOAktRpYe0IeRnIduZ_8MeKyh1eA>
 <xmx:u5JTXiFeoEUZbmC3GDYYlZtxEy2B_u_nJn6nR9Mzs_9oYT5Ly8Mx-g>
 <xmx:u5JTXkb4b939jGeWbUpWvkiOdXcBwpIlG4jROppeQLLKRZNVfQt1tsIPhGY>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4EBFA328005E;
 Mon, 24 Feb 2020 04:09:15 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 18/89] clk: bcm: rpi: Rename is_prepared function
Date: Mon, 24 Feb 2020 10:06:20 +0100
Message-Id: <cdeaa4152ac84aecc362e09153d1427777e3d933.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010919_164511_C0D01AD9 
X-CRM114-Status: GOOD (  10.34  )
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

The raspberrypi_fw_pll_is_on function doesn't only apply to PLL
registered in the driver, but any clock exposed by the firmware.

Since we also implement the is_prepared hook, make the function
consistent with the other function names, and drop the fw from the
function name.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 3b2da62a72f5..13b7ee148824 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -87,7 +87,7 @@ static int raspberrypi_clock_property(struct rpi_firmware *firmware,
 	return 0;
 }
 
-static int raspberrypi_fw_pll_is_on(struct clk_hw *hw)
+static int raspberrypi_fw_is_prepared(struct clk_hw *hw)
 {
 	struct raspberrypi_clk_data *data =
 		container_of(hw, struct raspberrypi_clk_data, hw);
@@ -170,7 +170,7 @@ static int raspberrypi_pll_determine_rate(struct clk_hw *hw,
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
