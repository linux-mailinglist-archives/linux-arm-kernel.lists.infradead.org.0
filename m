Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90B01A9DC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xmfbv1fTK5o5jp+nWBKLJ5uGpcCiA2BExD/Z29RCb8g=; b=MoSdcNIP9DMLqS
	7x5iB1WNXrKEAXxifTQQIZ9ge/XToKV/ms97rzZsfnVLzIVcPZAL0AEkvqft9kAovbgd6vS5jCx3m
	RgVtChmdPhE9ZuHkgui54ISGTbISoHfpS6WgrlHnAFGqdoGg0WhEXeuXB3IN0vxaIEBShtLtRbBbE
	G83NCRunlec8UArWbzqD4RuvTLiGjRLaxHJjGq988Ch4rt3jcZ/agYvDWcE4Vegud/VJ2QnV7jofb
	6GaG+KrhrtcXtycKSCE50sQjX3CqkfuK0TFv90i4Un65xQF+Gvq5ops+5wPoM9yEED7HpR/W+rtKz
	kGUYFC+VU46KwIuNHNag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgX0-00074E-52; Wed, 15 Apr 2020 11:48:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgTS-0001ac-Hk
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:44:59 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 354E220768;
 Wed, 15 Apr 2020 11:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586951098;
 bh=oooFEStGUZHNuhXxGFvK4GTwAIxHao8rhtCGvyKcdGo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sSemOUDfmah1SaVX3BQLP6BeihBz7XMZ0TouLc8Si3UPspi3GkSrXXNGba/IJ+AT7
 yo2lc3qxzhmvyhQwKmBhHU+yunZolP5EEcqhrEysP/JalDUInKQmkgmIU2jbsdQ/KM
 CLnooNyIUW5Qmt7AekYyxekdLqVS3Xn1Gt3fHdyc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 13/84] arm64: dts: clearfog-gt-8k: set gigabit PHY
 reset deassert delay
Date: Wed, 15 Apr 2020 07:43:30 -0400
Message-Id: <20200415114442.14166-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114442.14166-1-sashal@kernel.org>
References: <20200415114442.14166-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_044458_616126_7E694BF6 
X-CRM114-Status: GOOD (  11.76  )
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
 Baruch Siach <baruch@tkos.co.il>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

[ Upstream commit 46f94c7818e7ab82758fca74935ef3d454340b4e ]

If the mv88e6xxx DSA driver is built as a module, it causes the
ethernet driver to re-probe when it's loaded. This in turn causes
the gigabit PHY to be momentarily reset and reprogrammed. However,
we attempt to reprogram the PHY immediately after deasserting reset,
and the PHY ignores the writes.

This results in the PHY operating in the wrong mode, and the copper
link states down.

Set a reset deassert delay of 10ms for the gigabit PHY to avoid this.

Fixes: babc5544c293 ("arm64: dts: clearfog-gt-8k: 1G eth PHY reset signal")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Acked-by: Baruch Siach <baruch@tkos.co.il>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index a211a046b2f2f..b90d78a5724b2 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -367,6 +367,7 @@
 		pinctrl-0 = <&cp0_copper_eth_phy_reset>;
 		reset-gpios = <&cp0_gpio2 11 GPIO_ACTIVE_LOW>;
 		reset-assert-us = <10000>;
+		reset-deassert-us = <10000>;
 	};
 
 	switch0: switch0@4 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
