Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EB41FAF23
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 13:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VuLPG7oQrN4xPLYt/WPzH99CbsGju8IJRYpSk809tx4=; b=bxD
	4OvC4BmPDBqa4qNYYMBdf4agFyF2FI1hnJmoH0Q2bTIpJgdM6e5mC4/AHurT+A0+2v6I5KoS8ZN6R
	dOmb5VocrJymddui1XE6EG7Y3bi2o7cqY84kod1FbVqpfwACXVmfSBP2Muoe8kWZ4mhs7n0vZ6Cyi
	im+qnFGuaTXr6DH2RsFJRs2DTjIFCZTUivyZvEQjQEj7ur7VXrayxMnUkV/rwq7gjN8k85t/6Lt8K
	nCG6AsQVHA/w6zfjRi3LlbNOJIausLvGSR0nEOpMPFurmibZahTAuIfEiKB2Hjj2Mc5WNdVYKGHZ8
	IRnTy8RV3NmChPrnnSAXKfsCLAsuO5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9lD-00025Z-S0; Tue, 16 Jun 2020 11:28:11 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9l5-00024m-9a; Tue, 16 Jun 2020 11:28:04 +0000
Received: by mail-pl1-x641.google.com with SMTP id k6so3300023pll.9;
 Tue, 16 Jun 2020 04:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=C66Iy0udb87vhjoDYd71Ql6l2XA6eYACBYbwZNfMhzU=;
 b=ICJev4x2OgJ6X7xmSzWcGWWwJAyPTOuhILDrFDfIxcor78l92hde85mv/ysyicxvef
 iPNwenqBqzDbFYvb1JN0CUUfCD/bVIu8lN07+lYRk/zQ79/IhvUQXPkBOAMQHdCG5CLq
 w5Sq6/CXDDYr0RG7p6vn79pM30Dl03IYtNXE4GfkD0tlZFOzpYLWUvcRW0T2WAK+H2/S
 6dRw9Bh5DKve8/a1Nd85Gd7LTgTsOPUU1p2F6w3ozF/XkHf/bG/7J2lhs7lGUJtze0wc
 f8CojXLI6JoBPREEVLMQjgXwOSuemXoDk4DjB7x7zXK9YgYMX8a87KK7rZeLaVKjY4Xk
 I0ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=C66Iy0udb87vhjoDYd71Ql6l2XA6eYACBYbwZNfMhzU=;
 b=rAeJamletUxRhW6ycKlzWgszRSTbXM/Y9xDmrjq7vRxJzezpM8z/LO1kRKCygmBt6z
 nmU2D4RyxhXwyCui8vndMcdWtrE5kelbNCaPvX5seCIiW+Tul8hAMN/HzkH6wzFx7pnv
 U2dzhU9Z5YC+FbPHTuwRY/NshuXmUiXVUFhQ+5OiILercYsFmwWOPFZI6uI5gZlhlUHg
 haMgc8JMTG4EG2b1L0pb62Y7ZV/Qz75rgK4zXVvQEgkWaQvwCGg8spOijuCjejd4VLwh
 Pcv4luVDYr0fqk2xGk1Y4f3TScwK9ri2oxHIDvXUC7b+UBRr9C9pUE4X2awh0U5+6wJa
 X1Xw==
X-Gm-Message-State: AOAM533+OtMzIN7gHcobkvf0MBUn5wElEd50w52Z6ShCM2v5sIdVAgKJ
 gFtwn+2aRCkHSEthcxHDDCU=
X-Google-Smtp-Source: ABdhPJwaevj2Eg+de+5NM26vCPlyHzB6CcylDSU3H8uKvyfdS27T3gYBG5pWtcngruNnK1bLe2z5/A==
X-Received: by 2002:a17:90a:c85:: with SMTP id
 v5mr2248738pja.114.1592306882003; 
 Tue, 16 Jun 2020 04:28:02 -0700 (PDT)
Received: from localhost.localdomain ([101.12.205.96])
 by smtp.gmail.com with ESMTPSA id b19sm16617701pft.74.2020.06.16.04.27.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jun 2020 04:28:01 -0700 (PDT)
From: Gene Chen <gene.chen.richtek@gmail.com>
To: robh+dt@kernel.org,
	matthias.bgg@gmail.com
Subject: [PATCH] dt-bindings: mfd: Add bindings for the Mediatek MT6360 PMIC
Date: Tue, 16 Jun 2020 19:27:56 +0800
Message-Id: <1592306876-3504-1-git-send-email-gene.chen.richtek@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_042803_333549_26E1C1BD 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gene.chen.richtek[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gene_chen@richtek.com, devicetree@vger.kernel.org, Wilma.Wu@mediatek.com,
 linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org, shufan_lee@richtek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gene Chen <gene_chen@richtek.com>

Add devicetree binding document support Mediatek MT6360 PMIC

Signed-off-by: Gene Chen <gene_chen@richtek.com>
---
 Documentation/devicetree/bindings/mfd/mt6360.txt | 53 ++++++++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/mt6360.txt

diff --git a/Documentation/devicetree/bindings/mfd/mt6360.txt b/Documentation/devicetree/bindings/mfd/mt6360.txt
new file mode 100644
index 0000000..e25b5c6
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/mt6360.txt
@@ -0,0 +1,53 @@
+MediaTek MT6360 Multifunction Device Driver
+
+MT6360 is a multifunction device with the following sub modules:
+- ADC
+- Battery Charger/OTG boost
+- Flash LED/RGB LED/moonlight LED
+- 2-channel Buck
+- 6-channel LDO
+- USB_PD
+
+It is interfaced to host controller using I2C interface.
+This document describes the binding for MFD device and its sub module.
+
+Required properties:
+- compatible:	Must be "mediatek,mt6360_pmu"
+- reg:			Specifies the I2C slave address of PMIC block, Must be <0x34>
+- interrupts:	I2C device IRQ line connected to the main SoC.
+
+Optional subnodes:
+- ADC
+	Required properties:
+		- compatible: "mediatek,mt6360_adc"
+- battery charger/OTG boost
+	Required properties:
+		- compatible: "mediatek,mt6360_chg"
+- Flash LED/RGB LED/moonlight LED
+	Required properties:
+		- compatible: "mediatek,mt6360_led"
+- 2-channel Buck
+	Required properties:
+		- compatible: "mediatek,mt6360_pmic"
+- 6-channel LDO
+	Required properties:
+		- compatible: "mediatek,mt6360_ldo"
+- USB_PD
+	Required properties:
+		- compatible: "mediatek,mt6360_tcpc"
+
+Example:
+
+	#include <dt-bindings/usb/pd.h>
+
+	pmu: mt6360_pmu@34 {
+		status = "ok";
+		compatible = "mediatek,mt6360_pmu";
+		reg = <0x34>;
+		wakeup-source;
+		interrupts-extended = <&gpio26 0 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "IRQB";
+		interrupt-controller;
+		#interrupt-cells = <2>;
+	};
+
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
