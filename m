Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B751AC2EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RN6qnKT11VQSRhKVzAn/3Ny32L8REHtLgYoPztjHOPs=; b=csxoJiqspXNBj0
	YNUn6l3mUxgiBCdm/4I5/ettu31+hcuxHsEEcXRu2rgFct64gtQf+7c9NbOnJeFl/NJRcMW1pabeh
	mxAyFxEtH8VL/z5omGfyctpfPL7RjrnDiqXt3liKMquuzIgdCphfdgmlOgc/Q/juTIOPLC2Ff7ggi
	qrJJsePPTWw7KhsBLj4CUIzB+PpvdBVvuQFDs4VeNKM4maz7PFFhBWlFZDeVnTOPbeRREoXVYL2nl
	Q12wzNxqsKjuhJWDoFGqqAGX8ZfDBvdkmODD4iVdgeWLYwDwr0DlDyyBvxhLRf67rQFNqu/XIaURg
	c+FL4MXrYvCVFgcqfdxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4hX-0007NX-QM; Thu, 16 Apr 2020 13:37:07 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4hP-0007Ma-LD
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 13:37:01 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MCbZL-1jYjKk0S2t-009k7u for <linux-arm-kernel@lists.infradead.org>; Thu,
 16 Apr 2020 15:36:57 +0200
Received: by mail-qk1-f178.google.com with SMTP id l25so21255955qkk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 06:36:56 -0700 (PDT)
X-Gm-Message-State: AGi0PuZU3PleJ/usfXDMTPbrtQZSx/m8FfsSNoqT4IlTYlrGdHaNb1B3
 bC//gkX2VeQ0MTLpmG4K8Pz9aQaxI3yt5Resd70=
X-Google-Smtp-Source: APiQypLVyFmoRVlk38JL3t/KgQwGOgf5vTbZbwYZ8CAepAFC6fF8Q7UEBWUdcp5NmdoSyWhbML+tvWJCMo127crkfFc=
X-Received: by 2002:a37:851:: with SMTP id 78mr31807202qki.352.1587044215844; 
 Thu, 16 Apr 2020 06:36:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200416115658.20406-1-geert+renesas@glider.be>
 <20200416115658.20406-3-geert+renesas@glider.be>
 <20200416125630.GF4987@lakrids.cambridge.arm.com>
In-Reply-To: <20200416125630.GF4987@lakrids.cambridge.arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 16 Apr 2020 15:36:39 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3HkXotBFVfbL3iaqUAM2ENpBKh7gy+hXH8TXsZHPfwTQ@mail.gmail.com>
Message-ID: <CAK8P3a3HkXotBFVfbL3iaqUAM2ENpBKh7gy+hXH8TXsZHPfwTQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] [RFC] arm64: Add dependencies to vendor-specific
 errata
To: Mark Rutland <mark.rutland@arm.com>
X-Provags-ID: V03:K1:VZ9FUWMKRQQ+SedYAxQrlv7Rav/RqorZJspWLFP9N2EIelniu3q
 cP9s1Y19LGcdn5WvbbX2/3eHskNLUytyNCT93gShUa/74ct2w/jdszd5rEg50xThDzQtMsS
 2ASZhDasd6NmzbyaSIz3xTjIH0xsxYWbVJQxevn90l8yczNhVdgwljw53OVGYRX/TTtD02z
 vwQECw3mBfrjlrjt0nzoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/zcxbV1T49E=:KnruEN7B0mcEunJKiS2TJK
 1FH6hL4JXzLgCNdRkEJ2691xr7Kz95R4ARw7HdGATg7k16TUKt+uodYvQpOkX7NNI0Aeft5LM
 EbgOpqMJfl7jHSkHRA++8mMLjaM8b1b3HvDmcjOeveoF6ADTH2gTTSOb2bvqARf6hQP2mP0V/
 szvtUSSq9l3giypr2BK8GjmueunTvfoqmkw5WyZyhmumyEpsAbaVVY1Wj8qpcRAd3eylqxq58
 Sloft8e/6QjnoojzpPvQEEIpMES9MOI+0lGSnhAxlobDUgoJdyls422PTwOJeN35eTkfTO2mM
 kepzOZXzHSLIt21BjJFUqtOfI2dEm68lFrJak8BOt1FWZ+vkimsWDSQ/puzjekzeuDWA5Vl/s
 QY03w01WzJYYnfrnp9DQjZp43VChJ2T3pGa7m+Rqw1h82ZWVuZyEajNMueLJ1ntm6wmM3MK+/
 Av0rToOonwaSQAeQ7ntez2CB2Gm7uz/+78YfAzgxoAEuoHGRpvOXGkf2j9cDHewxhTErko2Ji
 Kxnl0Mib0Bd57wM1I6njAukMU7S0HXQ1slCImSEfcV5yRAyGmAU75lLkBTYQ0XzmaumtWCEvP
 3fFVK7REm2vmfZz/vuXEirGcsMRwgxI7WBwtvTV/yoQ3NL99lAzzOqLztpvjseq0jNTqASEFi
 7wEWk7qS+gHpDZp2G8KEqIi8K7Pqgds9IQch+dYIysgK3Z4tGwXlLgSVKiBScxBurDGwVrGaK
 rR0EVNmfIDnMZeppkpFtnEGq1QgxmbIqsni1xTCxgQTrDxleKV4Ua8x85mjutw/1h5UrBxAEC
 jmZHtN/ueNYpXaZscQ12H/EFqJtdv2X+Nxpb2gJzAEA/DsbOjg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_063659_994646_205A8280 
X-CRM114-Status: GOOD (  22.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Wei Xu <xuwei5@hisilicon.com>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andy Gross <agross@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 2:56 PM Mark Rutland <mark.rutland@arm.com> wrote:
> On Thu, Apr 16, 2020 at 01:56:58PM +0200, Geert Uytterhoeven wrote:
> > Currently the user is asked about enabling support for each and every
> > vendor-specific erratum, even when support for the specific platform is
> > not enabled.
> >
> > Fix this by adding platform dependencies to the config options
> > controlling support for vendor-specific errata.
> >
> > Note that FUJITSU_ERRATUM_010001 is left untouched, as no config symbol
> > exists for the Fujitsu A64FX platform.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> I'm not su1re that it makes sense to do this in general, becaose the
> ARCH_* platform symbols are about plactform/SoC support (e.g. pinctrl
> drivers), and these are (mostly) CPU-local and/or VM-visible.
>
> I think that it makes sense for those to be independent because:
>
> * future SoCs in the same family might not need the same CPU errata
>   workarounds, and it's arguably just as confusing to have the option
>   there.
>
> * It prevents building a minimal VM image with all (non-virtualized)
>   platform support disabled, but all possible (VM-visible) errata
>   options enabled. I do that occassionally for testing/analysis, and I
>   can imagine this is useful for those building images that are only
>   intended to be used in VMs.

Most architectures over time grow a CPU selection option that is
at least somewhat orthogonal to the platform selection. I think so far
arm64 has intentionally resisted this based on the idea that the CPUs
are mostly equal and differences are better handled at runtime.

If we decide to revisit this in the future that might help both the
errata selection and give a way to e.g. build for an ARMv8.2
baseline.
This does seem pretty far out at the moment of course, given
that most SoCs we work on are still based on Cortex-A53 or A72 ;-)

> I think the change to SOCIONEXT_SYNQUACER_PREITS makes sense given
> that's a platform-level detail. Arguably that should be moved into
> drivers/irqchip/Kconfig.

Agreed

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
