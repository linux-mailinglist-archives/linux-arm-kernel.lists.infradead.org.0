Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DF31FB3BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtT3ME8ldqQ8EDQuOBO/4ZMk+mCzVP+L8kcn3a5OiYQ=; b=IVXXFnbU0kR9hg
	+9ZE868b+aVMwANoRSP79bkhN5v6TBGSl/z66bEfwGBj9rSh9O1juKAE3JDTc1CWqVDul+Ux8In2T
	2c3BYx3VYGPfHPa8LGIHUOJK6sqtGf9v444kazV5/0fr2R9OA827RHTzkJhON9t5lWDwVHl5WpXJV
	yMVnCanz+58dXTjTpX4j1iKV8AdCPFMuOU2wuWMQd++qi5lXhLBTB8glxuC5ax1k3MJ0+QEPpteYd
	46LCAVE3Ngf31bRhrXUUJT+Pknynfnort68G0dJlpaUZUujN4t8LSklw/fBBOkWphpJnNHdsBQU7J
	L1U3dxlSCuJwDXcZbmpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCIJ-0004fc-6d; Tue, 16 Jun 2020 14:10:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2x-0002JJ-HF
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id b82so2982979wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ovQJ+nxLPgIkYbuQt2SCQKzxVuaVAKxPiX+Ud+yngTY=;
 b=KO1jqiv6JeFiRDgWo9+UDUMuiQ1ij+1+FXo0eIpu4YmpwS9Opv1/Ba/x8EoN4tnhH6
 tAz6JbF/AypHdOlPnYVU6xhd0p8h4uFq3ZLwo2v4k7Vt+0cwV06/T28aOqhqnX6/Vm6O
 vK2hrCJqjZSdxPEQLAzhaUaQfjPUhrUzRl8Sm7lE8xnlIHeigwUrKL9iQWGZ0S+/EqBM
 kfvsA377kicEBaIfLjWyAsptopGNUCbRHvBPyNn1ih8Ax7JmAGtr9HyXeBIc5XvWSezA
 OQd6H3A4Pz1I1nxrjQLVNL+xTB+Y/cDsppn6cs4EyPR3+hc3i7FO9OC0/8tTomi2jlbO
 wkmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ovQJ+nxLPgIkYbuQt2SCQKzxVuaVAKxPiX+Ud+yngTY=;
 b=Ttxlt+1ilAujcwdkptYovIlTTTLVfCEwxt8QXWNUXMYsKQ5KbclYt2q8MHZoJczvYJ
 rCl49/BiExUet6jRVuSVAm1xpEb2jkhW5kbvHuWU27fUADAVoaLGplkMgUKW9jURvYpH
 6hJBE2HpTpQRxfHNku6LBV6wOx9ztckrIazVgTXL5EzuTLNKaDNp7CUU+yTWFf6cHbeG
 T2MoM/4iuGFJqpk4BGrrE4029Ieh/u0iOUva7hIh6ZPDCzbnBsP5fbEtVxlJ+t4nGOqA
 /Vsh+EWKDp3XfQz/tluumhNA0kt4PXmRx59evWpVgyCoULMzqSlg09TZmSo05c8AUNHI
 iJbQ==
X-Gm-Message-State: AOAM530yKmipdpjjDcbrObWfCeAdwrfOjnR/aCHVDEf3x7Sr1+kbeVLS
 NszeVFUvTZ4WsQOuMPHTHRI=
X-Google-Smtp-Source: ABdhPJw73cbPplV8KFd2PJxjrIwAqhVcwVIxNEO/gK1/CetMp7W8w3S2dltFFYXMsAz0u9PiABkTAw==
X-Received: by 2002:a1c:7215:: with SMTP id n21mr3337969wmc.10.1592315678136; 
 Tue, 16 Jun 2020 06:54:38 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id f9sm28542733wre.65.2020.06.16.06.54.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:36 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 45/73] arm64: tegra: Add interrupt-names for host1x
Date: Tue, 16 Jun 2020 15:52:10 +0200
Message-Id: <20200616135238.3001888-46-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065439_621149_DFD2733B 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

Interrupt names are used to distinguish between the syncpoint and
general host1x interrupts. Make sure they are available in the DT so
that drivers can use them if necessary.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra132.dtsi | 1 +
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 1 +
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 1 +
 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132.dtsi b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
index 6ebfe503489f..76e1a6451e83 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
@@ -89,6 +89,7 @@ host1x@50000000 {
 		reg = <0x0 0x50000000 0x0 0x00034000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
+		interrupt-names = "syncpt", "host1x";
 		clocks = <&tegra_car TEGRA124_CLK_HOST1X>;
 		clock-names = "host1x";
 		resets = <&tegra_car 28>;
diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index decf8de3bbe5..e86b682f8645 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -940,6 +940,7 @@ host1x@13e00000 {
 		reg-names = "hypervisor", "vm";
 		interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>,
 		             <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "syncpt", "host1x";
 		clocks = <&bpmp TEGRA186_CLK_HOST1X>;
 		clock-names = "host1x";
 		resets = <&bpmp TEGRA186_RESET_HOST1X>;
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 73aba724bf67..f056158a2634 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1042,6 +1042,7 @@ host1x@13e00000 {
 			reg-names = "hypervisor", "vm";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "syncpt", "host1x";
 			clocks = <&bpmp TEGRA194_CLK_HOST1X>;
 			clock-names = "host1x";
 			resets = <&bpmp TEGRA194_RESET_HOST1X>;
diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index cbf0d30a2f8b..0586722df64b 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -90,6 +90,7 @@ host1x@50000000 {
 		reg = <0x0 0x50000000 0x0 0x00034000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
+		interrupt-names = "syncpt", "host1x";
 		clocks = <&tegra_car TEGRA210_CLK_HOST1X>;
 		clock-names = "host1x";
 		resets = <&tegra_car 28>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
