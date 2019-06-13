Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629404343F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 10:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBeGaEI5OhUmLMmqehJNBgoKvR6nto5fu3jO+4QxeHI=; b=HxDgOeHLrK2dj2
	f2sfFXO4BwEqYTGHw/pci4TERf3JQdsYaOa7iJsawO/pSECuC7iJ0tFZVqCRK6xrm1PAqB/FwFgvb
	qfDRuEfA7+qyV6coDMPFUMWwN3vXXzMpthTk9RaHD7h7DAzojAVV2BVEOq07Nk1IF+gINfzF/nMft
	PO2z8Mf4D3hjCyPKKy0+lQcLqDpav4BjLQOvjCwXFCk/PHuGA1lkscmZIAS2JwPyJczf/rFovkBT2
	+78nw9vKAyjcE4GOv6Faml1Ts7+yoBu6aYvKpZYGWL70DpKg6whqfATUExeuhyacwWqO407rynXPn
	f9YLZ8XSjW9NmEcYz9gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLJp-00035Q-1x; Thu, 13 Jun 2019 08:42:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLIy-0002dz-JV
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 08:41:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C060F2147A;
 Thu, 13 Jun 2019 08:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560415316;
 bh=R8ua41HVOaLUqHg4rK5lGHnRupPpLDqTsKrg/Dmrpuo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OS4eRIyQLow0xUMioDRmKlAob/d/gTJMqNvLbT70vj6HAUHi4a06iq3usMaPoFtND
 DS5Dw/Kr8uDr9H6Q+xzGMfW9hv4DCDCZ6QDEtXbVWLA32ZpIKwBGUDCvYrU2ZyHV1O
 KbSGsfRCdDItgV7ErCWnL68qyygoiRst+bqRQS6s=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.19 082/118] ARM: dts: imx53: Specify IMX5_CLK_IPG as "ahb"
 clock to SDMA
Date: Thu, 13 Jun 2019 10:33:40 +0200
Message-Id: <20190613075648.579026885@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190613075643.642092651@linuxfoundation.org>
References: <20190613075643.642092651@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_014156_759484_BD4AA86D 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Upstream commit 28c168018e0902c67eb9c60d0fc4c8aa166c4efe ]

Since 25aaa75df1e6 SDMA driver uses clock rates of "ipg" and "ahb"
clock to determine if it needs to configure the IP block as operating
at 1:1 or 1:2 clock ratio (ACR bit in SDMAARM_CONFIG). Specifying both
clocks as IMX5_CLK_SDMA results in driver incorrectly thinking that
ratio is 1:1 which results in broken SDMA funtionality. Fix the code
to specify IMX5_CLK_AHB as "ahb" clock for SDMA, to avoid detecting
incorrect clock ratio.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Angus Ainslie (Purism) <angus@akkea.ca>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx53.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx53.dtsi b/arch/arm/boot/dts/imx53.dtsi
index 6386185ae234..b6b0818343c4 100644
--- a/arch/arm/boot/dts/imx53.dtsi
+++ b/arch/arm/boot/dts/imx53.dtsi
@@ -701,7 +701,7 @@
 				reg = <0x63fb0000 0x4000>;
 				interrupts = <6>;
 				clocks = <&clks IMX5_CLK_SDMA_GATE>,
-					 <&clks IMX5_CLK_SDMA_GATE>;
+					 <&clks IMX5_CLK_AHB>;
 				clock-names = "ipg", "ahb";
 				#dma-cells = <3>;
 				fsl,sdma-ram-script-name = "imx/sdma/sdma-imx53.bin";
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
