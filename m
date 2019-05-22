Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C60B526590
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 16:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktWGJ79wpwHyhn5DMLjDBn0TJREygMIAe1xM1AuSv9Q=; b=dKz/Mrb/wFGf/m
	ObbxPozcH0aF/ZVrfII0sMqL1MsxFKu3Vl+ev72UjmSgham0V5oJEat5qOe2taySmx4Q8j5bJfBUu
	AlsOLPTzIUi6QxrOvT1fJnsw+o/y0/snO5wVbPDgelFvQUZ9XEJFkkUkI3ttOmwvwS3pVzD/Dshkm
	MxDmlY0+7qGm8N0SuzEWyjIYAaUTHjTgOXCDdNqP6mdbc9vquGgWoZ9fYMvycclWjTUlGmwU2zxbs
	Jdg+0Sfs0Cu30oWEPBBI874Uq6U4nR594MT8nPIjbwskPHMAjMYhkzTAi579TGcjPnNmjy98Bbrpx
	ETr1rbbK9iu0iyObJ11w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTS3B-0003nF-W8; Wed, 22 May 2019 14:17:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTS36-0003mz-Oj
 for linux-arm-kernel@bombadil.infradead.org; Wed, 22 May 2019 14:16:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=73SuxDyavW+O+7Kca2sOpTx56wKPB8p3EZy2+QcZCD4=; b=C8Wpn9lOpcoIfvY5uNHghhzV5
 vvKsFW+E82f4s3kBW/kLcmg57UyFDp/hAWpN9ZEV7KnQqE5G6K0HKZ8gMbShQjIGGOoq9SFlUgNJi
 H2KJKMuZMrNwqS+3Cn8ieR/1M2tEIbRGJF53E6iRWqTvCZbd7WkcwLz6U6hOjeGbNgngatj1RxDKu
 TwUiQLUwCtiMlAs84+dCjrVjzFyOMo0Wqd56COdJ8xQG18xtJ+tWU/sp1271YkPI3s+834hMNsOBX
 4DHpkwDa9sqg5lZ89T8gTMUZabGbNEW+MTPWf1onKcT6dSyjIcxrpixLEZmM+rYvmZPi9sU+mKHOS
 EuNJBHjZA==;
Received: from foss.arm.com ([217.140.101.70])
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTS33-0006JV-5f
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 14:16:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E408280D;
 Wed, 22 May 2019 07:16:20 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 57C233F718; Wed, 22 May 2019 07:16:15 -0700 (PDT)
Date: Wed, 22 May 2019 15:16:12 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v15 17/17] selftests, arm64: add a selftest for passing
 tagged pointers to kernel
Message-ID: <20190522141612.GA28122@arrakis.emea.arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <e31d9364eb0c2eba8ce246a558422e811d82d21b.1557160186.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e31d9364eb0c2eba8ce246a558422e811d82d21b.1557160186.git.andreyknvl@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_151653_372498_ACFC2DC4 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 linux-kselftest@vger.kernel.org, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 06:31:03PM +0200, Andrey Konovalov wrote:
> This patch is a part of a series that extends arm64 kernel ABI to allow to
> pass tagged user pointers (with the top byte set to something else other
> than 0x00) as syscall arguments.
> 
> This patch adds a simple test, that calls the uname syscall with a
> tagged user pointer as an argument. Without the kernel accepting tagged
> user pointers the test fails with EFAULT.

That's probably sufficient for a simple example. Something we could add
to Documentation maybe is a small library that can be LD_PRELOAD'ed so
that you can run a lot more tests like LTP.

We could add this to selftests but I think it's too glibc specific.

--------------------8<------------------------------------
#include <stdlib.h>

#define TAG_SHIFT	(56)
#define TAG_MASK	(0xffUL << TAG_SHIFT)

void *__libc_malloc(size_t size);
void __libc_free(void *ptr);
void *__libc_realloc(void *ptr, size_t size);
void *__libc_calloc(size_t nmemb, size_t size);

static void *tag_ptr(void *ptr)
{
	unsigned long tag = rand() & 0xff;
	if (!ptr)
		return ptr;
	return (void *)((unsigned long)ptr | (tag << TAG_SHIFT));
}

static void *untag_ptr(void *ptr)
{
	return (void *)((unsigned long)ptr & ~TAG_MASK);
}

void *malloc(size_t size)
{
	return tag_ptr(__libc_malloc(size));
}

void free(void *ptr)
{
	__libc_free(untag_ptr(ptr));
}

void *realloc(void *ptr, size_t size)
{
	return tag_ptr(__libc_realloc(untag_ptr(ptr), size));
}

void *calloc(size_t nmemb, size_t size)
{
	return tag_ptr(__libc_calloc(nmemb, size));
}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
