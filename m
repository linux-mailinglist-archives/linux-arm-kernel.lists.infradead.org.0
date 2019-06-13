Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7210F43449
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 10:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmdOl1VDemfFgvx/Vihe0MY/JDcplWT2w3hUgY9Feyk=; b=IgdmqUM7pKS0Z7
	Q6LfgWKuOFcO50Ku9gv3BhblSur7EIHsBjn63mIIo7jhEkVY/4IzqPp8HFzQItBwM6sTq7W7Kpngt
	mdQBHxc6UYe3/928jZ/Mu34DEhlfsJkZqDsICTVZ+PN+F1D197tyE7+NqorvEcHlyevq1za06u7VI
	bZgRw9aRd8UWTnvm3s9+BHPLB+66XBjt3Vq0a3k++oJMyWG5SoV1dYAAxkzN5WAsmrAJ/AG2J39Ra
	zQuXVF/843khzf6O0nYXqT/T1LMrzas8dM9lvpecslpaefEOPpYWbyT0hyT86zXxb/acIIEfLoCu1
	gY3/QNwbFbB3ifTquj1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLKf-0003pB-UP; Thu, 13 Jun 2019 08:43:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLJ7-0002lP-0d
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 08:42:06 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 356C920851;
 Thu, 13 Jun 2019 08:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560415324;
 bh=mV8t0MS86wstap7zqR2Ns1mgAKw2DXuEPjFrSewpwT8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DBdHUxFmtGm6t4WrCaZuIvN6aueHZ9pw2gERXbWkj3mJ1t2RxsdiUtwOcqM4NN6Hm
 PCZ5S9lfmvvz0Msfpquhcfh2zAyuRI8KA5tT1qmfoUJd8Zl6fSgXW0J/ILk/42N5Gu
 6m2CtTifJGutlLa67X2KscQNV3faM1kmkupop8UI=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.19 085/118] ARM: dts: imx7d: Specify IMX7D_CLK_IPG as "ipg"
 clock to SDMA
Date: Thu, 13 Jun 2019 10:33:43 +0200
Message-Id: <20190613075648.756545156@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190613075643.642092651@linuxfoundation.org>
References: <20190613075643.642092651@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_014205_277909_089AA218 
X-CRM114-Status: GOOD (  10.79  )
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

[ Upstream commit 412b032a1dc72fc9d1c258800355efa6671b6315 ]

Since 25aaa75df1e6 SDMA driver uses clock rates of "ipg" and "ahb"
clock to determine if it needs to configure the IP block as operating
at 1:1 or 1:2 clock ratio (ACR bit in SDMAARM_CONFIG). Specifying both
clocks as IMX7D_CLK_SDMA results in driver incorrectly thinking that
ratio is 1:1 which results in broken SDMA funtionality. Fix the code
to specify IMX7D_CLK_IPG as "ipg" clock for SDMA, to avoid detecting
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
 arch/arm/boot/dts/imx7s.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index a052198f6e96..a7f697b0290f 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -1050,8 +1050,8 @@
 				compatible = "fsl,imx7d-sdma", "fsl,imx35-sdma";
 				reg = <0x30bd0000 0x10000>;
 				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clks IMX7D_SDMA_CORE_CLK>,
-					 <&clks IMX7D_AHB_CHANNEL_ROOT_CLK>;
+				clocks = <&clks IMX7D_IPG_ROOT_CLK>,
+					 <&clks IMX7D_SDMA_CORE_CLK>;
 				clock-names = "ipg", "ahb";
 				#dma-cells = <3>;
 				fsl,sdma-ram-script-name = "imx/sdma/sdma-imx7d.bin";
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
