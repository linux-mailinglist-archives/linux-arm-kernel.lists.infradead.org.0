Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C891E48B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8gVZRVrVVQlJQf9a37afbQ6dk1nOPki3lXaUZv/mzY=; b=IEZxQARAZEANhz
	VyBg+RJHIvLevWp5iwgIuJGqrhhXm2mU16w/qzlII331P0pAMu7Z8Ige3oKD0oMw4nS/Rr8ZRVwWJ
	K3/jF6ZzO7GH4S1wMLm+YrjqevbtA6JVY2z5Omg5gN2kCO0ITyiqZG8CSaWOJ/3EGJpnbMGMufbAu
	g+75qlHfObTmOWIh++ElZAC1qbkx7jkWytQF+bz4iAinkTZV3wzROy7zWT0RaxW0zXlXIe7sJ5l+I
	r2+8Umz09NO9rcxPJPeq79zlE89lKUf42dp/7bpl4TNxCFZpj+0t4qv+KfTMuqRx5JMylEIiUl8Nd
	82tw0DBkoX+XOOtc1Haw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyPY-0007V6-ML; Wed, 27 May 2020 15:56:08 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFo-0003ep-FL; Wed, 27 May 2020 15:46:07 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id D45325C022C;
 Wed, 27 May 2020 11:46:02 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:46:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=/IdQH2nH4CK+s
 IwdlyXU/9/PW3BDGx+K5YD8cFcWaxE=; b=tf3AqUsBCcSCyGJrQktLAndFms8wG
 uQm1n4OuyniBECD0B8iV7Yq9Q317Sev2eQNP275a2k6UNs0bv4VdZUqL72YzRaW3
 +uTo9kTTpU9KVeJ8GK4Mj5tGYx6//mHwwCge5u3Yzcgt14lSqqr4NPpvGloSckA0
 pocQ2bUraZYDddhdgQ4L3AYg/cCYtMM3wf83YIgcMAvzdaSLvGDuAkIvdnBZeKuW
 KCHxDiCMjAsvQP6C9i4cbDzZECOk9eJOXloUkhQHTChzCm/obMb0WLHmES6a8muX
 yLBHzCgfr+uLyjqgvIXSU4rl8AAZeI6lWD6FQRfxCaStQejrLfm9K5ZHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=/IdQH2nH4CK+sIwdlyXU/9/PW3BDGx+K5YD8cFcWaxE=; b=lGQUFNi8
 EqCqChsw60m+aOiBoYzILwmwiMDmdn1QrW0b8JEZtUvsoCRPRvMW28ZJflOSN5qA
 MY3Fo83/N+AyZxGFSOxu4Pb2vwwd81KX5CJpobO3gECvV5D/VRqOXbDdrB8nRzjf
 s205viK5jUy4mZzv4ltmSN7nJlHYBbdgbFQcVv5foWil3gM+jgyyBJIPaa3n/LWW
 8/brLdc8ilW1+9AcFm6TnE87DOjVGGxWivtrxxMdsE5cS6zaPIWjgmGYHrl8Nb3z
 3sa2kzKkNCx4jtuiDpx26JbMPUCCdUOqUnOquUDzh+ZuOfpQMy4WsGsYJrKX9ljF
 8REQGkY/jhUa5g==
X-ME-Sender: <xms:OovOXvdOEMDlN2veEmho4Ng5VxdUceXdq5eccpUD9AfF4q7yuvqa9g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudekne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:OovOXlOljbOU_ppm1qmIrQbdgtBZWB9DFpZXQPjGmbk-zGq4bw5weA>
 <xmx:OovOXohOvA-4EsUhAfxwWqL5WjrWM98Xh--SNcb5-VU-Zbfxl_wK5A>
 <xmx:OovOXg8M_3tjiFZfhrLPZeDzF9rOxUAykOuaRQW1rB09_DOBLHEZOA>
 <xmx:OovOXhXwfNoOcxc0qRdh_V_0rhKAzIkbNMprNkeYuN8emZ9T97J6Bw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 59AD33061856;
 Wed, 27 May 2020 11:46:02 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 23/25] Revert "clk: bcm2835: remove pllb"
Date: Wed, 27 May 2020 17:45:19 +0200
Message-Id: <b7bcd08ff1cff914c5b8b2546665a3f9fb9a58a8.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084604_843759_76270E44 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 2256d89333bd17b8b56b42734a7e1046d52f7fc3. Since we
will be expanding the firmware clock driver, we'll need to remove the
quirks to deal with the PLLB. However, we still want to expose the clock
tree properly, so having that clock in the MMIO driver will allow that.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-bcm2835.c | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index ded13ccf768e..587a67a3cbcb 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -1678,10 +1678,32 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 
-	/*
-	 * PLLB is used for the ARM's clock. Controlled by firmware, see
-	 * clk-raspberrypi.c.
-	 */
+	/* PLLB is used for the ARM's clock. */
+	[BCM2835_PLLB]		= REGISTER_PLL(
+		SOC_ALL,
+		.name = "pllb",
+		.cm_ctrl_reg = CM_PLLB,
+		.a2w_ctrl_reg = A2W_PLLB_CTRL,
+		.frac_reg = A2W_PLLB_FRAC,
+		.ana_reg_base = A2W_PLLB_ANA0,
+		.reference_enable_mask = A2W_XOSC_CTRL_PLLB_ENABLE,
+		.lock_mask = CM_LOCK_FLOCKB,
+
+		.ana = &bcm2835_ana_default,
+
+		.min_rate = 600000000u,
+		.max_rate = 3000000000u,
+		.max_fb_rate = BCM2835_MAX_FB_RATE),
+	[BCM2835_PLLB_ARM]	= REGISTER_PLL_DIV(
+		SOC_ALL,
+		.name = "pllb_arm",
+		.source_pll = "pllb",
+		.cm_reg = CM_PLLB,
+		.a2w_reg = A2W_PLLB_ARM,
+		.load_mask = CM_PLLB_LOADARM,
+		.hold_mask = CM_PLLB_HOLDARM,
+		.fixed_divider = 1,
+		.flags = CLK_SET_RATE_PARENT),
 
 	/*
 	 * PLLC is the core PLL, used to drive the core VPU clock.
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
