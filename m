Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE7B644BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 11:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nfh0NfjPx1qAC9SmX8NC9b8Qr6x6lgiemHn8puDiyUY=; b=WGy7qDJV1BmQd7
	gN7mfbqcm1Mw6PMJK57Tb10zipBTgAG0rRBLU68ui0i3uKO2jQ6dDTsaAoE9R7it/InHH/KDFtdL0
	EdpKfztqc8jHtBDK25fYXt/3vUJo54FhWEP77M51TmKAZeRVVoPa451u4H+g0CFNxkMhP8YRy2zc5
	G3NZyvf4mLks9FM8FRGyVE+8zM6E6/Inyffh8dI1qZWdrQKaTOzHCLX4BplwxJSaiyL9ckfsbDu8x
	pcGpUFrtqB3YZr4/9i2IzT5ZYGTMlduXpJtQ8WZTIRbm49Kv/paoK54stVwGreVopZ9LtfJlQDWiQ
	K+A8WYGWK+K+wi3KAfaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl9K2-0006HI-8Y; Wed, 10 Jul 2019 09:55:34 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl9Jd-0005Eg-P7
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 09:55:14 +0000
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
 [209.85.217.53]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x6A9sgTh004028
 for <linux-arm-kernel@lists.infradead.org>; Wed, 10 Jul 2019 18:54:43 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x6A9sgTh004028
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562752483;
 bh=wZxsXv3WIaYTljW6aasMT3VMX3W+OBT6hDSikiAjYU8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cppAMmfSziHzNw3QPCqvYGxtASmwsfaxFZD9tScf2nQDpyD8fMvpnMpbOF0H13jLA
 TxSNrKqWEsiRSeM+jY1ti8pJiGrg4fxEMkGnaLG2A4aDlKXlMYvJbAw9H5A9KpqpkT
 fqUgdQ6iB/QJV5CL4a6FLbFV5dlUZ7gAsa9CBs/LL56VpkSEazUyJQ3TrYeoQzeZTq
 Ctc0mkTukW0soeaOLKIBCeC3moMMPJ3vtsAuEFhZ3srLeqVl398R/AJ1XkAWF/Tcwo
 CRK4qIRqxKGYZGinwoiqp7nep1kF3dE3q+uJhUDaB9Cygl56epeSOrn7pB0Od7qqTT
 S9Kzu4G5p1X0Q==
X-Nifty-SrcIP: [209.85.217.53]
Received: by mail-vs1-f53.google.com with SMTP id u124so1117043vsu.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 02:54:43 -0700 (PDT)
X-Gm-Message-State: APjAAAUQ25rjw5KU36mMogovVMS+jQkySqVthTqmvgBXAdo+bl/ZYDbw
 8mWsiqCBvgIO2xgMJ2hFB8s7/+j5tD+xj4M52n4=
X-Google-Smtp-Source: APXvYqxji+IBpsKEUlMjit3TzT6DNhRUlj99qLYH0If42BHRy8jugDJ4geeVshp/7HYjypa0ryai/Hv/TS//EpHlQ/U=
X-Received: by 2002:a67:fc45:: with SMTP id p5mr17151977vsq.179.1562752482167; 
 Wed, 10 Jul 2019 02:54:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNASSCvLSXVikR7GenXyb8KywpWKVc1Z=5v3c93rxJ+G73w@mail.gmail.com>
 <20190710082335.uzusesefimzpjd3f@shell.armlinux.org.uk>
In-Reply-To: <20190710082335.uzusesefimzpjd3f@shell.armlinux.org.uk>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 10 Jul 2019 18:54:06 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQpiY4CBawEFhQHeTPSrbrRkNoYCtK4jBak+skyyMqESA@mail.gmail.com>
Message-ID: <CAK7LNAQpiY4CBawEFhQHeTPSrbrRkNoYCtK4jBak+skyyMqESA@mail.gmail.com>
Subject: Re: Question about ARM FASTFPE
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_025510_210586_512279F9 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 5:23 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Jul 10, 2019 at 01:30:24PM +0900, Masahiro Yamada wrote:
> > Hi.
> >
> > I have a question about the following code
> > in arch/arm/Makefile:
> >
> >
> > # Do we have FASTFPE?
> > FASTFPE :=arch/arm/fastfpe
> > ifeq ($(FASTFPE),$(wildcard $(FASTFPE)))
> > FASTFPE_OBJ :=$(FASTFPE)/
> > endif
> >
> >
> > Since arch/arm/fastfpe does not exist in the upstream tree,
> > I guess this is a hook to compile downstream source code.
> >
> > If a user puts arch/arm/fastfpe/ into their local source tree,
> > Kbuild is supposed to compile the files in it.
> >
> > Is this correct?
> >
> >
> > If so, I am afraid this would not work for O= building.
> >
> > $(wildcard ...) checks if this directory exists in the *objtree*,
> > while scripts/Makefile.build needs to include
> > arch/arm/fastfpe/Makefile from *srctree*.
> >
> > I think the correct code should be like follows:
> >
> > # Do we have FASTFPE?
> > FASTFPE :=arch/arm/fastfpe
> > ifneq ($(wildcard $(srctree)/$(FASTFPE)),)
> > FASTFPE_OBJ :=$(FASTFPE)/
> > endif
> >
> >
> > Having said that, I am not sure this code is worth fixing.
> >
> > This code was added around v2.5.1.9,
>
> ... as a _result_ of a discussion and deciding not to upstream it,
> but to still allow its use.  Fastfpe is faster than nwfpe (so has
> a definite advantage for FP intensive applications) but we decided
> we didn't want two FP emulation codes in the kernel.  However, if
> someone wants to use it, it has to be built into the kernel, it
> can't be modular.


IMHO, the entry in Makefile and Kconfig should be removed
from upstream, then moved to a part of the fastfpe local patch.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
