Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE8C160FC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 11:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGeCGerSlRiXt8eKZ15usJ/Plqz2jqHFTcIcG0zbxGA=; b=ty4Ii+s/ZBsKY7
	g7Ai5nzXg2vJua4JEoGsodxd+Yz2C21t1Ngjt96PRRTyH36j8pKJUWXWMgiBisGiuUgetsTM2Vfly
	W7S7JA66hdiFhp0oLsMgzpaugCi133losMMAxV53TvJ9vBqzwUL58t0OIuDu/+y4bfGlYu/nTspiz
	LjoBoBN1eA8dib1EmAJWEwRaqp7bWY86uA1XHSKTSUpmwwr+yBNCBXFulw2wBN0yGqcLlniUUXNEP
	feXfX3jc7kgxBvMVLvIa/Gia9T7X+05BPpHp4u2aP9OTMN62ww/UdwFNHFHvYe1BdmVh42KiAGw5l
	XWS5aqtvzCrWXeXKXyZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3dSH-0004Mb-N7; Mon, 17 Feb 2020 10:16:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dS9-0004M4-OH
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 10:16:39 +0000
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE192208C4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 10:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581934597;
 bh=4cLlQS6dh3TII+e63aZc4SI9thiBfzKMd7Iu5QCGWjs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Eq5UfpApFfSqgahMtWpRHuyClv3jPdyyd6PVRbQT2PcAXEEpHt8JYkGsEBXaLUR3v
 yxJfKOj8zQKAAWslqWAgPnGkbIgTkaVY05SWCFX3Pd+3Z/SEFcQhj2cEaKl35qQJv3
 QGWBAbZxg7TlwdUTdJuvsq13UzOI6Ya/rYQgLfwE=
Received: by mail-wm1-f43.google.com with SMTP id a9so17776095wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 02:16:36 -0800 (PST)
X-Gm-Message-State: APjAAAXqJoQd6wCgh8JYUvEB9bWDbBZVFifoBy/fjn+CXTnU0bQhF0xe
 YnZ6bQaItz3tXUKlR6gslQGw/vAf9zwDqeaQDlmDNA==
X-Google-Smtp-Source: APXvYqzqZNxl118rnsQ1j1OXjhkx9vVcOI+aj/V8YvXdxCexJjSRKnmYAijbWYByC/Tq0yzU4F9Fp8tfyDdGHA9vZD0=
X-Received: by 2002:a1c:b603:: with SMTP id g3mr22636081wmf.133.1581934595070; 
 Mon, 17 Feb 2020 02:16:35 -0800 (PST)
MIME-Version: 1.0
References: <20191218162402.45610-1-steven.price@arm.com>
 <20191218162402.45610-22-steven.price@arm.com>
 <CAKv+Gu8Hed9jGiqdgaqJ93JhErJA5OfGRpiarU=YKXb6vQUyMQ@mail.gmail.com>
 <ee4f53ec-601b-3698-1479-f7aeaada38ad@arm.com>
In-Reply-To: <ee4f53ec-601b-3698-1479-f7aeaada38ad@arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 17 Feb 2020 11:16:23 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu-iLwjZvavQud9o+5nTB0ORAAn32qKMScxYHJ64k7HExA@mail.gmail.com>
Message-ID: <CAKv+Gu-iLwjZvavQud9o+5nTB0ORAAn32qKMScxYHJ64k7HExA@mail.gmail.com>
Subject: Re: [PATCH v17 21/23] arm64: mm: Convert mm/dump.c to use
 walk_page_range()
To: Steven Price <steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_021638_169284_A481F4F3 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <James.Morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 at 11:01, Steven Price <steven.price@arm.com> wrote:
>
> On 16/02/2020 16:25, Ard Biesheuvel wrote:
> > On Wed, 18 Dec 2019 at 17:25, Steven Price <steven.price@arm.com> wrote:
> >>
> >> Now walk_page_range() can walk kernel page tables, we can switch the
> >> arm64 ptdump code over to using it, simplifying the code.
> >>
> >> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> >> Signed-off-by: Steven Price <steven.price@arm.com>
> >
> > I did not realize this at the time, but this patch removes the ability
> > to dump the EFI page tables on 32-bit ARM. Was that intentional?
>
> No that wasn't intentional, but I can't instantly see how this change
> affects 32-bit ARM.
>
> <snip (files in arch/arm64)>
> >> diff --git a/drivers/firmware/efi/arm-runtime.c b/drivers/firmware/efi/arm-runtime.c
> >> index 899b803842bb..9dda2602c862 100644
> >> --- a/drivers/firmware/efi/arm-runtime.c
> >> +++ b/drivers/firmware/efi/arm-runtime.c
> >> @@ -27,7 +27,7 @@
> >>
> >>  extern u64 efi_system_table;
> >>
> >> -#ifdef CONFIG_ARM64_PTDUMP_DEBUGFS
> >> +#if defined(CONFIG_PTDUMP_DEBUGFS) && defined(CONFIG_ARM64)
>
> The previous define was *ARM64* so should never have been true when
> building for arm. The new condition should be equivalent (arm64 &&
> ptdump enabled).
>
> Am I missing something?
>

Not at all, I just got confused.

IIRC we did have support for dumping the EFI pages tables on 32-bit
ARM at *some* point, but it obviously wasn't your patch that removed
it.

Apologies for the noise.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
