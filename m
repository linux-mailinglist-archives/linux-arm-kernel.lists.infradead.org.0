Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DAB18CFE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 15:22:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m19GWL6D3EZPpJ+WeevTTpaQMWZY3REXae9Hf49WsDo=; b=rF5sEN1qZaFWdw
	5l77rE8w5gYcDwwyWU/jdWycYmahrr5INZTvkAHd+dJ1CiJ+VEOATsW6Aarwb1Z/sUiMVsku6e8CO
	vtLgYYZMmhQ3rluOj65lcu2M86o+0ifAfHMByPPXR2W1F75ca5H0da/XBo68cUdIby9UVwNnV+1dC
	cRbb1zi0/DSefTiwWMwowqe8N3alSUXJXsRWui5xHCB8Epe32Aaz7Uvk9WXPgaTIp3I92lQcGfIYH
	5Au2FTae9GkUVpqlgEhgwN/9qvYAoug0CL2zFZfAbbZGI4sH1oqnzswhsp5BXBf8SFTAtqsZ5nrZB
	t5JQnLhml9fNsYJhIzRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFIXW-0000Pl-Np; Fri, 20 Mar 2020 14:22:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFIXP-0000PE-7Z
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 14:22:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 644CD1FB;
 Fri, 20 Mar 2020 07:22:14 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 38BB73F792;
 Fri, 20 Mar 2020 07:22:11 -0700 (PDT)
Date: Fri, 20 Mar 2020 14:22:08 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
Message-ID: <20200320142208.GC29214@mbp>
References: <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
 <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
 <20200317174806.GE632169@arrakis.emea.arm.com>
 <93cfe94a-c2a3-1025-bc9c-e7c3fd891100@arm.com>
 <20200318183603.GF94111@arrakis.emea.arm.com>
 <1bc25a53-7a59-0f60-ecf2-a3cace46b823@arm.com>
 <20200319181004.GA29214@mbp>
 <b937d1eb-c7fd-e903-fa36-b261662bf40b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b937d1eb-c7fd-e903-fa36-b261662bf40b@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_072215_360463_459C23AF 
X-CRM114-Status: GOOD (  21.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 linux-mips@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 01:05:14PM +0000, Vincenzo Frascino wrote:
> On 3/19/20 6:10 PM, Catalin Marinas wrote:
> > On Thu, Mar 19, 2020 at 12:38:42PM +0000, Vincenzo Frascino wrote:
> >> On 3/18/20 6:36 PM, Catalin Marinas wrote:
> >>> On Wed, Mar 18, 2020 at 04:14:26PM +0000, Vincenzo Frascino wrote:
> >>>> On 3/17/20 5:48 PM, Catalin Marinas wrote:
> >>>>> So clock_gettime() on arm32 always falls back to the syscall?
> >>>>
> >>>> This seems not what you asked, and I think I answered accordingly. Anyway, in
> >>>> the case of arm32 the error code path is handled via syscall fallback.
> >>>>
> >>>> Look at the code below as an example (I am using getres because I know this
> >>>> email will be already too long, and I do not want to add pointless code, but the
> >>>> concept is the same for gettime and the others):
> >>>>
> >>>> static __maybe_unused
> >>>> int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
> >>>> {
> >>>> 	int ret = __cvdso_clock_getres_common(clock, res);
> >>>>
> >>>> 	if (unlikely(ret))
> >>>> 		return clock_getres_fallback(clock, res);
> >>>> 	return 0;
> >>>> }
> >>>>
> >>>> When the return code of the "vdso" internal function returns an error the system
> >>>> call is triggered.
> >>>
> >>> But when __cvdso_clock_getres_common() does *not* return an error, it
> >>> means that it handled the clock_getres() call without a fallback to the
> >>> syscall. I assume this is possible on arm32. When the clock_getres() is
> >>> handled directly (not as a syscall), why doesn't arm32 need the same
> >>> (res >= TASK_SIZE) check?
> >>
> >> Ok, I see what you mean.
> > 
> > I'm not sure.
> 
> Thank you for the long chat this morning. As we agreed I am going to repost the
> patches removing the checks discussed in this thread

Great, thanks.

> and we will address the syscall ABI difference subsequently with a
> different series.

Now I'm even less convinced we need any additional patches. The arm64
compat syscall would still return -EFAULT for res >= TASK_SIZE_32
because copy_to_user() will fail. So it would be entirely consistent
with the arm32 syscall. In the vdso-only case, both arm32 and arm64
compat would generate a signal.

As Will said, arguably, the syscall semantics may not be applicable to
the vdso implementation. But if you do want to get down this route (tp =
UINTPTR_MAX - sizeof(*tp) returning -EFAULT), please do it for all
architectures, not just arm64 compat. However, I'm not sure anyone
relies on this functionality, other than the vdsotest, so no real
application broken.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
