Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF0CF0060
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 15:56:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qHPKDGt7ygCxqEunLZy2mhVf68lD8WUDpAjdK5vNcF4=; b=teiEjIkOc6n+X6EUULpuJLuxH
	raa7HrxkQr/AJN5VxC2qLS9x+VWll7IAQl+A/kbMfY0R42TVJbsr+nE5V7NScOHhV+wqRZ0TtM22G
	yRvkmg7KTfN4fN9nf/yu+2F3c4Ssc9uZXOvhqxbg6kPF7zN8IFG7roNOCJtVoGVJOIqh0eJjYcgL3
	ugC8tieAxRuIKh37rVBsPiAsdvWYqgjxUr6/mgRuC1P1GlvzQ/4ZO5Miuy1kW/RyWFNZi5kmDOzQp
	VpNDVU+t62NdX3yPx2yiz3Mqi9IfOMOGf1C7iXxwh6ubhfB/f1u0ilbm/hO9JnCQ3rvYlh7iJ7jjb
	QUhYJW9ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0Fa-0003yc-04; Tue, 05 Nov 2019 14:56:06 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0FS-0003xb-1H
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 14:55:59 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iS0Ew-0000Z9-LF; Tue, 05 Nov 2019 15:55:26 +0100
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 13/17] arm64: preserve x18 when CPU is suspended
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 05 Nov 2019 16:04:47 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <CABCJKueN+Op8xm+L3aSFgCL9BLC8b-WHj3oBYhf1W=OcX2aqCg@mail.gmail.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-14-samitolvanen@google.com>
 <02c56a5273f94e9d832182f1b3cb5097@www.loen.fr>
 <CABCJKucVON6uUMH6hVP7RODqH8u63AP3SgTCBWirrS30yDOmdA@mail.gmail.com>
 <CAKwvOdkDbX4zLChH_DKrnOah1sJjTA-e3uZOXUP6nUs-EaJreg@mail.gmail.com>
 <CABCJKueN+Op8xm+L3aSFgCL9BLC8b-WHj3oBYhf1W=OcX2aqCg@mail.gmail.com>
Message-ID: <5486328a221c9eaef8956983f70380f1@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: samitolvanen@google.com, ndesaulniers@google.com,
 will@kernel.org, catalin.marinas@arm.com, rostedt@goodmis.org,
 mhiramat@kernel.org, ard.biesheuvel@linaro.org, dave.martin@arm.com,
 keescook@chromium.org, labbott@redhat.com, mark.rutland@arm.com,
 jannh@google.com, miguel.ojeda.sandonis@gmail.com,
 yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_065558_225588_6679688C 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <dave.martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-05 01:11, Sami Tolvanen wrote:
> On Mon, Nov 4, 2019 at 1:59 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>>
>> On Mon, Nov 4, 2019 at 1:38 PM Sami Tolvanen 
>> <samitolvanen@google.com> wrote:
>> >
>> > On Mon, Nov 4, 2019 at 5:20 AM Marc Zyngier <maz@kernel.org> 
>> wrote:
>> > > >  ENTRY(cpu_do_suspend)
>> > > >       mrs     x2, tpidr_el0
>> > > > @@ -73,6 +75,9 @@ alternative_endif
>> > > >       stp     x8, x9, [x0, #48]
>> > > >       stp     x10, x11, [x0, #64]
>> > > >       stp     x12, x13, [x0, #80]
>> > > > +#ifdef CONFIG_SHADOW_CALL_STACK
>> > > > +     str     x18, [x0, #96]
>> > > > +#endif
>> > >
>> > > Do we need the #ifdefery here? We didn't add that to the KVM 
>> path,
>> > > and I'd feel better having a single behaviour, specially when
>> > > NR_CTX_REGS is unconditionally sized to hold 13 regs.
>> >
>> > I'm fine with dropping the ifdefs here in v5 unless someone 
>> objects to this.
>>
>> Oh, yeah I guess it would be good to be consistent.  Rather than 
>> drop
>> the ifdefs, would you (Marc) be ok with conditionally setting
>> NR_CTX_REGS based on CONFIG_SHADOW_CALL_STACK, and doing so in KVM?
>> (So 3 ifdefs, rather than 0)?
>>
>> Without any conditionals or comments, it's not clear why x18 is 
>> being
>> saved and restored (unless git blame survives, or a comment is added
>> in place of the ifdefs in v6).
>
> True. Clearing the sleep state buffer in cpu_do_resume is also
> pointless without CONFIG_SHADOW_CALL_STACK, so if the ifdefs are
> removed, some kind of an explanation is needed there.

I can't imagine the overhead being noticeable, and I certainly value
minimizing the testing space. Sticking a comment there should be
enough for people hacking on this to understand that this isn't
entirely dead code.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
