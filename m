Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2993CDCC8C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osm0PZ9+VSSHrZsC1KJlhvZmFVJ7xvlWj9vqDzgpri0=; b=fV4S3pu/ZH0HMZ
	CUUAYNKQeNiHnxt0cnVhbQeTqZLjO9/dhMwSwdjp+dMXlBvMNHXL7w/odpMBtKD6UKvs3NmAi5+rA
	Su8HL9Y/jvGo0BohnpIc6jJppt++jEFnZK3YZzshFCYXGXGXHT19e/V7Jc9IRDka6WEgf7Duiso4C
	+TCP7aKo6PrbccX0SqicCCf2ALUW9UZCgMnqQuICK5/L9LxeUYtzzdTBGck7OlQ39t2DMSeebSMUB
	3vShrw0vzy0q89YH6Q8CZ3jljU0t4iRGO7gs4JEvdOvS+WafsWIUTN9ZtmVSN0XWu44l2AEgA4nBR
	QPcTpE2qDS2VcyfVEZRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVyQ-00029k-0C; Fri, 18 Oct 2019 17:23:34 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVyG-00025h-WB
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:23:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C971D1042;
 Fri, 18 Oct 2019 10:23:13 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 084393F718;
 Fri, 18 Oct 2019 10:23:11 -0700 (PDT)
Date: Fri, 18 Oct 2019 18:23:09 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH 18/18] arm64: implement Shadow Call Stack
Message-ID: <20191018172309.GB18838@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-19-samitolvanen@google.com>
 <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_102325_100404_5A6D7F02 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 kernel list <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 07:12:52PM +0200, Jann Horn wrote:
> On Fri, Oct 18, 2019 at 6:16 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> > This change implements shadow stack switching, initial SCS set-up,
> > and interrupt shadow stacks for arm64.
> [...]
> > +static inline void scs_save(struct task_struct *tsk)
> > +{
> > +       void *s;
> > +
> > +       asm volatile("mov %0, x18" : "=r" (s));
> > +       task_set_scs(tsk, s);
> > +}
> > +
> > +static inline void scs_load(struct task_struct *tsk)
> > +{
> > +       asm volatile("mov x18, %0" : : "r" (task_scs(tsk)));
> > +       task_set_scs(tsk, NULL);
> > +}
> 
> These things should probably be __always_inline or something like
> that? If the compiler decides not to inline them (e.g. when called
> from scs_thread_switch()), stuff will blow up, right?

I think scs_save() would better live in assembly in cpu_switch_to(),
where we switch the stack and current. It shouldn't matter whether
scs_load() is inlined or not, since the x18 value _should_ be invariant
from the PoV of the task.

We just need to add a TSK_TI_SCS to asm-offsets.c, and then insert a
single LDR at the end:

	mov	sp, x9
	msr	sp_el0, x1
#ifdef CONFIG_SHADOW_CALL_STACK
	ldr	x18, [x1, TSK_TI_SCS]
#endif
	ret

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
