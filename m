Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661A716A1B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:17:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHou0yqB9Ecx7gScZo7qXxFmhaJ2rQwE8OAJXuAzDXU=; b=Ub1/WH7CR0sLFm
	l3yZlu/tfFDjiRJS11gpaxIFgK8gfIdycjZwK/L7xFcKvZQGiyK/Ri2aFI2bO36PGw5gdfc+CHQOa
	FcbFp0r3pSUo5m8fdnI78Y2G5JzeSZ/vV0K5879Sx9IeshS98keGGiYS6e1PLxD8VYPIcgyAqvcCe
	qlZdzLoTIHvdkK2dpp5e1/UdX235McCCFlnn6RZhtgS7OtDOt3oZrvhSCGYRL/0ejJm8sshuA9EZO
	bhxG8qA6gKavHPU9Od6UyJuF5yx4FSnvwCUaO16r0J0yaopLcjBrNj6a6ng1R1JwDYbmiQUA5cBta
	UVqkkrn9XVjZyjJTjqIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69s2-0000md-6B; Mon, 24 Feb 2020 09:17:46 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69jl-0001Wb-DF; Mon, 24 Feb 2020 09:09:19 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 20E285E3;
 Mon, 24 Feb 2020 04:09:06 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=3M4EyaGONSLCL
 toRUS3p9if81q7yU+s/124NlIsYLBc=; b=uvzNVw6B7+xtv6hNLktricI2W8I1f
 pEuOZb0VTQsUIlDONpYTJgzVM7Hk7VCjQpEtE/I788rOmR10XPFcBUCPYOuwbuV/
 s73RfW++BWGAbjkDw0pRPuJOVHRaVXPS0ReQ9DeRQp89mMIj+XF7nTJl4+eevPci
 1fDWVNXD+b8AfV6SGuz4XdRQc2tkUxsqryoe/iBmK8OjtOcvudORewP7N3LwD/dK
 vUQ0bIDJRZ4hRQmFrX1h63OmG3TAYJ9eCuJr5Nqxfa8p6NC+xCEqrnmdEoPlOHEU
 7ZMRlbHCN+KfH6GAwtvVnAqsakdiUpKn9y+qeoRw+LMuOzGe/Rj3qJFWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=3M4EyaGONSLCLtoRUS3p9if81q7yU+s/124NlIsYLBc=; b=sm8FQuxJ
 AcmCRM6UpMV88VDFYZ97c+Gxr+ugl7+JE1WafLoryBNrme4C8GUd3fbtEaZKEvJe
 IcqGXVrKENIjJtzcu4aMjCMFekTvT4KVJT7MCC6NzeuEwVTH1bntBqnvr31Wjtr7
 B7bhR7eFgfGPJUpzZCUc1H7M/hg1lMMn2/y/XxBQntRQYjX6snIgGJvf1F/unuEo
 BiRuvjzsSghzU3f+jYs1/uN8FVFs8JXIQeFssMp4v3sfnoHGkHR3nhjDfJja6HV3
 3ngI3GzrgaBxFhzIx02XWBknNZ1W3Ib/7vIl64GBDb9TUzdfNq8OcGjmVTc8ClN6
 ISLxHKAh6gQJIw==
X-ME-Sender: <xms:sZJTXiSIbk4F30TzWWUkCwVUklQ3tuw24XKv0LZiZ1bzl8gJqn7kPg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepheenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:sZJTXvbHR2T_M5429C_BLP4EyqngIleMz-e0Lmm2p7-KgAmY0akknw>
 <xmx:sZJTXgAvyPCDtXn4dkAACkRi4BWMit8GMAyvBkm4kq-ispYSLn-cuw>
 <xmx:sZJTXmDoNxrOmGre1fDLdPK1J1qM1DHX0Pl4Kbaz_VZsiLc4VZWxUw>
 <xmx:sZJTXsJMNlY2WGCDqJ_R4C6jjsR-Hc-AbPbpbGMtCMyuw85u91PabZI_XeU>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 58D4A3060BD1;
 Mon, 24 Feb 2020 04:09:05 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 11/89] clk: bcm: rpi: Make sure pllb_arm is removed
Date: Mon, 24 Feb 2020 10:06:13 +0100
Message-Id: <5571315e0aa8c8af02ad61cb396137707d4b6da4.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010913_668406_EB727F8F 
X-CRM114-Status: GOOD (  11.58  )
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

The pllb_arm clock was created at probe time, but was never removed if
something went wrong later in probe, or if the driver was ever removed from
the system.

Now that we are using clk_hw_register, we can just use its managed variant
to take care of that for us.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 61a942f9a6a2..783c8c5e5373 100644
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
