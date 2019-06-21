Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A740E4E46D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:45:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KV15nrAdyD+jVdF5QjpNizFCHjLY40pwYjez48WQGjg=; b=tKyTlCdkWRO1XfHCL/gdll3VrE
	o/I3xs7qChBulOKs6khqWoJcjdZcMSWcPXCxSv5YbeR3wNmMwxnT8j1NZoTxbfshnUOP2ibkgIbOd
	M4Pih1jNtp75caJ13e/hy8Y/0hD4Fpg7WQZgxQqwR+2QGD10V0BGRJHbI9OmwinCENEAWwy6Shx6o
	4ACWeNqU3pn7i4+m18vpnoCB8BP0dcUHkBKzy2tDDENxl60HbSWRJS6ZRmCXsHMyL7T9esS8Xdzup
	UXn61bRwpMYrJdCa/0kOhMVsrsJ+jkBV6ZSuYKlmc4DwsBJEzjoar0SQ44Uq15XLFmq1pCNLJml9Z
	5tEa6pbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heG6S-0003dt-Fv; Fri, 21 Jun 2019 09:45:04 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFgT-0002tV-Rt
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:18:15 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 5F00A25BEAF;
 Fri, 21 Jun 2019 19:16:39 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id C8ACD943521; Fri, 21 Jun 2019 11:16:35 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 48/53] arm64: dts: renesas: r8a774a1: Add CPU
 capacity-dmips-mhz
Date: Fri, 21 Jun 2019 11:16:26 +0200
Message-Id: <5f5249497bd7ed65d90cac36c3c3dabcda2903dd.1561107232.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561107232.git.horms+renesas@verge.net.au>
References: <cover.1561107232.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021814_090213_E86D8A93 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Biju Das <biju.das@bp.renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Biju Das <biju.das@bp.renesas.com>

Set the capacity-dmips-mhz for RZ/G2M(r8a774a1) SoC, that is based on
dhrystone.

Based on work done by Gaku Inami <gaku.inami.xw@bp.renesas.com> for
r8a7796 SoC.

The average dhrystone result for 5 iterations is as below:

r8a774a1 SoC (CA57x2 + CA53x4)
  CPU   max-freq   dhrystone
  ---------------------------------
  CA57   1500 MHz  11428571 lps/s
  CA53   1200 MHz   5000000 lps/s

From this, CPU capacity-dmips-mhz for CA57 and CA53 are calculated
as follows:

r8a774a1 SoC
  CA57 : 1024 / (11428571 / 1500) * (11428571 / 1500) = 1024
  CA53 : 1024 / (11428571 / 1500) * ( 5000000 / 1200) =  560

Since each CPUs have different max frequencies, the final CPU
capacities of A53 scaled by the above difference is as below

$ cat /sys/devices/system/cpu/cpu*/cpu_capacity
1024
1024
448
448
448
448

Signed-off-by: Biju Das <biju.das@bp.renesas.com>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm64/boot/dts/renesas/r8a774a1.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a774a1.dtsi b/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
index b06d7149e5fa..21fb7919d3bb 100644
--- a/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
@@ -137,6 +137,7 @@
 			enable-method = "psci";
 			clocks = <&cpg CPG_CORE R8A774A1_CLK_Z>;
 			operating-points-v2 = <&cluster0_opp>;
+			capacity-dmips-mhz = <1024>;
 		};
 
 		a57_1: cpu@1 {
@@ -148,6 +149,7 @@
 			enable-method = "psci";
 			clocks = <&cpg CPG_CORE R8A774A1_CLK_Z>;
 			operating-points-v2 = <&cluster0_opp>;
+			capacity-dmips-mhz = <1024>;
 		};
 
 		a53_0: cpu@100 {
@@ -159,6 +161,7 @@
 			enable-method = "psci";
 			clocks = <&cpg CPG_CORE R8A774A1_CLK_Z2>;
 			operating-points-v2 = <&cluster1_opp>;
+			capacity-dmips-mhz = <560>;
 		};
 
 		a53_1: cpu@101 {
@@ -170,6 +173,7 @@
 			enable-method = "psci";
 			clocks = <&cpg CPG_CORE R8A774A1_CLK_Z2>;
 			operating-points-v2 = <&cluster1_opp>;
+			capacity-dmips-mhz = <560>;
 		};
 
 		a53_2: cpu@102 {
@@ -181,6 +185,7 @@
 			enable-method = "psci";
 			clocks = <&cpg CPG_CORE R8A774A1_CLK_Z2>;
 			operating-points-v2 = <&cluster1_opp>;
+			capacity-dmips-mhz = <560>;
 		};
 
 		a53_3: cpu@103 {
@@ -192,6 +197,7 @@
 			enable-method = "psci";
 			clocks = <&cpg CPG_CORE R8A774A1_CLK_Z2>;
 			operating-points-v2 = <&cluster1_opp>;
+			capacity-dmips-mhz = <560>;
 		};
 
 		L2_CA57: cache-controller-0 {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
