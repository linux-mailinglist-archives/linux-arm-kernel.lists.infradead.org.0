Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A37DEF85
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcOFWYPicQfp857lrBWbmF54fCvl6oMKMyoukDqFd8M=; b=K0oGRQf7NfVsxh
	V/xvpNLrw8qFjSdRVKAlPKhBvsuRH7V8DTUTYZeTPIRjc1LU9yOgDm6VF/PyMZfvm7PPE2p1p/rbg
	N82E7juw3zWUj+bVAGcCH+l0WIZV5AfCVHFQn3oM9ePS4waZ5FwEiRpmG9DdyoMkPk74hbQRVEVA6
	EqMSTTyaGZ3QTHUM9xUnPyNcMDhYy+jtzdtab5+T57uHC5ny8CQKqM/x9n/FaqHyxrKnypASCD8OE
	+w6diYDHuTkqNslF4oJrFKx4h9Ug0EjYDD5lt0Lhdfeq10SdFOgJXtMnndTMSNDnPZ6Qp+XQkmFd7
	2Bhx/y+QIpcwG8zSL0iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYh5-0007cs-Dq; Mon, 21 Oct 2019 14:29:59 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYgH-000715-Jb
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:29:11 +0000
Received: by mail-wm1-x344.google.com with SMTP id 3so13045184wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 07:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n78tQVq9/plAz92sXVKu4tP9hWbwiMaXkerT080cL4k=;
 b=b8B6lOgoNis+uT9WeTDkEpstRZbzzFC6/3vDzjhz8m6KZvaEfukyLK9WO20A3gPeCQ
 uEERmRuWMkFNgbW7Z+mm/FJ9nyVvTyK/c6W6mlkQuSsnThCrP3SjSc03asVXKTcVaUxQ
 +mH7CcOORHKRGfA0a7C4jpT+QjKyjAQG3j8urpXqjuhC2YR0Ue5XtQ0xPjU7DMuoKyp3
 njRq3CdMflWesO4t4S/qVGEADwZSZys5FeBvuZ+SFEefXTGsrewBJkkI/74nVpDIk/6o
 0zjL+48M/Ev6Lm2vryoDh980gA7pKR43CxEnThIQWBI6isvkhgWBzFK/MFewl/+dSINv
 WUSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n78tQVq9/plAz92sXVKu4tP9hWbwiMaXkerT080cL4k=;
 b=kjhE/ZjyvpAQujFYEmr8KBBLlrkNGA43OA3HqhJRRfeY7Yq4jyJKyrZuAw21BRnu8Y
 sYm8XJHbrZOUMbzemGbypljqfoShkIytFFFjecFnCvxBYAHLLpSzS346uGPG9JWOtA2Z
 qViRRoYV0T3YqXkAuwV+zfEqNr6jEEG+NT/DLycxkA/uLVfQNQEsNAHEn+rdkL7PFm9h
 5Fddm7/hGt1komlXWK2V07LH/bc3YZVrSEj1W8DIyPzvmCrcdQfoZTmZVUtwg4MqYLl9
 OPv9iBwBpuDjitaqsWDH1qE/AuVsBotHs/C+wGKQZOKwKRqjjsq/p9N0IhF3DMdsADXv
 dj8g==
X-Gm-Message-State: APjAAAXXySRUTpQLj8Nwl2auZNtAs545HCUHYo7wePOe8cNRx/P9JY5A
 Ik4/PzV5TicvSuElyuc3h09OFQ==
X-Google-Smtp-Source: APXvYqzuXnjhOxsZOJwteaURpR4IgYMNdjlr4hFzHFqPCiVyPffxvVGUoarHOGtpPpHrKSrn2edPfQ==
X-Received: by 2002:a05:600c:34b:: with SMTP id
 u11mr19655952wmd.176.1571668148143; 
 Mon, 21 Oct 2019 07:29:08 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id d11sm17304463wrf.80.2019.10.21.07.29.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 07:29:07 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 2/5] arm64: dts: meson-gxm: fix gpu irq order
Date: Mon, 21 Oct 2019 16:29:01 +0200
Message-Id: <20191021142904.12401-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191021142904.12401-1-narmstrong@baylibre.com>
References: <20191021142904.12401-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_072909_642477_D5FE7DC0 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This fixes the following DT schemas check errors:
meson-gxm-khadas-vim2.dt.yaml: gpu@c0000: interrupt-names:0: 'job' was expected
meson-gxm-khadas-vim2.dt.yaml: gpu@c0000: interrupt-names:2: 'gpu' was expected

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
index a0e677d5a8f7..5ff64a0d2dcf 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
@@ -96,10 +96,10 @@
 		compatible = "amlogic,meson-gxm-mali", "arm,mali-t820";
 		reg = <0x0 0xc0000 0x0 0x40000>;
 		interrupt-parent = <&gic>;
-		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
+		interrupts = <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "gpu", "mmu", "job";
+			     <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "job", "mmu", "gpu";
 		clocks = <&clkc CLKID_MALI>;
 		resets = <&reset RESET_MALI_CAPB3>, <&reset RESET_MALI>;
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
