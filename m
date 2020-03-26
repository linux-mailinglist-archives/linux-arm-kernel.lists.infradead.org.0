Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A33B194408
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 17:09:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujKKXyG+PlCaRdZvHLM1QmjSL4IS6X3s+z/rDQ81AEc=; b=Z2gBPjabg9srPy
	NdOvc3Srmp8WC7jba4+xGNE2HYzQV7FYCJhBj8eJra6DDk75mOeMfRk03Kyko++pxWUdS4NaR9Q1A
	FCUOH+CXPTOMvJjy7pQjLNtFnaNZ4lsM01C7F1XNRL90mf/SDAJU0gLUF3p2atSPUFDrz+NKzMGe8
	/m07cCLEIhA8/HaDxlBTRoZ9U873iUkMiG1WrjIBDNqFlI61la1Qdiln4LDGIi3SgqqEVNT3G1f41
	gye3IUHdkl/4E62iXQrKA7dV3ink0UQ0s5/5lI2JYeCjPX2lMO7TqT/eStTnhC4d7cIji/Bq2yLHz
	PBuuFMCCTEUjUHFq0eOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHV4c-0006Si-Q0; Thu, 26 Mar 2020 16:09:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHV45-0005te-Ir
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 16:09:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id a25so8540118wrd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 09:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pZI4mFYIeUBqyaD+rgbp/dHgudUJiutQ+jywlmvsJi4=;
 b=wHdLPElFbWZX4QzH1H99ZzwKFnHC8E+AE/ASH6YVsojyJt+o9b2frATNFHTv5wWxiY
 svFX3mxxPsXUCxQOiIOhNSFwU1euEqEmQP/tN9msQ/0diAtr2aPEenOzeeOU69qqnYlD
 60BD+1FC/gwXeBM2bIX2LSxcnMVm6LCT+fMFNQu4Fm/aaUBwks2FZeEZS3qNmL9l0ihH
 FX0s6PgP6fMY9AXJN5NfVXYLhx+P14L5IcNUbpvnH0oWNkHpZEdiPiQqfU8B7AYuRXsu
 uur6JlE0s19UUy6x2o8EZBRfLLlZ7DuxRxbmdekEh4WoEf4Sng1lNX0FxlbiBs+a9bga
 ULHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pZI4mFYIeUBqyaD+rgbp/dHgudUJiutQ+jywlmvsJi4=;
 b=nqdz7WR3fjlnZzp8xX1eqSViJrEmUC3NLN2jeUq6WvsugIneAYPF7dtIyLrN7nzZNV
 yjeC493SmXwcu0LyC2xjwVQ5Rhi8O1QTAUxkzsAIsrJQE5v/gUGnxvVpkixb9p+MQUXw
 Ct6c3FMymtIcQ/Mj5vCBkJP38zY21mCsQeA/QTJS6G0lsz9sSpYPohiNdM3OwSNSJ/mN
 G1qEkJEqsIIDWYret845+tsdt7j4PdE9bGuo0Hrj2ABT07k0QMcIyFXkeAUGeL2eOQBQ
 veXQ2iU0FAKUUz9lnxrtGolwo8CfX7vWV8FwZSfxW2UGW2YivymeNlf2F5Z3/3g2gxp4
 Rn8w==
X-Gm-Message-State: ANhLgQ0nIx6Gbf4LH2dC76ALuWBmdIhOC7XVR513kzcBZTLsNONJUsQ8
 a/AMVH6pAMO64JG4g2bzUyoucQ==
X-Google-Smtp-Source: ADFU+vviie4DwJ//1lgb8NoEiaThjzKQPQnFgaGF/UDsdQxDgsRx38hfv7RxV8qwxxrIMh0gu4KH7w==
X-Received: by 2002:a05:6000:100f:: with SMTP id
 a15mr9738134wrx.382.1585238943970; 
 Thu, 26 Mar 2020 09:09:03 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id z188sm4093511wme.46.2020.03.26.09.09.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 09:09:03 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 2/2] arm64: dts: meson-g12-common: fix dwc2 clock names
Date: Thu, 26 Mar 2020 17:08:57 +0100
Message-Id: <20200326160857.11929-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326160857.11929-1-narmstrong@baylibre.com>
References: <20200326160857.11929-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_090905_618280_C7C0DC99 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the correct dwc2 clock name.

Fixes: 9baf7d6be730 ("arm64: dts: meson: g12a: Add G12A USB nodes")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 0882ea215b88..c0aef7d69117 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2319,7 +2319,7 @@
 				reg = <0x0 0xff400000 0x0 0x40000>;
 				interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clkc CLKID_USB1_DDR_BRIDGE>;
-				clock-names = "ddr";
+				clock-names = "otg";
 				phys = <&usb2_phy1>;
 				phy-names = "usb2-phy";
 				dr_mode = "peripheral";
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
