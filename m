Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880B01E4E49
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 21:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7l69FAxXmiF3rWQEfDO/YyaSD1zaI7x4daQcSZ/Nq5M=; b=taG
	GPLmRbX7JHIsDSHV6pPv8wMnVnHIObcCfvyXtNZs8IHHt61XHviwz+aUXBrmLN0erUFFIUKXE1wVD
	qf7ctosb0Pxi/4HHr9c1WgHyHgjrzCBBeUz2laHZN8QW6WCW7kqnzR5lF2GKJlAH48st8TSzEdK2K
	f/TV1NoYbO65mEwW6GdyYlIAUvJ9TMiVt0S1s4oXsr5giGBSeEcFcAsvDjnrM7SsAY0anaia8uaiM
	/aR8pXBWLstBdMM/pt/lKCpHGNH21DziWd6MuT9NY4rYWCecqcM6J3P6tafjVwM0pkCDdqboc+GgF
	6vJ200s1EpKGZ8aeZCUUDzcsfaXv94g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je1qF-0001ZT-O1; Wed, 27 May 2020 19:35:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je1q5-0001Yj-4R
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 19:35:47 +0000
Received: from localhost.localdomain (unknown [194.230.155.118])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 03BF72078B;
 Wed, 27 May 2020 19:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590608144;
 bh=fyfTwfnYczyhGudUu/tTRSlOPONlV1JmPl8Bq04dYlU=;
 h=From:To:Cc:Subject:Date:From;
 b=H0l0W750dS/ExK3CPavpqtcEj9/eHkuYo2ijgilbuMwi+nu4aJy9fAxK4SOPs4aPx
 xrzAVMxEQYsydkHIqq5hEuvWSteMApERMWyaSauJHZQtKcjDCXKU+r6ZJIG/r0Zoe4
 eJ3Kl4RPtOwCZXydYdPwVdvcEs66ZNHReKYVKxKg=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v4] ARM: dts: keystone: Rename "msmram" node to "sram"
Date: Wed, 27 May 2020 21:35:38 +0200
Message-Id: <20200527193538.17424-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_123545_436058_2AB570FA 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The device node name should reflect generic class of a device so rename
the "msmram" node and its children to "sram".  This will be also in sync
with upcoming DT schema.  No functional change.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. Rename also children.

v3 is here:
https://lore.kernel.org/linux-arm-kernel/20191002164316.14905-7-krzk@kernel.org/
---
 arch/arm/boot/dts/keystone-k2e.dtsi  | 4 ++--
 arch/arm/boot/dts/keystone-k2g.dtsi  | 4 ++--
 arch/arm/boot/dts/keystone-k2hk.dtsi | 4 ++--
 arch/arm/boot/dts/keystone-k2l.dtsi  | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/keystone-k2e.dtsi b/arch/arm/boot/dts/keystone-k2e.dtsi
index 085e7326ea8e..2d94faf31fab 100644
--- a/arch/arm/boot/dts/keystone-k2e.dtsi
+++ b/arch/arm/boot/dts/keystone-k2e.dtsi
@@ -86,14 +86,14 @@
 			};
 		};
 
-		msm_ram: msmram@c000000 {
+		msm_ram: sram@c000000 {
 			compatible = "mmio-sram";
 			reg = <0x0c000000 0x200000>;
 			ranges = <0x0 0x0c000000 0x200000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			sram-bm@1f0000 {
+			bm-sram@1f0000 {
 				reg = <0x001f0000 0x8000>;
 			};
 		};
diff --git a/arch/arm/boot/dts/keystone-k2g.dtsi b/arch/arm/boot/dts/keystone-k2g.dtsi
index 08ba31780baa..05a75019275e 100644
--- a/arch/arm/boot/dts/keystone-k2g.dtsi
+++ b/arch/arm/boot/dts/keystone-k2g.dtsi
@@ -95,14 +95,14 @@
 		ranges = <0x0 0x0 0x0 0xc0000000>;
 		dma-ranges = <0x80000000 0x8 0x00000000 0x80000000>;
 
-		msm_ram: msmram@c000000 {
+		msm_ram: sram@c000000 {
 			compatible = "mmio-sram";
 			reg = <0x0c000000 0x100000>;
 			ranges = <0x0 0x0c000000 0x100000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			sram-bm@f7000 {
+			bm-sram@f7000 {
 				reg = <0x000f7000 0x8000>;
 			};
 		};
diff --git a/arch/arm/boot/dts/keystone-k2hk.dtsi b/arch/arm/boot/dts/keystone-k2hk.dtsi
index ca0f198ba627..8a9447703310 100644
--- a/arch/arm/boot/dts/keystone-k2hk.dtsi
+++ b/arch/arm/boot/dts/keystone-k2hk.dtsi
@@ -57,14 +57,14 @@
 &soc0 {
 		/include/ "keystone-k2hk-clocks.dtsi"
 
-		msm_ram: msmram@c000000 {
+		msm_ram: sram@c000000 {
 			compatible = "mmio-sram";
 			reg = <0x0c000000 0x600000>;
 			ranges = <0x0 0x0c000000 0x600000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			sram-bm@5f0000 {
+			bm-sram@5f0000 {
 				reg = <0x5f0000 0x8000>;
 			};
 		};
diff --git a/arch/arm/boot/dts/keystone-k2l.dtsi b/arch/arm/boot/dts/keystone-k2l.dtsi
index 374c80124c4e..dff5fea72b2f 100644
--- a/arch/arm/boot/dts/keystone-k2l.dtsi
+++ b/arch/arm/boot/dts/keystone-k2l.dtsi
@@ -255,14 +255,14 @@
 			};
 		};
 
-		msm_ram: msmram@c000000 {
+		msm_ram: sram@c000000 {
 			compatible = "mmio-sram";
 			reg = <0x0c000000 0x200000>;
 			ranges = <0x0 0x0c000000 0x200000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			sram-bm@1f8000 {
+			bm-sram@1f8000 {
 				reg = <0x001f8000 0x8000>;
 			};
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
