Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BAB13BC64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:25:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UKPLw6a2fMbar1Q4VimamOg8HLdCBLhcuNV3Y/vvSVA=; b=p3mqAsabOTAYWw
	hJseV+iHMrbB2zTZEwA0iEAkzSTkTKEFa6XBrSjEU/fKy8c2Mk+Bx9d2zoMCUC2ovZwdy8OL708TX
	tROk21I001Nd94uzr9hyFb3Wq8JGacEOr+Vx9Cf1CgBO3OGmszt21jctZehRys9J1vV1Xg+QdVeFm
	Lb/fdTf8koBSJiero3jc1QgMd+TJ46PY6kajaG6Y7taCZct/Z0/miWJeOYGDYPkRoZfWrnc1kksXS
	VMBephk2sSMD1mej1JQYFd1aVLD3bwYeYFUBr92gh7vCeDxmc/sETRs4s3JBZf04lXzNtXPQRnNJR
	hiGeQLzDzKusmZtiE7qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ireux-0005QW-Dk; Wed, 15 Jan 2020 09:24:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ireuk-0005Q0-7b
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:24:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so17032827wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 01:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r4tHmUIMGzRLW+dRtgPHdFcPcyX6Q6PKWIUdfQGaunA=;
 b=j6iLe73sKiQDJmdQ23tgRBW2tNSTwlGb9yll05bLvvwEnSauTH6M/tyxnFS5i7eVxI
 uWT4Cw8h4vjl/SUwRMTlMl7MNwKMQBcyR8EGgx45KTo0XCTzVIJjkNANm4CB609Aqbh7
 7ER9YjQ6+SM4RT2uWxY3izn0BnrMHG70dV71rIWQufWMjwvgcMKltTj2FdcJ2+l1c85g
 +ddcQr48jmtZep9efn+TnlkYpZcDd79fPf9s+Qh/I7VqmXaS2xFx0aHsilQDwNKQLjQX
 ta9Nk9jrnyk3e8/LbMJyh0AlBjIGYVA6YnlPNqIf8iNrDe6tpa9ohJ3yU0UgGvZxflrM
 elrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r4tHmUIMGzRLW+dRtgPHdFcPcyX6Q6PKWIUdfQGaunA=;
 b=HNRUBLJyQZvXHJE9gLeVaNbVmRsGksCZIcCBoK+fxsEKqpONipUUFdJfb25sFovPHR
 yz+fo2FHRZYmy+VWwRIrV8ByVDbClRKu1BRiM0wzrIvs/pkYSo2tG3AbNDi7n95AJwI8
 PIcUsPk78jyjDLT+/iODKL3LQHznGMck/BEbuI+ZGwlIVbOFdkuPNPyR4tlYmkCB7Pzk
 LBbvbcmRHAMIKig8oPOCsCdhTjSnNGxOAbkECiWVZOcLlceflLO/BigDqAUV0wPtbC4J
 /XmYceEYbHeQ4C33Ft/oZFbxhc+erEcsKAdoxDWuqPzQu/p/HG2x1jfIupt91RcZGlSR
 wdZg==
X-Gm-Message-State: APjAAAVAYIDWIvM5t+SQgL8HeW36Yr5/Uzzy/Pkt5cF19hosbOG9tb+v
 3RRWibnqJ3xY7tv4pbMIeCvJAf5K98ITwWgdGrnilg==
X-Google-Smtp-Source: APXvYqxd0E9qUee9pypYn7MzoXLdtQiFKQwPaIJs1jQ1qHhclZcMIiLUc08VM1mVml3P/vkGSWEQ5eceJAx6FIR3PAI=
X-Received: by 2002:a1c:7901:: with SMTP id l1mr31957741wme.67.1579080272476; 
 Wed, 15 Jan 2020 01:24:32 -0800 (PST)
MIME-Version: 1.0
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-2-broonie@kernel.org>
 <20200114174432.GG2579@willie-the-truck>
 <CAKv+Gu9pVZZm_gvsKfrCG_cM=1TmAAH+sj06GzT+Ag9Ej7__fg@mail.gmail.com>
 <20200115091651.GB21692@willie-the-truck>
In-Reply-To: <20200115091651.GB21692@willie-the-truck>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 15 Jan 2020 10:24:21 +0100
Message-ID: <CAKv+Gu-NZBo2q4_Yh068UENun0mkLitN473D-w7KBFXVpfdKqA@mail.gmail.com>
Subject: Re: [PATCH v10 1/3] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_012438_276866_173318A3 
X-CRM114-Status: GOOD (  22.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Jan 2020 at 10:16, Will Deacon <will@kernel.org> wrote:
>
> On Wed, Jan 15, 2020 at 08:40:46AM +0100, Ard Biesheuvel wrote:
> > On Tue, 14 Jan 2020 at 18:44, Will Deacon <will@kernel.org> wrote:
> > >
> > > On Fri, Jan 10, 2020 at 12:23:39PM +0000, Mark Brown wrote:
> > > > From: Richard Henderson <richard.henderson@linaro.org>
> > > >
> > > > Expose the ID_AA64ISAR0.RNDR field to userspace, as the RNG system
> > > > registers are always available at EL0.
> > > >
> > > > Implement arch_get_random_seed_long using RNDR.  Given that the
> > > > TRNG is likely to be a shared resource between cores, and VMs,
> > > > do not explicitly force re-seeding with RNDRRS.  In order to avoid
> > > > code complexity and potential issues with hetrogenous systems only
> > > > provide values after cpufeature has finalized the system capabilities.
> > > >
> > > > Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> > > > [Modified to only function after cpufeature has finalized the system
> > > > capabilities and move all the code into the header -- broonie]
> > > > Signed-off-by: Mark Brown <broonie@kernel.org>
> > > > Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> > > > ---
> > > >  Documentation/arm64/cpu-feature-registers.rst |  2 +
> > > >  arch/arm64/Kconfig                            | 12 ++++
> > > >  arch/arm64/include/asm/archrandom.h           | 67 +++++++++++++++++++
> > > >  arch/arm64/include/asm/cpucaps.h              |  3 +-
> > > >  arch/arm64/include/asm/sysreg.h               |  4 ++
> > > >  arch/arm64/kernel/cpufeature.c                | 13 ++++
> > > >  6 files changed, 100 insertions(+), 1 deletion(-)
> > > >  create mode 100644 arch/arm64/include/asm/archrandom.h
> > >
> > > In which case, should we also add an HWCAP for this?
> > >
> >
> > Isn't this covered by the 'cpuid' HWCAP? We can't prevent EL0 from
> > accessing these system registers anyway, even if we wanted to.
>
> I see your argument, but I was just going on the side of consistency because
> we're continuing to expose other features as HWCAPs when the capability is
> just a proxy for the cpuid field. I was in favour of stopping the addition
> of such HWCAPs years ago, but I couldn't convince Catalin ;)
>
> The way I see it, we'll soon run out of HWCAP2 bits and then we'll have
> our hand forced.
>

I don't have a strong opinion either way.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
