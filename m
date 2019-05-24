Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7839429A02
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 16:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3hM/mWrJYZ2df19+Kl1l9ClM7bHin0asNOKmg++LYE=; b=li6qYqH4dFwPII
	Xl1YjQ7HeKu/7qmZ2MmFGO1p7223wficiZFBg6PWymw3bHPgWXGvqApQWN401Fw5Sf+iE5w6bzpl4
	AbORWuo4FNuH9lABYIdqUcjyD9XIxLKoEpflv3jBWZYnzD8PBi1nh0LP1FYjIRJo9Q3VBZxIpQl30
	Hpo2tz77xZexbzLHfkdpoz2Y0vSeWAipt0tWIoY5H7nL0mTt8VrI7a8GZdlxcPdOXfS8lnS2upqrP
	zVGL8lTdMWoDoPxHQse67TCFA3OyScSlv1xHI+S20SOIkNeXqpL3SHayRf9E4LAXPX32ZqIodyejT
	7tFlzC+zsqDbsHCD2aIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUB7D-0005kB-S5; Fri, 24 May 2019 14:24:11 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUB76-0005jQ-Db
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 14:24:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 268E8A78;
 Fri, 24 May 2019 07:24:03 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 65CAA3F575;
 Fri, 24 May 2019 07:23:57 -0700 (PDT)
Date: Fri, 24 May 2019 15:23:54 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190524142352.GY28398@e103592.cambridge.arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <20190521184856.GC2922@ziepe.ca>
 <20190522134925.GV28398@e103592.cambridge.arm.com>
 <20190523002052.GF15389@ziepe.ca>
 <20190523104256.GX28398@e103592.cambridge.arm.com>
 <20190523165708.q6ru7xg45aqfjzpr@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523165708.q6ru7xg45aqfjzpr@mbp>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_072404_469327_67B6506D 
X-CRM114-Status: GOOD (  29.00  )
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
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Lee Smith <Lee.Smith@arm.com>, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-arm-kernel@lists.infradead.org,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 05:57:09PM +0100, Catalin Marinas wrote:
> On Thu, May 23, 2019 at 11:42:57AM +0100, Dave P Martin wrote:
> > On Wed, May 22, 2019 at 09:20:52PM -0300, Jason Gunthorpe wrote:
> > > On Wed, May 22, 2019 at 02:49:28PM +0100, Dave Martin wrote:
> > > > If multiple people will care about this, perhaps we should try to
> > > > annotate types more explicitly in SYSCALL_DEFINEx() and ABI data
> > > > structures.
> > > > 
> > > > For example, we could have a couple of mutually exclusive modifiers
> > > > 
> > > > T __object *
> > > > T __vaddr * (or U __vaddr)
> > > > 
> > > > In the first case the pointer points to an object (in the C sense)
> > > > that the call may dereference but not use for any other purpose.
> > > 
> > > How would you use these two differently?
> > > 
> > > So far the kernel has worked that __user should tag any pointer that
> > > is from userspace and then you can't do anything with it until you
> > > transform it into a kernel something
> > 
> > Ultimately it would be good to disallow casting __object pointers execpt
> > to compatible __object pointer types, and to make get_user etc. demand
> > __object.
> > 
> > __vaddr pointers / addresses would be freely castable, but not to
> > __object and so would not be dereferenceable even indirectly.
> 
> I think it gets too complicated and there are ambiguous cases that we
> may not be able to distinguish. For example copy_from_user() may be used
> to copy a user data structure into the kernel, hence __object would
> work, while the same function may be used to copy opaque data to a file,
> so __vaddr may be a better option (unless I misunderstood your
> proposal).

Can you illustrate?  I'm not sure of your point here.

> We currently have T __user * and I think it's a good starting point. The
> prior attempt [1] was shut down because it was just hiding the cast
> using __force. We'd need to work through those cases again and rather
> start changing the function prototypes to avoid unnecessary casting in
> the callers (e.g. get_user_pages(void __user *) or come up with a new
> type) while changing the explicit casting to a macro where it needs to
> be obvious that we are converting a user pointer, potentially typed
> (tagged), to an untyped address range. We may need a user_ptr_to_ulong()
> macro or similar (it seems that we have a u64_to_user_ptr, wasn't aware
> of it).
> 
> It may actually not be far from what you suggested but I'd keep the
> current T __user * to denote possible dereference.

This may not have been clear, but __object and __vaddr would be
orthogonal to __user.  Since __object and __vaddr strictly constrain
what can be done with an lvalue, they could be cast on, but not be
cast off without __force.

Syscall arguments and pointer in ioctl structs etc. would typically
be annotated as __object __user * or __vaddr __user *.  Plain old
__user * would work as before, but would be more permissive and give
static analysers less information to go on.

Conversion or use or __object or __vaddr pointers would require specific
APIs in the kernel, so that we can be clear about the semantics.

Doing things this way would allow migration to annotation of most or all
ABI pointers with __object or __vaddr over time, but we wouldn't have to
do it all in one go.  Problem cases (which won't be the majority) could
continue to be plain __user.


This does not magically solve the challenges of MTE, but might provide
tools that are useful to help avoid bitrot and regressions over time.

I agree though that there might be a fair number of of cases that don't
conveniently fall under __object or __vaddr semantics.  It's hard to
know without trying it.

_Most_ syscall arguments seem to be fairly obviously one or another
though, and this approach has some possibility of scaling to ioctls
and other odd interfaces.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
