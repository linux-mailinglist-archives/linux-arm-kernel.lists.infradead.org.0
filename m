Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4F927AF7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruWlK2PL4mgaUcPTuFul5iVZMdwG+xjvQB9v42j08Xc=; b=Fq7+ruvmvGmDh8
	HgDtj+Bf3aTq1x4lMDUnAj8I7CkWanAyAwcS3Fh/scjHR+S7Xive5fjnLej4SIhJQ2DQWShxVqF3S
	aOScBeCWL2Dz+/aC6giBL1O1zD85qwfH3cBeqW6jdYjDS5sHAlwMPag5UE7GtoFtHnMaNyK6PRZc2
	j1R7oK9dfgPr+SH5j0CA1sQF5KVMvk+o4x0Sw9Ll64TSmBsbP6qXqZdpwW5aRjrBC66FqAGy+TSBa
	EIprKuHCP7KS/oyjMMfhAdz5Byeu+u9ZJslv2rLQTWGYcthpBGoBGslXUihLwkF2gJ/ZRsvvVRAb6
	5rdnA0n+v8C1PGchmZpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTlBo-00073r-UX; Thu, 23 May 2019 10:43:12 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTlBi-00073W-0X
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:43:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84A77341;
 Thu, 23 May 2019 03:43:05 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C9A023F718;
 Thu, 23 May 2019 03:42:59 -0700 (PDT)
Date: Thu, 23 May 2019 11:42:57 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190523104256.GX28398@e103592.cambridge.arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <20190521184856.GC2922@ziepe.ca>
 <20190522134925.GV28398@e103592.cambridge.arm.com>
 <20190523002052.GF15389@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523002052.GF15389@ziepe.ca>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_034306_069063_58A178A5 
X-CRM114-Status: GOOD (  28.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 linux-kselftest@vger.kernel.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 09:20:52PM -0300, Jason Gunthorpe wrote:
> On Wed, May 22, 2019 at 02:49:28PM +0100, Dave Martin wrote:
> > On Tue, May 21, 2019 at 03:48:56PM -0300, Jason Gunthorpe wrote:
> > > On Fri, May 17, 2019 at 03:49:31PM +0100, Catalin Marinas wrote:
> > > 
> > > > The tagged pointers (whether hwasan or MTE) should ideally be a
> > > > transparent feature for the application writer but I don't think we can
> > > > solve it entirely and make it seamless for the multitude of ioctls().
> > > > I'd say you only opt in to such feature if you know what you are doing
> > > > and the user code takes care of specific cases like ioctl(), hence the
> > > > prctl() proposal even for the hwasan.
> > > 
> > > I'm not sure such a dire view is warrented.. 
> > > 
> > > The ioctl situation is not so bad, other than a few special cases,
> > > most drivers just take a 'void __user *' and pass it as an argument to
> > > some function that accepts a 'void __user *'. sparse et al verify
> > > this. 
> > > 
> > > As long as the core functions do the right thing the drivers will be
> > > OK.
> > > 
> > > The only place things get dicy is if someone casts to unsigned long
> > > (ie for vma work) but I think that reflects that our driver facing
> > > APIs for VMAs are compatible with static analysis (ie I have no
> > > earthly idea why get_user_pages() accepts an unsigned long), not that
> > > this is too hard.
> > 
> > If multiple people will care about this, perhaps we should try to
> > annotate types more explicitly in SYSCALL_DEFINEx() and ABI data
> > structures.
> > 
> > For example, we could have a couple of mutually exclusive modifiers
> > 
> > T __object *
> > T __vaddr * (or U __vaddr)
> > 
> > In the first case the pointer points to an object (in the C sense)
> > that the call may dereference but not use for any other purpose.
> 
> How would you use these two differently?
> 
> So far the kernel has worked that __user should tag any pointer that
> is from userspace and then you can't do anything with it until you
> transform it into a kernel something

Ultimately it would be good to disallow casting __object pointers execpt
to compatible __object pointer types, and to make get_user etc. demand
__object.

__vaddr pointers / addresses would be freely castable, but not to
__object and so would not be dereferenceable even indirectly.

Or that's the general idea.  Figuring out a sane set of rules that we
could actually check / enforce would require a bit of work.

(Whether the __vaddr base type is a pointer or an integer type is
probably moot, due to the restrictions we would place on the use of
these anyway.)

> > to tell static analysers the real type of pointers smuggled through
> > UAPI disguised as other types (*cough* KVM, etc.)
> 
> Yes, that would help alot, we often have to pass pointers through a
> u64 in the uAPI, and there is no static checker support to make sure
> they are run through the u64_to_user_ptr() helper.

Agreed.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
