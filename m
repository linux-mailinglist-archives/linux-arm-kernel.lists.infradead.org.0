Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85DB85469
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 22:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/UKx/O/JQ5WFeN4gAtgr+u78MwBnyCC7VDeTXb1c48Y=; b=kz016pLIyurn8B
	WrayfD9tsyjIk7Dp9dqq0pocw6razHUFaqp4kUBAb4uIGCqkU23QD1+eUSWEuqW9ygOPD8ENJrFNF
	1Xy5JUtdwVjASQvMxEZhygYF5HvmsDsFjmwzdt3mKZ3iYY5bTqazNn5E9rmMLN1qUhI1xdysLb9Ut
	vEeyFuJPG5nbBkO4h07x/InA2T6OFK5Y+ASMvLekZGjR3ZypFYuXQm7QDdD5YeXCBp95GV9Fi0W92
	lm5UXS5YmsS/+W5i3vE1Q5Le5PB+j5r1e/BSsO7YojwGzVVtm1FEu02a3cpyvwVdFQvhnZ9vwm0nt
	IEmQF6mrB1RGd8/3CGXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvSMw-0006NN-Ms; Wed, 07 Aug 2019 20:17:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvSMm-0006N6-GE
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 20:17:01 +0000
Received: from akpm3.svl.corp.google.com (unknown [104.133.8.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EAC82199C;
 Wed,  7 Aug 2019 20:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565209019;
 bh=9jrCLwX3LNqceRPrIp1jyjebmoHx3o9gZO1ZatQ4skM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sEN1paERUMluEqczWXfNlPMKbSdmYQaq4T7rTni0CxSxEnrjjHKQ765sgQWu8A8s0
 QKx24YVdqUtvGPcVbdAJxRFJMxYJyV6Ah+0UPLJtP5uaP8snDxXhkkuBKnRyRw75Aq
 iNGGe6IBLOd1dbfd+9eQdQKz0RAljH5GsNO+CLMo=
Date: Wed, 7 Aug 2019 13:16:58 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v10 20/22] x86: mm: Convert dump_pagetables to use
 walk_page_range
Message-Id: <20190807131658.08793793a97fa4310af4f495@linux-foundation.org>
In-Reply-To: <066fa4ca-5a46-ba86-607f-9c3e16f79cde@arm.com>
References: <20190731154603.41797-1-steven.price@arm.com>
 <20190731154603.41797-21-steven.price@arm.com>
 <20190806165823.3f735b45a7c4163aca20a767@linux-foundation.org>
 <066fa4ca-5a46-ba86-607f-9c3e16f79cde@arm.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_131700_566535_A3215AD6 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?ISO-8859-1?Q?J=E9r=F4me?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019 13:58:21 +0100 Steven Price <steven.price@arm.com> wrote:

> > ./arch/x86/include/asm/pgtable_64_types.h:56:22: error: initializer element is not constant
> >  #define PTRS_PER_PGD 512
> >                       ^
> 
> This is very unhelpful of GCC - it's actually PTRS_PER_P4D which isn't
> constant!

Well.  You had every right to assume that an all-caps macro is a
compile-time constant.

We are innocent victims of Kirill's c65e774fb3f6af2 ("x86/mm: Make
PGDIR_SHIFT and PTRS_PER_P4D variable") which lazily converted these
macros into runtime-only, under some Kconfig settings.  It should have
changed those macros into static inlined lower-case functions.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
