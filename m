Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411582650A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 15:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mw5zlcwKKEGC6uITNR9CfYVJOlI/Kos7Oj+UhrjtChk=; b=RXQsLyR4Gf5IBw
	i8Zi5RjhY1Fi4bYoOwBowUuclDLygRmTMgzB25klWIInn/Zr8Wcetj0knUILUUh0N06KOcrAdn8Lp
	ZQ/FRAzZh09/dtfSXb+t/2FkC+Y8xaSnm3Q/6pjmvD4dvD7iK4ByHOogLKEZ2+hpIoczk71MCgsxt
	dhmVooExHTK1QBIJFJHRivqjMBaWvVR0mVaNhy0FmQRZMbzL4+xUu6zRG/dCQTC1dI9dNLpA3jiNk
	0ccTU2cKY1Az0cdoDgK2/zB/qX+2LbqjaCMuEzqHz8gZJxIpfHXxRa6dCIsU137Y7IdutWDapDXIm
	Ft9s92yCYhLDPkuapGGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRco-000891-Fe; Wed, 22 May 2019 13:49:46 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRcg-00080A-36
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 13:49:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5198E80D;
 Wed, 22 May 2019 06:49:36 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 94CFA3F575;
 Wed, 22 May 2019 06:49:30 -0700 (PDT)
Date: Wed, 22 May 2019 14:49:28 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190522134925.GV28398@e103592.cambridge.arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <20190521184856.GC2922@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521184856.GC2922@ziepe.ca>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_064938_151079_6D75AF79 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Lee Smith <Lee.Smith@arm.com>, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 03:48:56PM -0300, Jason Gunthorpe wrote:
> On Fri, May 17, 2019 at 03:49:31PM +0100, Catalin Marinas wrote:
> 
> > The tagged pointers (whether hwasan or MTE) should ideally be a
> > transparent feature for the application writer but I don't think we can
> > solve it entirely and make it seamless for the multitude of ioctls().
> > I'd say you only opt in to such feature if you know what you are doing
> > and the user code takes care of specific cases like ioctl(), hence the
> > prctl() proposal even for the hwasan.
> 
> I'm not sure such a dire view is warrented.. 
> 
> The ioctl situation is not so bad, other than a few special cases,
> most drivers just take a 'void __user *' and pass it as an argument to
> some function that accepts a 'void __user *'. sparse et al verify
> this. 
> 
> As long as the core functions do the right thing the drivers will be
> OK.
> 
> The only place things get dicy is if someone casts to unsigned long
> (ie for vma work) but I think that reflects that our driver facing
> APIs for VMAs are compatible with static analysis (ie I have no
> earthly idea why get_user_pages() accepts an unsigned long), not that
> this is too hard.

If multiple people will care about this, perhaps we should try to
annotate types more explicitly in SYSCALL_DEFINEx() and ABI data
structures.

For example, we could have a couple of mutually exclusive modifiers

T __object *
T __vaddr * (or U __vaddr)

In the first case the pointer points to an object (in the C sense)
that the call may dereference but not use for any other purpose.

In the latter case the pointer (or other type) is a virtual address
that the call does not dereference but my do other things with.

Also

U __really(T)

to tell static analysers the real type of pointers smuggled through
UAPI disguised as other types (*cough* KVM, etc.)

We could gradually make sparse more strict about the presence of
annotations and allowed conversions, add get/put_user() variants
that demand explicit annotation, etc.

find_vma() wouldn't work with a __object pointer, for example.  A
get_user_pages_for_dereference() might be needed for __object pointers
(embodying a promise from the caller that only the object will be
dereferenced within the mapped pages).

Thoughts?

This kind of thing would need widespread buy-in in order to be viable.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
