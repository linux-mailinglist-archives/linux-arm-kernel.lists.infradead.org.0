Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A940D168CF7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 07:46:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PZEo9OhQwn3AelIz1aZN42tB1jCGtWM6yrfwvLDi5mk=; b=MErOF1CrZCq6D3jwL5yGSs9k1Y
	Q13mCIeUCXNmbBqayWn2zQgqNwXtaD2OqAQMDH3PN62mS+CZwZcN4r3fFqeeRfEgDafvPGQSYjQ1E
	IACoEGTU56xzys9AUmdg8eZlNQsKHI4i/qeurboF3pYgVq/sjuu3cl3Ccx1Q9nqskQ0qYco9k8Xrm
	HUeCt1v+vFpTDajK1VscfTCwCOkqL6BNthhSmaaypwzbIA/BsaddIuR8dnoNg69BU6Ip+3rb793B1
	qwy/EGArL6Vae9hickw6GOgNu6ygtrEVQ68gaKCMu82i6RSNWWnOVmWhxJiUA4XvxMdw8QlEuX1hb
	oxxwBwuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5OY7-0000t0-0u; Sat, 22 Feb 2020 06:46:03 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5OXQ-0000NM-W8
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 06:45:29 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id 01M6ik5Q005982;
 Sat, 22 Feb 2020 15:44:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 01M6ik5Q005982
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582353888;
 bh=XNADDpgXs/F1tHD7+GUzG3MoPh7/+PucFfzMncSuySI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GzV7Wrcvqbq348pmivGRJEKMuTHuMo8cZbl/BH7zPvJVHHDYZ2KzlxmspN+NnmMYu
 e6MepJJplhg0eRguJQHWc/lDfXqCx1ixrM87T+D0s5xZwQqq3q/U3sZCHFq+qu4+nQ
 udVFeboUTgAtgk6geSY4L2O4svHcRZg8YDW8IWRBH3Yk2GZaZeFU+5pfGUPUpcOHvD
 O8lMAhLmAdrGZk4Fsr9mu6CwSl2TLg2bViMabpqKuYABHWZDaYcOKSjoburugY/sri
 HXEJSski+KECEoPebMMSsynS0zN691JHGdw5k7Qj4WFpny2ZbN9EwMeXKXlciZeBto
 m2Xn5TCtZMrWQ==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] arm64: dts: uniphier: change SD/eMMC node names to follow
 json-schema
Date: Sat, 22 Feb 2020 15:44:43 +0900
Message-Id: <20200222064445.14903-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200222064445.14903-1-yamada.masahiro@socionext.com>
References: <20200222064445.14903-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_224521_259292_948BCDEC 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.74 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Follow the standard nodename pattern "^mmc(@.*)?$" defined in
Documentation/devicetree/bindings/mmc/mmc-controller.yaml

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 2 +-
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 4 ++--
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
index 5b18bda9c5a6..7510db465f33 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
@@ -433,7 +433,7 @@
 			};
 		};
 
-		emmc: sdhc@5a000000 {
+		emmc: mmc@5a000000 {
 			compatible = "socionext,uniphier-sd4hc", "cdns,sd4hc";
 			reg = <0x5a000000 0x400>;
 			interrupts = <0 78 4>;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index f2dc5f695020..8d360c5cc32b 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -559,7 +559,7 @@
 			};
 		};
 
-		emmc: sdhc@5a000000 {
+		emmc: mmc@5a000000 {
 			compatible = "socionext,uniphier-sd4hc", "cdns,sd4hc";
 			reg = <0x5a000000 0x400>;
 			interrupts = <0 78 4>;
@@ -578,7 +578,7 @@
 			cdns,phy-dll-delay-sdclk-hsmmc = <21>;
 		};
 
-		sd: sdhc@5a400000 {
+		sd: mmc@5a400000 {
 			compatible = "socionext,uniphier-sd-v3.1.1";
 			status = "disabled";
 			reg = <0x5a400000 0x800>;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index 73e7e1203b09..d51b0735917c 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -353,7 +353,7 @@
 			};
 		};
 
-		emmc: sdhc@5a000000 {
+		emmc: mmc@5a000000 {
 			compatible = "socionext,uniphier-sd4hc", "cdns,sd4hc";
 			reg = <0x5a000000 0x400>;
 			interrupts = <0 78 4>;
@@ -372,7 +372,7 @@
 			cdns,phy-dll-delay-sdclk-hsmmc = <21>;
 		};
 
-		sd: sdhc@5a400000 {
+		sd: mmc@5a400000 {
 			compatible = "socionext,uniphier-sd-v3.1.1";
 			status = "disabled";
 			reg = <0x5a400000 0x800>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
