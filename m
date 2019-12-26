Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D2912AF77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 23:58:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MU63rDvrsdIF96fKcv1p5pt2JGeLnaaEqBsoXQrTy1Y=; b=f/eKf6HX9E3niw
	NrItcGpo0uf8yxeUXaP5UMvOOAEscAZk0R+IgzFWMxtXOaiyWFoR1+JFnw4Jlm5vwDwxUjwi7mbyU
	9gNsB7crnuy0u7ILGJMDuaySRAjSz0Ta8dNESq5gsNv5NkPMsS3DHltEuERPkRFyRa488INBRxBLT
	5e8cc/crv5oIdQ4KDtLGYPlXhMhbAK1ntVNpQcwcEkwKeGHoe8a0Ud9z9jjQgV795eAB3D+trdgEs
	PyZ6WNWQjHX6dFsseLNylw6ohK2dPJDHGmya164Ige3dzGHz3IJjFMlACWAVb755ORU8g1UJ2fuV2
	1Ff2sUGCLPql2Cuk5Qog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikc56-00015I-Ug; Thu, 26 Dec 2019 22:58:12 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikc4u-00014n-N2
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 22:58:02 +0000
Received: by mail-lj1-x242.google.com with SMTP id r19so25732091ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 14:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=j/cBOslc/KIxaWhSsI7Bl4PCX6p0b4k080h031Im5iY=;
 b=Km+m9/y8zkNh/b47OTHz2Iktizk1cIm5qiTS0m8GCrbSy630kH83iEzzGVHoW0+C/e
 u/2gIIWLXXywvWsYa8ys5NG1iLZtUCQc2SV7b4LyP6TPe5wdoppQTQPdmL+GENNkmvo9
 4eH7sk/9A7pAvbc3te+ybL4SEqqI++5LtGTkLJf5RdgI/+yTEqUAr5DQGDz+yD9sT+FP
 aYsZux5KKCKZzUOnZlCx+w56qxws4m3Twm/HMMimgLiE9EOqw4r9Dq7RE50yUYF4+Pbn
 D3gaL23dCLfoebO5TQWqIMDk7JwLellcZWPglIr+z+sRZsLexz31gG0B0icYQee+Hx/q
 BmSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=j/cBOslc/KIxaWhSsI7Bl4PCX6p0b4k080h031Im5iY=;
 b=RDp1bhDeA0n/1nzd6OfLI+C35DbPHh7wDIiW88FFxLIL8i//PKzAvO5qLha03pTCvy
 2nYMaomIEoT8+wYIb1/iAHACuysIXDvmjEyFmBgiGuyDju9FKgck5S0MQ5wmkwHBBi0L
 KI5azn77mP4LR6Us1rg1lo4wZQ9CUnlSdwbDzq+UPOQV4W7HTWC9tV+KoXndIuUhsoaP
 tOELDQ8SpSiC3kj8dy2KbODdJpyvSv/hIoBkJm7AxNbVa+kEgf6joz/6lsy1q48SOlPH
 D5tyrcvsSu5zCVjhzVC1In6o1FfQ/+oGj2hfnCwbB0zl13aAz2xIXNLn1+UeMybUD3RK
 XMSQ==
X-Gm-Message-State: APjAAAVMKL5FOl0+fBD480RXqEN6AChmJWcKB1j/KgDAqras9Yis2nkk
 5CUkbtzXg4w5ALW99PwOK7rAK87mAtGZoEwrhDX0BQ==
X-Google-Smtp-Source: APXvYqxRtISDieYIBvvTDf0g5k5mcnKDnBLfcXbAeiGxtItN84tZUcLReNIfsYsuXkEwWhnKIDvhYPsrJP5/6TpB/HU=
X-Received: by 2002:a2e:86d6:: with SMTP id n22mr15574872ljj.77.1577401077594; 
 Thu, 26 Dec 2019 14:57:57 -0800 (PST)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Dec 2019 23:57:46 +0100
Message-ID: <CACRpkdaN2Lv_rBEYNiyAarA81yea6Eky8w_htqZqdRng8S-DcA@mail.gmail.com>
Subject: [GIT PULL] Ux500 DTS updates for v5.6 take two
To: arm-soc <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_145800_879961_D321DCCA 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi SoC maintainers,

This is another set of DTS updates for the Ux500, adding
support for the AB8505 PMIC and the Samsung GT-I8190
"Golden" phone.

Please pull it in wherever the previous DTS updates were
pulled in (based on the earlier top commit).

Yours,
Linus Walleij

The following changes since commit 42a1e9450c27de15067d1d25f6a608e2bfeb72b2:

  ARM: dts: ux500: Add devicetree for HREF520 (2019-12-09 14:45:02 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git
tags/ux500-armsoc-v5.6-2

for you to fetch changes up to 224bf0fe729237c4da241e5966abfc1bfb4353a3:

  ARM: dts: ux500: samsung-golden: Add Bluetooth (2019-12-26 00:12:25 +0100)

----------------------------------------------------------------
Support the Samsung GT-I8190/Golden phone:

- Proper include file for the AB8505 PMIC variant.
- Add a DTS file for the GT-I8190/Golden
- Extend the IMU, touch screen, WiFi and Bluetooth
  as separate patches.

----------------------------------------------------------------
Stephan Gerhold (8):
      ARM: dts: ux500: Remove unused ste-href-ab8505.dtsi
      ARM: dts: ux500: Add device tree include for AB8505
      dt-bindings: arm: ux500: Document samsung,golden compatible
      ARM: dts: ux500: Add device tree for Samsung Galaxy S III mini (GT-I8190)
      ARM: dts: ux500: samsung-golden: Add IMU (accelerometer + gyroscope)
      ARM: dts: ux500: samsung-golden: Add touch screen
      ARM: dts: ux500: samsung-golden: Add WiFi
      ARM: dts: ux500: samsung-golden: Add Bluetooth

 Documentation/devicetree/bindings/arm/ux500.yaml |   5 +
 arch/arm/boot/dts/Makefile                       |   3 +-
 arch/arm/boot/dts/ste-ab8505.dtsi                | 275 ++++++++++++++
 arch/arm/boot/dts/ste-href-ab8505.dtsi           | 234 ------------
 arch/arm/boot/dts/ste-ux500-samsung-golden.dts   | 455 +++++++++++++++++++++++
 5 files changed, 737 insertions(+), 235 deletions(-)
 create mode 100644 arch/arm/boot/dts/ste-ab8505.dtsi
 delete mode 100644 arch/arm/boot/dts/ste-href-ab8505.dtsi
 create mode 100644 arch/arm/boot/dts/ste-ux500-samsung-golden.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
