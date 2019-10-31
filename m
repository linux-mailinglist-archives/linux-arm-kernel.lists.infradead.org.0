Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E356EB184
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:49:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vkXXCvjF4MYVpbayFxnwRuGiMnNzpsWp+LABdnJd6cg=; b=Hzd/arvit5eZJZ
	DUlxHNkZ3m9vZTiVM71+wRunERd1+R0vkiT6qeuD4jdR79y70i1VNVn25tk/PdgAMqmPGrM8FV8Q+
	DCNdignY9ro+pkp8nRRogfPDJsyuQpNgqnchlkXMeNKYPJ7nLzRTXg2FymiSn02u5rFp0r3BICkUE
	p1f6OeEsBDqaNRBHzVgri9EznUSzmTmK089SjTGHJTx34ixXO+w7pM8t6r9jvdNUZAA+toKO5OdTj
	ZcnMutDOLB+oR1dgLGbTsJOEDQ9PABDz1QX0sHbFZai0sA9gSoQyROgbJVLlsmJyqutvv46QjkcS0
	MNlSNuAlrdanpAyKhFEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQApK-0001zm-5E; Thu, 31 Oct 2019 13:49:26 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAp8-0001zM-KU
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:49:16 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 7F70B5E6;
 Thu, 31 Oct 2019 09:49:09 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 31 Oct 2019 09:49:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=Nx5GWEmGQeh0OOakHK6KFtCxiu
 W2yys+4PNvQAdJVYU=; b=TLw+9UatFeXZYsXVQEMBZPxIDxyJppuRbaaPeFEaN8
 vk+kN1Dl3amp3lnMYFOB9HE+8B4ZZR8C34ImAWuOBOHoC6OrdrDQMq6AbusyN4af
 4c6pvUhLKsBx8by5K7Fqm+tBVsh9wwtMTQuH64og9zeQJLO3zpUenTFXOVx/fg6G
 SR9W9QE3RxpvUUm/xa4IUZwseeavGrsDZ4XQjenn6+Vji6082Tu/RkNfFmdIQAeu
 EEHa4//1DHVDJjK2T8P7s4FMJiTCN9fBr8vx7MItc7XOZRuUfy3KcXt6lUtAK3kg
 aBxQub7xhVFgP5C/eygaMeDoAkNdgdtb2KJIUJHN/9NA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Nx5GWEmGQeh0OOakH
 K6KFtCxiuW2yys+4PNvQAdJVYU=; b=VmM3tkdvvUPEkKYCMOEfXtFFbRPNPrQls
 Dz4AKlvoR1dkH817r68DUT0BFtnZwJ6RwSbGGXbj2LNClssKi/MPcgtqqiQZJeSj
 JoDmuII2AUTvFIB/5nahqW2JvkY65/QwJOqIRPuAO4oAN426d8fPEiN1sSEwNqXd
 lGtjwrX2mZygPBJMmEy8wewPqeXR8I74g5q+jvDfINSU8DWz7O7SGAOSauU4uJcj
 VfgjN+B6EK1Y4OlDSqX08+EclxdjuaRxmNOGH1VPpmoyRTA1jHPlERCdG3eJZBur
 dCaxLpHxS1dPihnXgSf1q1wYHHehj3J4+3wzNpGBHLJwNFJg4FOQQ==
X-ME-Sender: <xms:VOa6XW_pbDlkLPxYh-wVZiQGgwAV8yoxci7taVyvRK3AJ6p3D0bQ4g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedruddthedgheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhn
 ohdrthgvtghhqeenucfkphepkedvrddvheegrdegrddufeeknecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfuihii
 vgepud
X-ME-Proxy: <xmx:VOa6XSzPa77q2lTs40MbCBkRfemlJ9eXWLz0R1yQ760apN8A5iEb8g>
 <xmx:VOa6XXWzB27j28QnSSvhlmidHKA0A6j9qgHy4x9zNb5WY8OKftsmYw>
 <xmx:VOa6Xdbjyq6JkK3iLDObPcxWCxETomiNZUJZysEpRobK0RBdCuLIGQ>
 <xmx:VOa6XZIV8huga_zDN1BW9aVk51X06qDHML5yLtB-aIIO8NxQs-bK-8GtwZU>
Received: from localhost (lns-bzn-32-82-254-4-138.adsl.proxad.net
 [82.254.4.138])
 by mail.messagingengine.com (Postfix) with ESMTPA id 427463060062;
 Thu, 31 Oct 2019 09:49:08 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] ARM: dts: sun6i: Remove useless reset-names
Date: Thu, 31 Oct 2019 14:49:05 +0100
Message-Id: <20191031134905.241453-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_064914_694094_E793AD22 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The HDMI controller definition in the A31 DTSI has a reset-names property,
yet the binding for that controller doesn't declare it.

Remove it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun6i-a31.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index ac7638078420..2cf34ae1c17b 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -469,7 +469,6 @@
 				 <&ccu CLK_PLL_VIDEO1_2X>;
 			clock-names = "ahb", "mod", "ddc", "pll-0", "pll-1";
 			resets = <&ccu RST_AHB1_HDMI>;
-			reset-names = "ahb";
 			dma-names = "ddc-tx", "ddc-rx", "audio-tx";
 			dmas = <&dma 13>, <&dma 13>, <&dma 14>;
 			status = "disabled";
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
