Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B838E1EAFEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 22:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d1Ha2va8t1WbBXHHlKZhykj/IEJZYpRqE0PtCT38F9o=; b=Jq/okRbr4JOkQ0
	zY+992P8iSomnoUdM18Pm7mvl6f2D4r3JlFYBjhQ4/CdDpqr/bXlqtaXhjFQo5ICUlWPzUl+hnDwt
	HeJcy/3uQKioLfKFmiiUqwOUssdfLAp1DUc0OEUqKAVuIM5DIQRvvlUtYMr6P+A01v5KDbgnM+dn0
	qte9CDPkSI7DlzNC6bT6OOkw1bjN7DR42zr+Q4ixjzZHYz0cAZAr51XqmDDQjBaU5J4J1q6LMOx4d
	6zQu9Tf59Ls+Eb8c+YMASqtFrnx/v3NfTikual6EMH80FlF133IOEO8OqoHQ8J1vogJBty9KPdvxu
	1mWCYdamjZnYSkvJs3EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfqfy-0003eY-V2; Mon, 01 Jun 2020 20:04:50 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfqfr-0003cA-Dp; Mon, 01 Jun 2020 20:04:44 +0000
Received: by mail-wm1-x344.google.com with SMTP id v19so722742wmj.0;
 Mon, 01 Jun 2020 13:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s5Dn7h8F8p+9hiFtim1wM4aaeJzWbt5/JlaxHO0hK24=;
 b=l67SRuA8PBupQ7fNCIDym72270aida6TA0K/imDtClEIRKSkhBKgy9+1yFC0juX9+m
 LIFR2HpW+Y/YRv5Q7HSqFeyH/yM7vKvpHkLdPBsqJtv2MRQ0pp8sfcJ7cHrrb1u6Aqw9
 g81acLRL3UVGHjnyWWymDPldpIppTYdhzbGLx9Uub8loMmNs0w4KRoabp0d1WpB/miF+
 4d+tUd53hJU1mwIwinyoe0ewffZH7cdP96KkldvyOF8z8o6UVkZkye7Ll0DsoJ/7s+k9
 ru2VmbQytV3hJuV+29DPmZb6DJiNzkbUkgzc5V7AArClc6dbKD0jD67wN8Mle+vg3VAE
 4Z0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s5Dn7h8F8p+9hiFtim1wM4aaeJzWbt5/JlaxHO0hK24=;
 b=T0IHpTU9OsPWrjQFzzqze9LvgytPP35/diQbJnjSyj6tHZnL2cgmhrLdPheeXLxB/L
 VOfS4OgCfHh6eQj1CkxNSKesh50GmqdLmJHSQ95cx/38Qut+U4gb7cgUHHd2LlE/oZz1
 k/nllYP4CXwVNI3t0fsNb7vRTTfuVhEgBgziJ0+3Fsr85BYVYu31+TGaF2aALKqgdiV3
 SsGnaFgxJCX4cNS+rCTftZGoz3v4cvQi/WOYKO+De5gDmJJoqzhiQjhDFYhf2o0801ov
 LP0zwsU0HMYNIosNG8+FQ/zxxg2ecJfN8VHg1ku/4xciZQWzOWNV9di3xhuGmFrEVkX+
 8mig==
X-Gm-Message-State: AOAM531RjQkA/X5yohJcnwqCgJDeXuRMHdrOJJNjvuxHYTfGy492YlB9
 w94Bw85BeQziVTXDZpq3tzQOgfWB
X-Google-Smtp-Source: ABdhPJzRb8zSAFQ6wsfxxoYSHAaMpja+sGsf3SPHYEbdIY/I0SegpgESf3NRVDz71fWygY8zMyq3OQ==
X-Received: by 2002:a1c:49:: with SMTP id 70mr790457wma.184.1591041880550;
 Mon, 01 Jun 2020 13:04:40 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f137189200428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:3718:9200:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id g3sm773130wrb.46.2020.06.01.13.04.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 13:04:39 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH] ARM: dts: meson8: remove two invalid interrupt lines from the
 GPU node
Date: Mon,  1 Jun 2020 22:04:11 +0200
Message-Id: <20200601200411.2006603-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_130443_484112_3D98DE82 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thomas Graichen <thomas.graichen@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 3.10 vendor kernel defines the following GPU 20 interrupt lines:
  #define INT_MALI_GP                 AM_IRQ(160)
  #define INT_MALI_GP_MMU             AM_IRQ(161)
  #define INT_MALI_PP                 AM_IRQ(162)
  #define INT_MALI_PMU                AM_IRQ(163)
  #define INT_MALI_PP0                AM_IRQ(164)
  #define INT_MALI_PP0_MMU            AM_IRQ(165)
  #define INT_MALI_PP1                AM_IRQ(166)
  #define INT_MALI_PP1_MMU            AM_IRQ(167)
  #define INT_MALI_PP2                AM_IRQ(168)
  #define INT_MALI_PP2_MMU            AM_IRQ(169)
  #define INT_MALI_PP3                AM_IRQ(170)
  #define INT_MALI_PP3_MMU            AM_IRQ(171)
  #define INT_MALI_PP4                AM_IRQ(172)
  #define INT_MALI_PP4_MMU            AM_IRQ(173)
  #define INT_MALI_PP5                AM_IRQ(174)
  #define INT_MALI_PP5_MMU            AM_IRQ(175)
  #define INT_MALI_PP6                AM_IRQ(176)
  #define INT_MALI_PP6_MMU            AM_IRQ(177)
  #define INT_MALI_PP7                AM_IRQ(178)
  #define INT_MALI_PP7_MMU            AM_IRQ(179)

However, the driver from the 3.10 vendor kernel does not use the
following four interrupt lines:
- INT_MALI_PP3
- INT_MALI_PP3_MMU
- INT_MALI_PP7
- INT_MALI_PP7_MMU

Drop the "pp3" and "ppmmu3" interrupt lines. This is also important
because there is no matching entry in interrupt-names for it (meaning
the "pp2" interrupt is actually assigned to the "pp3" interrupt line).

Fixes: 7d3f6b536e72c9 ("ARM: dts: meson8: add the Mali-450 MP6 GPU")
Reported-by: Thomas Graichen <thomas.graichen@gmail.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index eedb92526968..a4ab8b96d0eb 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -239,8 +239,6 @@ mali: gpu@c0000 {
 				     <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
