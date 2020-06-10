Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C631F524B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 12:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVMCG1Fx08N5OPIkuN47AlrlshmPWOZNCEmIcrNzF9c=; b=LAZUv1VcAuL/mY
	Ir5piQ4KoaG/75edMww2dT+hFKhb5pX+FxnyIxWtAMy9m0lI7GU59MojZs8axr5YqKgjsCBdChoQn
	a7q9Sg7lAqYdQjk7v7GfYYuy8kI/PNDNPKHbWW7FG6yYGQWneFpeJWJAnLg/QMesWrsUwYHJ12mOB
	j5Fl9be0cCFjYd1/90oKpsyTmtHcjv1X1mR/kwU/4GJXSyJgAZCtRWQlyVBXw2FqsoE0WxFBsyyDj
	+FQmSXB7+Argx7X1rJOC1HUPF+XnrHPpK9lInNWXlAT+NnGVc7y2lAa6Rx2uotawGrwiyeZ7h9FkX
	NN2mPRHnbuytpwUbNztg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixzV-0006pH-CX; Wed, 10 Jun 2020 10:29:53 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixz2-0006d9-FE
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 10:29:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so1670695wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 03:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2gvb3h72zonJCVPACju41Fbw0tDgnKx5h0TrDtNmZYU=;
 b=cVxMfXgKRNgr+F74+NX6QkCCJWBVbcaIolD7qRiQgmfdoxxyjdPNvQqSVPvDNHyU5b
 zutGY00KZ+V2A6xa7UdrCQ4mbO4KOBSVlbJnEi24sWcxCPzWJkbKuUydpqJuzjNDhXN4
 ztN4nLKUUI+zmTNQ1wipCZvj9rX1uD5inqNhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2gvb3h72zonJCVPACju41Fbw0tDgnKx5h0TrDtNmZYU=;
 b=RUQ6xdpDHmiBMAJ5ySMxFg/p0+hjRSGd01qDtJEhZIPoEryjRoPN7OQ9/iGnfHm7Cp
 ATG5li9sfXQnSNmtXXzRi6arpAXYpp0g8mSU38VpXdsm5kmAk8F5NlZlvnlJ7SVUcBx0
 DZdioMivwqvDGv6vMVA9V2Bp/bOciNEavs/8eTDe8XAS1SGrSR9p4zarAzijO42F5vJS
 d4IwhaINkO9wBLH0WSM2gqQiMrInD1PMN25INcVhYuYPqSnLyqQ5HwhVrJyCzbWery1n
 bLJgYejTpFz9E2I2v7gJyfRgny2YRcoMpYbbHIs7PwFSxiKXfzMJ2YH6wwXrq07yGvKX
 7sUg==
X-Gm-Message-State: AOAM5307yfSJ/vc0os9mrmrnz0gEdIfEIK9fzUuwhMoG5uUXJQF9RwPT
 N0yXxHY3OgOmCdPlCrQo+krpcibDEyj5LfN5FHElyg==
X-Google-Smtp-Source: ABdhPJykAxEMxc/5PA42qda+imN1iaGFnWE/E5DN0O6oJJrD3srN7KBugNNqszuh2dH7sSY67I4FzMJcwCuoTywbwrw=
X-Received: by 2002:adf:f990:: with SMTP id f16mr2793952wrr.311.1591784962225; 
 Wed, 10 Jun 2020 03:29:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191014061617.10296-2-daniel@0x0f.com>
 <20200610090421.3428945-2-daniel@0x0f.com>
 <cafee323-841d-92ed-b4ad-a1aaa136864d@suse.de>
In-Reply-To: <cafee323-841d-92ed-b4ad-a1aaa136864d@suse.de>
From: Daniel Palmer <daniel@0x0f.com>
Date: Wed, 10 Jun 2020 19:29:06 +0900
Message-ID: <CAFr9PXnPPDWg-Jd_1=LgPEYa8Ru7eKm9wE90-DPR-ggv8NzGHA@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: Initial MStar vendor prefixes
 and compatible strings
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_032924_650321_145FE7CC 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Nathan Huckleberry <nhuck15@gmail.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, allen <allen.chen@ite.com.tw>,
 tim.bird@sony.com, Maxime Ripard <mripard@kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Krzysztof Adamski <k@japko.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > +
> > +properties:
> > +  $nodename:
> > +    const: '/'
> > +  compatible:
> > +    oneOf:
> > +      - description: thingy.jp BreadBee
> > +        items:
> > +          - const: thingyjp,breadbee
> > +          - const: mstar,infinity3
> > +
> > +      - description: thingy.jp BreadBee Crust
> > +        items:
> > +          - const: thingyjp,breadbee-crust
> > +          - const: mstar,infinity
> > +
> > +      - description: 70mai midrive d08
> > +        items:
> > +          - const: 70mai,midrived08
> > +          - const: mstar,mercury5
>
> I would advise to restructure these three for forward planning:

That makes a lot of sense. To be honest I basically copied something
that was in-tree to come up with something that would make checkpatch
happy and didn't think too much about it.

> >     # Keep list in alphabetical order.
> > +  "^70mai,.*":
> > +    description: 70mai
>
> "70mai Co., Ltd." please - don't just repeat the prefix.

Understood.

> If you split the vendor prefixes to a preceding patch, they have a
> chance of getting Reviewed-bys more quickly. You can then also CC the
> vendors on the prefixes you're assigning for them.

thingy.jp is the vendor I'm using for the breadbee project. As for
70mai and MStar/Sigmastar I have
tried reaching out to them in the past and they don't respond. In
70mai's case their camera doesn't
run Linux by default so I don't think they will care much.

If it helps I can split them out but I'm not sure if it'll be possible
to ever get the ok from the other vendors.
For what it's worth the "mstar" prefix is what was being used in their
kernels up until very recently when
they switched everything to using "sstar" for SigmaStar. I considered
using the sstar prefix but went
with mstar because SigmaStar is totally unknown whereas MStar is
slightly known, would be more
recognisable, most of the chips still have mstar written on them and so on.

> > +ARM/MStar/Sigmastar ARMv7 SoC support
> > +M:   Daniel Palmer <daniel@thingy.jp>
> > +L:   linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > +S:   Maintained
> > +F:   Documentation/devicetree/bindings/arm/mstar.yaml
> > +
> >   ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
> >   M:  Michael Petchkovsky <mkpetch@internode.on.net>
> >   S:  Maintained
>
> In theory it's spelled Armv7 since 2017, but MAINTAINERS, subject prefix
> conventions and many other places in Linux still use the old upper-case
> spelling, too...

Understood. I'll fix that up.

Thankyou for your input,

Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
