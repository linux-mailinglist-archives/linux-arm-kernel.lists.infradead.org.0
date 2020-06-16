Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6261FB3E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3JAyDSxG8pyfnFjJxT0XRC8NIhs315+wju5PIMgIuk=; b=iANxBbw1mzLeOY
	ojfbnCSHtpERdUi1EztootZPJT8PcsOrHSDroAIngvCIoyBF9pZyCNwAU4jtZ4z7izJWioxeziISB
	YYiCHuUZXhAK1u9jjQEWvoqvlacrHOUAFNSWQw79oxAK/wFY5Xzw+dmwS0UO/FZERXY4cBZSXreJT
	D1oNSUkGCTCIAhy0b8KmWJP1QHsH8ICcEiS/azZOxhQDRCQ88ZuVI7DryVdL4szspqCCAg6ZfoEBK
	cloFDUSRNLlUh6mNNeS+hlhmLkJOLjmXkprol2B2aJwiCl+b3/oeJ18EH/3fDfAAmBy5MrKxCZEjs
	01falUa2obcEhmjTnRTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCLW-0000Mn-76; Tue, 16 Jun 2020 14:13:50 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3M-0002be-Ev
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id x14so20884882wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M2+WWbt81D5w31pyVWPdaLfZ5hQYQ+P3D86HY7L/Ogc=;
 b=ULToSW5Xh99c4Tl68Q9jJtZIxZF39auLC0cOdGLJ4X5I+zHS+QHIDRlU4pzsjp7/MM
 8gS4pghFXwDZa1MyXQ4h3cxcaS1VMsNuhoP+Lkv6ZOPDeQT/lw40izu4OzXyHIKTS2JB
 pDlwKzSVEWmQTqCt0vip3mc7QfDvJeEhTKCBIrPRUJna0pc9Z9OGvyJgpvo1H5YgkyRv
 hMUkE8ovbgV3OQYbsAM1hPw/kTPBoc/KwqvDtD6YLfuOLJ8xbJp/Oq40ig2/JFc1QtVV
 IZujR7n4mHTD6bxK+N+LqLjD7XFl6Gbe/PGthfxQKYxQkGtv5atzlHlFq/k7VJNngI1K
 LU2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M2+WWbt81D5w31pyVWPdaLfZ5hQYQ+P3D86HY7L/Ogc=;
 b=kq7ECh640Un5khD7rskDd0iM0Tq05u0yVq7fMqK0BjV4PguVWNNjBmyd+m+71ek3LE
 MMWYC/VsGG00wWtR0PfqYIaJfGe3Vb0mSUxQe4eabfQRzJT6++WfChVS+XSUTKwNZZY9
 kORjRjL6FFY9YkxJ8ovY5QKNYgd8IrjXZ9uUEhnQZbxvpZPNT1zGe/3i+94asIFtegvM
 Nn/HlsPL6R0vby5909hatmkEMySiqaT6MqNRYavI1hkwz9goDXpstOth37UwwEK2lXbX
 EuPGKNHHBPMfMpQNES2rxF/Nht1U4N8o1g3rym6LxnmYpntqjwuIZyxGTl9UDily4Zpw
 51Nw==
X-Gm-Message-State: AOAM530vmugabSOPMyBeqok98giyrmIhv6u5cUyCCDH8A7/YouFUkGlF
 n8v9K3+fNgfhHAe3fqLv840=
X-Google-Smtp-Source: ABdhPJyhI6uA+9ibd0qky4cUCRGjOBLRGmHeQqmOLtZbeHajgW8WhXs6yr0xiR0YtIrys4yEnnXrxw==
X-Received: by 2002:adf:e381:: with SMTP id e1mr3067831wrm.320.1592315702700; 
 Tue, 16 Jun 2020 06:55:02 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id b18sm28627161wrn.88.2020.06.16.06.55.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:01 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 56/73] arm64: tegra: Do not mark host1x as simple bus
Date: Tue, 16 Jun 2020 15:52:21 +0200
Message-Id: <20200616135238.3001888-57-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065504_560301_7D301531 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The host1x is not a simple bus, so drop the corresponding compatible
string.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra132.dtsi | 3 +--
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 2 +-
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 2 +-
 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 2 +-
 4 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132.dtsi b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
index fa5ee55fd4a5..c4d3a88403eb 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
@@ -81,8 +81,7 @@ pci@2,0 {
 
 	host1x@50000000 {
 		compatible = "nvidia,tegra132-host1x",
-			     "nvidia,tegra124-host1x",
-			     "simple-bus";
+			     "nvidia,tegra124-host1x";
 		reg = <0x0 0x50000000 0x0 0x00034000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 184cc0365002..b4150d8cccf5 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -934,7 +934,7 @@ smmu: iommu@12000000 {
 	};
 
 	host1x@13e00000 {
-		compatible = "nvidia,tegra186-host1x", "simple-bus";
+		compatible = "nvidia,tegra186-host1x";
 		reg = <0x0 0x13e00000 0x0 0x10000>,
 		      <0x0 0x13e10000 0x0 0x10000>;
 		reg-names = "hypervisor", "vm";
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 72ba5146b0a9..bf696ada856c 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1036,7 +1036,7 @@ pmc: pmc@c360000 {
 		};
 
 		host1x@13e00000 {
-			compatible = "nvidia,tegra194-host1x", "simple-bus";
+			compatible = "nvidia,tegra194-host1x";
 			reg = <0x13e00000 0x10000>,
 			      <0x13e10000 0x10000>;
 			reg-names = "hypervisor", "vm";
diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 6a78056b94f4..02a02ed1b264 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -86,7 +86,7 @@ pci@2,0 {
 	};
 
 	host1x@50000000 {
-		compatible = "nvidia,tegra210-host1x", "simple-bus";
+		compatible = "nvidia,tegra210-host1x";
 		reg = <0x0 0x50000000 0x0 0x00034000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
