Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D42911A614
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 09:42:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHjulQ20hZEGY3L3rALTmjY5TlvUg5nimLr9beDwiqE=; b=pNLowTp8sF6oSf
	/BUV+L74lvBmiyJtWHqV35Dfigi+wX3RzuIPduRaYIva6B99b1S7TlyxL9tW1NxCKkCA/FndTpj/r
	pNC1teSWPV1LkbRyoyW/MDHkdyPHjydlSC3tZ2rG3OhY67ifIVcawmQ0e2lJ6OR0F2uN7TJgWRnr2
	MT0XIOAQYmYhu3hAM1UTmvNXD71JXBKU00IGe1UkDjMDwgx8zMrYRN9NjKmi+fU+3VEpWJZwm8rn5
	2RgQVgMKPYM5s/jQ8fJnKSNtTZD4c+eVxvM1e/8OLQI6JMcavUAEskzwmFptw2rEJsQq4woZMBw+q
	PLTtwNUxNYZRGoJUU+Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iexZG-0004rw-Gy; Wed, 11 Dec 2019 08:41:58 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexZ2-0004qQ-BA; Wed, 11 Dec 2019 08:41:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id q8so1448870pfh.7;
 Wed, 11 Dec 2019 00:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NsX+54XryMi2VELIlseSEX982HiAeN+ixQnkqnlA7YM=;
 b=LmSCzEKlLF9GA2NDPubkojoLRS1e9leBh1jLX86uZVx6zzLug+HCFJqv78bTvWeQ+g
 jKeqADdNLjCPNYb78KIB8IolMywHdHzgFDuqdtrTXlnwQMQ/r0xW54gkzlRpFwEQbYqZ
 stjB6Lp32jDGktWCXe42LqB9lE+Cg2BizkCyAFox+NMheVEt+/XJDUEA+TOs1xP2a9tn
 t3JJP8WRF/l48UiXw1RcvV650X2ryFnvl9Vstmk+BqjhdaMWyexnopBPg7lGbCNZLG7c
 SNp5xDwmmklLOIYTQNOHUBGJ51KL2d2H6JpMM2hz1kGtNDbPB8bH+Pft+0Vq6CEwiQ04
 T35g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NsX+54XryMi2VELIlseSEX982HiAeN+ixQnkqnlA7YM=;
 b=i8Il8HOUxWm8UHDiFVMYQp1ExNLYO5OAP+kQ8G0xJ8vtuccWan7orFvySFjXawCXIH
 XkZpBWrDbidxrIEB3DMi69fEceezpQ0W/4iWf09SMrB1IDKc1HpFrxMIPmX3HRf9NLRk
 fJbxxJiLhpEqmN/xvAEE9QekYOSfV8I3hwUs85rQSVEAM3KjcNDCPEAyT7PCmwqi6U1x
 xEKSugIzSyVzpWGzUad/Zp8H8yR7fffNaUnk0Wpr9rWwPVUFQwrl0uePSf4a+B4z/XR2
 +dAAXq+GlecXDBVnaFOxCK6b3YuESPQrgw7TDhLo32gwXmpQnpAHBYfHLIaHDb04Jc5o
 TJ3Q==
X-Gm-Message-State: APjAAAXQQWqK0ZBTu9/cqkjhJLaoPDRzPOhMGV3HWVUK2A50eM1H6ROx
 X/YskqwX+7R9CO2EvTHtWXw=
X-Google-Smtp-Source: APXvYqzJMVswmGLym+pZbQ6L9I2M3QaOEA5y6ogXLZGiNgCt//erJUC4U3w+uiICKuF3gfbZKbVHcA==
X-Received: by 2002:a63:d406:: with SMTP id a6mr2888017pgh.264.1576053703526; 
 Wed, 11 Dec 2019 00:41:43 -0800 (PST)
Received: from localhost.localdomain ([103.51.73.137])
 by smtp.gmail.com with ESMTPSA id e16sm1806233pgk.77.2019.12.11.00.41.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 00:41:43 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S . Miller" <davem@davemloft.net>
Subject: [PATCHv1 1/3] arm64: dts: amlogic: adds crypto hardware node for GXBB
 SoCs
Date: Wed, 11 Dec 2019 08:41:10 +0000
Message-Id: <20191211084112.971-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191211084112.971-1-linux.amoon@gmail.com>
References: <20191211084112.971-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_004144_390004_10EAAB17 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the crypto hardware node for all GXBB SoCs.

Cc: Corentin Labbe <clabbe@baylibre.com>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Tested on Odroid C2 GXBB
---
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
index 0cb40326b0d3..bac8fbfd4f01 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -14,6 +14,16 @@ / {
 	compatible = "amlogic,meson-gxbb";
 
 	soc {
+		crypto: crypto@c883e000 {
+			compatible = "amlogic,gxbb-crypto";
+			reg = <0x0 0xc883e000 0x0 0x36>;
+			interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc CLKID_BLKMV>;
+			clock-names = "blkmv";
+			status = "okay";
+		};
+
 		usb0_phy: phy@c0000000 {
 			compatible = "amlogic,meson-gxbb-usb2-phy";
 			#phy-cells = <0>;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
