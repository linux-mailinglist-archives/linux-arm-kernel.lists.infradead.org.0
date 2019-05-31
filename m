Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABA231012
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0W/ro0I4kbGlBHznUW17aHFKhnlOHWXMD+7H+33Yty4=; b=TjsvkvuS42Xv/N
	eWaVAEqZYHu73nw02ZvBT5zhphCR1olnHhyz3zLkFIXPE/nAKBUHQZPWTb53QJHtCqOjBtpptnO1w
	gh9eQ6tM2KaXAMZiuK5D8Im3oOgNL9FfdX5PYTj9rcGCSs46xCLrznpqgqKceYChDAUWHRgKKHUVv
	2PTKbqGEhmqXkwZ7fCLnojHt78cOuKVBH3YuZUKlA5XBKXNDUIP5SXF/vdmk+1ZVaNSxh9Wi7pC8J
	5/40ETMNrU/IJU0LhGZhHgD3ZNL4B6xPLQMDhI8EEYM9UMZ3SiUXmkTSqFodgo7X4eEEAVV7gfLSO
	ICET/glFZ5HeV3FMviLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWiQA-0002OL-Kf; Fri, 31 May 2019 14:22:14 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWiQ2-0002Mf-LA
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 14:22:07 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so4144684pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 07:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lqGZhr1OXDcqw01dRW7YMwNNKArDZmNdR/78N+BPrn4=;
 b=ZKOkIMzc1OQGbUNPHq03h99fyCedWbnebo6E2bMji4A+DRTaVEdXjsJpjrPcnu5SSA
 zIZPDWUgCW5bi+5Hm5xJN08EHp1zrtJRB8hJr+lkARmCPVryFs490LA/D4jT6SugJib6
 WuyNVM4Q2N7HAjjpa7DOBEdYU4LyBiJDJK5zMqDY/W6JkYNX16roPrVOH81h+nxoiBDb
 7B2l5NwJlc5O9XzC5yHflmTOv3KCBSLqmkKFOBx9Ekz6rnZxWiAE8V0PArN5B+OlAW0s
 TvC0lLDPHMJfSpKtEQaVcV+QmrjEmlTv3Oh20DkNgRQ4hUDHUKfXsDqAzpdAzgsjCOV+
 IttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lqGZhr1OXDcqw01dRW7YMwNNKArDZmNdR/78N+BPrn4=;
 b=hBRQ66PZUmXR4X7tcBlMDEiZBwCxHxoX3jMu5C6OaHdkGxskMIv/vbdRSzcJTXZBR9
 O0Fd7wj1DElihKzwJ2Jv7tGYsyI5YzJVdiumu3V5+QWttADGf9YYHwD6gI5P2VzTXqLX
 O/TwYByhkuPYvBNja7BfJ5KgrDPBOjhGqdEoBLdlGki+plyvG0LJ1E3Enkwkzi2Hkdcz
 sdlmY/lWbDQ/Sj3VpzjONRtwWzNgPw9BNH7ama+QRx7YzIhkw+VUIli5gXzucKd9Id8U
 CrMKcd9FPqVy5wL0rare6L5HTdVFxtdqJ6wpY4CK35js1FBQ/PTJyUycjFygyHGymXUa
 ufAw==
X-Gm-Message-State: APjAAAVB5IWIHqbO6HcGmiauhyJHSxvWVoIb6fHpTODCreztv98+0jTt
 u/DohJSS+T34nlcp0RiM+hWGFEslEOFGL1H6gHEsWg==
X-Google-Smtp-Source: APXvYqyJDYvC63I4W5Lhta3XMIDWbZrlVf994VbGlX5pPuRIANXUx7mxbvFt5+YOh/Wqr0oXVm0H7EASqzCT8eMwsG4=
X-Received: by 2002:a65:64d9:: with SMTP id t25mr9532741pgv.130.1559312519598; 
 Fri, 31 May 2019 07:21:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
 <e31d9364eb0c2eba8ce246a558422e811d82d21b.1557160186.git.andreyknvl@google.com>
 <20190522141612.GA28122@arrakis.emea.arm.com>
In-Reply-To: <20190522141612.GA28122@arrakis.emea.arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Fri, 31 May 2019 16:21:48 +0200
Message-ID: <CAAeHK+wUerHQOV2PuaTwTxcCucZHZodLwg48228SB+ymxEqT2A@mail.gmail.com>
Subject: Re: [PATCH v15 17/17] selftests, arm64: add a selftest for passing
 tagged pointers to kernel
To: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_072206_696285_F8878A3A 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, Jacob Bramley <Jacob.Bramley@arm.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, Dmitry Vyukov <dvyukov@google.com>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 4:16 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, May 06, 2019 at 06:31:03PM +0200, Andrey Konovalov wrote:
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> >
> > This patch adds a simple test, that calls the uname syscall with a
> > tagged user pointer as an argument. Without the kernel accepting tagged
> > user pointers the test fails with EFAULT.
>
> That's probably sufficient for a simple example. Something we could add
> to Documentation maybe is a small library that can be LD_PRELOAD'ed so
> that you can run a lot more tests like LTP.

Should I add this into this series, or should this go into Vincenzo's patchset?

>
> We could add this to selftests but I think it's too glibc specific.
>
> --------------------8<------------------------------------
> #include <stdlib.h>
>
> #define TAG_SHIFT       (56)
> #define TAG_MASK        (0xffUL << TAG_SHIFT)
>
> void *__libc_malloc(size_t size);
> void __libc_free(void *ptr);
> void *__libc_realloc(void *ptr, size_t size);
> void *__libc_calloc(size_t nmemb, size_t size);
>
> static void *tag_ptr(void *ptr)
> {
>         unsigned long tag = rand() & 0xff;
>         if (!ptr)
>                 return ptr;
>         return (void *)((unsigned long)ptr | (tag << TAG_SHIFT));
> }
>
> static void *untag_ptr(void *ptr)
> {
>         return (void *)((unsigned long)ptr & ~TAG_MASK);
> }
>
> void *malloc(size_t size)
> {
>         return tag_ptr(__libc_malloc(size));
> }
>
> void free(void *ptr)
> {
>         __libc_free(untag_ptr(ptr));
> }
>
> void *realloc(void *ptr, size_t size)
> {
>         return tag_ptr(__libc_realloc(untag_ptr(ptr), size));
> }
>
> void *calloc(size_t nmemb, size_t size)
> {
>         return tag_ptr(__libc_calloc(nmemb, size));
> }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
