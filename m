Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005E713BA6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 08:41:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjxfbXXVMduhpnDBvcqPSwnn3ZHnAnskhaaVP90qRYo=; b=I/gtfHsUrWGb+r
	ErLxk9WiVko8Y1/8YQEZX8R5LW83PLDVKxM7JgNH89dyEpKMlBVgiqa84wPdA+hwaXmqDbEtkToOy
	A2KV1NROwsiANmgpYi5/phw+vfGnMmOrc9VxZx3APrgdDubUEEXgI2M8m62cE814FwgrmrLuWADOR
	vuAfPjBl9Et52V2mSv4R2jHPG9zMGYg48vQsL4n02Dk9E5uVx2sChlmmrZ4+mMNhDFfPo8ogMMm4U
	+0OA6M+74/W4ipIII1tp4KH2a7IAC0YIU3evevW81gYLEmF+rZOVghMEv3AvgEJN3qyE9mFeTRnvJ
	WI25KLsBmoLlnd4RIdjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irdId-0001OA-R7; Wed, 15 Jan 2020 07:41:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irdIS-0001Ni-JO
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 07:41:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id u2so16591840wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 23:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Br+eku/wpkIoP2nzQJSV3xybmY5NP9A44mET6BqLXXA=;
 b=oP5pd0obGELz110WIWUywk5xAuTtdelOC6qhULjwe4kzCW8oIvj4Ve52+NPgaG5AFt
 A1EBb2F3VUNUk+Qpf9PBzPea+PIA2/0vbKMYrU8vIk6KV+fRhBUYsTHjzhcQ6KljjUNS
 9ANaOGNN36+diGFDdrNJ9TMh2wjuJ1f4OOKpQ3tx6l0T+XTXbVp5Vg73D11e2HnSftee
 PG2TCw2VT/f9x+JpPl1MCuZNWOggHqfM8R7j5iKEoHgkZlpGlFVIsrfKs6UXvc+ThyaP
 GZK4qsFliBy44vOVdjbvastkoKvtm0Nb1slRdxDIA2zpeQSPFbcDmTIE1DATsKIdKOg6
 Zguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Br+eku/wpkIoP2nzQJSV3xybmY5NP9A44mET6BqLXXA=;
 b=r4Nez/yRBedkNcvnPNemxd2XXNNRJjgjUkmyGnOyDGuROrnMDRtY6AkIGBZvXQ8dm1
 QvRSVomEXrs37iMrGpTXPBu7PX9cXOMMOhbGZnf3IOTAzbwV4UuTHvzdH3m14annVIHq
 ifuPr+gO+itcb4WknjVjJTiDWwwBteWKJWzyKFvdgk6/GEMjElKYBiKFOADleDP/Z1Yg
 VbyOgrCy9PNQL58G9bWg2j2Y0kQ7SlG9lczM4WBp/Rg87fcGAU5er85y8JC4Oc615Uz1
 j2JaqDG6qH88nzI6CEQZniYqax2FnFWj3DOVFhq8TYD8H51y+5hUUb60SBN/UFkBj+Ma
 5urQ==
X-Gm-Message-State: APjAAAW0owMxe9BFA+lI2onwXCJjYPAQtfgWh2DSudVMZUdwhmSSXzdq
 OBfx7mO3o3r9kXeFNzvwgYjGmDQJRVaORckUABiopg==
X-Google-Smtp-Source: APXvYqx8sSaVLM2nTdpw1kDaD7H/K4VrWc33h4wJmq6CExmnkilGqmMWI+eunnORN41z/Ae8o0PoQOqIyEY5nf5j0Jw=
X-Received: by 2002:a1c:7205:: with SMTP id n5mr32844152wmc.9.1579074057402;
 Tue, 14 Jan 2020 23:40:57 -0800 (PST)
MIME-Version: 1.0
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-2-broonie@kernel.org>
 <20200114174432.GG2579@willie-the-truck>
In-Reply-To: <20200114174432.GG2579@willie-the-truck>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 15 Jan 2020 08:40:46 +0100
Message-ID: <CAKv+Gu9pVZZm_gvsKfrCG_cM=1TmAAH+sj06GzT+Ag9Ej7__fg@mail.gmail.com>
Subject: Re: [PATCH v10 1/3] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_234100_849613_C16C3B3B 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, 14 Jan 2020 at 18:44, Will Deacon <will@kernel.org> wrote:
>
> On Fri, Jan 10, 2020 at 12:23:39PM +0000, Mark Brown wrote:
> > From: Richard Henderson <richard.henderson@linaro.org>
> >
> > Expose the ID_AA64ISAR0.RNDR field to userspace, as the RNG system
> > registers are always available at EL0.
> >
> > Implement arch_get_random_seed_long using RNDR.  Given that the
> > TRNG is likely to be a shared resource between cores, and VMs,
> > do not explicitly force re-seeding with RNDRRS.  In order to avoid
> > code complexity and potential issues with hetrogenous systems only
> > provide values after cpufeature has finalized the system capabilities.
> >
> > Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> > [Modified to only function after cpufeature has finalized the system
> > capabilities and move all the code into the header -- broonie]
> > Signed-off-by: Mark Brown <broonie@kernel.org>
> > Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> > ---
> >  Documentation/arm64/cpu-feature-registers.rst |  2 +
> >  arch/arm64/Kconfig                            | 12 ++++
> >  arch/arm64/include/asm/archrandom.h           | 67 +++++++++++++++++++
> >  arch/arm64/include/asm/cpucaps.h              |  3 +-
> >  arch/arm64/include/asm/sysreg.h               |  4 ++
> >  arch/arm64/kernel/cpufeature.c                | 13 ++++
> >  6 files changed, 100 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/arm64/include/asm/archrandom.h
>
> In which case, should we also add an HWCAP for this?
>

Isn't this covered by the 'cpuid' HWCAP? We can't prevent EL0 from
accessing these system registers anyway, even if we wanted to.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
