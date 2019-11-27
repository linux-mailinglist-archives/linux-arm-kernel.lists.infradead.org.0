Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B19910B1E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 16:10:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6yBo8m7v6gn3H2YCH+DYrWklAsqc9yq/esr28eZ80g=; b=u/s89vCzLYXI8+
	ZZFjnRZe92vURxyK0B8wwVTa0F69YJ2z8qtJjCDu02ZBqU4FP43n8cBz/KWLMoqlZp3qU7ghAVtO2
	K1pYSDsU7yvykVpGd329XeEpC/czdRITXB0DONcNv3IxfIJEOa+360gqwk/elkrWQgKZoWRvT48IZ
	gNiVwlv/ZygTP/yC7WdfMEg8B6binHYXsWcNO3/qAeqjLaTIzZBBGDJBHKfjEinmj/ILnk8jd4ODX
	Gs5WTyR6gSafsP2NTCBgGaq4oCDNx3qIP3lE46Wgo57tAmrQus1O1WC1DqiVb1i0GTVC3EhTAItzr
	K6+3TxqLMYQcuqd3MopA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZyxc-00013O-3M; Wed, 27 Nov 2019 15:10:32 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZyxR-00012S-UD
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 15:10:23 +0000
Received: by mail-ed1-x543.google.com with SMTP id m13so19920534edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 07:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=edWCWNJl31yQrbW0RZTxPYG82aTNE1yVNktB5ng+jf4=;
 b=mTekDiyG/xSD58MUN5RTKNnzPqxt+1ORlhcDVQSCtgZD7sNjGt7a7DEpyDJLCHSio+
 3duP0FXDUc/mOAzY3EV2Wa2JzDM2Z6fS8MEMH3ayihsodOPFsYkMEIBd7LfOfZB6anIx
 lM37RhXs12XiLUpTvHp3EPdsIp/U+F7GUFDci+3U9wwSRjHah2bgF25bCd+pqiRnIpVx
 SSVZOZFYRGW9qiOgMuEt9xfCdXkVY79xtc1sUWMxJbK2jnkeRKtKhnSTEbh8wAreQAAq
 LSHHTXHfzKolX04pR5vPDEdVs+lUuicziBwzYA/5s3QiUQiy3q1ddUB9m+130YMPSr77
 GYQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=edWCWNJl31yQrbW0RZTxPYG82aTNE1yVNktB5ng+jf4=;
 b=JzjcbiqI9Ls9y+K0Y8iN0zXTnIJBld6sni5wyURo/pTnNwccySViDIQuAvTK3gYbtK
 zjw8S43nauFSEk2ewjJj+ekfO2Nt5/O0ypmZFSI8ibLuchmdaKbsPOqgMUczQMX5ILFX
 cvOSA5+RPZqNBsNWECUnNJb+G7ZJRTySuZZLcguvRnNxrWmzAbHO21xGzlzs1ohsVAne
 L33rTg0x8S6R7aRJZcUKTQUvWiX7XK4TX17HrryuOSTcZ2U52L9EVcyTVdhzkFnsunp9
 sJr7TA8bcPlNrgqdN/yyfIxjwgghiuOT3hhA3XNOuAbTf5dkLYWbDifK6eIQikTT2wXW
 Lxxg==
X-Gm-Message-State: APjAAAU+/vSRpxen3v4BxCPCyTO8YDM0R8/AZYiCeyQ8WpoI/tpg/gC7
 gjWITM+M7Jnw/vUnXbxVdTlwui1+Nr8FE5enSRA/7A==
X-Google-Smtp-Source: APXvYqyPH1e9Ql392wF4i1O7GHWfwg6/A8SLFBgaaht+RqQI1k7Yx/GSlGoDs4aBwXnGTvjkilYo3d8M41CYZdYnigY=
X-Received: by 2002:a05:6402:324:: with SMTP id
 q4mr32625784edw.108.1574867419153; 
 Wed, 27 Nov 2019 07:10:19 -0800 (PST)
MIME-Version: 1.0
References: <20191122022406.590141-1-pasha.tatashin@soleen.com>
 <20191122022406.590141-3-pasha.tatashin@soleen.com>
 <20191127150137.GB51937@lakrids.cambridge.arm.com>
In-Reply-To: <20191127150137.GB51937@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 27 Nov 2019 10:10:07 -0500
Message-ID: <CA+CK2bBvgDe5zVur7EYJgYhoZesuQkZVeyRxPCBSySqsR=-YPQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: remove uaccess_ttbr0 asm macros from cache
 functions
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_071022_392103_DD6AECF4 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 boris.ostrovsky@oracle.com, Sasha Levin <sashal@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, alexios.zavras@intel.com,
 Thomas Gleixner <tglx@linutronix.de>, allison@lohutok.net, jgross@suse.com,
 steve.capper@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

Thank you for reviewing this work.

> A commit message should provide rationale, rather than just a
> description of the patch. Something like:
>
> | We currently duplicate the logic to enable/disable uaccess via TTBR0,
> | with C functions and assembly macros. This is a maintenenace burden
> | and is liable to lead to subtle bugs, so let's get rid of the assembly
> | macros, and always use the C functions. This requires refactoring
> | some assembly functions to have a C wrapper.

Thank you for suggestion, I will fix my commit log.
>
> [...]
>
> > +static inline int invalidate_icache_range(unsigned long start,
> > +                                       unsigned long end)
> > +{
> > +     int rv;
> > +#if ARM64_HAS_CACHE_DIC
> > +     rv = arch_invalidate_icache_range(start, end);
> > +#else
> > +     uaccess_ttbr0_enable();
> > +     rv = arch_invalidate_icache_range(start, end);
> > +     uaccess_ttbr0_disable();
> > +#endif
> > +     return rv;
> > +}
>
> This ifdeffery is not the same as an alternative_if, and even if it were
> the ARM64_HAS_CACHE_DIC behaviour is not the same as the existing
> assembly.
>
> This should be:
>
> static inline int invalidate_icache_range(unsigned long start,
>                                           unsigned long end)
> {
>         int ret;
>
>         if (cpus_have_const_cap(ARM64_HAS_CACHE_DIC)) {
>                 isb();
>                 return 0;
>         }
>
>         uaccess_ttbr0_enable();
>         ret = arch_invalidate_icache_range(start, end);
>         uaccess_ttbr0_disable();
>
>         return ret;
> }

I will fix it, thanks.

>
> The 'arch_' prefix should probably be 'asm_' (or have an '_asm' suffix),
> since this is entirely local to the arch code, and even then should only
> be called from the C wrappers.

Sure, I can change it to asm_*, I was using arch_* to be consistent
with __arch_copy_from_user() and friends.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
