Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C59143BC3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 20:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fW8E6tVK2YfEdEhe/KZiP9LAGY2DhZDrGcnzcHqweSY=; b=ky/xlex7ytQHSv
	QgNEp42mWCB1l9Z3PszNvo1QOKWDjmWbXUaeoRHMjzmsc78eXN+GBneds1NvpfVYbu5x+gLl4H8ns
	1X24/C/5kyNMn5KXARMijIOx40u5jLxUykXn62flB5sRUyRR93YJ8QvTp5Ot8fCWm4vajNiFEiliJ
	NbvxaseqbgVTq8p8vZamv4VjKjnhr47oIvy56OmNM+fWkk93/N+mBGxAEYEeRrbaptvZPMvJqE/zh
	4Qn15DH/ho2LQr+i0WvaHSydWr1vyMSkoyuf8inyPPtgM9kM2e0k457VduaOX7VmoYRocNhnKPVjJ
	K6K0x/0A1du4uKgi0p5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haPRv-0004bJ-86; Mon, 10 Jun 2019 18:55:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haPQI-0003Ut-94
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 18:53:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 822ED337;
 Mon, 10 Jun 2019 11:53:37 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 631F83F246;
 Mon, 10 Jun 2019 11:53:32 -0700 (PDT)
Date: Mon, 10 Jun 2019 19:53:30 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v16 02/16] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
Message-ID: <20190610185329.xhjawzfy4uddrkrj@mbp>
References: <cover.1559580831.git.andreyknvl@google.com>
 <4327b260fb17c4776a1e3c844f388e4948cfb747.1559580831.git.andreyknvl@google.com>
 <20190610175326.GC25803@arrakis.emea.arm.com>
 <201906101106.3CA50745E3@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201906101106.3CA50745E3@keescook>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_115338_448349_8A20309E 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 11:07:03AM -0700, Kees Cook wrote:
> On Mon, Jun 10, 2019 at 06:53:27PM +0100, Catalin Marinas wrote:
> > On Mon, Jun 03, 2019 at 06:55:04PM +0200, Andrey Konovalov wrote:
> > > diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> > > index e5d5f31c6d36..9164ecb5feca 100644
> > > --- a/arch/arm64/include/asm/uaccess.h
> > > +++ b/arch/arm64/include/asm/uaccess.h
> > > @@ -94,7 +94,7 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
> > >  	return ret;
> > >  }
> > >  
> > > -#define access_ok(addr, size)	__range_ok(addr, size)
> > > +#define access_ok(addr, size)	__range_ok(untagged_addr(addr), size)
[...]
> > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > index 3767fb21a5b8..fd191c5b92aa 100644
> > --- a/arch/arm64/kernel/process.c
> > +++ b/arch/arm64/kernel/process.c
> > @@ -552,3 +552,18 @@ void arch_setup_new_exec(void)
> >  
> >  	ptrauth_thread_init_user(current);
> >  }
> > +
> > +/*
> > + * Enable the relaxed ABI allowing tagged user addresses into the kernel.
> > + */
> > +int untagged_uaddr_set_mode(unsigned long arg)
> > +{
> > +	if (is_compat_task())
> > +		return -ENOTSUPP;
> > +	if (arg)
> > +		return -EINVAL;
> > +
> > +	set_thread_flag(TIF_UNTAGGED_UADDR);
> > +
> > +	return 0;
> > +}
> 
> I think this should be paired with a flag clearing in copy_thread(),
> yes? (i.e. each binary needs to opt in)

It indeed needs clearing though not in copy_thread() as that's used on
clone/fork but rather in flush_thread(), called on the execve() path.

And a note to myself: I think PR_UNTAGGED_ADDR (not UADDR) looks better
in a uapi header, the user doesn't differentiate between uaddr and
kaddr.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
