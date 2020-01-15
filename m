Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C5013BA69
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 08:40:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSrcOmnqgtEiNbOv6kw4qLLxgM6cOuYI9WHtDiGI/50=; b=TcAOsgcgzFQ+XD
	Iv+jne4PpeYJ/E5IjqoEtx3GxhxMK1etNY40/Bsaka6zdhIBqmu+r2xFmXvAhUH6bkWWleM8sTZVm
	nAylSo8LSUD1ADTGG24q4+yjwylsP5r+uO++Hr14wPnFpl4tJPp96dIcJRqNwSap9u/LOCzoZT6zl
	9HYx3c0UaWDOs7ziJgiA7VdFiH47xil5AS1PvKN3f5yNJIUWJnjP67XFQfIyUKkObNXYN+S3gzSaE
	2DFfI9iUDec1KsRxjD2K/UYHFulGBgrqCVszXEeXFklZhtmStN8JspLxYI039KUSuRT5vYucWTwBj
	Q8henTo6JO0+pVO9Wy3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irdHO-0008LS-EA; Wed, 15 Jan 2020 07:39:54 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irdHE-0008Kz-Qg
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 07:39:46 +0000
Received: by mail-oi1-f194.google.com with SMTP id a67so14516366oib.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 23:39:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gQgiagsJrBpivSRO3cNNnJuZ6cplPqbaBlhKLaSf2rI=;
 b=fU19l1K4T2Xx/iMmUSL37btNfSFmdDbk50FoUaMtLwqxbzpTaYX/M71pjiyk2cWxuD
 YAg8Kvx6j/UFvTc9Lmd5wCzJrJu6qFMDs/e0gtWG31rQlrypncij3s8RoGFDyazComUV
 5intmue925NN7lnM+5ms97W7wnbps/f/ChIBHFtxuyUweYVQbEuXifCREHTjKVWLDbmP
 zDh0cmpuvnRYzSBgwdQ9/S61tUFE93UuEqqqyz0kadlNW6e5Ia54H3KHxLjdHQIEBjSa
 tD44OeiLX4Tgs70XGUp2sbNXU5oi5q2YJu9/imeaN64eGeQD1N1FO1U/pHIQm5SDe0qY
 uCsg==
X-Gm-Message-State: APjAAAWpnUwTbw3BZ3J61a5AZIfHs5IeFFn7aEUZagk+XJt6z4KMqiSH
 4nOfJnfM2rmsuL5IwtiKMNCsEc7AydxiwRPIiSA=
X-Google-Smtp-Source: APXvYqzRuT0HM8yM1bFV+Vr8H4zqFzNs++p+wxD1vyFZGkDfxnAXEJURgsGyPxDgTZ0m05wbjHNslRBWSQG6enCwcYI=
X-Received: by 2002:aca:5905:: with SMTP id n5mr20532365oib.54.1579073981787; 
 Tue, 14 Jan 2020 23:39:41 -0800 (PST)
MIME-Version: 1.0
References: <20200112191315.118831-1-marek.vasut@gmail.com>
 <CAMuHMdWc97=-9yBF0CJDZpWH9ZGX9uoDY_t6E6TQNc4MO93W_w@mail.gmail.com>
 <cfb752e0-46b5-1936-c3f1-8c6d781bebb5@gmail.com>
In-Reply-To: <cfb752e0-46b5-1936-c3f1-8c6d781bebb5@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 15 Jan 2020 08:39:30 +0100
Message-ID: <CAMuHMdWeo3awiD7iAfWFXc01isnmsBc6CuQ6X4s3CO7pNXjfJA@mail.gmail.com>
Subject: Re: [RFC][PATCH] ARM: dts: renesas: Add missing ethernet PHY reset
 GPIO on Gen2 reference boards
To: Marek Vasut <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_233944_859184_6D586FBA 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Wed, Jan 15, 2020 at 6:14 AM Marek Vasut <marek.vasut@gmail.com> wrote:
> On 1/13/20 9:58 AM, Geert Uytterhoeven wrote:
> >>  arch/arm/boot/dts/r8a7790-lager.dts   | 1 +
> >>  arch/arm/boot/dts/r8a7790-stout.dts   | 1 +
> >>  arch/arm/boot/dts/r8a7791-koelsch.dts | 1 +
> >>  arch/arm/boot/dts/r8a7791-porter.dts  | 1 +
> >>  arch/arm/boot/dts/r8a7793-gose.dts    | 1 +
> >>  arch/arm/boot/dts/r8a7794-alt.dts     | 1 +
> >>  arch/arm/boot/dts/r8a7794-silk.dts    | 1 +
> >
> > I believe all of the above (except for stout) are available in Magnus' farm...
> >
> > r8a7743-sk-rzg1m.dts and r8a7745-sk-rzg1e.dts need similar changes as
> > r8a7791-porter.dts resp. r8a7794-silk.dts.
>
> Do you have those two boards / can you prepare and test a patch ?

I don't have those boards, and thus can't test them.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
