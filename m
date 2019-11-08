Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89391F4E0E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:25:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+t5CJwpUigqk6YPKRf7zyrauqjQOzsAWy7iwrzft+PM=; b=FDV+mM2Rhf7G3o
	M1BjNAqAQq9iu6LcyRnM664tzf+NfO2OMH+MduwYuROHDxKKTiC9dl79AKMjP39d7vmM6Z2/Z10Hg
	BpMgUGGxJBx1oPnZ/JI8fkpAwh6irVodxT5B71Pu9wX/QoPxddRU/KzeXVizYnclxax88yuka81Z4
	j9GbuwnDHLnzpFPRXBQ/lqu+7jHOevsk74tlAIS4Siff0Et56oKiCRAFoyVj6aK0xR754jT9vQ/ik
	2WgArBau3lR75ds8NTrC7bYEWLyM/zRaS7ai5omjipbTf/Hsq5DAR+YRWjGP1fiB8e5cHhXacDPfc
	WNrpvZe/1UA6n0sRLBZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5CS-0007Qo-3D; Fri, 08 Nov 2019 14:25:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5C8-0007JZ-8p
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:25:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id c17so6382965wmk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 06:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gUH4+Lm6b2RAa+J5G3J4eSOSx9Rht8sSIZqgyzmifHg=;
 b=OOPohQJgjzXM5esm9IVn7ZP7DTQnG6wv/sLjnhsIkYAQhg1XLyEjh3q+cBPPO3oiAI
 1DTpQ0+OxReSWYJYHy91bmVqLKlc6bkjNpdXYp/VCcXt+ycZQybsnjGYf708EwbCaFOf
 /wjbFML2mIu+u4I/ScuBJ+nQwlOTkXvp6+mtC2DR3r+fZI/iSkAeGT/VtwyidSInPMqf
 oFhp9qRk/6zuUG40eX7jEuBdJC1seiHIVAhlg1O/7KJTSytPGf7k59J4Jfeg93EHPHk0
 X9ANsbIu6VWv22c0K8BDLdXdP0Ci4pG+Rf7n09Gf9I8YcXph4yl6i6Hc1GzwVucIi0uI
 t10A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gUH4+Lm6b2RAa+J5G3J4eSOSx9Rht8sSIZqgyzmifHg=;
 b=T3Kkdak1Mga+GnTHjO7cefxyPxe+/16b4t8wstUXUYfNggIGskJyJSECNPzedImn6I
 mo09dYYP1DsYfK65Nb2qi13kHIBx74jdTBrtqFVxXwhrwKlvlEqnx/B5WF/DZirG+AHO
 w1kBOARNvTYCU/kaK4urhrJao++iR+J46J4OhHedLfwkBdSGh/8uIcuscjzc/w7d+Y+G
 mHQRc2J9ali20JsOMbsafV2pMsw4XPCj1fAFPVeU6om1zUPrV6va4kGoCRsYXXAS7zcT
 qUW5g1eM3iCp6nvq0Vxhuq0gkP0A2Rk7GtZWZsYtGX6EDfXiSnGc22gGraB/JzLgwZ2E
 R7KQ==
X-Gm-Message-State: APjAAAVXAemnnbycHxPdKgyYYKF8GI/oFgfnZh8cwXRRTt0gEZN+Zf4/
 mN8ybxajrffbmEnuwh9e55M4dLiudF0Y1AA/eRlnvQ==
X-Google-Smtp-Source: APXvYqwzFYQzPSwEpI7+L9ZLBntpvcT7bMu46NXIEtFFkGcktflwFwohBfhby+Ol+NY7FYQgfPccWjwW+U3uFxHpyX4=
X-Received: by 2002:a7b:c392:: with SMTP id s18mr7713080wmj.61.1573223098484; 
 Fri, 08 Nov 2019 06:24:58 -0800 (PST)
MIME-Version: 1.0
References: <20191106141954.30657-1-rth@twiddle.net>
 <20191106141954.30657-2-rth@twiddle.net>
 <CAKv+Gu8pb5pBFBg0wGoORmaS6yzmoX7L45LLnhuZhqw4JX7d+w@mail.gmail.com>
 <23ce309b-1561-ed95-7ce7-463a991bd19b@linaro.org>
 <CAKv+Gu-03HLED79e+V2D5BtSjRwHH7=rnUWyqZ7dBBD-s7RowQ@mail.gmail.com>
In-Reply-To: <CAKv+Gu-03HLED79e+V2D5BtSjRwHH7=rnUWyqZ7dBBD-s7RowQ@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 8 Nov 2019 15:24:46 +0100
Message-ID: <CAKv+Gu8y4zwpesytU7vffSCuq8YAjWcHwFHwa_LhTW_cLiSfQw@mail.gmail.com>
Subject: Re: [PATCH v4 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Richard Henderson <richard.henderson@linaro.org>,
 Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_062500_316779_CD41B5FC 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 8 Nov 2019 at 14:03, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> On Fri, 8 Nov 2019 at 12:10, Richard Henderson
> <richard.henderson@linaro.org> wrote:
> >
> > On 11/6/19 10:30 PM, Ard Biesheuvel wrote:
> > > On Wed, 6 Nov 2019 at 15:20, Richard Henderson
> > > <richard.henderson@linaro.org> wrote:
> > >> +static inline bool has_random(void)
> > >> +{
> > >> +       /*
> > >> +        * We "have" RNG if either
> > >> +        * (1) every cpu in the system has RNG, or
> > >> +        * (2) in a non-preemptable context, current cpu has RNG.
> > >> +        * Case 1 is the expected case when RNG is deployed, but
> > >> +        * case 2 is present as a backup in case some big/little
> > >> +        * system only has RNG on big cpus, we can still add entropy
> > >> +        * from the interrupt handler of the big cpus.
> > >
> > > I don't understand the reference to the interrupt handler here.
> >
> > To add_interrupt_randomness(), invoked by handle_irq_event_percpu().
> > Better if I reword the above to include the function name?
> >
>
> This is one of the several places where arch_random_get_seed_long() is
> called, so if you are going to single it out like that, it does make
> sense to clarify that.
>

Looking more carefully at that code, it seems we call
arch_get_random_seed_long() NR_CPUS times per second, and assuming
that our RNDRRS sysreg will be reseeded from a resource that is shared
between all the cores, I am now wondering if this is such a good fit
after all, especially in the context of virtualization and
accessibility of both sysregs all the way down to EL0.

I propose we go with RNDR instead, at least for the time being, and
once actual hardware appears, we can try to figure out how these
pieces best fit together.


> > > It is
> > > worth mentioning though that this arrangement permits
> > > rand_initialize() to use the instructions regardless of whether they
> > > are implemented only by the boot CPU or by all of them.
> >
> > Yes, I'll include that.
> >
> >
> > r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
