Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C8343457
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 10:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFm1aP1XP+sjXRN9+SwYGbZ6SZkjXyZaLy+tPx7yHyU=; b=jcrzr1pZUs4kBB
	OPeiWCTelnMdCEJRwCaTxz6fD/uv/CwPTVQUSrmCQjcX4c6Ln9D9bFgm8dyH5Qt8alC4gMS7mteOK
	d7a0VDmmcC8D6vHmK9sxHResN6djf+35gNEOhja8qhUmudvzFvKhjH7MfH8y7QjgZ95AKEfAvHxCp
	5dyvpTfTTXsQtiIt0zKgAROgS520ZbWyX28rRaCAMkeIgc3AFM1ZOeQrGG6j2LYeqHvRJUYZZwWWu
	Y0xhjsECfmo6ukq+CRKw7xF+FGZB4BgdwrBRcx318DF1qRQekfv67gAAP1yy/DULeFiwdolPhpMPm
	ex2EL4z6qSvc+kM9fuZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLPr-0007oG-Kd; Thu, 13 Jun 2019 08:49:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLPY-0007n7-2A
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 08:48:45 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C8D4206BA;
 Thu, 13 Jun 2019 08:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560415723;
 bh=O582+0uusHpuUSZbSuZDi+SoMqjy1U5xSgrq+3E3hFw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xakMSmynr2FfkbHg0aKQSueRlgqLc4BdzwhdxSoOPagyHgDkP35+O+lcH6ZHgdS7T
 xgAhcCh5uscb4dmktZSkzPkiA8zYp0euDQHgRUSqv873oocxmKZhMbM6MBq8EBuwQa
 Vtotjb0en6vBc1ria2OY3hRnMhur4OH6VFVcridI=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.1 104/155] arm64: dts: imx8mq: Mark iomuxc_gpr as i.MX6Q
 compatible
Date: Thu, 13 Jun 2019 10:33:36 +0200
Message-Id: <20190613075658.841957419@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190613075652.691765927@linuxfoundation.org>
References: <20190613075652.691765927@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_014844_117731_A7701909 
X-CRM114-Status: GOOD (  10.84  )
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
Cc: "A.s. Dong" <aisheng.dong@nxp.com>, Sasha Levin <sashal@kernel.org>,
 Richard Zhu <hongxing.zhu@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 linux-imx@nxp.com, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Upstream commit beea0f22566cb32c35de89ab0980852b5bbc1c60 ]

Mark iomuxc_gpr as compatible with "fsl,imx6q-iomuxc-gpr" in order for
to allow i.MX6 PCIe driver to use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Acked-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Leonard Crestez <leonard.crestez@nxp.com>
Cc: "A.s. Dong" <aisheng.dong@nxp.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>
Cc: linux-imx@nxp.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 9155bd4784eb..aa051af23bd0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -240,7 +240,7 @@
 			};
 
 			iomuxc_gpr: syscon@30340000 {
-				compatible = "fsl,imx8mq-iomuxc-gpr", "syscon";
+				compatible = "fsl,imx8mq-iomuxc-gpr", "fsl,imx6q-iomuxc-gpr", "syscon";
 				reg = <0x30340000 0x10000>;
 			};
 
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
