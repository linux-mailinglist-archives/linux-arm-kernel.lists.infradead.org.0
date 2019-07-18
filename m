Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42236D012
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 16:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=riKmpQp8SdpB2JJtYGom2pJK9BdjmQ0fc1fxFwdIfoU=; b=Lnx
	iuk6mm8VHaBYWiNHWYqlUvofSFmW5lpS4PLUhz3ZlRJC5vLkumMUlwKBmubFHjeNtOAFPWFRwUC31
	59/2gbbyH5s3Ed2mvjE+Ibc1SnoEzY1bLT71evl+WThoVzl7Two1TNi20Ad3c1UAu7NqjEwbjB1k3
	JE+Kq+cguSGLL5RreOENxa2JZyy7nzCqGtV33LmQKssrGsEHloBgjBk2zO4ri4oQHY0EhF14MkOJT
	Hanqr9CD8KWa2+xWUYUQHXZyEjE5bAPSco1u4y19XRkVZ38f2lKEV5P+9Wbgl/mYmODrX6FtOKiPK
	0xOyxbSKjZ/N+wW22qN50KG/UXxK3wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho7dw-0001NL-5u; Thu, 18 Jul 2019 14:44:24 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho7db-0001Ke-ID
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 14:44:05 +0000
Received: by mail-pg1-x542.google.com with SMTP id i8so12984759pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 07:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UAl1W7MImbSfwTdh8xgsN/YlzD+PyMoJaAV8+pubsJU=;
 b=Jq3tt+C+LjMAOvp3ALVg8NgVht3plq/vQd5L1A/xgJgXMsJ2EMy8MNv21FLs3zP5pb
 YURB1IYZorCCBnJdFAzvHUi2c7Fw4SY3GK+A7jRl0U+gyMhwCjoSQ6ybMCISPWAsjH+E
 +eYiWJ6bBKczBTrHbGnqOrj8Vfic6EX0xuXgTLcQ5MYrfDW1d+woxiiQ2AQBfntrQmLV
 7FaWlThWVQxGWUhf9cv2aeU4eaQzblZLVgZ2jTYnMm5ZGoApf9Ib2g4Vtjw9/HgvuYCj
 CotSL6WmUroEG8y3rReS7bkoOezJysxlCNB+gb5u4xlSGbPPhC0dN++4DTk+wThdf7j3
 jeDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UAl1W7MImbSfwTdh8xgsN/YlzD+PyMoJaAV8+pubsJU=;
 b=qjDOe1SpA+ShRvzl37g/6xmSNH8a4e7fA8D/aXvfa3m/57ALRb/fID5c62QOL9GMae
 ij2n7v9/6hbM0f5KOOrWCSHNDxuRs62KmhpAsKWV/haeaN4AXEQczXWVtYGAsa+XWLwX
 GLfkDAZjLU/WTf5hSM3KT0FHyLpvhSx5aMmeuH6hRwEolyARipcaUnKbqCja2J5AwUj+
 F0Y2/kTkfLFuyB36cUt6Gzb5gEKpOjblD52DnnGqVz4tQHWe5yImj6+MDSqe1miRW0Ss
 /MXFeBsQ1xIYncN4QpPUsf8GrlCVTdto90TxCVKAqqTDJUxz2wx7CPQ+OG91w078TfXz
 0wjA==
X-Gm-Message-State: APjAAAUn+p+h4NqCYKTTdpmC0+b7ul9+w2qF6XxP9NxYiow3TojSNGg+
 TjcV0PaNdYfTbnKdS+1PyRMjezwt
X-Google-Smtp-Source: APXvYqwK1/wxa7fnanMyRW8cyiNApaeWzQk0QNyNtgRqZzy+va6aNyMS7YmRl8TzukaiH/U3DtTpwA==
X-Received: by 2002:a63:1918:: with SMTP id z24mr46047729pgl.94.1563461042895; 
 Thu, 18 Jul 2019 07:44:02 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id j15sm28585934pfr.146.2019.07.18.07.44.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 18 Jul 2019 07:44:01 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a7795-es1: sort nodes node
Date: Thu, 18 Jul 2019 23:43:53 +0900
Message-Id: <1563461033-19708-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_074403_772735_29329D56 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

 arch/arm64/boot/dts/renesas/r8a7795-es1.dtsi | 223 ++++++++++++++-------------
 1 file changed, 112 insertions(+), 111 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a7795-es1.dtsi b/arch/arm64/boot/dts/renesas/r8a7795-es1.dtsi
index 40d10da..e4650ae 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795-es1.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a7795-es1.dtsi
@@ -7,22 +7,75 @@
 
 #include "r8a7795.dtsi"
 
-&soc {
-	xhci1: usb@ee040000 {
-		compatible = "renesas,xhci-r8a7795", "renesas,rcar-gen3-xhci";
-		reg = <0 0xee040000 0 0xc00>;
-		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cpg CPG_MOD 327>;
-		power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
-		resets = <&cpg 327>;
-		status = "disabled";
-	};
+&audma0 {
+	iommus = <&ipmmu_mp1 0>, <&ipmmu_mp1 1>,
+	       <&ipmmu_mp1 2>, <&ipmmu_mp1 3>,
+	       <&ipmmu_mp1 4>, <&ipmmu_mp1 5>,
+	       <&ipmmu_mp1 6>, <&ipmmu_mp1 7>,
+	       <&ipmmu_mp1 8>, <&ipmmu_mp1 9>,
+	       <&ipmmu_mp1 10>, <&ipmmu_mp1 11>,
+	       <&ipmmu_mp1 12>, <&ipmmu_mp1 13>,
+	       <&ipmmu_mp1 14>, <&ipmmu_mp1 15>;
+};
 
-	/delete-node/ mmu@febe0000;
-	/delete-node/ mmu@fe980000;
-	/delete-node/ mmu@fd950000;
-	/delete-node/ mmu@fd960000;
-	/delete-node/ mmu@fd970000;
+&audma1 {
+	iommus = <&ipmmu_mp1 16>, <&ipmmu_mp1 17>,
+	       <&ipmmu_mp1 18>, <&ipmmu_mp1 19>,
+	       <&ipmmu_mp1 20>, <&ipmmu_mp1 21>,
+	       <&ipmmu_mp1 22>, <&ipmmu_mp1 23>,
+	       <&ipmmu_mp1 24>, <&ipmmu_mp1 25>,
+	       <&ipmmu_mp1 26>, <&ipmmu_mp1 27>,
+	       <&ipmmu_mp1 28>, <&ipmmu_mp1 29>,
+	       <&ipmmu_mp1 30>, <&ipmmu_mp1 31>;
+};
+
+&du {
+	vsps = <&vspd0 &vspd1 &vspd2 &vspd3>;
+};
+
+&fcpvb1 {
+	iommus = <&ipmmu_vp0 7>;
+};
+
+&fcpf1 {
+	iommus = <&ipmmu_vp0 1>;
+};
+
+&fcpvi1 {
+	iommus = <&ipmmu_vp0 9>;
+};
+
+&fcpvd2 {
+	iommus = <&ipmmu_vi0 10>;
+};
+
+&gpio1 {
+	gpio-ranges = <&pfc 0 32 28>;
+};
+
+&ipmmu_vi0 {
+	renesas,ipmmu-main = <&ipmmu_mm 11>;
+};
+
+&ipmmu_vp0 {
+	renesas,ipmmu-main = <&ipmmu_mm 12>;
+};
+
+&ipmmu_vc0 {
+	renesas,ipmmu-main = <&ipmmu_mm 9>;
+};
+
+&ipmmu_vc1 {
+	renesas,ipmmu-main = <&ipmmu_mm 10>;
+};
+
+&ipmmu_rt {
+	renesas,ipmmu-main = <&ipmmu_mm 7>;
+};
+
+&soc {
+	/delete-node/ dma-controller@e6460000;
+	/delete-node/ dma-controller@e6470000;
 
 	ipmmu_mp1: mmu@ec680000 {
 		compatible = "renesas,ipmmu-r8a7795";
@@ -40,13 +93,37 @@
 		#iommu-cells = <1>;
 	};
 
-	/delete-node/ usb-phy@ee0e0200;
-	/delete-node/ usb@ee0e0100;
-	/delete-node/ usb@ee0e0000;
+	/delete-node/ mmu@fd950000;
+	/delete-node/ mmu@fd960000;
+	/delete-node/ mmu@fd970000;
+	/delete-node/ mmu@febe0000;
+	/delete-node/ mmu@fe980000;
+
+	xhci1: usb@ee040000 {
+		compatible = "renesas,xhci-r8a7795", "renesas,rcar-gen3-xhci";
+		reg = <0 0xee040000 0 0xc00>;
+		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cpg CPG_MOD 327>;
+		power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
+		resets = <&cpg 327>;
+		status = "disabled";
+	};
+
 	/delete-node/ usb@e659c000;
+	/delete-node/ usb@ee0e0000;
+	/delete-node/ usb@ee0e0100;
 
-	/delete-node/ dma-controller@e6460000;
-	/delete-node/ dma-controller@e6470000;
+	/delete-node/ usb-phy@ee0e0200;
+
+	fdp1@fe948000 {
+		compatible = "renesas,fdp1";
+		reg = <0 0xfe948000 0 0x2400>;
+		interrupts = <GIC_SPI 264 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cpg CPG_MOD 117>;
+		power-domains = <&sysc R8A7795_PD_A3VP>;
+		resets = <&cpg 117>;
+		renesas,fcp = <&fcpf2>;
+	};
 
 	fcpf2: fcp@fe952000 {
 		compatible = "renesas,fcpf";
@@ -57,15 +134,13 @@
 		iommus = <&ipmmu_vp0 2>;
 	};
 
-	vspi2: vsp@fe9c0000 {
-		compatible = "renesas,vsp2";
-		reg = <0 0xfe9c0000 0 0x8000>;
-		interrupts = <GIC_SPI 446 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cpg CPG_MOD 629>;
-		power-domains = <&sysc R8A7795_PD_A3VP>;
-		resets = <&cpg 629>;
-
-		renesas,fcp = <&fcpvi2>;
+	fcpvd3: fcp@fea3f000 {
+		compatible = "renesas,fcpv";
+		reg = <0 0xfea3f000 0 0x200>;
+		clocks = <&cpg CPG_MOD 600>;
+		power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
+		resets = <&cpg 600>;
+		iommus = <&ipmmu_vi0 11>;
 	};
 
 	fcpvi2: fcp@fe9cf000 {
@@ -88,23 +163,15 @@
 		renesas,fcp = <&fcpvd3>;
 	};
 
-	fcpvd3: fcp@fea3f000 {
-		compatible = "renesas,fcpv";
-		reg = <0 0xfea3f000 0 0x200>;
-		clocks = <&cpg CPG_MOD 600>;
-		power-domains = <&sysc R8A7795_PD_ALWAYS_ON>;
-		resets = <&cpg 600>;
-		iommus = <&ipmmu_vi0 11>;
-	};
-
-	fdp1@fe948000 {
-		compatible = "renesas,fdp1";
-		reg = <0 0xfe948000 0 0x2400>;
-		interrupts = <GIC_SPI 264 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cpg CPG_MOD 117>;
+	vspi2: vsp@fe9c0000 {
+		compatible = "renesas,vsp2";
+		reg = <0 0xfe9c0000 0 0x8000>;
+		interrupts = <GIC_SPI 446 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cpg CPG_MOD 629>;
 		power-domains = <&sysc R8A7795_PD_A3VP>;
-		resets = <&cpg 117>;
-		renesas,fcp = <&fcpf2>;
+		resets = <&cpg 629>;
+
+		renesas,fcp = <&fcpvi2>;
 	};
 
 	csi21: csi2@fea90000 {
@@ -163,72 +230,6 @@
 	};
 };
 
-&gpio1 {
-	gpio-ranges = <&pfc 0 32 28>;
-};
-
-&ipmmu_vi0 {
-	renesas,ipmmu-main = <&ipmmu_mm 11>;
-};
-
-&ipmmu_vp0 {
-	renesas,ipmmu-main = <&ipmmu_mm 12>;
-};
-
-&ipmmu_vc0 {
-	renesas,ipmmu-main = <&ipmmu_mm 9>;
-};
-
-&ipmmu_vc1 {
-	renesas,ipmmu-main = <&ipmmu_mm 10>;
-};
-
-&ipmmu_rt {
-	renesas,ipmmu-main = <&ipmmu_mm 7>;
-};
-
-&audma0 {
-	iommus = <&ipmmu_mp1 0>, <&ipmmu_mp1 1>,
-	       <&ipmmu_mp1 2>, <&ipmmu_mp1 3>,
-	       <&ipmmu_mp1 4>, <&ipmmu_mp1 5>,
-	       <&ipmmu_mp1 6>, <&ipmmu_mp1 7>,
-	       <&ipmmu_mp1 8>, <&ipmmu_mp1 9>,
-	       <&ipmmu_mp1 10>, <&ipmmu_mp1 11>,
-	       <&ipmmu_mp1 12>, <&ipmmu_mp1 13>,
-	       <&ipmmu_mp1 14>, <&ipmmu_mp1 15>;
-};
-
-&audma1 {
-	iommus = <&ipmmu_mp1 16>, <&ipmmu_mp1 17>,
-	       <&ipmmu_mp1 18>, <&ipmmu_mp1 19>,
-	       <&ipmmu_mp1 20>, <&ipmmu_mp1 21>,
-	       <&ipmmu_mp1 22>, <&ipmmu_mp1 23>,
-	       <&ipmmu_mp1 24>, <&ipmmu_mp1 25>,
-	       <&ipmmu_mp1 26>, <&ipmmu_mp1 27>,
-	       <&ipmmu_mp1 28>, <&ipmmu_mp1 29>,
-	       <&ipmmu_mp1 30>, <&ipmmu_mp1 31>;
-};
-
-&fcpvb1 {
-	iommus = <&ipmmu_vp0 7>;
-};
-
-&fcpf1 {
-	iommus = <&ipmmu_vp0 1>;
-};
-
-&fcpvi1 {
-	iommus = <&ipmmu_vp0 9>;
-};
-
-&fcpvd2 {
-	iommus = <&ipmmu_vi0 10>;
-};
-
-&du {
-	vsps = <&vspd0 &vspd1 &vspd2 &vspd3>;
-};
-
 &vin0 {
 	ports {
 		port@1 {
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
