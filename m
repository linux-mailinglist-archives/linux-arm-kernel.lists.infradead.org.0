Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC09199840
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 17:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=POnnKXcAdmzIWfx4ru2iAR1JXAMP1YkBO0YFhdL1rAQ=; b=fvAEL8PmF9VUDG
	FgfDs+8ypeb10tP+r5iHa+j6tqc5NUc6fUe9y8tQ0l2lnFGMbkF43FP336Tw8bAMPV5jDEMRQpwEF
	yRfnDmBq7Bpxlw1Y1eg/0D/AZp0IHb1ud6a64s5vIPXWHdIxHxM2sBoejZTBFJS11D28GnwRgygN7
	5DxcNE1IjWwDncgdx+a0BChjdW9XJBxVlSWRun7DPT4fcmvui+nDxO+ZOLYSohK5sixJOejUATXtU
	lebdOzDfjOuUIgqVFYMZIOMX76jcKjJB+2LKXTQfBGSBDIL8cxgQfjEQmRD8pfi6CYpMs9U+6j2V0
	dP6AmdjmqspfRyclBBHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0p72-0008BV-Og; Thu, 22 Aug 2019 15:34:56 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0p6p-0008Aq-2x
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 15:34:44 +0000
Received: by mail-lj1-x244.google.com with SMTP id l14so6001727lje.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 08:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=0hczAZZIbzUwjffaKiBNCgK1tgnVZ7/bDWdIiQAuNjs=;
 b=OCkr/EMzbfx14V1OLNZnHh0duSKEZ7CFHWqRWOVDEflDFAs5SXUW+ABsKBa80iL8q4
 y7zi+vu2NEaslEZ5OTHStrpWHXsQ3P6umf5jmTzJgLsLUUZHcuwaJL3WTHgZbXvdRXjC
 PJ8JR7OdrYWINXDX0WwWBpLHPV6i7biRFgJkXzyZ3oLqZxEQiYAsd9I16N/kHyDC12mg
 KIeSH7dX7cUT9xrjaz2CrjlByUD6IoV4s5s85BnvEydKUgiRgCdywsvH3V0/D2IHIdp5
 fqqMuD9oicbVBER6U6DoqON2fyGFQaimjP/Rr9MQmNzxDeIinjnnl7Kx19jtIZ5hJHaC
 6b5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=0hczAZZIbzUwjffaKiBNCgK1tgnVZ7/bDWdIiQAuNjs=;
 b=H3JPaamz/mAU+T68nwDPdw7v3kXBLFvXFiiABjhFhyJgR2S9Wrk8QA1SaHpFIz/ADx
 dtCQF2oUEgjANuKxDSrfuCzspybpz5PASEbxSAldFi4/Run22sFLQGipKFgqcWaaDrGX
 nzMElmNrBWErE2GBkldLuDHX2xBQfWaV6cPK2d9oEb+xZeyXADfUFsc5xyCXuqDxLbuM
 ScNWJ1hbTXWZWKocDeuv+0Iur0rzo6iIGCLefcOoHUbwaVlZoA1TOu2xcvJ012ei/BR6
 ozYcSLyuS+1PstBzjQTWPEShXaVcmxogZuS7e9ZQ+Sc5KY+nIxzstMZOvDMG/GLgobVZ
 2o2Q==
X-Gm-Message-State: APjAAAWLiNAb9OqTwe2KTngs4CCIeYMlnDX3ZxUCPlsI0scZkq8fQ2Os
 uEqa5KjRZTgg0MXDPbdmjG6C9EmZE2f0Rd2HhRYaB9n48xWgVQ==
X-Google-Smtp-Source: APXvYqxrZrjFHjjyiukon8wM1/8XxzQpVziKlHKfK2Hgp5X97e2M42RzCdmVAqBnFmcZ/Ecuci/VCD+0bgClm/xYoTc=
X-Received: by 2002:a2e:9903:: with SMTP id v3mr3749lji.37.1566488081228; Thu,
 22 Aug 2019 08:34:41 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 22 Aug 2019 17:34:29 +0200
Message-ID: <CACRpkdZvKR1Gn=M=AsHarJ7BxZoDsSx-aB_4RrAN3mdNWngZBg@mail.gmail.com>
Subject: [GIT PULL] Further Ux500 DTS updates for v5.4
To: arm-soc <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_083443_134385_783F4F70 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephan Gerhold <stephan@gerhold.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC folks,

here are some more Ux500 DTS changes for v5.4, we now get
some increased interest from PostmarketOS who have started
to send patches for the platforms, and some minor fixes.

This goes *ON TOP* of the previous changes on branch arm/dt.

Please pull it in!

Yours,
Linus Walleij

The following changes since commit 07523a6cb6f868dfb3202a7fd5c7db2a43194f24:

  ARM: dts: ux500: set pull-up on STUIB STMPE IRQ line (2019-07-23
09:24:10 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git
tags/ux500-dts-v5.4-2

for you to fetch changes up to 547c9983f2fb5240780d1a1d1235e7334d33dc0a:

  ARM: dts: ux500: Remove ab8500_ldo_usb regulator from device tree
(2019-08-22 17:15:59 +0200)

----------------------------------------------------------------
More Ux500 device tree updates for the v5.4 kernel:
- Drop TV-OUT muxgroup from the HREF pin control
- Fix up BU21013 touchpad from Dmitry
- Split of AB8500 config in its own DTSI
- Drop the unused USB regulator config

----------------------------------------------------------------
Dmitry Torokhov (1):
      ARM: ux500: improve BU21013 touchpad bindings

Linus Walleij (1):
      ARM: dts: ux500: Drop TV-out muxgroup on HREFs

Stephan Gerhold (2):
      ARM: dts: ux500: Move ab8500 nodes to ste-ab8500.dtsi
      ARM: dts: ux500: Remove ab8500_ldo_usb regulator from device tree

 arch/arm/boot/dts/ste-ab8500.dtsi              | 228 +++++++++++++++++++++++++
 arch/arm/boot/dts/ste-dbx5x0.dtsi              | 208 ----------------------
 arch/arm/boot/dts/ste-href-ab8500.dtsi         |   2 +
 arch/arm/boot/dts/ste-href-family-pinctrl.dtsi |   1 -
 arch/arm/boot/dts/ste-href.dtsi                |   4 -
 arch/arm/boot/dts/ste-hrefprev60-stuib.dts     |  14 +-
 arch/arm/boot/dts/ste-hrefv60plus-stuib.dts    |  14 +-
 arch/arm/boot/dts/ste-snowball.dts             |   4 -
 8 files changed, 250 insertions(+), 225 deletions(-)
 create mode 100644 arch/arm/boot/dts/ste-ab8500.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
