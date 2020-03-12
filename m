Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4256A1838D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 19:42:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/wB9XPs08FX/VrichjrsGE/1pGEL59oGMIcOxfRhdk=; b=MVfUQcmnknktpm
	OrA5LBU+VyOkxdzVYo5suldcPxwP+YbqdMaZN3zqDoNKJIjIclSG2HSPsi/FA5cr1ngDqnrA7totm
	MKooCG4dL4WTdMi4nkmM4G4/JyjVMwDxGk0gyGLxXekkU7MXq788TekhYjQd4llSXvM439mrtOgF/
	3QvBYEwMOZj2eOBtwiT629YVWjKpUGPgHi48UJCQuF4uivXec4umAbkaHO5k6axAXYaIC5cHiqRXI
	9FrlMFBV9/lOWdF7KQ1DOQ5JbWNHIUpAmkDg39Y2O7v93t+zGUvoyu3MqEO2TNfH1cnnSGgWXFiST
	KpyY3CnrGp3y3JkiWKLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCSmr-0005lL-Nm; Thu, 12 Mar 2020 18:42:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCSmh-0005kc-BM
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 18:42:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75A7430E;
 Thu, 12 Mar 2020 11:42:16 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 776B33F67D; Thu, 12 Mar 2020 11:42:13 -0700 (PDT)
Date: Thu, 12 Mar 2020 18:42:11 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v8 00/11] arm64: Branch Target Identification support
Message-ID: <20200312184211.GA3849205@arrakis.emea.arm.com>
References: <20200227174417.23722-1-broonie@kernel.org>
 <20200306102729.GC2503422@arrakis.emea.arm.com>
 <20200309210505.GM4101@sirena.org.uk>
 <20200310124226.GC4106@sirena.org.uk>
 <20200311162858.GK3216816@arrakis.emea.arm.com>
 <20200311172556.GJ5411@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311172556.GJ5411@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_114219_478321_B14BEF7B 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 05:25:56PM +0000, Mark Brown wrote:
> On Wed, Mar 11, 2020 at 04:28:58PM +0000, Catalin Marinas wrote:
> > On Tue, Mar 10, 2020 at 12:42:26PM +0000, Mark Brown wrote:
> > > Sorry, I realized thanks to Amit's off-list prompting that I was testing
> > > that I was verifying with the wrong kernel binary here (user error since
> > > it took me a while to sort out uprobes) so this isn't quite right - you
> > > can probe the landing pads with or without this series.
> 
> > Can we not change aarch64_insn_is_nop() to actually return true only for
> > NOP and ignore everything else in the hint space? We tend to re-use the
> > hint instructions for new things in the architecture, so I'd rather
> > white-list what we know we can safely probe than black-listing only some
> > of the hint instructions.
[...]
> > I haven't assessed the effort of doing the above (probably not a lot)
> > but as a short-term workaround we could add the BTI and PAC hint
> > instructions to the aarch64_insn_is_nop() (though my preferred option is
> > the white-list one).
> 
> The only thing I've seen in testing with just NOPs whitelisted is an
> inability to probe the PAC instructions which isn't the best user
> experience, especially since the effect is that the probes get silently
> ignored. This isn't extensive userspace testing though.  Adding
> whitelisting of the BTI and PAC hints would definitely be a safer as a
> first step though.  I can post either version?

I thought BTI and PAC are already whitelisted in mainline as they fall
into the hint space (by whitelisting I mean you can probe them).

I'm trying to understand how the BTI patches affect the current uprobes
support and what is needed. Executing BTI or PCI?SP out of line should
be fine as they don't generate a BTI exception (the BRK doesn't either,
just the normal debug exception).

I think (it needs checking) that BRK preserves the PSTATE.BTYPE in SPSR.
If we probe an instruction in a guarded page and then we single-step it
in a non-guarded page, we'll miss a potential BTI fault. Is this an
issue?

If we are to keep the BTI faulting behaviour, we'd need an additional
xol page, guarded, and to find a way to report the original probed
address of the fault rather than the xol page.

So, IIUC, we don't have an issue with the actual BTI or PACI?SP
instructions but rather the other instructions that would not fault with
the BTI support. While we should try to address this, I think the
important bit now is not to break the existing uprobes support when
running a binary with BTI enabled.

Have I missed anything?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
