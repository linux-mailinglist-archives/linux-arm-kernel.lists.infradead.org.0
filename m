Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59797DDBC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9TbcyD21d6NRos+g0T/JGry797Eg5QbdmoI32eQxTPc=; b=ZAr
	wj9cUh0rBgMg/fy3G2hkpue/KQuYtRI5oFD6ngmBYO0n+WXm6N9PuIJerPY9enagqepK27w7a72qf
	VpFJvFL/QZExSDFVoMGXrtxLgGo5OBQ1QHN0LGez0s2v2DYOfVHZDwcymy7oTJIUbLbrk6t1kHDTX
	Ns/UqI1n2VgrSq3Oz+49MXdw+KHYl+Rt3Mi9oYsmPfKTAXunDF5qS/mevkDLKIUMUpvof0GkJfz+o
	PJoRkmhn2UB2YJQFLZDkBvsAPTo6wBGxT6Em+vIrhxotLqjkf/Wq60lrS/BdskfO+T6bLmQ3wMFyv
	iqUvH4Bw/GGvf/hygK0fAxbG/aXwLlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htByH-0006oA-Ey; Thu, 01 Aug 2019 14:22:21 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBy7-0006ne-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:22:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id s1so28001296pgr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4P6w/HAiSYzis3+J0RO7QH8f2Acmw1YWPcQOvjFv0Yc=;
 b=QofVvSa7TtEB8BhX5um9VpHixJvJhUd/LTNRpAjrTnl3P/e2GFSrGCbrXpr0ea/eF3
 VcXUkq57kNR70a5MP4oknIKlrbsJLeg8HZFSeFMsHYsHg+vyGGrk4TcqzwO647P4tbel
 n6+fs3DW1j8EpPBASUlb0i6ts2pRilDP4quGOelGhFrLWsuwU+8ARoeyvqxNseYkr/N0
 uIw9oEjf4qmU+P7WhlQ870FphalSQBhb5IYAL9xm5yqw5ZEHf6GEXu8q5kqT+ePUepsK
 Ljai8J9xpe9Eb+wzSTTp5wP4nM6a2ghlT4rfr2D1p/iFKhqP9peU0OulM3LDm+mRaLHG
 iodw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4P6w/HAiSYzis3+J0RO7QH8f2Acmw1YWPcQOvjFv0Yc=;
 b=jaxpfqW8/wmcAJ764CrbWHBy2YV/MBQ2TOpyuZY+P7mg6LAaCEcJoGny0G2b9mqdj1
 nostMS8V97Tn1rpAHiXeaVGI0x9NWqwpnmpJjLW9cTBWNyNrKhq7dIOVVTmEsJCbAyYi
 cIBzCvooOuvFeWylMcgEQ1LrDbmSg/upbmreWEgfCMwFgBlRJGk8IC54qCaPl+qGt8KQ
 FH73My/F5UJBP2HDKMdBXjxmGOSPRXVC44URCRibnidyRWYP+wlQUYU6B70Yxzj1hiHs
 YVOBNU2P1f1NPtFzxdCDwjXdbVM2m9naI0OiZXKg8PswLQsxbxdGuuueWY/J0V/Sfdcy
 qxcg==
X-Gm-Message-State: APjAAAWT2lUIHRaje49cjf2yCSek/W3BJzFg/TlEprFhoH5ST8vdzcWN
 bx+AWBtm7idTozMoFrr+O3aB5h+m
X-Google-Smtp-Source: APXvYqzZHUZpXrj2Blx14uvBufafvCrXFrqMbmrfjJP+wELzGyDqW5k1dcIusOFC+XkVnVN9M8I5KQ==
X-Received: by 2002:a63:7d05:: with SMTP id y5mr120909106pgc.425.1564669330113; 
 Thu, 01 Aug 2019 07:22:10 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id w18sm91406294pfj.37.2019.08.01.07.22.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 07:22:09 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a77970-eagle: sort nodes
Date: Thu,  1 Aug 2019 23:21:53 +0900
Message-Id: <1564669313-22427-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_072211_868066_82F84960 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
tree.

 arch/arm64/boot/dts/renesas/r8a77970-eagle.dts | 58 +++++++++++++-------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77970-eagle.dts b/arch/arm64/boot/dts/renesas/r8a77970-eagle.dts
index 233f26f..2afb91e 100644
--- a/arch/arm64/boot/dts/renesas/r8a77970-eagle.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77970-eagle.dts
@@ -23,10 +23,13 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory@48000000 {
-		device_type = "memory";
-		/* first 128MB is reserved for secure area. */
-		reg = <0x0 0x48000000 0x0 0x38000000>;
+	d3p3: regulator-fixed {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
 	};
 
 	hdmi-out {
@@ -40,15 +43,6 @@
 		};
 	};
 
-	d3p3: regulator-fixed {
-		compatible = "regulator-fixed";
-		regulator-name = "fixed-3.3V";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-boot-on;
-		regulator-always-on;
-	};
-
 	lvds-decoder {
 		compatible = "thine,thc63lvd1024";
 
@@ -73,6 +67,12 @@
 			};
 		};
 	};
+
+	memory@48000000 {
+		device_type = "memory";
+		/* first 128MB is reserved for secure area. */
+		reg = <0x0 0x48000000 0x0 0x38000000>;
+	};
 };
 
 &avb {
@@ -102,6 +102,10 @@
 	};
 };
 
+&du {
+	status = "okay";
+};
+
 &extal_clk {
 	clock-frequency = <16666666>;
 };
@@ -157,6 +161,18 @@
 	};
 };
 
+&lvds0 {
+	status = "okay";
+
+	ports {
+		port@1 {
+			lvds0_out: endpoint {
+				remote-endpoint = <&thc63lvd1024_in>;
+			};
+		};
+	};
+};
+
 &pfc {
 	avb_pins: avb0 {
 		groups = "avb0_mdio", "avb0_rgmii", "avb0_txcrefclk";
@@ -190,19 +206,3 @@
 
 	status = "okay";
 };
-
-&du {
-	status = "okay";
-};
-
-&lvds0 {
-	status = "okay";
-
-	ports {
-		port@1 {
-			lvds0_out: endpoint {
-				remote-endpoint = <&thc63lvd1024_in>;
-			};
-		};
-	};
-};
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
