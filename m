Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718F41F41A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gff1XXSaQezwLx/yjIJ+4ipEPelucZJnPAt5828nTow=; b=CDhTEdW7ktaKri
	0dT1cb4yItObeo3ETyxpTzESqBgg+4azxmwgPz9ko7+O0u7JHDb/Xl53wlWLhW28wyASVVJFLSTWo
	2SaxoC78+0M0yuEqFiHIUNfhF3KroBvUuIx4Z+BfiUH12loZzu9xdFH0vlyTNXzgQY1zFqVc6Toq8
	FTID+B/zV35ojnFVUc48PpLA80WYN8d79hFYt1Qnw4OUPyJtH9q9vQCrScTUKGwoY6XVJY0sc3Y3D
	ejyYzvTRuJHIWWsHax3lEHTCa8WXmrSokDjILrIunk/Qpet0jkhdJj+xi8845yrtM7TEswNEQ9p4l
	P2BUZPVV5MUNfNJdSi6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jihdD-0000dv-2P; Tue, 09 Jun 2020 17:01:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jihd2-0000by-4u
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 17:01:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id u26so2761062wmn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 10:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+Cvuk1pzHbG73fVpgq0GIbQHX6L3n9Uv+zTQtj358BA=;
 b=uwRr61GzH4KclzZid9/CXcHwf5eoYtMWZzDY0qkmOR68uaurvPCMsPc+62J1hfQ9Ml
 JPFr+vJDWqDrjyK/KP2giDZ7DcMe6alW76klQ9MBCzAa6z3idL10fzSqXzUZw8p+oPRp
 kRwNxapDbK7Q9Eq3NCzU3UZk+7ZpGTOo+71+ACmA/UJtlB4SD1svTnV2j4pfk+dWoVNE
 3Ox04F449fKhozwb8JYK+5CiQuJ9ALvWHpurtFA4KSIVbpcB5OxaKB8oJhmMsQFBJisz
 35P64bVXWW8k1YXik9sGtMBFYFoQSrkYw9ZGKhEVyeRQMxiyhMSItUOQrKr6zGwSCcSd
 o5Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+Cvuk1pzHbG73fVpgq0GIbQHX6L3n9Uv+zTQtj358BA=;
 b=UtbaGIrZOyFfeOKS0GqUfSKTJ6s4HD3AqtubiRTAnvpNyBdR46Hng2M4+q7s2XRJ7t
 9D9p8LpIHM4PW6MrngcHRp4YVyBUEB88kXIVqWyWYaIK2KXEI3P0RvJakHF6FHQulpDy
 r0IfErVRGy1kd2+sqhYb19kHwwAUpKPumePwJG0lHdA+i9W9MBVKdPFxPP4ti8786253
 iCyPND0APxZaOPsFjv449k8nLhubULVZ5vqhqZEOqOb9YNvulAWGQgJqyGgLfV5FaDYe
 bZ+mnCkVioGR6Atlla9I2NzUNrjnfVkexMbp4vb0Nhb4TIO5ADJSfgXFKaoK8Ntg7NYU
 B7kg==
X-Gm-Message-State: AOAM531pnQOGc3YDFHXkhgBXP6bf6HFQ4klPMrHOt7NgX9m/uN9S8UaH
 VIgKxDgQT46SzzprwUfW3QO0I6S1
X-Google-Smtp-Source: ABdhPJznae/iSDLO0rgV3IEKwGuUJLoEsyMYlY026KsP9G5XR0ZEcKguisUvEa8wR+Y69QU9c/sc8w==
X-Received: by 2002:a7b:cc82:: with SMTP id p2mr4942530wma.101.1591722089455; 
 Tue, 09 Jun 2020 10:01:29 -0700 (PDT)
Received: from cluster5 ([80.76.206.81])
 by smtp.gmail.com with ESMTPSA id k26sm3618927wmi.27.2020.06.09.10.01.28
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Tue, 09 Jun 2020 10:01:29 -0700 (PDT)
From: Matthew Hagan <mnhagan88@gmail.com>
To: 
Subject: [PATCH 1/3] ARM: dts: NSP: Disable PL330 by default,
 add dma-coherent property
Date: Tue,  9 Jun 2020 17:58:29 +0100
Message-Id: <c19be985a3e7abc8ac05fc30678475aeadb73c50.1591719237.git.mnhagan88@gmail.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_100136_207104_D3E336EE 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mnhagan88[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mnhagan88[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Matthew Hagan <mnhagan88@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Russell King <linux@armlinux.org.uk>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the PL330 is enabled by default. However if left in IDM reset, as is
the case with the Meraki and Synology NSP devices, the system will hang when
probing for the PL330's AMBA peripheral ID. We therefore should be able to
disable it in these cases.

The PL330 is also included among of the list of peripherals put into coherent
mode, so "dma-coherent" has been added here as well.

Signed-off-by: Matthew Hagan <mnhagan88@gmail.com>
---
 arch/arm/boot/dts/bcm-nsp.dtsi     | 4 +++-
 arch/arm/boot/dts/bcm958522er.dts  | 4 ++++
 arch/arm/boot/dts/bcm958525er.dts  | 4 ++++
 arch/arm/boot/dts/bcm958525xmc.dts | 4 ++++
 arch/arm/boot/dts/bcm958622hr.dts  | 4 ++++
 arch/arm/boot/dts/bcm958623hr.dts  | 4 ++++
 arch/arm/boot/dts/bcm958625hr.dts  | 4 ++++
 arch/arm/boot/dts/bcm958625k.dts   | 4 ++++
 8 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm-nsp.dtsi b/arch/arm/boot/dts/bcm-nsp.dtsi
index da6d70f09ef1..920c0f561e5c 100644
--- a/arch/arm/boot/dts/bcm-nsp.dtsi
+++ b/arch/arm/boot/dts/bcm-nsp.dtsi
@@ -200,7 +200,7 @@ uart1: serial@400 {
 			status = "disabled";
 		};
 
-		dma@20000 {
+		dma: dma@20000 {
 			compatible = "arm,pl330", "arm,primecell";
 			reg = <0x20000 0x1000>;
 			interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>,
@@ -215,6 +215,8 @@ dma@20000 {
 			clocks = <&iprocslow>;
 			clock-names = "apb_pclk";
 			#dma-cells = <1>;
+			dma-coherent;
+			status = "disabled";
 		};
 
 		sdio: sdhci@21000 {
diff --git a/arch/arm/boot/dts/bcm958522er.dts b/arch/arm/boot/dts/bcm958522er.dts
index 8c388eb8a08f..7be4c4e628e0 100644
--- a/arch/arm/boot/dts/bcm958522er.dts
+++ b/arch/arm/boot/dts/bcm958522er.dts
@@ -58,6 +58,10 @@ gpio-restart {
 
 /* USB 3 support needed to be complete */
 
+&dma {
+	status = "okay";
+};
+
 &amac0 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm958525er.dts b/arch/arm/boot/dts/bcm958525er.dts
index c339771bb22e..515164dacc4d 100644
--- a/arch/arm/boot/dts/bcm958525er.dts
+++ b/arch/arm/boot/dts/bcm958525er.dts
@@ -58,6 +58,10 @@ gpio-restart {
 
 /* USB 3 support needed to be complete */
 
+&dma {
+        status = "okay";
+};
+
 &amac0 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm958525xmc.dts b/arch/arm/boot/dts/bcm958525xmc.dts
index 1c72ec8288de..09092bbd7b63 100644
--- a/arch/arm/boot/dts/bcm958525xmc.dts
+++ b/arch/arm/boot/dts/bcm958525xmc.dts
@@ -58,6 +58,10 @@ gpio-restart {
 
 /* XHCI support needed to be complete */
 
+&dma {
+        status = "okay";
+};
+
 &amac0 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm958622hr.dts b/arch/arm/boot/dts/bcm958622hr.dts
index 96a021cebd97..3c46f5003401 100644
--- a/arch/arm/boot/dts/bcm958622hr.dts
+++ b/arch/arm/boot/dts/bcm958622hr.dts
@@ -58,6 +58,10 @@ gpio-restart {
 
 /* USB 3 and SLIC support needed to be complete */
 
+&dma {
+        status = "okay";
+};
+
 &amac0 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm958623hr.dts b/arch/arm/boot/dts/bcm958623hr.dts
index b2c7f21d471e..6e5c580defe5 100644
--- a/arch/arm/boot/dts/bcm958623hr.dts
+++ b/arch/arm/boot/dts/bcm958623hr.dts
@@ -58,6 +58,10 @@ gpio-restart {
 
 /* USB 3 and SLIC support needed to be complete */
 
+&dma {
+        status = "okay";
+};
+
 &amac0 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm958625hr.dts b/arch/arm/boot/dts/bcm958625hr.dts
index 536fb24f38bb..0509c57a8366 100644
--- a/arch/arm/boot/dts/bcm958625hr.dts
+++ b/arch/arm/boot/dts/bcm958625hr.dts
@@ -69,6 +69,10 @@ &i2c0 {
 	status = "okay";
 };
 
+&dma {
+        status = "okay";
+};
+
 &amac0 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/bcm958625k.dts b/arch/arm/boot/dts/bcm958625k.dts
index 3fcca12d83c2..1557491c1751 100644
--- a/arch/arm/boot/dts/bcm958625k.dts
+++ b/arch/arm/boot/dts/bcm958625k.dts
@@ -48,6 +48,10 @@ memory@60000000 {
 	};
 };
 
+&dma {
+        status = "okay";
+};
+
 &amac0 {
 	status = "okay";
 };
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
