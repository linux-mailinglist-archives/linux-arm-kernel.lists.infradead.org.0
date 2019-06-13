Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDEB4344C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 10:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhnU8O5+LaePwSqrE4rTw24qIAO5U1YFXYSzejaa+l0=; b=Ik1LpEenANr4Ap
	8eFkF9GGTD+ydrxFXp49kbs/N9cXQ6CRoSfxKpodYsJYcbAPW/i+D8yCbBrRhTPDVNlH2U93W56di
	em1BXSb7L2+N4ZYwQ1MHTGTkcYrTRfNdX13YE0RG5/ZznibNA1r894oUE1hz2WOW63dJbYz5DDHjV
	aeWOuzWy5UX/+ZHcy9nQ9xT1xXeS3+XMXdiC6K7q2D6LwpZ8xnM+/L0QjM5Kbx1s7G496OBYG51A0
	6vAMYiFM+onFvrG2G4Jtk1VO38UqILeD0bh2lDldBRJUpfqsR2yjHitHU5Z1Hx0YMDv30F8H6gDzO
	/6gv5+zreMRCaoyFpmvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLL0-00044X-Dg; Thu, 13 Jun 2019 08:44:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLJA-0002nh-7i
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 08:42:10 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27CC721479;
 Thu, 13 Jun 2019 08:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560415327;
 bh=0NP3m5N8hUwnAnrMaptmgdmdiwHOiq/EkYyzRnMF+EQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FXs/Pt9jPBNM+L0New346tz5qF88p/apT0U9fekGWOv3wkRnUCQfe6p246j6uKoVm
 hcRuuFiZgKOeXvNdGBQ5IZz87dv+v7DprqmtS0fishys6HScoxj6/sucikdPNAh/dk
 gAqSOehnqFP+rEspg6jjEJVFAJVnd/M2OxTD1R4o=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.19 086/118] ARM: dts: imx6ul: Specify IMX6UL_CLK_IPG as
 "ipg" clock to SDMA
Date: Thu, 13 Jun 2019 10:33:44 +0200
Message-Id: <20190613075648.825619386@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190613075643.642092651@linuxfoundation.org>
References: <20190613075643.642092651@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_014208_483944_FEAD1BFB 
X-CRM114-Status: GOOD (  11.54  )
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

[ Upstream commit 7b3132ecefdd1fcdf6b86e62021d0e55ea8034db ]

Since 25aaa75df1e6 SDMA driver uses clock rates of "ipg" and "ahb"
clock to determine if it needs to configure the IP block as operating
at 1:1 or 1:2 clock ratio (ACR bit in SDMAARM_CONFIG). Specifying both
clocks as IMX6UL_CLK_SDMA results in driver incorrectly thinking that
ratio is 1:1 which results in broken SDMA funtionality. Fix the code
to specify IMX6UL_CLK_IPG as "ipg" clock for SDMA, to avoid detecting
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
 arch/arm/boot/dts/imx6ul.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 6dc0b569acdf..2366f093cc76 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -707,7 +707,7 @@
 					     "fsl,imx35-sdma";
 				reg = <0x020ec000 0x4000>;
 				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clks IMX6UL_CLK_SDMA>,
+				clocks = <&clks IMX6UL_CLK_IPG>,
 					 <&clks IMX6UL_CLK_SDMA>;
 				clock-names = "ipg", "ahb";
 				#dma-cells = <3>;
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
