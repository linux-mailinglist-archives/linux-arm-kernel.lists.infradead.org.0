Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EDC71979
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zIEzvXp2NOaaVJ+TXxcTXkL2PMclKlxBkFB7k2Jocpc=; b=niQFQ70YjIV8Wa
	aX1UWRT8ynWYLEIGWoIAMkoQY0QVb7+pgXorK0e2uWmDwaI/4BIPV4oTzbsjLJRpZKgT3wCzinWei
	Qn5CBqy/2lPCTQfFn8frOxsWit8WE6U+K462dSJrQc/YQqqgl4bJXs52t1H1vtYw0+PPUsZTygxZJ
	CFbt8DFN+1zIXxb2X+58YeR6AnuOYEoPlAY8Dv4j5Ee3v0cp3a7tcPWt2kSlko7Yt44HYKIlCMaah
	uU5TpjEnyE9SUAmZbSBGZ9qWqar+GEDHSSbHvl2PiZEom7+NBoa/oYpj+J4v8rpg2JCZ07s2t6tzX
	tpPYr4ydL8cEDp6ZBG1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpv03-0005IL-8f; Tue, 23 Jul 2019 13:38:39 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuzU-00056O-Tw
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:38:06 +0000
Received: by mail-lf1-x141.google.com with SMTP id u10so29351844lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 06:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ktAJuIJ9KXqby1Ak7scwTAEzieMJIsOT18B61deNl2M=;
 b=IOHG8EdqQTEgJQ4hE28am0duu+7wfJe9cI9ps0P+6q9NodmUKIyWVwaDmwkRpWqbvM
 XQhZHmU6j0l0pUsRHJnHQrhAV213lArsWk3eFFM4pz7DoWecbK3DbxBh/BUdEgzeeQ4g
 b27rCQsENSd3Gl0vybn5+PVATdtYn1zQyqzq0SLl6HTjedTHeScJJDvjij0COsASmu5T
 ro5Hgc57ug6avJwmpE3+vZU6GjCGSFMS7qhAQ10m7LcCMsw9Qvd2smSk6uiZl5Z9eDoa
 zr+wYW823XuPthBYn8z3hjG61x2/o5c62dw4zpLgYGK7dof3SNfsfTsIMnT0LA5SA94h
 leCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ktAJuIJ9KXqby1Ak7scwTAEzieMJIsOT18B61deNl2M=;
 b=mqRtI2z8eZ/UNYKKEeeJxUjkTxBnppwVONR+adFRgMgzyj9ZKGbgDzb7QUkdoSEgA3
 agD0R3i21WEmGnQIsqSEfRQWrwC7ZiRdqLlgALpQPrder8eAMclS3ehnD6Dnm7hVDKF7
 fCtF5LAyhc0rryeczyA0Nh5vLwASv8x1JX9NSeL5+G60tEGJMnddrN7Q392uahAkqVPe
 fic+ikURQK6UB6CyuDOwV0x2XysTY98sNZCnUHMx5vRwqCssYgR3eFL9jCMvVNB39dEl
 l8d0i3rn0XDGbB3Ke1BtVy8aCfaUkRC9cfHRgggECYs0j51vh7WzEuyvCZTRyCdLdxwR
 nF0g==
X-Gm-Message-State: APjAAAWDKvSJ0T3jQwp/hqvG5avROuyKYn3tu7mLPpciulznann81oaB
 nhb+4lDMjMsamvBnwXfPaqQF3A==
X-Google-Smtp-Source: APXvYqzjveNqA9ZUcV25S+gLWC8uVypFal/gu2ZEyUFlv0+xvo819wdakKCilrmEEtLUTmTsnC+3WQ==
X-Received: by 2002:a19:48c5:: with SMTP id v188mr34546643lfa.69.1563889081429; 
 Tue, 23 Jul 2019 06:38:01 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id l24sm8069411lji.78.2019.07.23.06.38.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 06:38:00 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Daniel Tang <dt.tangr@gmail.com>,
	Fabian Vogt <fabian@ritter-vogt.de>
Subject: [PATCH 0/3] RFT: PL111 DRM conversion of nspire
Date: Tue, 23 Jul 2019 15:37:52 +0200
Message-Id: <20190723133755.22677-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063805_002534_2BB7B04B 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So this is a cold-coded attempt to move the TI nspire over to
using DRM. It is more or less the last user of the old fbdev
driver so it is a noble cause and interesting usecase.

This can be applied on top of a vanilla Torvalds v5.3-rc1
kernel out since sunday.

I do not expect these patches to "just work", I expect them to
need some hacking, so someone who is actually working on the
hardware will need to step in and fix it up.

It does outline the overall idea of how to do this.

I found no defconfig for nspire in the kernel so I used
ARMv4t multi.

Configuring the driver for nspire:

- Disable CONFIG_FB_ARMCLCD
- Enable CONFIG_DRM_PL111, CONFIG_DRM_PANEL_SIMPLE

Hacker notes for nspire:

- I don't know which PrimeCell ID this hardware has, I hope
  the amba_id mask in drivers/gpu/drm/pl111/pl111_drv.c for
  PL111 and PL110 will match it. Please confirm that you get
  a clean probe call, else report what ID this has.

- The 24bit RGB frame buffer may be a bit much for the PL111
  in the TI nspire to handle. Try editing the .fb_bpp in
  drivers/gpu/drm/pl111/pl111_drv.c down to 16 if this is
  the PL111 variant. If it is the PL110 variant, we will get
  16 buts framebuffer anyway.

- I have hard-coded the panels to 1MHz, based on the fact
  that the AHB clock into the CLCD appears to be 48 MHz
  and the hard-coded TIM2 value for the classic means
  "divide by 48" and this seems to want the clock freq
  divided down to 1MHz. Verify this by adding prints
  inside drivers/gpu/drm/pl111/pl111_display.c in the
  function pl111_clk_div_set_rate() to verify that the
  divider gets set to 48 in TIM2_PCD_HI and
  TIM2_PCD_LO. TIM2_PCD_LO bits 0..4 = 10000 and
  TIM2_PCD_HI bits 27..31 = 00001 in that register.

Please test and fix, if you can.

Linus Walleij (3):
  RFT: drm/pl111: Support grayscale
  RTF: drm/panel: simple: Add TI nspire panels
  RFT: ARM: nspire: Move CLCD set-up to device tree

 arch/arm/boot/dts/nspire-classic.dtsi |  19 ++++-
 arch/arm/boot/dts/nspire-cx.dts       |  18 +++-
 arch/arm/boot/dts/nspire.dtsi         |  10 ++-
 arch/arm/mach-nspire/Makefile         |   1 -
 arch/arm/mach-nspire/clcd.c           | 114 --------------------------
 arch/arm/mach-nspire/clcd.h           |  10 ---
 arch/arm/mach-nspire/nspire.c         |  25 ------
 drivers/gpu/drm/panel/panel-simple.c  |  63 ++++++++++++++
 drivers/gpu/drm/pl111/pl111_display.c |  28 ++++++-
 include/linux/amba/clcd-regs.h        |   1 +
 10 files changed, 133 insertions(+), 156 deletions(-)
 delete mode 100644 arch/arm/mach-nspire/clcd.c
 delete mode 100644 arch/arm/mach-nspire/clcd.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
