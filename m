Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 536A464553
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 12:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bz5XM/s22HuG9k7wES8RvNl/1uFZ8D8QBRGdFdyb91w=; b=gdNxhTEt2T7KJ2
	JNu9qZ6R31jv1Z3T4NNAyUFZZwvrkU7IfRA0NiNe3hS2mZFweO89wKR9PuCDUfvJQLCgpfQ4VD5FB
	MHdYlddqcjl7sEpzaMTi6wC0C8HKGyNu94Fh2MVY7LbMPajKym0JGINscOLs3N/mmUUoEcM54ljHu
	TtiBvKYf4ae0w14oVzCoaH4prN7qjAcLQA5mqFcKICFYW6i3zJ8/jQxs9O425xihbvcS86oTop0ty
	sOuVWlNf2VJ6AeEexISHy4iS+7NfkaMjZAp+Dq/pQIycH3ZlW0a3NtzqD/QfuhDsqZKz+IaM3JCka
	XnhlUsPRs8UASPcIBzlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlA5G-0000Si-SE; Wed, 10 Jul 2019 10:44:22 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlA58-0000S7-Uq
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 10:44:16 +0000
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x6AAhu8R022239
 for <linux-arm-kernel@lists.infradead.org>; Wed, 10 Jul 2019 19:43:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x6AAhu8R022239
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562755437;
 bh=Ycj0dyamrlngknPhL2bExuJe6wzl8U1lzkiHAV69cic=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=To7D/hMWUJ9IgtCP9MIO9lJA3JgygoIzD+wsYK1Q8ZZXAfwR9Kk6N8YSydk/e3Ony
 rPA40GkCVJLulLetS8DlfW77JLx3id0tIZ/N8v2TfO8rVOusM5p+ktQ42k1IPhdyYw
 IuK4otHCZpVOsRnZ+qBJRVCicJCoOKgccl5XWXrfneaLNXj/Qzt4/mIMj1d3PhjiC+
 p98Gxo5tZbCVvKxoMwe2mT44m0i48i/GDRCJ8fPS8GZBFexAhjHvqG1ij7oH5Kt+fN
 VSzsIQxonworOeyGG2v2OALrOfj407ogv9m64cxVEtAuzkgbn4frMwaj4d4Zd8MmAr
 UONU1+81zAp7Q==
X-Nifty-SrcIP: [209.85.222.54]
Received: by mail-ua1-f54.google.com with SMTP id v20so681075uao.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 03:43:56 -0700 (PDT)
X-Gm-Message-State: APjAAAWK9Le/VxH1ftTwHcL0I79qYvlogueFYI5QrUDd1e2sAfkclY/Y
 7wwUX/aHH0JxdFi4dQP11rxzqcr7lOkpcTji1Ug=
X-Google-Smtp-Source: APXvYqwHEsdcYnCzgd67nXlol5ygPmUMo59QTZTYbMA0kTqb141HuIHVhJyLIYrjDKw0CAeYYkhkDhhWT5i7r4YelaA=
X-Received: by 2002:ab0:5ea6:: with SMTP id y38mr7900708uag.40.1562755435802; 
 Wed, 10 Jul 2019 03:43:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNASSCvLSXVikR7GenXyb8KywpWKVc1Z=5v3c93rxJ+G73w@mail.gmail.com>
 <20190710082335.uzusesefimzpjd3f@shell.armlinux.org.uk>
 <CAK7LNAQpiY4CBawEFhQHeTPSrbrRkNoYCtK4jBak+skyyMqESA@mail.gmail.com>
 <20190710100206.yls4piu36wciefbz@shell.armlinux.org.uk>
In-Reply-To: <20190710100206.yls4piu36wciefbz@shell.armlinux.org.uk>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 10 Jul 2019 19:43:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT3NDem7_oTyPuDVC7QGY=HuyG-GBE9QQhUuuL_Q=CeNg@mail.gmail.com>
Message-ID: <CAK7LNAT3NDem7_oTyPuDVC7QGY=HuyG-GBE9QQhUuuL_Q=CeNg@mail.gmail.com>
Subject: Re: Question about ARM FASTFPE
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_034415_213889_7B8618F4 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
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

On Wed, Jul 10, 2019 at 7:02 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Jul 10, 2019 at 06:54:06PM +0900, Masahiro Yamada wrote:
> > On Wed, Jul 10, 2019 at 5:23 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Wed, Jul 10, 2019 at 01:30:24PM +0900, Masahiro Yamada wrote:
> > > > Hi.
> > > >
> > > > I have a question about the following code
> > > > in arch/arm/Makefile:
> > > >
> > > >
> > > > # Do we have FASTFPE?
> > > > FASTFPE :=arch/arm/fastfpe
> > > > ifeq ($(FASTFPE),$(wildcard $(FASTFPE)))
> > > > FASTFPE_OBJ :=$(FASTFPE)/
> > > > endif
> > > >
> > > >
> > > > Since arch/arm/fastfpe does not exist in the upstream tree,
> > > > I guess this is a hook to compile downstream source code.
> > > >
> > > > If a user puts arch/arm/fastfpe/ into their local source tree,
> > > > Kbuild is supposed to compile the files in it.
> > > >
> > > > Is this correct?
> > > >
> > > >
> > > > If so, I am afraid this would not work for O= building.
> > > >
> > > > $(wildcard ...) checks if this directory exists in the *objtree*,
> > > > while scripts/Makefile.build needs to include
> > > > arch/arm/fastfpe/Makefile from *srctree*.
> > > >
> > > > I think the correct code should be like follows:
> > > >
> > > > # Do we have FASTFPE?
> > > > FASTFPE :=arch/arm/fastfpe
> > > > ifneq ($(wildcard $(srctree)/$(FASTFPE)),)
> > > > FASTFPE_OBJ :=$(FASTFPE)/
> > > > endif
> > > >
> > > >
> > > > Having said that, I am not sure this code is worth fixing.
> > > >
> > > > This code was added around v2.5.1.9,
> > >
> > > ... as a _result_ of a discussion and deciding not to upstream it,
> > > but to still allow its use.  Fastfpe is faster than nwfpe (so has
> > > a definite advantage for FP intensive applications) but we decided
> > > we didn't want two FP emulation codes in the kernel.  However, if
> > > someone wants to use it, it has to be built into the kernel, it
> > > can't be modular.
> >
> >
> > IMHO, the entry in Makefile and Kconfig should be removed
> > from upstream, then moved to a part of the fastfpe local patch.
>
> Nope.  It means that rather than it being merely a drop-in, it has
> to be maintained against changes to both these files.  Sorry, that's
> more work.


This is the motivation of upstreaming for everybody.

We never know the code that does not exist in upstream.
Downstream code must pay maintenance cost for ever.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
