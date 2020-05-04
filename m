Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 774101C4084
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Embe2UKPiqpyaLhE25/rrP9m0jdoBF76TORDbotHbuo=; b=uxkusMIb3uSt6w
	MPmi33NzpiJm6VJ6CE3Q/yLbVYEGC6D4Ar+ak6BbQminR6UIyrDMU9jZpAKpNQmscAveb7gWPoJt0
	exWLrsSIQw4Yh2NHRjMojJrHYId9X30SOahbaBXHZs1Rup2KmdL1Bj1c3op7xaOCSahHWu2mo/mFn
	ac0zZs/DCKIbFl6oyttvWvorNW6nsFSqNQwYNXDnVVt40Y1cZg2GGSsXKtXVI8obp4wYhv2ozOGbJ
	3cECM39OeFJ1bshazKOzhoQXh9NgEkquLD1MbdOjxBnOTC7weK7+wnd9yQeMObW5wPZZFYbh4pOnQ
	avX4AKg6m3M/PFWTe/5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeKo-0006Mo-6c; Mon, 04 May 2020 16:52:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVeKb-0006L2-1W
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:52:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C292E20721;
 Mon,  4 May 2020 16:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588611155;
 bh=pHevdodwKI9AchWwf20bTvyMZmY/KXT51VAk5UHfloY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uyMa7mayYmQKcwMDm+GOx012e1zqDeyv+W5L6bDtfpKFAZ+E7dHLgSdsy/T09kHTW
 ixd15enHaJKKfVWzOVcZQBM4JTXKH1eXGREFx5btkK873B8qrSEX32IqtAqg24KSMC
 y7A6s2xNnFeJRxYbjVN/DbsKn+VXK3WbXoGH2kNQ=
Date: Mon, 4 May 2020 17:52:28 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200504165227.GB1833@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <20200422235134.GA211149@google.com>
 <202004231121.A13FDA100@keescook>
 <20200424112113.GC21141@willie-the-truck>
 <20200427204546.GA80713@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427204546.GA80713@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_095237_122865_98ED5AEF 
X-CRM114-Status: GOOD (  26.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 01:45:46PM -0700, Sami Tolvanen wrote:
> On Fri, Apr 24, 2020 at 12:21:14PM +0100, Will Deacon wrote:
> > Also, since you mentioned the lack of redzoning, isn't it a bit dodgy
> > allocating blindly out of the kmem_cache? It means we don't have a redzone
> > or a guard page, so if you can trigger something like a recursion bug then
> > could you scribble past the SCS before the main stack overflows? Would this
> > clobber somebody else's SCS?
> 
> I agree that allocating from a kmem_cache isn't ideal for safety. It's a
> compromise to reduce memory overhead.

Do you think it would be a problem if we always allocated a page for the
SCS?

> > The vmap version that I asked Sami to drop
> > is at least better in this regard, although the guard page is at the wrong
> > end of the stack and we just hope that the allocation below us didn't pass
> > VM_NO_GUARD. Looks like the same story for vmap stack :/
> 
> SCS grows up and the guard page is after the allocation, so how is it at
> the wrong end? Am I missing something here?

Sorry, I'd got the SCS upside-down in my head (hey, that second 'S' stands
for 'Stack'!). But I think I'm right about vmap stack, which feels a
little fragile even though it seems to work out today with the very limited
uses of VM_NO_GUARD.

> > If we split the pointer in two (base, offset) then we could leave the
> > base live in the thread_info, not require alignment of the stacks (which
> > may allow for unconditional redzoning?) and then just update the offset
> > value on context switch, which could be trivially checked as part of the
> > existing stack overflow checking on kernel entry.
> 
> I sent out v13 with split pointers, but I'm not sure it's convenient to
> add an overflow check to kernel_ventry where the VMAP_STACK check is
> done. I suppose I could add a check to kernel_entry after we load x18
> from tsk. Thoughts?

I'll take a look at v13, since at this stage I'm keen to get something
queued up so that we can use it as a base for further improvements without
you having to repost the whole stack every time.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
