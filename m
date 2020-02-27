Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1DD1716CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:08:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zlLGSe+c3NUyTnBioeXbXyARGNmtTYVEt0xpuMn/gyI=; b=QPO3ezQy4lxk54
	Px8RVE+Cs3E0KnKGwxv4JpghxiJM+vrF/f4uOnmIU5lzQh4J3HlRDQkoeEI7T80ps72Uw4TfFOBVW
	cAyrYUKst71Sj8zxkYAVzzj2XYMuzJ3ASQVPJob6jYU/dEb7AesBAuKap5rftyL4f1v6xpE/ZIWbk
	Fs2t0woyEcWXKSWFcwYeeBRwEOL7NszMQsyJSFrnd5fuXHxonZWkzTe6Lv5WjVtqyDrRVsfdCNcev
	1qOl35zFSbXbJEjA20NiIN5slkLfHeTLbvyQDOZTLa0iQTKlY/Tx3+DM9Nu0FbgouHxu8vlblrvDi
	ryzSmGFDUlYCzTOob3qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7HyB-0003b6-P1; Thu, 27 Feb 2020 12:08:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Hy0-0003I9-Uu
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:08:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A6Y0hamrvdB8Gl43C4Ib9/2XL6AKOLLuJGlKQlOcKPI=; b=UF0XdIpRDXvFodPSMg5hy/HRFu
 DXpVUQJKhrhX9oFWyf4kdg4wLqeBNWTpkmh7PncHbCjmC5+h4wfWN0LQv/pl0Hw7f+H/UXEHyfxKD
 gOhY6Fc3JhkRbG+G/yxH6TZLvz3rirFiBNzDUmdP283QDJrhYESV/eR+FTRNPGlEt+ldaA1lAOvU+
 KujyMVghPiiIoTe8TUPt8Ol06EmMii+FqL7XIne4NXjSXzxKLufJEU3chLClhwSb1//mtiWs5nXQX
 WgnZhRvl/zK1Tq6HpGZ5tn/+h6ttDXmtElbK6xtgOYcsD/ti8pwT202Gex+xXAlwjeRxhL9WOsOD+
 pwDruUlg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:58334 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7Hvq-0005OO-O2; Thu, 27 Feb 2020 12:06:22 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7Hvq-0004Vn-5w; Thu, 27 Feb 2020 12:06:22 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: lx2160a-cex7: add support for ltc3882 regulator
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j7Hvq-0004Vn-5w@rmk-PC.armlinux.org.uk>
Date: Thu, 27 Feb 2020 12:06:22 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_040836_996016_226928BF 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the LTC3882 regulator so that the hardware monitoring
can be used with this device.  This regulator provides the 0.78V
supply for the LX2160A.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
index 071e21678f77..01c5420f334e 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
@@ -73,6 +73,17 @@
 			};
 		};
 
+		i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+
+			regulator@5c {
+				compatible = "lltc,ltc3882";
+				reg = <0x5c>;
+			};
+		};
+
 		i2c@3 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
