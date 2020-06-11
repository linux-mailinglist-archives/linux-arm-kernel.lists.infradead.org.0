Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B811F62CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8Cq6kyq63GwrKUGb5QhGerb47mA8TKSxCds1zZsxNU=; b=Zm6yfGrNGq9+sY
	pX30NKXKFf6+Ma5g9oCzuWWzkuTGK5k8pvyK1k+B2hQjJnLVX0Fan4+XFlGr33Uj80vXI3XSqfaby
	KLPzPOd0UavEX4Ga8KYO4Qi8uoKwISVJuNO/PE24kcc4BIfmfvHjgfx1wEkp8Bmmdtet+RHvceYc8
	YYbaG9TxpZnVuyTrMIFb1+mWI5gGVlaY8VuiyuW70BobN7r1wE1pPSN8mY/2IitHgFByyDuHb8/dg
	Radjtr4+sW3AlK9q6/ouuyLVC9ctO9yIq7hAdTOGKHAU6+6zy2y383Cmdg0ekevWt8PCaHrtnT21J
	Wz+K+38I6Cz0/cjhYiyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHpA-0003gX-Vx; Thu, 11 Jun 2020 07:40:33 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhq-0001np-7x; Thu, 11 Jun 2020 07:33:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 886045800D1;
 Thu, 11 Jun 2020 03:32:57 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=SGor/vFDB/XZ/
 dnJR0vAHVbMnfcW44zyTkkJk0votSE=; b=Kv/a90dQVAjMjAND1HNKxlnQjZf3V
 Id5mqYU6DzfalJH+dG4tpVDofTsFmPb2EhP67J0fIcMiFAx5MdyWmbHdk0GZTYw8
 LCEfPz0Kr2Bdu9pRQVAjF5/ydCE/Q3Ljf647LMG20go64lDENLPUph2SNm6geVJe
 nLsfr9qnIN0C+qdoIOZNDaYbj2bBch9wi4Nkj6wMupRt+D9OEPTm5QUKB3OB+7Q0
 0kmuT0QPhnQKcPkN3yxVKrvmFADBUR+P8hE1OCkBPayWyPr6dyeUzc1ksFFgZJnO
 Ew2ryTH8lS+krLKotWKilju6HW9JCmrc5uxc5PL4UxYwvdIKHGiJ1IaFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=SGor/vFDB/XZ/dnJR0vAHVbMnfcW44zyTkkJk0votSE=; b=QYNFOOC6
 SQSAfBpHCm55xeS8HA/PFhQkuqcTY6sVm9BiwVkut9uOzHBgj0kUm1oaPIU+h+Kq
 aT4R3Bq0LRWVo7be+RLkm0wV5aCWmHs/Av72mvXn9+0mXZzPL5Mm4ssbIkl2iqYF
 z6s+Z7bUr8ySpkM89UKKdZphsANGS3gpg4HrCiXS9/kc+We1zLs+jPE0sytAf6Uc
 TzmOfHx0ChzBuyc5V27LLEeG5w1XrIQ7lTpVo1mbGHuLaG093jwLuvVvKsF2S4PN
 C8vJBwMr7MZ4ZpUacFy51r5+qzAORgnWtcUMeSpoyBfHkan4oEVtUZKiAqhi3Ore
 Kloz5uu69GHGCw==
X-ME-Sender: <xms:Kd7hXhalnmlcx_3OCrWKpNv_UCx01HUDoeGd5-V67gE-mH9O60R0hg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvtd
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Kd7hXoYqHA2Q1fFK_2FWubrKqKzLKrPqzKVacCdudAUwISkcnTpV8A>
 <xmx:Kd7hXj_XGkKuRX3IpOeLt8nQ7QSjFpaptI6H5A3qMVJz9sLvkfxKRw>
 <xmx:Kd7hXvqrx5ft3RY7S99ZMMEbrag7WfrgwB8QAE3wP-57gI02KSh8qg>
 <xmx:Kd7hXocNul61Wq9E7nXTbM6_k2NC9Dqwo7LsAXwTTdkW3Z82L0N8kg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 269FE3061CB6;
 Thu, 11 Jun 2020 03:32:57 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 23/27] Revert "clk: bcm2835: remove pllb"
Date: Thu, 11 Jun 2020 09:32:12 +0200
Message-Id: <2795d7ad33c9eba631fb356df7ff075ee5e8a0b8.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003258_527908_B869E494 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
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
index 6bb7efa12037..32f5c13be9d1 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -1684,10 +1684,32 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
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
