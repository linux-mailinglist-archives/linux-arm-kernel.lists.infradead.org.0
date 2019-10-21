Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE7CDF393
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jLl1g+lqh6BtbpZj5YNA002C1/5yZc/+yJOJxi3pt0=; b=ei0J4PjFu8meDR
	sdTFGra+nu/+655tJtgyiZfCX4vnJQCOwaTb4qPZ7CB/gn19dTKg5tDxni5jBegyJmdJp6Oc0dU7A
	co4626Tk50NQG1Mvt3PHLPFUIzb5dorYQYaw17P5+/QNhOTp1+5V8eupFK0I2Wy1Q94CmcvgT+O3i
	VsxmeYZpqPu+2lvNEBjswmC33iR0Ql0EOxTZhufkFoyIsniiXIT0a+jYBFOunhPlqUiXaJWbKqzuo
	pZuWqGcgD2bqq4ZM45luIzeLieoDEm3C7ta14YR2GJYIUrnRii3MNSqtdCNygu2f+viS3ajuLzlEb
	aKNrgSCHfhUUoMcvzNiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMas4-0004OJ-Kv; Mon, 21 Oct 2019 16:49:28 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMarv-0004NY-7L
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 16:49:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD150175A;
 Mon, 21 Oct 2019 09:49:08 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E008A3F71F;
 Mon, 21 Oct 2019 09:49:06 -0700 (PDT)
Date: Mon, 21 Oct 2019 17:49:04 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 18/18] arm64: implement Shadow Call Stack
Message-ID: <20191021164904.GD56589@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-19-samitolvanen@google.com>
 <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
 <20191018172309.GB18838@lakrids.cambridge.arm.com>
 <CABCJKue27Aba_MJqB68Bh282zyL=LSQSBXV5TAb-NfsOAqJRnQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABCJKue27Aba_MJqB68Bh282zyL=LSQSBXV5TAb-NfsOAqJRnQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_094919_308494_8D84F5BE 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 kernel list <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 10:35:49AM -0700, Sami Tolvanen wrote:
> On Fri, Oct 18, 2019 at 10:23 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > I think scs_save() would better live in assembly in cpu_switch_to(),
> > where we switch the stack and current. It shouldn't matter whether
> > scs_load() is inlined or not, since the x18 value _should_ be invariant
> > from the PoV of the task.
> 
> Note that there's also a call to scs_save in cpu_die, because the
> current task's shadow stack pointer is only stored in x18 and we don't
> want to lose it.
> 
> > We just need to add a TSK_TI_SCS to asm-offsets.c, and then insert a
> > single LDR at the end:
> >
> >         mov     sp, x9
> >         msr     sp_el0, x1
> > #ifdef CONFIG_SHADOW_CALL_STACK
> >         ldr     x18, [x1, TSK_TI_SCS]
> > #endif
> >         ret
> 
> TSK_TI_SCS is already defined, so yes, we could move this to
> cpu_switch_to. I would still prefer to have the overflow check that's
> in scs_thread_switch though.

The only bit that I think needs to be in cpu_switch_to() is the install
of the next task's shadow addr into x18.

Having a separate scs_check_overflow() sounds fine to me, as that only
has to read from the shadow stack. IIUC that's also for the prev task,
not next, in the current patches.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
