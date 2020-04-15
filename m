Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69291A9C88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fznMeUi8HD++iij+CEnO7MXRD5j0/LlP2ZHwV6zC0m4=; b=tGPnRBno4sITe7
	lRIziPOa4kdUu/LP5yz6VTg28ishYjJb4RqvdZYav53V1B8qdkMxTvxVym3lZAvxGOm3i9PgwyDmx
	fAhN0qSN16GZAoc3CyGaldMzTpc+jwlruEWSHHISzOYkeY73/vd+/QSFdYvGIsm3QA9UtAdMBLned
	QH4JgN8D4vq8BesF8Pa0mWPKxSa7TSNDie2/lXYt3gLqM5hlQ3WxWjRqNY41rJ3XWcuR2GmLvRV8E
	BvezyH7NDrxKVYC08+licrBXedZiUh1ggfrva3lUmPGTeJL62GicGA8W182HqqYLYfrh8wpbYYw9Z
	71tvkzHLmtlOB6Ot7UsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgLD-0000fv-MD; Wed, 15 Apr 2020 11:36:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgJz-0007EK-G9
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:35:13 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B71E3214D8;
 Wed, 15 Apr 2020 11:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586950510;
 bh=UCBTEmjPwfYxedLpiloHCMhgXUjd7KM5HX10MVfS7vk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Cg6v5sLZIM6nlpkjFylP30jN9FKAqXxumwJgiEdTO3NhlRIH7dLbdqf4fDPU63gTM
 Wy7ULLdDfy/GHyr82AQFWjLTfgtJB+7gtboeiHZvAgEKbmOUi/to/7H8kfm6crVyiu
 5dgWscbXERpWP4mugubF34Qvi47reRKtf+PKXt5w=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 021/129] arm64: dts: allwinner: a64: Fix display
 clock register range
Date: Wed, 15 Apr 2020 07:32:56 -0400
Message-Id: <20200415113445.11881-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415113445.11881-1-sashal@kernel.org>
References: <20200415113445.11881-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_043511_686188_AF876DAD 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jernej Skrabec <jernej.skrabec@siol.net>

[ Upstream commit 3e9a1a8b7f811de3eb1445d72f68766b704ad17c ]

Register range of display clocks is 0x10000, as it can be seen from
DE2 documentation.

Fix it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
Fixes: 2c796fc8f5dbd ("arm64: dts: allwinner: a64: add necessary device tree nodes for DE2 CCU")
[wens@csie.org: added fixes tag]
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 862b47dc9dc90..baa6f08dc1087 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -264,7 +264,7 @@
 
 			display_clocks: clock@0 {
 				compatible = "allwinner,sun50i-a64-de2-clk";
-				reg = <0x0 0x100000>;
+				reg = <0x0 0x10000>;
 				clocks = <&ccu CLK_BUS_DE>,
 					 <&ccu CLK_DE>;
 				clock-names = "bus",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
