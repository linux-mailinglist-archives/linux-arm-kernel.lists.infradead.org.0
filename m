Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4C81869F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 12:22:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=paNrQHmLJN1DLSDGKEqHK+bW/LYenZ4gU64PWQdQigo=; b=S5Dism4QJ8O1hb
	ogjCsnGI1ydzj2v4AjKpQS8/x16FpfjMFTWBEKhneHmB/Uk87UdZj7+DtOcp0fo7lRXhttxCiZC9J
	zG2um0126WE/S1jb3YC4LLH5vAbGzca79C6oPMpmyR6jEEmIDalXFxvi8Yus52kuyJxzGIhaZQoi/
	9Yo4haJSMn8UHyDW1vQ1W6b9OD0x1PGbmWePhStWVgEpWWSvw8L1Nqq6Rj9xG4TBxgPKXp7dYsI31
	xFhezVufFZCq3R1QBeU6cNODl0z2SK7jUFyxFxVQ0aSATNWaEs/+G3EN9y6Hy03kHl7fIge5eNq+c
	3wNGcv/c38giPzLS2GhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDnp6-0003pP-0X; Mon, 16 Mar 2020 11:22:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDnoy-0003ot-FD
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 11:22:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8FC430E;
 Mon, 16 Mar 2020 04:22:11 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8238C3F52E;
 Mon, 16 Mar 2020 04:22:08 -0700 (PDT)
Date: Mon, 16 Mar 2020 11:22:06 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
Message-ID: <20200316112205.GE3005@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp>
 <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316103437.GD3005@mbp>
 <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_042212_554469_15AC53E4 
X-CRM114-Status: GOOD (  18.08  )
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

On Mon, Mar 16, 2020 at 10:55:00AM +0000, Vincenzo Frascino wrote:
> On 3/16/20 10:34 AM, Catalin Marinas wrote:
> >> I tried to fine grain the headers as much as I could in order to avoid
> >> unneeded/unwanted inclusions:
> >>  * TASK_SIZE_32 is used to verify ABI consistency on vdso32 (please refer to
> >>    arch/arm64/kernel/vdso32/vgettimeofday.c).
> > 
> > I see. But the test is probably useless. With 4K pages, TASK_SIZE_32 is
> > 1UL << 32, so you can't have a u32 greater than this. So I'd argue that
> > the ABI compatibility here doesn't matter.
> > 
> > With 16K or 64K pages, TASK_SIZE_32 is slightly smaller but arm32 never
> > supported it.
> > 
> > What's the side-effect of dropping this check altogether?
> 
> The main side-effect is that arm32 and arm64 compat have a different behavior,
> that it is what we want to avoid.
> 
> The vdsotest [1] I am using, verifies all the side conditions with respect to
> the ABI, which we are now compatible with. Removing those checks would break
> this condition.

As I said above, I don't see how removing 'if ((u32)ts >= (1UL << 32))'
makes any difference. This check was likely removed by the compiler
already.

Also, userspace doesn't have a trivial way to figure out TASK_SIZE and I
can't see anything that tests this in the vdsotest (though I haven't
spent that much time looking). If it's hard-coded, note that arm32
TASK_SIZE is different from TASK_SIZE_32 on arm64.

Can you tell what actually is failing in vdsotest if you remove the
TASK_SIZE_32 checks in the arm64 compat vdso?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
