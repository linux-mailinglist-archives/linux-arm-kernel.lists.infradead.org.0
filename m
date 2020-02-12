Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAD015AB23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 15:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQYs6nMq1dtOZYJJJVT5qZn7s/Z5VN0bHdseG3vFuoo=; b=qM13rambIiXrte
	p1NHMuCxT7uf3z4odz9wWcAyC4JMfsEckg4B7yK7Z3yvGU+iIrAfnymF6HSQ61OIAJBsxkKobUqrr
	N9Y0nSwtcnzZaDIE+N1X6cCGOoL4roGSXiTcwDF2aMT5QA8xTClFGvjOw9CwORxFjpjmkH4NANx7B
	v9FadM5oGHgaFU0wID9Yxm/NitS55QKXTbT3ku4kGpI4XYk+bTnfKJzkLTg0ug2Gp/9aUnShlzfOQ
	0tIrdwgXS9Nm8uNTM4HnosLIAtYkdD7VUPxKbK0/Kp1tzE32BbssSkwzuk7sZ+cqYe/Owig2xpdPV
	94csWitV6ZHGBFLjcxrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1tDZ-0006C9-7A; Wed, 12 Feb 2020 14:42:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1tDC-000612-Em; Wed, 12 Feb 2020 14:41:59 +0000
Received: from localhost.localdomain (unknown [213.195.124.40])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8020B20873;
 Wed, 12 Feb 2020 14:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581518518;
 bh=Ph7c857eirFez6JYBKw+nD34hjDRRznioR/hKPDkqX4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cOvgS3FdeuRKRMI2pJPKem39t6r1MDHwwdqyKWnHVLy2sq3/rhTb+KtFPcwtuziRT
 s3SE2qM/GQ0JkuV03paHVWxkU0p0sjOjcwX8IlTZPjYMvgArMQ9ineWDpQ4J5F1OiE
 6o+J6+pPVBkqom/N2WnF/iC90v92z5IkNWl+qQ7Y=
From: matthias.bgg@kernel.org
To: Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: mediatek: rename scpsys nodes to
 power-controller
Date: Wed, 12 Feb 2020 15:41:45 +0100
Message-Id: <20200212144145.25407-2-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212144145.25407-1-matthias.bgg@kernel.org>
References: <20200212144145.25407-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_064158_513225_56B231F9 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <matthias.bgg@gmail.com>

The nodes with name scpsys actually implement a power-controller.
Rename the nodes to match the bindings description.

Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>

---

 arch/arm64/boot/dts/mediatek/mt2712e.dtsi | 2 +-
 arch/arm64/boot/dts/mediatek/mt6797.dtsi  | 2 +-
 arch/arm64/boot/dts/mediatek/mt7622.dtsi  | 2 +-
 arch/arm64/boot/dts/mediatek/mt8173.dtsi  | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
index 43307bad3f0d..a00c5caa1915 100644
--- a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
@@ -278,7 +278,7 @@ pio: pinctrl@10005000 {
 		interrupts = <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
-	scpsys: scpsys@10006000 {
+	scpsys: power-controller@10006000 {
 		compatible = "mediatek,mt2712-scpsys", "syscon";
 		#power-domain-cells = <1>;
 		reg = <0 0x10006000 0 0x1000>;
diff --git a/arch/arm64/boot/dts/mediatek/mt6797.dtsi b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
index 2b2a69c7567f..136ef9527a0d 100644
--- a/arch/arm64/boot/dts/mediatek/mt6797.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
@@ -157,7 +157,7 @@ pins1 {
 		};
 	};
 
-	scpsys: scpsys@10006000 {
+	scpsys: power-controller@10006000 {
 		compatible = "mediatek,mt6797-scpsys";
 		#power-domain-cells = <1>;
 		reg = <0 0x10006000 0 0x1000>;
diff --git a/arch/arm64/boot/dts/mediatek/mt7622.dtsi b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
index dac51e98204c..339dc9f88f43 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
@@ -230,7 +230,7 @@ pericfg: pericfg@10002000 {
 		#reset-cells = <1>;
 	};
 
-	scpsys: scpsys@10006000 {
+	scpsys: power-controller@10006000 {
 		compatible = "mediatek,mt7622-scpsys",
 			     "syscon";
 		#power-domain-cells = <1>;
diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 8b4e806d5119..9ab22dac925d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -436,7 +436,7 @@ pins1 {
 			};
 		};
 
-		scpsys: scpsys@10006000 {
+		scpsys: power-controller@10006000 {
 			compatible = "mediatek,mt8173-scpsys";
 			#power-domain-cells = <1>;
 			reg = <0 0x10006000 0 0x1000>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
