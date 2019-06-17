Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB04485FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jh4G5FNiKAsBwq90pSmt1iHfbogJu5DBgYOZB81cBVE=; b=I1LA0M4uHVlRVN
	wnOjcwKLVIeFFwa8lAq0NHoH0iUiJxtDKSmONpM3l38RCzeTLG+NMrR6d8D45rqg9Jt9mhAkJ+dND
	ETNv8jNsMrP/R4TBsc/MVRWyq9vzrp73ZU6mA/ZS5qd3OMoDMNdLyjPPb9yLp324rg616foll1MRq
	yX3jmOvgK4NNUopApJJD1Cnr4LWz8z0bhfA+qnFXchuronpukuvAJ4UB0VxYWu2bL5bVlXMH1PMLS
	tJTexRxCrUTP7/+KE286feyl7nDiSrCOvbzrco+3KkTM2ppjGM6Ihv30moc48WSXwP6hyEkOhXxkn
	X0nCvY9znWl5lSAj4k9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcsxr-0004Rm-UI; Mon, 17 Jun 2019 14:50:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsxa-0003et-6u
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:50:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dOh7uqmpibaT0Zdj+4oa5qbvYvKyLSBAYkLGdLcNmp8=; b=eI2PXv12FX3MW1F6+JjHTul2N4
 qqVHcYdNubVBXXsXfjcdHFyBTAmIBvP6bFH80JbUNMFNXImMmlbloxpgkK9V0RSBAdiamEgpkJH4Y
 +AsZPxLQwHuC3LQgeuh7hO0ojGv1lWy4p4AQ24zTxhZ/DMR4RjjGIXRZpJNWvAqfadLTeAiUaYfmc
 w07VywUS4G08YQFiLpAKFt37sI+2ZHpjc6tVcwV/cELApastnr/gO9ZT3gPTiBz5d09GIq9/6bx2x
 L0m4G781jVk9y4Q1AlgEBkou39/0Jlg8gBVzFF2jhu6zASLOK2/4Mve4KZEy2omFNcHzAqZSAx203
 KQhnCMuA==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:34836 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hcsxH-0004PG-KM; Mon, 17 Jun 2019 15:49:55 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hcsxH-0007Vv-0l; Mon, 17 Jun 2019 15:49:55 +0100
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Gregory Clement <gregory.clement@bootlin.com>
Subject: [PATCH] arm64: dts: marvell: add missing #interrupt-cells property
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hcsxH-0007Vv-0l@rmk-PC.armlinux.org.uk>
Date: Mon, 17 Jun 2019 15:49:55 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075014_286711_AF70F60F 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GPIO interrupt controllers are missing their required
#interrupt-cells property, which prevents GPIO interrupts being
specified in DT.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-cp110.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
index 4d6e4a097f72..f71afb1de18f 100644
--- a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
@@ -238,6 +238,7 @@
 					<85 IRQ_TYPE_LEVEL_HIGH>,
 					<84 IRQ_TYPE_LEVEL_HIGH>,
 					<83 IRQ_TYPE_LEVEL_HIGH>;
+				#interrupt-cells = <2>;
 				status = "disabled";
 			};
 
@@ -253,6 +254,7 @@
 					<81 IRQ_TYPE_LEVEL_HIGH>,
 					<80 IRQ_TYPE_LEVEL_HIGH>,
 					<79 IRQ_TYPE_LEVEL_HIGH>;
+				#interrupt-cells = <2>;
 				status = "disabled";
 			};
 		};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
