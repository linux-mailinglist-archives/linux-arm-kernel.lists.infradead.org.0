Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C0710B402
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 18:02:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5epo1adHUf6ZaiQl0aKSkh9+7SFjPdjNUm0hC4+3V+g=; b=A6ieHbfu3SOC9c
	ybJMVMVgngv5i/ytifgJZpVAhNsVR4nEdzYM1vWqb6Mkora9BWILlp5LAbIaCsQnVi/wjkCnRq9qa
	BA5UbaFXRhVsBcqn20Hv9aJQEymA9JiAZz0+ZBKtfQ1vGOgauKRlCg0u7GjklzuPX2Lwq4eyvFi7F
	DJy2vAXxS6aPvDCBcpOgcu9/80ZN1JxE3MCqQxoLBwKPWGx6q3bzLU3KicNQEMxXtVOZtnkNTUMim
	A0GAc6RF+wcU0i8xKhbp0/OREtZDNeNaRwzaxkBzcpCeunoeRHrbSEu1XAnuSRm2aVYWvIaSCJu3d
	lxsWk9YDyx1vqpNDNO2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia0ha-0001Zk-8G; Wed, 27 Nov 2019 17:02:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia0hP-0001X3-35
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 17:01:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06A0430E;
 Wed, 27 Nov 2019 09:01:54 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 43C313F6C4;
 Wed, 27 Nov 2019 09:01:51 -0800 (PST)
Date: Wed, 27 Nov 2019 17:01:49 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v2 3/3] arm64: remove the rest of asm-uaccess.h
Message-ID: <20191127170148.GG51937@lakrids.cambridge.arm.com>
References: <20191122022406.590141-1-pasha.tatashin@soleen.com>
 <20191122022406.590141-4-pasha.tatashin@soleen.com>
 <20191127151154.GC51937@lakrids.cambridge.arm.com>
 <CA+CK2bDDom_pwLC-ABwDw66ynyELH3f3NdjUEdhr1LYLkgWJvg@mail.gmail.com>
 <20191127160342.GF51937@lakrids.cambridge.arm.com>
 <CA+CK2bBszdMYbneQ1UiYxSndN8zmoVwbTVJ20NeajYPehT_X5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+CK2bBszdMYbneQ1UiYxSndN8zmoVwbTVJ20NeajYPehT_X5Q@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_090155_223233_749530D1 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, Nov 27, 2019 at 11:09:35AM -0500, Pavel Tatashin wrote:
> On Wed, Nov 27, 2019 at 11:03 AM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Wed, Nov 27, 2019 at 10:31:54AM -0500, Pavel Tatashin wrote:
> > > On Wed, Nov 27, 2019 at 10:12 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > > >
> > > > On Thu, Nov 21, 2019 at 09:24:06PM -0500, Pavel Tatashin wrote:
> > > > > The __uaccess_ttbr0_disable and __uaccess_ttbr0_enable,
> > > > > are the last two macros defined in asm-uaccess.h.
> > > > >
> > > > > Replace them with C wrappers and call C functions from
> > > > > kernel_entry and kernel_exit.
> > > >
> > > > For now, please leave those as-is.
> > > >
> > > > I don't think we want to have out-of-line C wrappers in the middle of
> > > > the entry assembly where we don't have a complete kernel environment.
> > > > The use in entry code can also assume non-preemptibility, while the C
> > > > functions have to explcitily disable that.
> > >
> > > I do not understand, if C function is called form non-preemptible
> > > context it stays non-preemptible. kernel_exit already may call C
> > > functions around the time __uaccess_ttbr0_enable is called (it may
> > > call post_ttbr_update_workaround), and that C functions does not do
> > > explicit preempt disable:
> >
> > Sorry, I meant that IRQs are disabled here.
> >
> > The C wrapper calls __uaccess_ttbr0_enable(), which calls
> > local_irq_save() and local_irq_restore(). Those are pointless in the
> > bowels of the entry code, and potentially expensive if IRQ prio masking
> > is in use.
> >
> > I'd rather not add more out-of-line C code calls here right now as I'd
> > prefer to factor out the logic to C in a better way.
> 
> Ah, yes, this makes sense. I could certainly factor out C calls in a
> better way, or is this something you want to work on?

I'm hoping to do that as part of ongoing entry-deasm work, now that a
lot of the prerequisite work was merged in v5.4.

> Without removing these assembly macros I do not think we want to
> address this suggestion from Kees Cook:
> https://lore.kernel.org/lkml/CA+CK2bCBS2fKOTmTFm13iv3u5TBPwpoCsYeeP352DVE-gs9GJw@mail.gmail.com/

In the mean time, we could add checks around addr_limit_user_check(),
and in the context-switch path. I have some preparatory cleanup to allow
for the context-switch check, which I'll send out at -rc1. That was what
I used to detect the case you reported previously.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
