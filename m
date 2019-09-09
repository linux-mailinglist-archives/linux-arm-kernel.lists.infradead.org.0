Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416C8AD500
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 10:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FpdWECc+gSeieeIde5BF3PUONJFqy8SXTpWLyIzP89c=; b=QO5
	uD8qRf8SJo7pnM6bJINenwGB41ZdamxeUifHQBppywfn4Hs6aSD52mdzGYoW508ScKvcITFo3FtNB
	uLf8MEIrmeNsG6p4Ump/aHgtQjyfTtINdSki/xGMh2hr1LWxWMJkIfAz/o5zFS7RQs5DDVgrausp4
	MjJbuH1W+iptsgAxDpvbAKuwRC6Gn7M6z0XHfvWKqMBpMzqZTcFvrdsCpgXvZbDnJuYJVspL6C9aP
	0lhar0hqcJCVix4m+AjdG/HC8tIkVhserYQ/zO3R/GbnqBYxMOcCal+SD6lQn9DxqaNK06OOaqt6G
	sEuLxB6RwIyGPMa8+wdqPhHjrA6THXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7FDk-0006SO-3z; Mon, 09 Sep 2019 08:40:24 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FDZ-0006Rc-4L
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 08:40:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id d15so8691620pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 01:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=TNGg1bT4M83XgP2RC5fcRc5TAwrl2wtEuXkFfZHHUo0=;
 b=ADS5F3cs90nPD8bSvzEWy/mb+K5U1guRgyF+b9L4vilM7Om3shihnqQDQmspQFACA3
 QyM7CGKF0CfDIwhQvXfQYyGn1ZIvtb9KwPuzjyejVlGYSOyo03KFiEL08MGmm9qC9Vtu
 D4Yhuea7WOLZ3PtvVj45RuMW55RKJ41Fq8kKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TNGg1bT4M83XgP2RC5fcRc5TAwrl2wtEuXkFfZHHUo0=;
 b=YMmp1jUdE5OlSX3grXdn/MuhWlghfalcWvbKhpjDzXLotFv4QpO/FYMmk23fFiy0Hr
 AjlgHfC7miM6j4QC4EH2FbloeV4KBkuLfDlUum2qIcVbAm1t9cm0aawia7UgVmHM9Jlt
 DgdQx3uHNAexo7CldT17UGsM2775dFLb0I2xztJEXaWeETz2/77RRLGAac/FioReaLqC
 iKfOjkfvfNnTAKL4GNMInlj44nlotr8e2tP5sXwwCrkoQQpaxTrw3PybkT6CM4tOAPWi
 0mpLdAkhqacnyrkxpr8qAsm6Rem5qWWELq+ECrAHRkhtV1OTU5KzpVhJFr/MNfrJPnd0
 HUqQ==
X-Gm-Message-State: APjAAAUliAPcCigDZBHYcKCl2zqutGISRlZc/K0eDyDxGQOxQcp7TNjA
 d6W96pRXYMninzerWnR9ZLXXIg==
X-Google-Smtp-Source: APXvYqxVxkiMU1OnCxUqU9U/Z9h7kM90tIaooxzLYGix97nAkELbgYSZRV6TyhpuDWeJOwZRgBJ9uw==
X-Received: by 2002:a62:ae0c:: with SMTP id q12mr25243724pff.253.1568018411533; 
 Mon, 09 Sep 2019 01:40:11 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id r27sm16175346pgn.25.2019.09.09.01.40.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Sep 2019 01:40:10 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/1] arm64: dts: Fix gpio to pinmux mapping
Date: Mon,  9 Sep 2019 14:05:27 +0530
Message-Id: <1568018127-26730-1-git-send-email-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_014013_180702_E4594CEC 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are total of 151 non-secure gpio (0-150) and four
pins of pinmux (91, 92, 93 and 94) are not mapped to any
gpio pin, hence update same in DT.

Fixes: 8aa428cc1e2e ("arm64: dts: Add pinctrl DT nodes for Stingray SOC")
Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi | 5 +++--
 arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi         | 3 +--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
index 8a3a770..56789cc 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
@@ -42,13 +42,14 @@
 
 		pinmux: pinmux@14029c {
 			compatible = "pinctrl-single";
-			reg = <0x0014029c 0x250>;
+			reg = <0x0014029c 0x26c>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			pinctrl-single,register-width = <32>;
 			pinctrl-single,function-mask = <0xf>;
 			pinctrl-single,gpio-range = <
-				&range 0 154 MODE_GPIO
+				&range 0  91 MODE_GPIO
+				&range 95 60 MODE_GPIO
 				>;
 			range: gpio-range {
 				#pinctrl-single,gpio-range-cells = <3>;
diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
index 71e2e34..0098dfd 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
@@ -464,8 +464,7 @@
 					<&pinmux 108 16 27>,
 					<&pinmux 135 77 6>,
 					<&pinmux 141 67 4>,
-					<&pinmux 145 149 6>,
-					<&pinmux 151 91 4>;
+					<&pinmux 145 149 6>;
 		};
 
 		i2c1: i2c@e0000 {
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
