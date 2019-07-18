Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 909FB6D00B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 16:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ho7W1A9Y4dRwo7S6YCMznOkM/3GY0TWJs93qJ6qGGSU=; b=ijw
	japCecIQbHC2aMxuzC3q0xQuiSzgZnF6fLCXB/O+KZdlmN+C/k7pkApUDmzKMH748uW437cmyo0Mn
	taK3w8UocnYEMpeaXoR8OjQZPFnZ3/8yZT/EDLn0aq7xpBoVTQgdCN2+Fo2yhmPGssmJCe5zAPecH
	EULgyiS1vDtppRdqQ8WFu9EJVQ0sFykyuKNcYE/TDWvI69ZK0IKhm9Tr1nzEchJGzh1D2Jw8ah42J
	bYQAiDkeILH25vL1dmJKbvY5bJWmnBp69yTdClZINA0ChoejXQlzsOT7ea4652GSb0ERij65sdFQx
	uusoQnDPqmCieyXqbKwPosVPcpY1EGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho7dY-0001Ah-SC; Thu, 18 Jul 2019 14:44:00 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho7dM-0001A9-Go
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 14:43:50 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay6so14009408plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 07:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=DYz3Omxnx7BR96BFtu0zoSw+OlWD5d69rlF3AaMnJ/Y=;
 b=QhX4Qduu+XSDHNav2nzjJjeazJ+CRuQGmHH78bDulZpwaTRQpyUpoSAar+Rp3IIals
 oIbPknAGIbWRuvo0OBgdYsn0ZGQy2zwu85qY7SU2mhjCYeeDHGVE5X2GQtB85WRTIQN7
 XpP0hEn+Tu+LV1W+6xCHxnDA/p+MN++Hqgr8YHMiUB5JheTrAJHIJCQk47CRAAOSXYxn
 d85TwEuvURvbVb3u3FfavNqyOWAfM2yvR9oIv/AJHDnZhbZLpRmgPkP4Cr1eqhGqIC9z
 jraxSXt182f55XXMhjHoCo99NJIOnRRcToCPpq3BCwhN1dnRP/8PuAr7pK/ES/EGB0ud
 ozfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DYz3Omxnx7BR96BFtu0zoSw+OlWD5d69rlF3AaMnJ/Y=;
 b=DWY1/3+ArJFI2QszImXqukS4jrY4twokKBfwLPjUlh2lUbiC7ufiz6U2Inwjj+3rCR
 vqhkATZynVl2Zir11H8Qs548sNddh4ZSVKsVy1DL4I3vxIMssdpTX58cWU0U6lsfK5Xn
 vDvs7s6/EIL4GCllBWN48givTOoUAFoYeahAr6SGOQPQfxgmQjNUpLwvsy7kIDPMtoS5
 s2g5YialFe5+Xj9cpTQ9z5vK3jZ1TpE8ZNKgzVH9UZhQcM/Xe+ImCIO71yb8ayN0Blzh
 tWXAW2QHGk+LIgf1AkXnhpGK9SnImCtKxOs5XizCBbaT/xiAk0SxrilQEHBpOmKdV1cR
 ogmQ==
X-Gm-Message-State: APjAAAWHgLMi2uhxlNOARCNqysjLAjCdJpUdCaMvjf/G8N+wec8FWio8
 187In52Ji0o9SqbHkq4N6Pg=
X-Google-Smtp-Source: APXvYqzw5eNB2GTH8yRyVaozf7YaelwFuBbHD6WQBJvw85QaYPAWGx5ybvxQ+IsiuCh2/WpKznfQ4w==
X-Received: by 2002:a17:902:8bc1:: with SMTP id
 r1mr1675194plo.42.1563461027377; 
 Thu, 18 Jul 2019 07:43:47 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id r6sm20020254pgl.74.2019.07.18.07.43.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 18 Jul 2019 07:43:46 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a7795: sort nodes
Date: Thu, 18 Jul 2019 23:43:26 +0900
Message-Id: <1563461006-19658-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_074348_589539_26B6080D 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes.

If node address is present
   * Sort by node address, grouping all nodes with the same compat string
     and sorting the group alphabetically.
Else
   * Sort alphabetically

This should not have any run-time effect.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the devel branch of Simon Horman's renesas tree.

 arch/arm64/boot/dts/renesas/r8a7795.dtsi | 154 +++++++++++++++----------------
 1 file changed, 77 insertions(+), 77 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a7795.dtsi b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
index 1745ac4..6cd5fe4 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
@@ -2731,6 +2731,83 @@
 			resets = <&cpg 820>;
 		};
 
+		vspbc: vsp@fe920000 {
+			compatible = "renesas,vsp2";
+			reg = <0 0xfe920000 0 0x8000>;
+			interrupts = <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 624>;
+			power-domains = <&sysc R8A7795_PD_A3VP>;
+			resets = <&cpg 624>;
+
+			renesas,fcp = <&fcpvb1>;
+		};
+
+		vspbd: vsp@fe960000 {
+			compatible = "renesas,vsp2";
+			reg = <0 0xfe960000 0 0x8000>;
+			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 626>;
+			power-domains = <&sysc R8A7795_PD_A3VP>;
+			resets = <&cpg 626>;
+
+			renesas,fcp = <&fcpvb0>;
+		};
+
+		vspd0: vsp@fea20000 {
+			compatible = "renesas,vsp2";
+			reg = <0 0xfea20000 0 0x5000>;
+			interrupts = <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 623>;
+			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
+			resets = <&cpg 623>;
+
+			renesas,fcp = <&fcpvd0>;
+		};
+
+		vspd1: vsp@fea28000 {
+			compatible = "renesas,vsp2";
+			reg = <0 0xfea28000 0 0x5000>;
+			interrupts = <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 622>;
+			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
+			resets = <&cpg 622>;
+
+			renesas,fcp = <&fcpvd1>;
+		};
+
+		vspd2: vsp@fea30000 {
+			compatible = "renesas,vsp2";
+			reg = <0 0xfea30000 0 0x5000>;
+			interrupts = <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 621>;
+			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
+			resets = <&cpg 621>;
+
+			renesas,fcp = <&fcpvd2>;
+		};
+
+		vspi0: vsp@fe9a0000 {
+			compatible = "renesas,vsp2";
+			reg = <0 0xfe9a0000 0 0x8000>;
+			interrupts = <GIC_SPI 444 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 631>;
+			power-domains = <&sysc R8A7795_PD_A3VP>;
+			resets = <&cpg 631>;
+
+			renesas,fcp = <&fcpvi0>;
+		};
+
+		vspi1: vsp@fe9b0000 {
+			compatible = "renesas,vsp2";
+			reg = <0 0xfe9b0000 0 0x8000>;
+			interrupts = <GIC_SPI 445 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 630>;
+			power-domains = <&sysc R8A7795_PD_A3VP>;
+			resets = <&cpg 630>;
+
+			renesas,fcp = <&fcpvi1>;
+		};
+
 		fdp1@fe940000 {
 			compatible = "renesas,fdp1";
 			reg = <0 0xfe940000 0 0x2400>;
@@ -2832,83 +2909,6 @@
 			iommus = <&ipmmu_vi1 10>;
 		};
 
-		vspbd: vsp@fe960000 {
-			compatible = "renesas,vsp2";
-			reg = <0 0xfe960000 0 0x8000>;
-			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cpg CPG_MOD 626>;
-			power-domains = <&sysc R8A7795_PD_A3VP>;
-			resets = <&cpg 626>;
-
-			renesas,fcp = <&fcpvb0>;
-		};
-
-		vspbc: vsp@fe920000 {
-			compatible = "renesas,vsp2";
-			reg = <0 0xfe920000 0 0x8000>;
-			interrupts = <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cpg CPG_MOD 624>;
-			power-domains = <&sysc R8A7795_PD_A3VP>;
-			resets = <&cpg 624>;
-
-			renesas,fcp = <&fcpvb1>;
-		};
-
-		vspd0: vsp@fea20000 {
-			compatible = "renesas,vsp2";
-			reg = <0 0xfea20000 0 0x5000>;
-			interrupts = <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cpg CPG_MOD 623>;
-			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
-			resets = <&cpg 623>;
-
-			renesas,fcp = <&fcpvd0>;
-		};
-
-		vspd1: vsp@fea28000 {
-			compatible = "renesas,vsp2";
-			reg = <0 0xfea28000 0 0x5000>;
-			interrupts = <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cpg CPG_MOD 622>;
-			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
-			resets = <&cpg 622>;
-
-			renesas,fcp = <&fcpvd1>;
-		};
-
-		vspd2: vsp@fea30000 {
-			compatible = "renesas,vsp2";
-			reg = <0 0xfea30000 0 0x5000>;
-			interrupts = <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cpg CPG_MOD 621>;
-			power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
-			resets = <&cpg 621>;
-
-			renesas,fcp = <&fcpvd2>;
-		};
-
-		vspi0: vsp@fe9a0000 {
-			compatible = "renesas,vsp2";
-			reg = <0 0xfe9a0000 0 0x8000>;
-			interrupts = <GIC_SPI 444 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cpg CPG_MOD 631>;
-			power-domains = <&sysc R8A7795_PD_A3VP>;
-			resets = <&cpg 631>;
-
-			renesas,fcp = <&fcpvi0>;
-		};
-
-		vspi1: vsp@fe9b0000 {
-			compatible = "renesas,vsp2";
-			reg = <0 0xfe9b0000 0 0x8000>;
-			interrupts = <GIC_SPI 445 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cpg CPG_MOD 630>;
-			power-domains = <&sysc R8A7795_PD_A3VP>;
-			resets = <&cpg 630>;
-
-			renesas,fcp = <&fcpvi1>;
-		};
-
 		csi20: csi2@fea80000 {
 			compatible = "renesas,r8a7795-csi2";
 			reg = <0 0xfea80000 0 0x10000>;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
