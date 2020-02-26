Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E6416F64D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 05:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NEe8VnIuOFGQdxeB+GY6BqJ7k8cH99PLH842pY5YmY0=; b=Dgu
	wQbDYmg1+24U1qGpY2oWC83hKpyIBn4UEfUHHLKgOYMSRwJtmRiRRQhu7CQDsucc3SS2OC6jZWNaY
	FxTKvhrmpawfQfueEs0IGmVcJNjd6dnAHhJQQNgdGiq2y8VJPx5DG8Vwr+j4m1NIq9gobmoiXUEzK
	8HfveDpiXbM8v1hu/V3z+bx4PVELZJDgt+fTi4RbDnMUEQLbLgfsaQJ16k4WT3+IWgdQLC2XoOBrV
	g+jXZz5zhhZcvn/CGmyFVwsgAuhT7BFTk/Cc7o6lm5se2jq2LDjD42Ql3xeqYb2KZvRQQDAkNBQfq
	Tn1Hh7MVcLG+9Ova5ttr/U4B/wnwtSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6nrt-0004AE-Ri; Wed, 26 Feb 2020 04:00:17 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6nrb-00047h-5p
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 04:00:01 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id 01Q3xIwx016581;
 Wed, 26 Feb 2020 12:59:18 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 01Q3xIwx016581
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582689558;
 bh=XDrBIXByfZ2yAmtZPGX/C8p4s5ZOw7AEPyyzLDKdN2A=;
 h=From:To:Cc:Subject:Date:From;
 b=u3e8N9Wii46h8XMIwcPQOR1pfajS6bTdVu5PoDLvzg84URiIenjUiy+I7fGvBb2FJ
 bi/Mg+Ry9pNIRD7AwVWYqpkFhHt7wRer8RayCdZL2c4Xwkbc1+b4LAOzikYvh5YPQc
 uJ+/WBeZsq1bdEK97F92wYEVkfZ57y0pxPFomSqRdnJeSlgq3+DZpWMcdQlB9m9B8/
 fNcwZHdhAYccn4yA4cK2nb1CF1C96nmr8yzQeXIWSgQfmKjseZGIoDFLLMlmhgOdeh
 Js3L2JXwWhPIeS/zJdO01aRzzFwo3/aO6wimrP6X02dF5rHnU5VhRzcg/UnXDeXAyh
 uTagRccc8RuAQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: uniphier: rename NAND node names to follow
 json-schema
Date: Wed, 26 Feb 2020 12:59:13 +0900
Message-Id: <20200226035914.23582-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_195959_581166_1CCE0AAA 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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
'make ARCH=arm dtbs_check' will show a warning like this:

  nand@68000000: $nodename:0: 'nand@68000000' does not match '^nand-controller(@.*)?'

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/boot/dts/uniphier-ld4.dtsi  | 2 +-
 arch/arm/boot/dts/uniphier-pro4.dtsi | 2 +-
 arch/arm/boot/dts/uniphier-pro5.dtsi | 2 +-
 arch/arm/boot/dts/uniphier-pxs2.dtsi | 2 +-
 arch/arm/boot/dts/uniphier-sld8.dtsi | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/uniphier-ld4.dtsi b/arch/arm/boot/dts/uniphier-ld4.dtsi
index 23b8fd627c00..197bee7d8b7f 100644
--- a/arch/arm/boot/dts/uniphier-ld4.dtsi
+++ b/arch/arm/boot/dts/uniphier-ld4.dtsi
@@ -398,7 +398,7 @@
 			};
 		};
 
-		nand: nand@68000000 {
+		nand: nand-controller@68000000 {
 			compatible = "socionext,uniphier-denali-nand-v5a";
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
index eb06c353970f..b02bc8a6346b 100644
--- a/arch/arm/boot/dts/uniphier-pro4.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
@@ -588,7 +588,7 @@
 			};
 		};
 
-		nand: nand@68000000 {
+		nand: nand-controller@68000000 {
 			compatible = "socionext,uniphier-denali-nand-v5a";
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
index c95eb44c816d..f84a43a10f38 100644
--- a/arch/arm/boot/dts/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
@@ -453,7 +453,7 @@
 			};
 		};
 
-		nand: nand@68000000 {
+		nand: nand-controller@68000000 {
 			compatible = "socionext,uniphier-denali-nand-v5b";
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
index c054d0175df9..989b2a241822 100644
--- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
+++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
@@ -761,7 +761,7 @@
 			};
 		};
 
-		nand: nand@68000000 {
+		nand: nand-controller@68000000 {
 			compatible = "socionext,uniphier-denali-nand-v5b";
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
diff --git a/arch/arm/boot/dts/uniphier-sld8.dtsi b/arch/arm/boot/dts/uniphier-sld8.dtsi
index a05061038e78..fbfd25050a04 100644
--- a/arch/arm/boot/dts/uniphier-sld8.dtsi
+++ b/arch/arm/boot/dts/uniphier-sld8.dtsi
@@ -402,7 +402,7 @@
 			};
 		};
 
-		nand: nand@68000000 {
+		nand: nand-controller@68000000 {
 			compatible = "socionext,uniphier-denali-nand-v5a";
 			status = "disabled";
 			reg-names = "nand_data", "denali_reg";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
