Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD551B9AA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4KC2f7wuLD1MxxBTUAXTJaEkfKI7N7ckqEcQcmqtr8=; b=jiPBzVw0g/6NYM
	H07KmFaSJmij1EBjxi8APYdEeeEi3uhoXhogNPNE22mxqzQP/+ismhaQsa6bDRCwuJ5/qxY46A57d
	VOXRtyyegfR4ttjtzT5qgqwQB8w6MCd9hkR6uh2VshOlay/IgeGSVWdm8ZvSjRIz9vL64hbUtMEo9
	A8SaWMCO1OD3W4s4meL5RBkGlkQnyQq4K1nVk6NvBJBrm82Ruzsf60CZ2v+sC6PuVvpBHFuCT+hrj
	s+/FgYqrS+emZJuRisaFE3m1hmw1soMzU6AwmAtwk7lp26gzGgzyB9DLRFpgzeM1fckohkJvmgpSk
	OcfTtaHN5Dja8tib08qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzQz-00061d-FS; Mon, 27 Apr 2020 08:48:13 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzQl-0005zX-VN
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 08:48:01 +0000
Received: by mail-ot1-x341.google.com with SMTP id g14so24827926otg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 01:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mlWbhU9/EmkPkE3KgFalNDlgj8IuZTC+N04d/sX94zU=;
 b=aJaVtmhnB60iCS5aU72qYpjSl4GarLyMRo6mE3SWoVddygx/s1bcaKs3gTE7K6UUbO
 o4RayG4kLMsthZ9NAP40ehfOAxyhj1LEfHG6eB/gKUS0vVj/9mXcBIpIkUzUKNi3NCri
 hHRRvTjFPtdMy6vHuqYxugy7S7L4Le7YTPCBV3O/K1uZVjb6eeVVAy9m9PSWczUpLWJI
 OQ0ci1aMz8766LfwSXYkTxDlOXnE+Sp7uR/aCOClWA2dJTGvai4EeTwjlFCYCtpdtzm8
 fyrwDqx8JizdfM4qescTEoft91MXwbAOE8Jn49/tyDCfNvjsXpUyPgTfuA80krsiVVb/
 7qew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mlWbhU9/EmkPkE3KgFalNDlgj8IuZTC+N04d/sX94zU=;
 b=mMZU07LGv9OZFTNgIbDa77MMQPgwD+knoQM8stCwJv+BrXiwA8qLOJSI4Cs1rceb33
 vyub0PBxlAQUhV4jl2JJBQ/EhiEizo5G8+Xa/ClnR4Wn1sayHuHwKz0+9I3jN8juM7Wt
 HVTOahpOIO3Hcua05KjRE9trZRKtEMadT2EPs4LOLiaZ2TfZui91Aj0VxlOwtrGtRIvy
 mj3eDDqHyco+ZlLioXX4MkbfAJ7ueF7Fft+CqQqd3v5SI4leNGBw2W09g5SaAqLCcUsc
 BGAFw8lk+XiHlDBZihommiYa9yYyHQJhdcLPi1PZMXNUmjAuXQr4X7L02N/2KXsJhVEL
 DZEw==
X-Gm-Message-State: AGi0PuajaRhHKwlZbyovSGSaw86GYuwkl9JpXiqppPQlypE2Eog/CqnK
 fu8r9+aVGjMY2MOXwAn8AGrLnR+mcnBVaomCGrCPLXbeQNs=
X-Google-Smtp-Source: APiQypLF9Liz1Wy9Drrlg62h9adl1IQdvPHEtoI3csNtrhxw2UwXHBiWwoYfsvKYHOmr9NvTZRbKN9FmhAyxIBwBF3g=
X-Received: by 2002:aca:c78d:: with SMTP id x135mr351307oif.91.1587977277220; 
 Mon, 27 Apr 2020 01:47:57 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1587455584.git.zong.li@sifive.com>
 <23980cd0f0e5d79e24a92169116407c75bcc650d.1587455584.git.zong.li@sifive.com>
 <20200427074915.GA11787@willie-the-truck>
In-Reply-To: <20200427074915.GA11787@willie-the-truck>
From: Zong Li <zong.li@sifive.com>
Date: Mon, 27 Apr 2020 16:47:47 +0800
Message-ID: <CANXhq0rW5j+uAymXbfsND9AXHYvM+fPUX9YYYRVXY-Y1u6yo0Q@mail.gmail.com>
Subject: Re: [PATCH 1/4] mm: add DEBUG_WX support
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_014800_044426_A781E2F2 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tglx@linutronix.de, catalin.marinas@arm.com, x86@kernel.org,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 linux-mm@kvack.org, mingo@redhat.com, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, bp@alien8.de,
 akpm@linux-foundation.org, hpa@zytor.com,
 linux-riscv <linux-riscv@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 3:49 PM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Apr 21, 2020 at 04:17:12PM +0800, Zong Li wrote:
> > Some architectures support DEBUG_WX function, it's verbatim from each
> > others. Extract to mm/Kconfig.debug for shared use.
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > Suggested-by: Palmer Dabbelt <palmer@dabbelt.com>
> > ---
> >  mm/Kconfig.debug | 33 +++++++++++++++++++++++++++++++++
> >  1 file changed, 33 insertions(+)
> >
> > diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
> > index 0271b22e063f..077458ad968d 100644
> > --- a/mm/Kconfig.debug
> > +++ b/mm/Kconfig.debug
> > @@ -118,6 +118,39 @@ config DEBUG_RODATA_TEST
> >      ---help---
> >        This option enables a testcase for the setting rodata read-only.
> >
> > +config ARCH_HAS_DEBUG_WX
> > +     bool
> > +
> > +config DEBUG_WX
> > +     bool "Warn on W+X mappings at boot"
> > +     depends on ARCH_HAS_DEBUG_WX
> > +     select PTDUMP_CORE
> > +     help
> > +       Generate a warning if any W+X mappings are found at boot.
> > +
> > +       This is useful for discovering cases where the kernel is leaving
> > +       W+X mappings after applying NX, as such mappings are a security risk.
> > +       This check also includes UXN, which should be set on all kernel
> > +       mappings.
>
> "UXN" is the name of a bit in the arm64 page-table descriptors, so this
> should be reworded now that it's in generic help text.
>

It's exactly. Sorry for missing the statement.

Hi Andrew,
Shall I send a next version patch to fix it? It should be "This is
useful for discovering cases where the kernel is leaving W+X mappings
after applying NX, as such mappings are a security risk." here.

> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
