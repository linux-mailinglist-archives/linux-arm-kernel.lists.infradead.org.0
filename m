Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6511B79C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqSGqUEFZddszpikHvdOUKJTZ3OtpSOW/S6CDIQRWkE=; b=SPJFV2DI3KKoKY
	2FLxy3BKqf7V4/IZih7f2/wh4WO4rVxNAF14AJqmun5aydiDRPfXab0+hXbYua2+pwt0nt/vopLCd
	zan9AxnIEKRtp30dzPBoTwAkeb8XtVO9QMU6x5W7vx4/DPWzUNU+jAr8bO01nbmJF6G2bNajT4OnB
	W+lra1SE7tP24xAAG+Lb/RZwng0DxfL84hOrMl6tvPPCxDEJOH0NjrN2obveAQ3wHPoRFg35oL0dz
	Qfq7NQinL1pnt4r85kxJeVPdwyuRqRuO2b5fs27tbuVE1z8gOFeKFrZAyoKg+I+16vsa9m44l2m+F
	GU6mN8TrA+53VZ5IA3hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0Pd-0001HI-SM; Fri, 24 Apr 2020 15:38:45 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0MZ-0007QO-Bq; Fri, 24 Apr 2020 15:35:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id A328610A2;
 Fri, 24 Apr 2020 11:35:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Q0xQzta3vxRt9
 2eurDQl3ATU7iLBuCrEm24XOmSc6qQ=; b=HI6HOkm/s88oA5lwX5uW0iVmly7Iw
 85uq3muY7TgJ9pvKB7AxffHtTocCHjszXXWpI3DDr0319xLBnkN4NrXXBCn/Klpc
 Bg6PUyCiWWGtiM+4b+nCJLWIDVD3btTWokcObKjojaX2jSqCVm05tAeyJeRK/67a
 jYoWEz4K8BSOkM7obUyT8mR7ntJDT/3AJJaB90Nt0la/cDwka4JOH22TUi2McnZg
 9o6YO3FlJO2P+yM5tCDzNZk8YxnI3DD/quUFnRp0ffhy0gfFyj/C1GUV5UN+utj+
 WZDzkL+ozLxIVlej+m+d1p9vGyCLwT7S4BTAJQxFopK6WFnscDUz+wn1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Q0xQzta3vxRt92eurDQl3ATU7iLBuCrEm24XOmSc6qQ=; b=jltMhk+G
 i2j1aDMk24Tg8Um7bnmTKj3pY1rhSU3JXnwqHk42qjQOrecKRlk7ZEsYUdFgxPLz
 tH8ulNAyxe7NA5n0rI50StjYhhTNKDay07HuVYWkzAiV8zbzPXMyf+YZmfw6iO41
 44lXElw/wO9TmN/rFrj6UhJo+UAEMB85NcIM+F6v6LsvILTF8A7Ll+x7jditXtnl
 s8wuZWy+7DENR2/fdMGm2wrTpKqSBA+IdGFYtF7Hew0+y1hJBXme/1ScIBUSi65Z
 wZNudyLx/pWd8cDt3zC9Mf5olD9y0wq0E0ap+KA0c4vzKi2IImfGMklh/x+NohBE
 pKto42cGbZ6Jxg==
X-ME-Sender: <xms:QwejXtfuqhfefUxIK_PlX-0CVQ6JP6-dD2llwPSfBdd1tgMM89d5_w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:QwejXsII-OBLCgCNSDhMvhLsFQqFWsTRxRchY8T_L6GGbNLNYpTTNQ>
 <xmx:QwejXuZR3uZQ175TbihAxDbzC2u4jCbINTtK0-8CROqAPZD5_73Dvw>
 <xmx:QwejXsbU1qo4ZnuUJs85o9Q6XRaRgZyeZYkMlW4LnacL_bIre8qQZQ>
 <xmx:QwejXkkz8v_y9DuWSr8iJU0HF-Y0CQVvhf16QBK0V7xwRo2Z4RBvt8863Yk>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D9BCA328005E;
 Fri, 24 Apr 2020 11:35:30 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 06/91] clk: bcm: rpi: Statically init clk_init_data
Date: Fri, 24 Apr 2020 17:33:47 +0200
Message-Id: <eeae1a92da7812f04a034498d3a1cb60e282fec7.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083535_461426_A2BD3416 
X-CRM114-Status: GOOD (  10.15  )
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

Instead of declaring the clk_init_data and then calling memset on it, just
initialise properly.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index aedeaaf2f66b..b6d2823c2882 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -175,11 +175,10 @@ static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
 
 static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 {
+	struct clk_init_data init = {};
 	u32 min_rate = 0, max_rate = 0;
-	struct clk_init_data init;
 	int ret;
 
-	memset(&init, 0, sizeof(init));
 
 	/* All of the PLLs derive from the external oscillator. */
 	init.parent_names = (const char *[]){ "osc" };
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
