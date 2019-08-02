Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007D97EC82
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 08:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZABnh5a4USA62sGgrPSQRk4yIOf483bFHLl5ARuQzrM=; b=e+0n/rDFYgnoBL
	BN+gzAoaIZDP8d47AoBWTo39kuNZdOUq4Z3fn5wHjszOhCI3G9OGHxfWDrHQr2SXKlSTk0Y1Pp7wy
	+sh427Nh7K1mh/TwPTpY5tlEhpMp1ACU0ayoK3cn9cS659hUn+4N2Lp4IDIv7Mt+jf0gvk6xc7our
	N65HhcoB3gSwKnWArZaS1SOiUR/vga+5myBm7fnDR6NY24/VLGKFPooOcMgbEW2dxNJ6RN0VpGTuw
	LokhxkjMB5RSIxwbAuimd7RmfkYCVVPExTij6E3XTK/py/bc0hjiP8ycyouPTMtalS8UICNBVtVGa
	QyT9kSmeGrHMOqbzT41Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htQqa-0005mL-74; Fri, 02 Aug 2019 06:15:24 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htQqP-0005lz-Jm
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 06:15:15 +0000
Received: by mail-qt1-x844.google.com with SMTP id k10so3666495qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 23:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NJK0vgby3QC9u2a5qKlpfOibBVA+YhLUqRUYNCsX67s=;
 b=PgP7focY6IphrJ0Ka6VBAFp34SGs4AFVlbQ8h+T5hEgGjrsGAtyfS5VtWYxuf1fB3m
 G+G/whb1JuWvP8jS5gKDkp8csr8jyEVbEGfMgycCRW987rpX71qlDCuF5C+foPZpnr8s
 eFjM9tysfTKhL3Cuoj+drO25SsCwBeC4Ja5tw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NJK0vgby3QC9u2a5qKlpfOibBVA+YhLUqRUYNCsX67s=;
 b=qXGCU7Uo474ekJzkxDaZ2MjqNTVKQkEe+IwG8vwOnYAlxRGKiHxpS/0buKqipAPtdy
 MLrUdIJWTS9aj7IKZ6PC/7AMYYDYeq/WcGDCn4GIl0GaEdLjjg+y3P9BBwad+yxWSWwN
 XmzGevzG2D4fBezVz0Q/Fp6NxzI0KE7TK5aHDDBSw8PYdbg6W2tJrAQRWbybUKfTRCyO
 quFHy52nKuw9GklCLY4NHNBBeVDXpN8JaBghLN0fOuWchR4oDfBVdat6kUoJOnHyixvA
 /3+PHrK4Lc/7GkntHOZvm+2Ahcl0WJZICAKZ5YUibAb1Xub78zbqAAS9gdPtBoBxfjk5
 iWRQ==
X-Gm-Message-State: APjAAAWpc4Mtm0CTYHo6KEMhRREfqt3+1faojv1GyFjJL8KTqn1z+hHR
 UmcQk8k0Xj7+Rx0AoExuhhL190sbnOCJLDvTw6c=
X-Google-Smtp-Source: APXvYqxWVuZjhzsME6hUNKy4bA2amIPVfDbn9cMpQvV9ctZBzTD1Uxuckz0CHPM+oREl2o6o08TXkm81e59OxjE6k6I=
X-Received: by 2002:ac8:1887:: with SMTP id s7mr94164225qtj.220.1564726512547; 
 Thu, 01 Aug 2019 23:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190724081313.12934-1-andrew@aj.id.au>
 <CACRpkdapypySGPrLgSMSNy1fzkca2BfMUGzf3koFWQZ-M5VOvg@mail.gmail.com>
 <9d0f2b20-e6f6-419c-a866-c4a0dd92aa63@www.fastmail.com>
 <3691f6cb-2451-43f7-9f00-d5693071ba59@www.fastmail.com>
In-Reply-To: <3691f6cb-2451-43f7-9f00-d5693071ba59@www.fastmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 2 Aug 2019 06:15:01 +0000
Message-ID: <CACPK8XcWK9Gf=pW5ds=3muoXHAWnyYfHcVSVh+anaTigtMO8yA@mail.gmail.com>
Subject: Re: [PATCH 0/3] ARM: dts: aspeed: Deprecate g[45]-style compatibles
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_231513_903403_3D756A59 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 1 Aug 2019 at 05:45, Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Tue, 30 Jul 2019, at 10:27, Andrew Jeffery wrote:
> >
> >
> > On Tue, 30 Jul 2019, at 07:23, Linus Walleij wrote:
> > > On Wed, Jul 24, 2019 at 10:13 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > > > It's probably best if we push the three patches all through one tree rather
> > > > than fragmenting. Is everyone happy if Joel applies them to the aspeed tree?
> > >
> > > If you are sure it will not collide with parallell work in the
> > > pinctrl tree, yes.
> > > Acked-by: Linus Walleij <linus.walleij@linaro.org>
> > >
> > > (If it does collide I'd prefer to take the pinctrl patches and fix the
> > > conflicts in my tree.)
> >
> > Fair enough, I don't know the answer so I'll poke around. I don't
> > really mind
> > where the series goes in, I just want to avoid landing only part of it
> > if I split it up.
>
> Okay, it currently conflicts with my cleanup-devicetree-warnings series.
>
> Joel, do you mind if Linus takes this series through the pinctrl tree, given
> the fix to the devicetrees is patch 1/3?

It depends if you plan more changes to that part of the device tree
this merge window :)

Linus, perhaps the safer option is for me to take 1/3 through my tree
and you can take the rest through yours?

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
