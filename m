Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72350BF93D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 20:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ao4NnqUPmftTpoXA43kpR0pMu2NxITwl+Fch79Zt1VU=; b=fzDiTp9NaTOsvF
	TcreJzsbEJaXWrKYLR452qVm3ERg6Xc9Gm8VOTpBKMzIuUAYOQxeVK9JGfbsQW/oshHoQ4CqOSnmM
	4pht8shFmhw1JB7Mw3EsRW6u7SWpCSxHlHAVsZxLik4v2hcDKSrwD+fGfSR45cHL9dCtcBy5gBURU
	eewdxqecGHrTExMvtnmb5cSMFl6952TLX9ct78nWY2lSv2AbnuFDH5Rud0bfxuGmMxLzQ4DFQDr8G
	GTFzxW/uiZpz1lwSNHM4vN+24R1k+0ltObbMJP1lCIBTHrIgs3W1Bn7h1LFSaX7lu1GxjmOIj0HGJ
	Bp3qlQNxQedu0Y49qIfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDYbU-0000Ll-4M; Thu, 26 Sep 2019 18:35:00 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDYbE-0000Jw-Ph; Thu, 26 Sep 2019 18:34:46 +0000
Received: by mail-oi1-x243.google.com with SMTP id e18so3023086oii.0;
 Thu, 26 Sep 2019 11:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NGmse8tCqZQZ4pc5Rd9nycCZrtTO2C0KKH3W2gH74ZQ=;
 b=UgV7Uh+BjMLCWW04clvdJpCdRfDq+LPqUWtOYblF8YWz4YKYeXATM5GBrymb/Sk+uQ
 S81PNoDJWIh2MnYlFgrJJyqp4nJIPSEnWcQcU9diyD7BzDBQk15Xq03a2s9hdNP2x0Gv
 LycDh6FqujeKrx/3oAaZ1qrF9pDZklAuacpqB1EbUABmeQEyCF3XqGsYD7ya6ukjJAek
 DEZHtXpSpDRBRERpBikNPBMDwlpHgQgE9z6uGXS/Ge9WNOrjEdT4a86+wC0dfksXnAB5
 6wACcrdJIdl5YFIKME8vJ7Blt1qGTY/vzSMBgtbkwKLvPS3zxgplPCWYOS0jKRSfbq/p
 diGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NGmse8tCqZQZ4pc5Rd9nycCZrtTO2C0KKH3W2gH74ZQ=;
 b=JyDq4zWFIAFJgcKTULeNm611Jngtn6rJRyYSHqyY474FLL6zdpvIsgQqxkIybcFeQA
 Wt4Ms91iVTf73dmrebUaKmm4/DRcs+59QJVRjFdD/QWgzy7yanqHhEyBn3jtbxAh50q5
 3RBKCC8OO1fH5wG4020rXyBvMuwYMIW+TnIJ0Xx54L4IvDwlIhbCVhzlqlf0XL3ZfHU9
 vmk+chYKksWG7pl5YhiaZ93U0Tt9442Dd38pJX5ozi2BV5oGJ9/h/1jvka+Nzq4zMnSa
 wjHOPLhyeE/UwX2IH6q6yW+8zlgZj18hsm4ptEnsCXbfg2qEWhow/KtNSYJBwuH46aEk
 U55Q==
X-Gm-Message-State: APjAAAXPb9SjOvZoTmJPm9gRAqNaEd5xIW9MoMKCOGtASpJngOLS5fX5
 wTjxA75/XDda452cK5eXYMtQ1Lbm+/Y/Za0xNjg=
X-Google-Smtp-Source: APXvYqxuPwoB6TKSeyJqIwODjZis0k+ZmHBg9WFAB8/8pKYdueaEYWwk2+HM7MX9vjrMpv/LByMTiav/h+fuf+x5A5g=
X-Received: by 2002:aca:4d08:: with SMTP id a8mr3946038oib.39.1569522879867;
 Thu, 26 Sep 2019 11:34:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
 <1jzhivs6n6.fsf@starbuckisacylon.baylibre.com>
 <CAFBinCA0NaCJEDfNEg+LRfW3wxfNFGbXmGS+z7D5792TsupVAA@mail.gmail.com>
 <7h7e5wt2m1.fsf@baylibre.com>
In-Reply-To: <7h7e5wt2m1.fsf@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 26 Sep 2019 20:34:28 +0200
Message-ID: <CAFBinCAv=_3vWSanQg1S5EXBVzdgTu2Ub3Hyad_ajF3v6PcbGQ@mail.gmail.com>
Subject: Re: [PATCH 0/5] provide the XTAL clock via OF on Meson8/8b/8m2
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_113444_838299_DA8666FC 
X-CRM114-Status: GOOD (  26.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kevin,

On Thu, Sep 26, 2019 at 12:47 AM Kevin Hilman <khilman@baylibre.com> wrote:
>
> Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:
>
> > Hi Jerome,
> >
> > On Mon, Sep 23, 2019 at 11:29 AM Jerome Brunet <jbrunet@baylibre.com> wrote:
> >>
> >> On Sat 21 Sep 2019 at 17:12, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
> >>
> >> > So far the HHI clock controller has been providing the XTAL clock on
> >> > Amlogic Meson8/Meson8b/Meson8m2 SoCs.
> >> > This is not correct because the XTAL is actually a crystal on the
> >> > boards and the SoC has a dedicated input for it.
> >> >
> >> > This updates the dt-bindings of the HHI clock controller and defines
> >> > a fixed-clock in meson.dtsi (along with switching everything over to
> >> > use this clock).
> >> > The clock driver needs three updates to use this:
> >> > - patch #2 uses clk_hw_set_parent in the CPU clock notifier. This drops
> >> >   the explicit reference to CLKID_XTAL while at the same time making
> >> >   the code much easier (thanks to Neil for providing this new method
> >> >   as part of the G12A CPU clock bringup!)
> >> > - patch #3 ensures that the clock driver doesn't rely on it's internal
> >> >   XTAL clock while not losing support for older .dtbs that don't have
> >> >   the XTAL clock input yet
> >> > - with patch #4 the clock controller's own XTAL clock is not registered
> >> >   anymore when a clock input is provided via OF
> >> >
> >> > This series is a functional no-op. It's main goal is to better represent
> >> > how the actual hardware looks like.
> >>
> >> I'm a bit unsure about this series.
> >>
> >> On one hand, I totally agree with you ... having the xtal in DT is the
> >> right way to do it ... when done from the start
> > yep
> >
> >> On the other hand, things have been this way for years, they are working
> >> and going for xtal in DT does not solve any pending issue. Doing this
> >> means adding complexity in the driver to support both methods. It is
> >> also quite a significant change in DT :/
> > my two main motivations were:
> > - keeping the 32-bit SoCs as similar as possible to the 64-bit ones in
> > terms of "how are the [clock] drivers implemented"
> > - with the DDR clock controller the .dts looked weird: &ddr_clkc took
> > CLKID_XTAL from &clkc as input and &clkc took DDR_CLKID_DDR_PLL as
> > input from &ddr_clkc
> >
> > RE complexity in the driver to support both:
> > I still have a cleanup of the meson8b.c init code on my TODO-list
> > because we're still supporting .dtbs without parent syscon
> > my plan is to drop that code-path along with the newly added fallback
> > for "skip CLKID_XTAL" (assuming this is accepted) together for v5.6 or
> > v5.7
>
> TBH, I'm big(ish) "functional no-op" changes like this are not things I
> get super exicted about, especially for SoCs that have been working well
> for awhile, and are do not have a large (upstream) userbase.
>
> OTOH, since Martin is doing most of the heavy lifting for keeping this
> platform working upstream, I'm happy to take the changes, as long as
> Martin is willing to deal with any fallout.
I agree: it has to work and if it doesn't then I will have to fix it so it is
so I will be taking care of any fallout


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
