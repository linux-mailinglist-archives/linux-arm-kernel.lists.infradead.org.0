Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 946851EDBED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 05:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FTvIdijQIa9WZbkUNPv1TARuDfuLNa/WJD366j1sZ2E=; b=o2ke+IzRcprCW3zJhPvHw57OGZ
	tS4KJy7808x8G+uK8+0OmbvatnsGgfkbRJUpKhP1l9QTlxOLyBIepj69iXjRMSD5Hmk1ywqzHHIWv
	lIzugKFVNxk3axN5XoKfeyLG4oeIEnNhefX/B3m+SgVT7nYZ1tJUsBB0tN7pQ8a2AoJ6U0yIA9s4n
	fSQkhXDstRoExPlTMG3IEO5oKzFkiITLPXmQCcwzTosor8nguN8fz5z/0Si2Idp4NPw9DJ1w2eE+U
	LgtJvTvKl5OA/xPCsGqSEN2wzvdiBcsfyC3S8OPIPDzA4GUGOYGCXGbS+0o8uHZGiCfb1CQHy7xAJ
	LsiG5Seg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jggqx-0005yv-0T; Thu, 04 Jun 2020 03:47:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggqN-0005Zk-5E; Thu, 04 Jun 2020 03:47:04 +0000
Received: by mail-pf1-x441.google.com with SMTP id 23so1850650pfw.10;
 Wed, 03 Jun 2020 20:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ljd1gL0a9YiLaECGRPUeWMWqu+jwE37ussa58cXejzA=;
 b=KFOe7x6IauMLNFE6HuIGA9laJSc4wQ8x9ZS2Kto1ySLnTDNb85y66ci+0Meqq7qqy/
 5K+adi8U+uMY5S2TtJ8ek0N60iZ5UHt8DrBbU9vN/NlexZkaZSrcsT2mK/VbDiNas0Wj
 55H9G3/nXOALk9OhppEKn1xUs0OMCg+QZ4kbpUTHnewmfqXsjToNh8rMRwoDdTGGKHZX
 sj00WxYzUPlGyf7sDohmvVnRDurXAq2pZso/3HiHo7fVNhSX6hEw2N9J5PdlIw378rqu
 Dt2kAGGlAyb4laYnEodsJ2kr1a9A3bstMmu64hRqIOrRA4bo80PMEwXOLNqBgXzBdAi6
 EjJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ljd1gL0a9YiLaECGRPUeWMWqu+jwE37ussa58cXejzA=;
 b=BRfvgpvzdVYAgipkW0AnXrswlxGj/ANhIQLbrpUAdkUiCPWeksldlD3KUZYdyCMBA6
 rFxrd05ALgTIMLZP0DJKCHSFTFb+3RU7mCT7MqjZvivzbaV8V2us6qBIBYm/hLmyUnZO
 EEIDRsFa08GkSeh6FYDQzjm3GpVOi+5KvdCPKQt/7Lj2wmD71Z9b6w1fkzXHXjeR04+Z
 K/H73ptxZV/H1fZlsXd6IzuyXNi879KqyAgoJdBFNBjHE9cK/T8IrehiPevwY/ynqHW9
 A5EbmPDk4HfIuAHbGsYsVhaEeibDoi1Rjqq3aBedxWE+JsaAcA3UF/O/k7Po//2VibYp
 1ukg==
X-Gm-Message-State: AOAM530fbwZZaRCFAzpgifZ4krYZ/Uk1gcgmx4mYD276kBdNCdqeyrHM
 kPVPEKNPlEzfTa+HLzmVuIM=
X-Google-Smtp-Source: ABdhPJwNVk3QpeeMpbblNbwAltfHbm6Ih+XSP+R2DYxvoDZBP0fN/cf2VcALRGiRxP0aHkdT0nmoYA==
X-Received: by 2002:a62:e703:: with SMTP id s3mr2151197pfh.43.1591242422257;
 Wed, 03 Jun 2020 20:47:02 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p19sm3083367pff.116.2020.06.03.20.47.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 20:47:01 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] ARM: dts: bcm2711: Update SPI nodes compatible strings
Date: Wed,  3 Jun 2020 20:46:54 -0700
Message-Id: <20200604034655.15930-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200604034655.15930-1-f.fainelli@gmail.com>
References: <20200604034655.15930-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_204703_228473_2687BDC1 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, lukas@wunner.de,
 Ray Jui <rjui@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM2711 SoC features 5 SPI controllers which all share the same
interrupt line, the SPI driver needs to support interrupt sharing,
therefore use the chip specific compatible string to help with that.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/dts/bcm2711.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index a91cf68e3c4c..9a9ea67fbc2d 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -152,7 +152,7 @@
 		};
 
 		spi3: spi@7e204600 {
-			compatible = "brcm,bcm2835-spi";
+			compatible = "brcm,bcm2711-spi", "brcm,bcm2835-spi";
 			reg = <0x7e204600 0x0200>;
 			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clocks BCM2835_CLOCK_VPU>;
@@ -162,7 +162,7 @@
 		};
 
 		spi4: spi@7e204800 {
-			compatible = "brcm,bcm2835-spi";
+			compatible = "brcm,bcm2711-spi", "brcm,bcm2835-spi";
 			reg = <0x7e204800 0x0200>;
 			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clocks BCM2835_CLOCK_VPU>;
@@ -172,7 +172,7 @@
 		};
 
 		spi5: spi@7e204a00 {
-			compatible = "brcm,bcm2835-spi";
+			compatible = "brcm,bcm2711-spi", "brcm,bcm2835-spi";
 			reg = <0x7e204a00 0x0200>;
 			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clocks BCM2835_CLOCK_VPU>;
@@ -182,7 +182,7 @@
 		};
 
 		spi6: spi@7e204c00 {
-			compatible = "brcm,bcm2835-spi";
+			compatible = "brcm,bcm2711-spi", "brcm,bcm2835-spi";
 			reg = <0x7e204c00 0x0200>;
 			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clocks BCM2835_CLOCK_VPU>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
