Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB00A43C6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MokESNrYoPdMjP8Z1gYqxbM4OBPBaLwp3SnJEPcs+NY=; b=PPFsqHoqg2uNzH
	N91mdSCboM/FVKJVkoF03WuhFWxMNM69I4P2GErtHY6F6DlLAVZdaqiK0w/belIR0gTirUJhxqkNt
	0sKp76TrH1M22Sb6pRd6VqGAIvmlCW9OlGy7iPp2yTqPmfHLDeNJlAk5kAhLMjke3Frmo2wlMo09Q
	GvrxJiERGDG+LarQftPVQQACOYT3kZhkLKWfn5B7NDTv7XFZA8Kx5X482LFADvDxcD4dAhfmNKgig
	DuqaPD/cVmcVtaVLE+uutk08qwTmuPbSagzk04KJjMOTqWQxWQ6UVIzvsXLe14gM33lRmqWgj+QYT
	SDZF3hlJdrnLpCKQIU7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRlq-0007HS-Pg; Thu, 13 Jun 2019 15:36:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRlC-0006xp-LQ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:35:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF6F23EF;
 Thu, 13 Jun 2019 08:35:29 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE4553F718;
 Thu, 13 Jun 2019 08:35:11 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:35:07 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v17 03/15] arm64: Introduce prctl() options to control
 the tagged user addresses ABI
Message-ID: <20190613153505.GU28951@C02TF0J2HF1T.local>
References: <cover.1560339705.git.andreyknvl@google.com>
 <a7a2933bea5fe57e504891b7eec7e9432e5e1c1a.1560339705.git.andreyknvl@google.com>
 <20190613111659.GX28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613111659.GX28398@e103592.cambridge.arm.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_083530_791190_1FF818A0 
X-CRM114-Status: GOOD (  29.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, Kostya Serebryany <kcc@google.com>,
 Khalid Aziz <khalid.aziz@oracle.com>, Lee Smith <Lee.Smith@arm.com>,
 linux-kselftest@vger.kernel.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 12:16:59PM +0100, Dave P Martin wrote:
> On Wed, Jun 12, 2019 at 01:43:20PM +0200, Andrey Konovalov wrote:
> > From: Catalin Marinas <catalin.marinas@arm.com>
> > 
> > It is not desirable to relax the ABI to allow tagged user addresses into
> > the kernel indiscriminately. This patch introduces a prctl() interface
> > for enabling or disabling the tagged ABI with a global sysctl control
> > for preventing applications from enabling the relaxed ABI (meant for
> > testing user-space prctl() return error checking without reconfiguring
> > the kernel). The ABI properties are inherited by threads of the same
> > application and fork()'ed children but cleared on execve().
> > 
> > The PR_SET_TAGGED_ADDR_CTRL will be expanded in the future to handle
> > MTE-specific settings like imprecise vs precise exceptions.
> > 
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > ---
> >  arch/arm64/include/asm/processor.h   |  6 +++
> >  arch/arm64/include/asm/thread_info.h |  1 +
> >  arch/arm64/include/asm/uaccess.h     |  3 +-
> >  arch/arm64/kernel/process.c          | 67 ++++++++++++++++++++++++++++
> >  include/uapi/linux/prctl.h           |  5 +++
> >  kernel/sys.c                         | 16 +++++++
> >  6 files changed, 97 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> > index fcd0e691b1ea..fee457456aa8 100644
> > --- a/arch/arm64/include/asm/processor.h
> > +++ b/arch/arm64/include/asm/processor.h
> > @@ -307,6 +307,12 @@ extern void __init minsigstksz_setup(void);
> >  /* PR_PAC_RESET_KEYS prctl */
> >  #define PAC_RESET_KEYS(tsk, arg)	ptrauth_prctl_reset_keys(tsk, arg)
> >  
> > +/* PR_TAGGED_ADDR prctl */
> 
> (A couple of comments I missed in my last reply:)
> 
> Name mismatch?

Yeah, it went through several names but it seems that I didn't update
all places.

> > +long set_tagged_addr_ctrl(unsigned long arg);
> > +long get_tagged_addr_ctrl(void);
> > +#define SET_TAGGED_ADDR_CTRL(arg)	set_tagged_addr_ctrl(arg)
> > +#define GET_TAGGED_ADDR_CTRL()		get_tagged_addr_ctrl()
> > +
> 
> [...]
> 
> > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > index 3767fb21a5b8..69d0be1fc708 100644
> > --- a/arch/arm64/kernel/process.c
> > +++ b/arch/arm64/kernel/process.c
> > @@ -30,6 +30,7 @@
> >  #include <linux/kernel.h>
> >  #include <linux/mm.h>
> >  #include <linux/stddef.h>
> > +#include <linux/sysctl.h>
> >  #include <linux/unistd.h>
> >  #include <linux/user.h>
> >  #include <linux/delay.h>
> > @@ -323,6 +324,7 @@ void flush_thread(void)
> >  	fpsimd_flush_thread();
> >  	tls_thread_flush();
> >  	flush_ptrace_hw_breakpoint(current);
> > +	clear_thread_flag(TIF_TAGGED_ADDR);
> >  }
> >  
> >  void release_thread(struct task_struct *dead_task)
> > @@ -552,3 +554,68 @@ void arch_setup_new_exec(void)
> >  
> >  	ptrauth_thread_init_user(current);
> >  }
> > +
> > +/*
> > + * Control the relaxed ABI allowing tagged user addresses into the kernel.
> > + */
> > +static unsigned int tagged_addr_prctl_allowed = 1;
> > +
> > +long set_tagged_addr_ctrl(unsigned long arg)
> > +{
> > +	if (!tagged_addr_prctl_allowed)
> > +		return -EINVAL;
> 
> So, tagging can actually be locked on by having a process enable it and
> then some possibly unrelated process clearing tagged_addr_prctl_allowed.
> That feels a bit weird.

The problem is that if you disable the ABI globally, lots of
applications would crash. This sysctl is meant as a way to disable the
opt-in to the TBI ABI. Another option would be a kernel command line
option (I'm not keen on a Kconfig option).

> Do we want to allow a process that has tagging on to be able to turn
> it off at all?  Possibly things like CRIU might want to do that.

I left it in for symmetry but I don't expect it to be used. A potential
use-case is doing it per subsequent threads in an application.

> > +	if (is_compat_task())
> > +		return -EINVAL;
> > +	if (arg & ~PR_TAGGED_ADDR_ENABLE)
> > +		return -EINVAL;
> 
> How do we expect this argument to be extended in the future?

Yes, for MTE. That's why I wouldn't allow random bits here.

> I'm wondering whether this is really a bitmask or an enum, or a mixture
> of the two.  Maybe it doesn't matter.

User may want to set PR_TAGGED_ADDR_ENABLE | PR_MTE_PRECISE in a single
call.

> > +	if (arg & PR_TAGGED_ADDR_ENABLE)
> > +		set_thread_flag(TIF_TAGGED_ADDR);
> > +	else
> > +		clear_thread_flag(TIF_TAGGED_ADDR);
> 
> I think update_thread_flag() could be used here.

Yes. I forgot you added this.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
