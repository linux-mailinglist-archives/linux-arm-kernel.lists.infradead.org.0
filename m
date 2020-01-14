Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D3E139DBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 01:03:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHtDFUUMLkZqbJcmTFFSAljpp0xzyikhkDlZJ05bsSI=; b=acMnTrIlojus7E
	Q1iTsYvX2lQ2Wp5SqHL6wqm7FqkQ0mqCCqAcUp7yMzsPgHDOwKooPk+VdZ5q+J8QvLa0WphLgZmGi
	5lOknp8Qbjn4MrjXwZdYs/09BPjRQY21sPjaRZaYq4vbg2dDrYE5KplTkAGfTRGh8MZz5ujQeFXPJ
	L87V8lIT1K9nXVK3neDNUrBwOT/vKgrWNxpP68SH0XpGfieg5ZyKV/saJMmusjvHCjzgKNpOjreB3
	Yq2mrwVMvOOYpz5tFIGPutNEPeV5y7s/NXHuCbUJO5SOoVC9sNwm6Q8v1c5sbRJn4Jibj4XSjUXgT
	C7INR0gL7luokuz5VptA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9fw-0003mJ-0o; Tue, 14 Jan 2020 00:03:16 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9fm-0003kZ-AO
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 00:03:08 +0000
Received: by mail-oi1-x242.google.com with SMTP id v140so10157694oie.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 16:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2aznOnHp2Zo/hw5Zcuf+3mVCfEFYTwoxqWb6Av9vEOM=;
 b=ewwYqdD23x0slMfjpZNHHT+FWzHiQXZF2FEVc7pB8EhRjH0M0eOb7e6t+JYXwAXoGT
 eS2VntXcTIyj52+cFTd0jkgKaaDVZelcqIDGcVPbrzJtx+l2Q3pzMK45A0BUTeF73kOh
 txLsyvBzbaq/HnHSgRN0rahS88/ygZ8jxyVR3fxyFaM3akD3rb1R91cu7hfQVN+uyi6G
 fWHBE6ill+JicO29O25BMeuuMA+aO5ITfoR/xWJwOOWZBUUj/029+563MUP0GHFQBoAi
 HsxfjQO6qL/oP2MCVFHpU4XduoLCpoY4flDPN+Rwzzk4444a3LiY8ZCtk+LEA1xDJGPj
 CrYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2aznOnHp2Zo/hw5Zcuf+3mVCfEFYTwoxqWb6Av9vEOM=;
 b=PmG8Qb1hsImlDvhzWFPIFANb8FakeiPcJVO5og6iWzYpueRtGekNOTyeCiieDOkyAO
 WULjpRBpLju3HtVfJX+kPMHuozdXpWG6WOdYH+fyIfLOqBWpSzPOhWJvgGlq09ab2JRT
 cedtqhuIp3AOOVosIwuPJPqopV57heEvokz5n3XXrLaHwtH7CAFDGmWsfTSXvEzUk9Bd
 zTMMwNd+deXxK64YL9raDhY6fCSjEO2uPjiHl4Zdi8GmxIHIQNmlfCIW6gdoykxy2Ie9
 /32jRoo6q2+vZyAdEPQ6xXFNDvjig2JYLsU9+18670E/ejEpnFbQGAgkfIIZXI/Kh61x
 tdEg==
X-Gm-Message-State: APjAAAVELWPTAtbpmvdiT1cF+pbPGOGKBOvMGvuykEGdFv63uM2+stUY
 ZQNNAqRW7+CD/6IBqzGe/Q3pD8RQYMWcgmD29QDCaC4pMag=
X-Google-Smtp-Source: APXvYqxWm95M5K4Wdt1quqq2DV8xgNguUf8Xkb/Tv7fhBUkgPfNkprzE/QmvxrZGOOaxvDOsbty8PilEukNP5bfXWOk=
X-Received: by 2002:aca:edc5:: with SMTP id l188mr13875397oih.55.1578960185205; 
 Mon, 13 Jan 2020 16:03:05 -0800 (PST)
MIME-Version: 1.0
References: <7hwo9udi7m.fsf@baylibre.com>
In-Reply-To: <7hwo9udi7m.fsf@baylibre.com>
From: Kevin Hilman <khilman@baylibre.com>
Date: Mon, 13 Jan 2020 16:00:29 -0800
Message-ID: <CAOi56cWPvOhnWqtLJXQimRLpMrt_09oNz4HTmqr6-uZ0Bz+A9A@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: dts: Amlogic updates for v5.5
To: SoC Team <soc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_160306_362848_D6608DA8 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
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
Cc: linux-amlogic <linux-amlogic@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 3:55 PM Kevin Hilman <khilman@baylibre.com> wrote:
>
> Hi Arnd, Olof,
>
> Here's a round of 32-bit DT updates for Amlogic SoCs for v5.5.

Ugh, this should be v5.6, and the subject is wrong too.  But the rest
of the pull request below, including the tag, is correct.  Let me know
if you prefer a re-spin.

> Only thing of note is a merge of a clock dependency branch for some new
> clock IDs.
>
> Kevin
>
>
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
>
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
>
> are available in the git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt
>
> for you to fetch changes up to c3dd3315ab58b2cfa1916df55b0d0f9fbd94266f:
>
>   ARM: dts: meson8b: use the actual frequency for the GPU's 364MHz OPP (2020-01-08 11:00:58 -0800)
>
> ----------------------------------------------------------------
> ARM: dts: Amlogic updates for v5.6
> - add DDR clock controller
> - GPU OPP updates
>
> ----------------------------------------------------------------
> Kevin Hilman (1):
>       Merge tag 'clk-meson-dt-v5.6-1' of https://github.com/BayLibre/clk-meson into v5.6/dt
>
> Martin Blumenstingl (8):
>       dt-bindings: clock: add the Amlogic Meson8 DDR clock controller binding
>       dt-bindings: clock: meson8b: add the clock inputs
>       ARM: dts: meson: provide the XTAL clock using a fixed-clock
>       ARM: dts: meson8: add the DDR clock controller
>       ARM: dts: meson8b: add the DDR clock controller
>       ARM: dts: meson8b: fix the clock controller compatible string
>       ARM: dts: meson8: use the actual frequency for the GPU's 182.1MHz OPP
>       ARM: dts: meson8b: use the actual frequency for the GPU's 364MHz OPP
>
>  .../bindings/clock/amlogic,meson8-ddr-clkc.yaml        | 50 +++++++++++++++++++++++
>  .../devicetree/bindings/clock/amlogic,meson8b-clkc.txt |  5 +++
>  arch/arm/boot/dts/meson.dtsi                           |  7 ++++
>  arch/arm/boot/dts/meson6.dtsi                          |  7 ----
>  arch/arm/boot/dts/meson8.dtsi                          | 28 +++++++++----
>  arch/arm/boot/dts/meson8b-ec100.dts                    |  2 +-
>  arch/arm/boot/dts/meson8b-mxq.dts                      |  2 +-
>  arch/arm/boot/dts/meson8b-odroidc1.dts                 |  2 +-
>  arch/arm/boot/dts/meson8b.dtsi                         | 30 +++++++++-----
>  include/dt-bindings/clock/meson8-ddr-clkc.h            |  4 ++
>  10 files changed, 108 insertions(+), 29 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/meson8-ddr-clkc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
