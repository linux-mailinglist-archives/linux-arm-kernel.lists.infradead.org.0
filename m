Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA67E923F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=do5EEQSoA054yU4bUB2TGTIf0HCPEkQJyRj7liSc71Y=; b=kSg
	/rh1CH1hf5zp4cZZnCJIpopH+iR3LNs+jdg/HKns6qfZYqI/AZk2ZMyRoKk5Gr2KrMuCx0Jyt7qm5
	c494kbCpNg93mSdjoGC0GkHYxzCAH0lD6nyB24pL86KkG3RyfjqQiUangJvBttMczxID0T29ONglN
	t0BLUprWtDlN8z/Ar9r0DTnB5Vk5+P+I31fMca+KO4YH8CP4PDha3rU3OUN2rmHmjh5eZIPsmAe3I
	seFWaO6snUDC0Jyo1RsWJABF17sOfa6aInQ29SQlj7uCLl8ITU8NnaXod8BxNLxT2cH6hmO3DHk9A
	DvdbYOWUKEH7e3ISmlCAwSekHB1VHHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhCu-0006KB-VZ; Mon, 19 Aug 2019 12:56:20 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhCk-0006Is-21
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:56:12 +0000
Received: by mail-pg1-x542.google.com with SMTP id k3so1176333pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 05:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1kPpq697KE4I4yTusDLL7kboeTs5chvAdrFun387Jig=;
 b=b3L2uHkONuGXDGC5PLbTt27tgkTdwhspafLb7YHiU0YjK67gzft+AmjfL6mvmXWfCM
 52SdPnCgOOYzjKuYPOLsHhvs94SI7kfrdsmYFQLAXor0ApQp9pHQnkKIQkoZSgppy55O
 Hre7nEX0vczfsXyQ6oTIEHGetwAHSx8oDKNlMzOdke22kgpTjSRCZR91TRebPsMAvAec
 NF2S6JKh6OxOLrTSdah6rWTskw+ysdFcuKYBViCz0pa7UxlhWPb3x9K/ITQ/eEVpgcTy
 fWYMlK7N7zk5Rg0NYjZ0jnllJtURvZmt/Fl+8lOMCGStL2JKYNpV3+RaPzkKtGWkyaNI
 v58A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1kPpq697KE4I4yTusDLL7kboeTs5chvAdrFun387Jig=;
 b=PLMvc4ApzfKrPEWnvmUmLVU4Ly834H/x/1fAJ5ty4OATXEBi4s/+xFC3uQ0Rjh/LXS
 YVfYEl7gLD24Lw0Q9XvYZJdiliL33cH2jRLoaLPu02iQjmMlH8boN2BvWNscwTGaq2td
 Tj66L48B1LyiPsFQtLeXUt8Ah3nxrd1TZHXLPwlYtrz34mlfS3aaPlunX5e6dlWFOCUe
 9waIj6sudxLkwOJ6fZhKIiZuKIz55nOyULGe2ggeQ3it0KooggxxpKzxu4Ppf5JYPIqK
 DbjSCeHkrpnZd9vxH1lSBHcIX0JJKu5qkUyEgxL0QxFKVJZ6KVnq2ZwGyr8nAGwrEGIU
 lq2A==
X-Gm-Message-State: APjAAAWzhcGw3ei7Ph+5aNrWtDO4eh3hmK6q5NntV4hDZWCNUwTplRKY
 v/h0SVFcPSeXGL46A10QMHQ=
X-Google-Smtp-Source: APXvYqzKHxoT5zJ9NhwlAyYxbQGvvg/Tsw5V1OH4uzg5aeRYBcen6npeHWV1ieTAmdkb6dXS45+S5Q==
X-Received: by 2002:a65:64c6:: with SMTP id t6mr20204842pgv.323.1566219369615; 
 Mon, 19 Aug 2019 05:56:09 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id 14sm17421178pfy.40.2019.08.19.05.56.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 05:56:09 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a774c0: sort nodes
Date: Mon, 19 Aug 2019 21:56:01 +0900
Message-Id: <1566219361-23088-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_055610_115318_1956A363 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
tree.

 arch/arm64/boot/dts/renesas/r8a774c0.dtsi | 90 +++++++++++++++----------------
 1 file changed, 45 insertions(+), 45 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a774c0.dtsi b/arch/arm64/boot/dts/renesas/r8a774c0.dtsi
index 746775f..dc80c1a 100644
--- a/arch/arm64/boot/dts/renesas/r8a774c0.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a774c0.dtsi
@@ -1371,6 +1371,17 @@
 				      "ssi.1", "ssi.0";
 			status = "disabled";
 
+			rcar_sound,ctu {
+				ctu00: ctu-0 { };
+				ctu01: ctu-1 { };
+				ctu02: ctu-2 { };
+				ctu03: ctu-3 { };
+				ctu10: ctu-4 { };
+				ctu11: ctu-5 { };
+				ctu12: ctu-6 { };
+				ctu13: ctu-7 { };
+			};
+
 			rcar_sound,dvc {
 				dvc0: dvc-0 {
 					dmas = <&audma0 0xbc>;
@@ -1387,17 +1398,6 @@
 				mix1: mix-1 { };
 			};
 
-			rcar_sound,ctu {
-				ctu00: ctu-0 { };
-				ctu01: ctu-1 { };
-				ctu02: ctu-2 { };
-				ctu03: ctu-3 { };
-				ctu10: ctu-4 { };
-				ctu11: ctu-5 { };
-				ctu12: ctu-6 { };
-				ctu13: ctu-7 { };
-			};
-
 			rcar_sound,src {
 				src0: src-0 {
 					interrupts = <GIC_SPI 352 IRQ_TYPE_LEVEL_HIGH>;
@@ -1706,13 +1706,24 @@
 			renesas,fcp = <&fcpvb0>;
 		};
 
-		fcpvb0: fcp@fe96f000 {
-			compatible = "renesas,fcpv";
-			reg = <0 0xfe96f000 0 0x200>;
-			clocks = <&cpg CPG_MOD 607>;
+		vspd0: vsp@fea20000 {
+			compatible = "renesas,vsp2";
+			reg = <0 0xfea20000 0 0x7000>;
+			interrupts = <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 623>;
 			power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
-			resets = <&cpg 607>;
-			iommus = <&ipmmu_vp0 5>;
+			resets = <&cpg 623>;
+			renesas,fcp = <&fcpvd0>;
+		};
+
+		vspd1: vsp@fea28000 {
+			compatible = "renesas,vsp2";
+			reg = <0 0xfea28000 0 0x7000>;
+			interrupts = <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 622>;
+			power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
+			resets = <&cpg 622>;
+			renesas,fcp = <&fcpvd1>;
 		};
 
 		vspi0: vsp@fe9a0000 {
@@ -1725,23 +1736,13 @@
 			renesas,fcp = <&fcpvi0>;
 		};
 
-		fcpvi0: fcp@fe9af000 {
+		fcpvb0: fcp@fe96f000 {
 			compatible = "renesas,fcpv";
-			reg = <0 0xfe9af000 0 0x200>;
-			clocks = <&cpg CPG_MOD 611>;
-			power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
-			resets = <&cpg 611>;
-			iommus = <&ipmmu_vp0 8>;
-		};
-
-		vspd0: vsp@fea20000 {
-			compatible = "renesas,vsp2";
-			reg = <0 0xfea20000 0 0x7000>;
-			interrupts = <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cpg CPG_MOD 623>;
+			reg = <0 0xfe96f000 0 0x200>;
+			clocks = <&cpg CPG_MOD 607>;
 			power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
-			resets = <&cpg 623>;
-			renesas,fcp = <&fcpvd0>;
+			resets = <&cpg 607>;
+			iommus = <&ipmmu_vp0 5>;
 		};
 
 		fcpvd0: fcp@fea27000 {
@@ -1753,16 +1754,6 @@
 			iommus = <&ipmmu_vi0 8>;
 		};
 
-		vspd1: vsp@fea28000 {
-			compatible = "renesas,vsp2";
-			reg = <0 0xfea28000 0 0x7000>;
-			interrupts = <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cpg CPG_MOD 622>;
-			power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
-			resets = <&cpg 622>;
-			renesas,fcp = <&fcpvd1>;
-		};
-
 		fcpvd1: fcp@fea2f000 {
 			compatible = "renesas,fcpv";
 			reg = <0 0xfea2f000 0 0x200>;
@@ -1772,6 +1763,15 @@
 			iommus = <&ipmmu_vi0 9>;
 		};
 
+		fcpvi0: fcp@fe9af000 {
+			compatible = "renesas,fcpv";
+			reg = <0 0xfe9af000 0 0x200>;
+			clocks = <&cpg CPG_MOD 611>;
+			power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
+			resets = <&cpg 611>;
+			iommus = <&ipmmu_vp0 8>;
+		};
+
 		csi40: csi2@feaa0000 {
 			compatible = "renesas,r8a774c0-csi2";
 			reg = <0 0xfeaa0000 0 0x10000>;
@@ -1908,6 +1908,9 @@
 			polling-delay = <1000>;
 			thermal-sensors = <&thermal>;
 
+			cooling-maps {
+			};
+
 			trips {
 				cpu-crit {
 					temperature = <120000>;
@@ -1915,9 +1918,6 @@
 					type = "critical";
 				};
 			};
-
-			cooling-maps {
-			};
 		};
 	};
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
