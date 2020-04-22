Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CDF1B4BED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 19:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nA2zBn2JqmE+hIOtI4hehsmiBTZRkkMjOyd+bk6MAic=; b=ZL7X7JuukSjgqE
	V+xGYnqtczytAPM71Uy98ATi+rcNeLAwMYFhdhvZBLdF66aS3EjjzvOloZ0ZfyRvoFtLdy8xbGG8R
	JXJZsRpWZU8HpKUCbOR7Bf++Zp4zO1nyjEbazGgnsgk8gPTpiD1IPIoHfh/EOSQ5PPu8cHJzpqu3m
	yQPb/nmfJeK+An6hCgpfqyjkUtLK8+KqqF0osZl9jgVXAPj4oceXaX05ePRLw7ycWj1hOnmbXDgyG
	lWm3zLcBrVQXHdhVNjw3adhr9akwEgG9KT5FokVbv8GEqnQaN1fu8IKStJ5HnsZ8HnGbPF6ac2f7V
	L3J+GC6aGYrcT4kT8fbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJM6-00070Q-0o; Wed, 22 Apr 2020 17:40:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJLn-0006zo-U8
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 17:39:57 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 54D942076E;
 Wed, 22 Apr 2020 17:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587577195;
 bh=AGiU7qjKR7ZjubwJ6K3M5/8GasoseXdg8O+47fVqLuw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JyusGuPT4yl7OaJxaidjSDJ0k/CikIy6bBfxMY0e+Pl8R0Jyo0kh0xtn6x5NZmkJc
 57TrOndBtCukynqsiQxqbtjZ/p4Kv1jhveVyOIXjcX+v2OQKZhsYeb5Uw/OHmxFOIs
 4BB1KgVHdsNjWZXGTusGX+5UGalpUEJglG0CFtsA=
Date: Wed, 22 Apr 2020 18:39:47 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200422173938.GA3069@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420211830.GA5081@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_103955_990245_651DE6E6 
X-CRM114-Status: GOOD (  16.27  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Apr 20, 2020 at 02:18:30PM -0700, Sami Tolvanen wrote:
> On Mon, Apr 20, 2020 at 06:17:28PM +0100, Will Deacon wrote:
> > > +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> > > +	 * upwards, so we can mask out the low bits to extract the base
> > > +	 * when the task is not running.
> > > +	 */
> > > +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
> > 
> > Could we avoid forcing this alignment it we stored the SCS pointer as a
> > (base,offset) pair instead? That might be friendlier on the allocations
> > later on.
> 
> The idea is to avoid storing the current task's shadow stack address in
> memory, which is why I would rather not store the base address either.

What I mean is that, instead of storing the current shadow stack pointer,
we instead store a base and an offset. We can still clear the base, as you
do with the pointer today, and I don't see that the offset is useful to
an attacker on its own.

But more generally, is it really worthwhile to do this clearing at all? Can
you (or Kees?) provide some justification for it, please? We don't do it
for anything else, e.g. the pointer authentication keys, so something
feels amiss here.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
