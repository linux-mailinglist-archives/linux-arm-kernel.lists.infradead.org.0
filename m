Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B49C13D8A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hj6RmOy4+H/TFcAK2pAMWCY92gVs85zImmZWI0JA8w=; b=mPIsucb9M7SN18
	uXbuvhXhuTfrRe+fvgIyKfLKw9Sx1iaXNtyTZ0ur/Y7hHiD/nxUso8S9fhd46dY4uvUmv53mFUaAo
	cMeldsajdPbRR06rDPX+7qNRjTq9vEdVeK0nd7n5h1IRr/IPBKoViHBKyoc2V8MrL9nWG8p/u/hyV
	+FsS9GRJmDytQhG2tnTTDb79pPZg9UE6K1iTgHC3jbO8XjQbQB5QFYMV7MGhTRj3DD9Ue+j462RC2
	gWhiese9FMWtH2J9spUJ8HVNai5uoPiV+ldTijvcpbo/NWnLvcJvmxQ5xKaea//CagpiYlXKtvfCn
	u5iT0eC1V29r6MqhRV9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is33A-00069N-RA; Thu, 16 Jan 2020 11:10:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is32w-00066c-FX
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:10:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so18703306wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 03:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5GBIIGklqtlnXwSUPETm0LBIpHv30xRPD9F2MXWW9uU=;
 b=klJTi9IaU6Us+NWIvLLJk1l25J8atUVEXE3ZRTYNUT2P3MRxbQBpnkiZ0aLFvayMEI
 USdfSxe46uAvoGM9G+R1upubWvqVeYjFCrh1yw4TkLX4NaAW75f/k2Y/JFf78GkuCssF
 EJhNt9UFR4pBqOZMlV42O8lKBPlarkI7JMlySp/dXf4oqfiu5b4vOeBiIkGjFtIgvfj5
 0+A4V3MccvGA1YgQDbfFm5XOK5JVe2SVHb/PH/iSjwfqyQhBmVivYLpdVfjBhGtsE3cH
 JY9akd967i3sBs3tPL3nP/WvaKRsw6pka7NeXRhxR1Bwd7fFlYLZM7org3iw+pNv7MgX
 W3ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5GBIIGklqtlnXwSUPETm0LBIpHv30xRPD9F2MXWW9uU=;
 b=E5t+GfeTUCZpCa8f+QScQw6t0FgYgVnvb7wIjgTxqaKY+tsw7F3R2cv1pkYL6Q7huD
 qg/6vjly4x56+XBHUBXVUxxz3wMXfR+mLcYugWwUDrFYnWtPKZZwgA1m9DNMxmhhjHTy
 x3jdcd9n8VZEi6mUwP5U1XlIIiK6BkTQEFTsBn5YC7eM3VuaxMq7SZHmQ7K3rHn5SLh6
 rGG+rffFQEjmB/CBA9jV4p9tfegtL+WqvGUt2O3Ly5qhPuvVvkZSdD0LBZzd4UXzfOjm
 kGFz3TviwpFLRhMc66e1iznDYCallpYd1K7u3O0nkmqpZ4YknaR8g/6c+9YN/V1ZyREz
 rVwA==
X-Gm-Message-State: APjAAAWZOQNPzA2clVZKHCWcULjSVP2JfbXTNAhTe/ZmF1tbKLrlTd9b
 /Es5lqzm9IwRMivsMQ6EK3tUiiuGNiTOg6Y4F5FP9A==
X-Google-Smtp-Source: APXvYqxAbGEJ2UcnduMsmHbUoOQMO0qUoKIAxfI8itU4pE3nEPRTHHqyKlF+WBJOpLR5y7Namao6LgDXIWie7gZNOCA=
X-Received: by 2002:a5d:6652:: with SMTP id f18mr2801848wrw.246.1579173039189; 
 Thu, 16 Jan 2020 03:10:39 -0800 (PST)
MIME-Version: 1.0
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-2-broonie@kernel.org>
 <20200114174432.GG2579@willie-the-truck>
 <CAKv+Gu9pVZZm_gvsKfrCG_cM=1TmAAH+sj06GzT+Ag9Ej7__fg@mail.gmail.com>
 <20200115091651.GB21692@willie-the-truck>
 <CAKv+Gu-NZBo2q4_Yh068UENun0mkLitN473D-w7KBFXVpfdKqA@mail.gmail.com>
 <20200115110720.GG3897@sirena.org.uk>
 <20200115142611.GC3429@arrakis.emea.arm.com>
 <a789713b-8d0a-a997-d348-3521950e9d90@linaro.org>
 <20200116110245.GB10277@arrakis.emea.arm.com>
In-Reply-To: <20200116110245.GB10277@arrakis.emea.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 16 Jan 2020 12:10:28 +0100
Message-ID: <CAKv+Gu_Y3agWT1nOWHygc3An7zd2fAERcEq6Nav4geE0ahb+Xg@mail.gmail.com>
Subject: Re: [PATCH v10 1/3] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_031042_523970_7939F6EF 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Jan 2020 at 12:02, Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Wed, Jan 15, 2020 at 02:23:39PM -1000, Richard Henderson wrote:
> > On 1/15/20 4:26 AM, Catalin Marinas wrote:
> > > On Wed, Jan 15, 2020 at 11:07:20AM +0000, Mark Brown wrote:
> > >> On Wed, Jan 15, 2020 at 10:24:21AM +0100, Ard Biesheuvel wrote:
> > >>> On Wed, 15 Jan 2020 at 10:16, Will Deacon <will@kernel.org> wrote:
> > >>
> > >>>> I see your argument, but I was just going on the side of consistency because
> > >>>> we're continuing to expose other features as HWCAPs when the capability is
> > >>>> just a proxy for the cpuid field. I was in favour of stopping the addition
> > >>>> of such HWCAPs years ago, but I couldn't convince Catalin ;)
> > >>
> > >>>> The way I see it, we'll soon run out of HWCAP2 bits and then we'll have
> > >>>> our hand forced.
> > >>
> > >>> I don't have a strong opinion either way.
> > >>
> > >> Me either, or at least not enough to object to doing it - Will?
> > >> Catalin?
> > >
> > > Until the ifunc resolver can work with CPUID, I think we should keep
> > > adding HWCAPn bits. We can revisit this with the toolchain people before
> > > introducing HWCAP3.
> >
> > Why would the ifunc resolver not be able to use HWCAP_CPUID?
>
> It can indeed check the HWCAP_CPUID but I haven't seen any plans to
> implement the next part, actual use of an MRS instruction to read the
> corresponding ID_AA64* regs. This MRS emulation was requested by (some
> of) the toolchain people, even the architecture gained a feature to
> simplify the emulation, but followed by complete silence from the
> toolchain folk.
>

But what infrastructure would the toolchain folks need to provide
here? An ifunc resolver would simply do

void generic_func(...);
void foo_func(...);

void *resolve_foo(long hwcap)
{
   if (hwcap & HWCAP_CPUID) {
       long l;
       asm ("mrs %1, ID_AA64_...") : "=r"(l));
       if (l has 'foo')
         return foo_func;
   }
   return generic_func;
}

so all that is needed for using ID registers to do ifunc resolution is
already there.


> > That said, speaking as a toolchain guy, you should conserve HWCAP2 bits so
> > that, by preference, you do not need to introduce AT_HWCAP3.  Or at least delay
> > adding it.
>
> We still have some time before AT_HWCAP3. Also, we have 32-bit spare in
> both HWCAP and HWCAP2 which we can use. IIRC we didn't go into the top
> 32-bit of HWCAP because we were still debating whether ILP32 makes
> sense (and now I'm 100% convinced it doesn't ;)).
>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
