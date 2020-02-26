Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A09916F650
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 05:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Nb6uewtxByJLLxt/oj6czMDXlp8Ja0ocnd6WjNwgTno=; b=rKdGUBXImIZKZ1vSFtzZVPd/v3
	uZ0kSxSzBZlbRyd4Rb08fBEmfCY+5qZoDDNudESqXKWlD668HreJ8JW4O9VSmyyqU8L2Z1aiThANe
	LFMVUFo3UfIX5+vi0MZHxeyMnH995lU7S7cbzPHhntutXUHF9C6GYkaUGOlZoOz2wVBz35C3sTF8v
	GIBYd+1n0gtHUdWvfn4sP/+7RhIqPvusMa0tTMX4MCZq6K1ZvVZweijlpmezrIRkyAMrbtKSRM4Ng
	fU3us/Migueo0S8OeRtDBgXnJxPqB4DXPRnEcHUobQImRJga/0HGXAC71KnfP5/1rq9wc/hZ3wfXi
	wb/Xjjzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ns6-0005Vm-DK; Wed, 26 Feb 2020 04:00:30 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6nrd-00047i-Gc
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 04:00:03 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id 01Q3xIx0016581;
 Wed, 26 Feb 2020 12:59:19 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 01Q3xIx0016581
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582689559;
 bh=DxG0zADp8KolfWngeax0Hh9tmHwKWNQ5hpD9lSOxcV4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L60+bemgBLH64lI+ORU8zKNbWZm7G9LYBG2MlvGo2QxmclJF9wkzpVW0u+jhJUXzm
 l/qaENwHhD/NWc9IfAwbmZe8n09OtEKSUF+TuhXxDYsWkuOIyh6qtbIDlAx1IJb9rL
 11ltu0+9WEbyS30B7zQQmv2yGetw4zomRL9J6fUg7iEmy9sC5WdToSUh++h7BbdXV1
 RtI1L8oX0v/yRxl2J/tlrIS+f2v2Gz5W4+aBrjhHn9ttnrzQO5z1/cJ/sOiuOuYsSv
 OLP9nlR2iLhP5wEk7z9NaEEddhTEjXoTv3Iz8ZS9Dikvft8rppHonUScOCFTcbJzfd
 6+p4+dmF/5xdw==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: uniphier: rename NAND node names to follow
 json-schema
Date: Wed, 26 Feb 2020 12:59:14 +0900
Message-Id: <20200226035914.23582-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226035914.23582-1-yamada.masahiro@socionext.com>
References: <20200226035914.23582-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_200001_820813_860827BB 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.74 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Follow the standard nodename pattern "^nand-controller(@.*)?" defined
in Documentation/devicetree/bindings/mtd/nand-controller.yaml

Otherwise, after the dt-binding is converted to json-schema,
'make ARCH=arm64 dtbs_check' will show a warning like this:

  nand@68000000: $nodename:0: 'nand@68000000' does not match '^nand-controller(@.*)?'

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 2 +-
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 2 +-
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
index 2e53daca9f5c..d61da3a62712 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
@@ -621,7 +621,7 @@
 			};
 		};
 
-		nand: nand@68000000 {
+		nand: nand-controller@68000000 {
 			compatible = "socionext,uniphier-denali-nand-v5b";
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index be984200a70e..98f0f4eb0649 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -925,7 +925,7 @@
 			socionext,syscon = <&soc_glue>;
 		};
 
-		nand: nand@68000000 {
+		nand: nand-controller@68000000 {
 			compatible = "socionext,uniphier-denali-nand-v5b";
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index 994fea7b12c1..4c6cd3ec541d 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -783,7 +783,7 @@
 			socionext,syscon = <&soc_glue>;
 		};
 
-		nand: nand@68000000 {
+		nand: nand-controller@68000000 {
 			compatible = "socionext,uniphier-denali-nand-v5b";
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
