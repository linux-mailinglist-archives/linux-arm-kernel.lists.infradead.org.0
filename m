Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBFA1B79C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFZpDTIkpXgeOe92i1YHP3g9lgOtX5JEEXuMutVoLvg=; b=JM29Sotsd+0hyG
	GOvp13esf+tv0K4NWcVHHGYbj8ipH+8sD93Z9gpsKR0QoicwLiBjIbGeIiLWUhfOFtDZHVzzf/1aw
	E1hNAzeQpfG32CiILK4BGcdc1mEMDavtuRTibt8d69O98GMrwcUFzIjAL/eyhxKzEGs43ztl8MMDz
	aZnHyDbzgw3O7u+yt/mvAOFPE6isSaJypxeotYy5AAPCVqFWAMfXnSjZtfAJ9ddILWPhFvIw3x7nK
	SpYiiuOabX12YgQLjeleugqlhSI4LWz6qvfP7JiEqJcTbytd2az4sRTPOtl2cV3LJdVG72u0EXXfK
	TFBCDQlVVNM2V14P16vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0Qh-00025d-0t; Fri, 24 Apr 2020 15:39:51 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Mb-0007Ro-5d; Fri, 24 Apr 2020 15:35:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id C6090EB7;
 Fri, 24 Apr 2020 11:35:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=bKSy+blvmCNF0
 dSFR73sumQcWt8VaokjCxExjWW0esg=; b=XpIkg/RxlOOS6DIbhgnMMwxw0zFEd
 Hb9DsX1ZU4B1wSt8wLQB+iM3vt/XlE1pDqS5Kb71jDmNonaTUDFOf1bHQlLYeDOI
 LVPr0+DjhtAQj61fEpJf534kOGWp/PMcUieoHKgkhmKO6OqhGhfFaJqnVRqqApJ5
 jldguKg6W8pJ6I1IXb4yJt/y3L6Hq2MeVpyDHmGMOcKBmv1WgL+WzUJvaSufH3o5
 /qmwikseWBlMK0QmeG8Ycpu8Bj0J+6KOpeE//2FQ9rpZ5xRPe0/Y+B9cQy8GOIF2
 ZfYDIl5cN1gnl5u137h0AOF6s1CQrugpriVTwEh8SZmmlxoRvTGFlqXeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=bKSy+blvmCNF0dSFR73sumQcWt8VaokjCxExjWW0esg=; b=e8xNkNDC
 Ub7hPWePdSeE4oSBts5XoE4fpx62jcnY6VugTrWrjKglBPj7GatnQ3wDN3XTBkA4
 4srA4GJBgnaz8P+kUv5HPOpJ95E+gGiUL9QrbuNGHYid5mfdGyWlMlhNGjkrSu0B
 mpuKl2LfJf5mmovBYUTSfg3bmWwu3vkknKL4yMWFZDThvlTRDnHLRLhCv/GnnCBa
 MHBVtfx3MVeZTCtvOtiuMncAG+SRhvh9mzhiPIUoroSJfBKsO2ZLnUUbmXUNxK7f
 cdpUWhWCiaYC9GwsU2Xu4oLHBp8BW0yKXcI0hQAYETHu4jzZywaeCObclPVRI7jI
 j5IsxTmdVzDJwg==
X-ME-Sender: <xms:RwejXn_uFOykmPuHQF-1wnQEcL4zeDGbAz3biW7fOqbGRCLqkKqhbA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:RwejXqMb0EOHEu06qjFyqCxt7k17Se7rbM745aVcaLD5MkQnDRWeQg>
 <xmx:RwejXoPXsAuPdVWM2SmC_mGVZdGT1K6XNM2i8v_LHYDxNWvv9JyFiQ>
 <xmx:RwejXtcJEGHkfQxFvOJnQb_KFAVpiBN4lhpjwk4nvgdC-dUWTL3Jww>
 <xmx:RwejXgY73G0NJFT4sCFKWjaakw4tH3Q-MWkgnBuYgLO7lFDoNsGw1EQg8YM>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0F7B23065D9A;
 Fri, 24 Apr 2020 11:35:34 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 09/91] clk: bcm: rpi: Make sure pllb_arm is removed
Date: Fri, 24 Apr 2020 17:33:50 +0200
Message-Id: <3eda4a838ba441b5cd8daf59a7e5115172d82c97.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083537_257782_812F6DBD 
X-CRM114-Status: GOOD (  10.27  )
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

The pllb_arm clock was created at probe time, but was never removed if
something went wrong later in probe, or if the driver was ever removed from
the system.

Now that we are using clk_hw_register, we can just use its managed variant
to take care of that for us.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index a99e8189311f..859eac020122 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -240,7 +240,7 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 {
 	int ret;
 
-	ret = clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
+	ret = devm_clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
 	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm\n");
 		return ret;
@@ -250,7 +250,6 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 						NULL, "cpu0");
 	if (!rpi->pllb_arm_lookup) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm_lookup\n");
-		clk_hw_unregister_fixed_factor(&raspberrypi_clk_pllb_arm.hw);
 		return -ENOMEM;
 	}
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
