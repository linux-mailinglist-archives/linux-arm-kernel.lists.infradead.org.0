Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26FE34776
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPJ6V5Qeb2YIXZ7N52ldZv4ij9dsVa1KOvmQE5rSLMI=; b=NKXBeT9j80xr3S
	/9wYe4i5IS570UNw3D7GNEnwv1pbtwZ2mVnuNMFzburDHhTPtxUQXVIYtk/5qP9ZgTttUybNj3j/3
	v3kYeA53564ZDgvcK0W4rxaOxiTxkktDxWRD+KM8YKumlm/xld9iVfE6UJ/y6zAAvuRYDDqgOtFTd
	RliGCE1ITgtJ20Oo32dZUH6Ar3EeRl/3nbSBLBS6gfDIskzNYkmd+7PzYxxA26aptH5vefjLxGAUo
	ojugmiVYfbKxNUlHMCqgBhsgVTjysu/0qywC2JmHRgoyPjKQk4lLZcVgSFz10EZBlZ4nted3C8MuM
	L66NKtHGAGUUESZ1U7tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY94G-00049p-5s; Tue, 04 Jun 2019 13:01:32 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY947-000481-TB
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 13:01:26 +0000
Received: by mail-qt1-x843.google.com with SMTP id d23so13592670qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 06:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JItJDb1hCe3PXbM5CDMidmb7xSzfnBwGQJaUWCGmqxo=;
 b=Y9IUVHZGqeU0HCJUHFiWu6pa9R1aTN7kulR/wN6MqxmpXYzOa0TiCqua5LiZ4hEwEz
 ev2Sj3xyes2144LjjuyOexSqeqSKWlt3WMK6cSGZPGD8HxNjX+Gtgr2VjY2syXYm24yv
 pNhVi+7lsS8CkaA6Ue3uMV/Vv79a8q0c7Bx2ZKe0zrhNUNw+dh1aaTgg9nVjtt2pPP8J
 SZ03QiW2V5U/FSunjX+Di4eqhrmayy4bvd9nBAYIILU6Dw1ILE8JJqykvWw/nYFx66N/
 59mJF6D5Asld4XY9Y52qmbOm2vh94w3cf4KMuiWIudfxgAyJaXKJUsg9rxdyQ86kjKce
 JSuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JItJDb1hCe3PXbM5CDMidmb7xSzfnBwGQJaUWCGmqxo=;
 b=BXYMBp5V6bG3UxS2vlaPkijcEx9PuvRgL2C4IazgXGeNsk92gUvq/L7NkjGGmqag7n
 MBi5fI1BV/LAphkmDgwvzR3DZUU7G4pjxPX/tt5J/1RACazUDzQPKcJfJbfrAMAj1Swa
 u5dvHyV7uykprViakrFCbuI+Vt66FiNPcypkKDruOiMCgUHTm9pqSkEtDxq0OPSD0d1P
 t2RKOWbh2CHPqqKdLM8EqwaQqT3ZjYgIMlisAWygA/U/0kHofVxKv5CDaWxUpDWiXISS
 3iTKFl+ur9jKB3bsLXgh9X+/6ON/2wdUS++PCF/hX9DGZzpOZeLCs8OlxRuldZjxU4w+
 mPrQ==
X-Gm-Message-State: APjAAAXOw6zdVB0C6DjtieATFF0mCbPd3QwBbLgy3oiZBeFcUusRnOCa
 HAYbhOFfBhgX3OTpj3UNeHrCLg==
X-Google-Smtp-Source: APXvYqzAG+mI1DPv2W+11pupnoGWNGycht5g/63Z32TRX8qAmaRQdBGY8y7MK6ZcgElkWgzp2dHDfw==
X-Received: by 2002:ac8:7c7:: with SMTP id m7mr25441539qth.28.1559653280236;
 Tue, 04 Jun 2019 06:01:20 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id a7sm7509135qke.88.2019.06.04.06.01.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 06:01:19 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hY942-0004Su-LN; Tue, 04 Jun 2019 10:01:18 -0300
Date: Tue, 4 Jun 2019 10:01:18 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2] uaccess: add noop untagged_addr definition
Message-ID: <20190604130118.GC15385@ziepe.ca>
References: <c8311f9b759e254308a8e57d9f6eb17728a686a7.1559649879.git.andreyknvl@google.com>
 <20190604122841.GB15385@ziepe.ca>
 <20190604123759.GA6610@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604123759.GA6610@arrakis.emea.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_060123_937644_EEED6A6A 
X-CRM114-Status: GOOD (  29.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, sparclinux@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Dmitry Vyukov <dvyukov@google.com>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 01:38:00PM +0100, Catalin Marinas wrote:
> On Tue, Jun 04, 2019 at 09:28:41AM -0300, Jason Gunthorpe wrote:
> > On Tue, Jun 04, 2019 at 02:04:47PM +0200, Andrey Konovalov wrote:
> > > Architectures that support memory tagging have a need to perform untagging
> > > (stripping the tag) in various parts of the kernel. This patch adds an
> > > untagged_addr() macro, which is defined as noop for architectures that do
> > > not support memory tagging. The oncoming patch series will define it at
> > > least for sparc64 and arm64.
> > > 
> > > Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> > > Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
> > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > >  include/linux/mm.h | 11 +++++++++++
> > >  1 file changed, 11 insertions(+)
> > > 
> > > diff --git a/include/linux/mm.h b/include/linux/mm.h
> > > index 0e8834ac32b7..dd0b5f4e1e45 100644
> > > +++ b/include/linux/mm.h
> > > @@ -99,6 +99,17 @@ extern int mmap_rnd_compat_bits __read_mostly;
> > >  #include <asm/pgtable.h>
> > >  #include <asm/processor.h>
> > >  
> > > +/*
> > > + * Architectures that support memory tagging (assigning tags to memory regions,
> > > + * embedding these tags into addresses that point to these memory regions, and
> > > + * checking that the memory and the pointer tags match on memory accesses)
> > > + * redefine this macro to strip tags from pointers.
> > > + * It's defined as noop for arcitectures that don't support memory tagging.
> > > + */
> > > +#ifndef untagged_addr
> > > +#define untagged_addr(addr) (addr)
> > 
> > Can you please make this a static inline instead of this macro? Then
> > we can actually know what the input/output types are supposed to be.
> > 
> > Is it
> > 
> > static inline unsigned long untagged_addr(void __user *ptr) {return ptr;}
> > 
> > ?
> > 
> > Which would sort of make sense to me.
> 
> This macro is used mostly on unsigned long since for __user ptr we can
> deference them in the kernel even if tagged. 

What does that mean? Do all kernel apis that accept 'void __user *'
already untag due to other patches?

> So if we are to use types here, I'd rather have:
> 
> static inline unsigned long untagged_addr(unsigned long addr);
> 
> In addition I'd like to avoid the explicit casting to (unsigned long)
> and use some userptr_to_ulong() or something. 

Personally I think it is a very bad habit we have in the kernel to
store a 'void __user *' as a u64 or an unsigned long all over the
place.

AFAIK a u64 passed in from userpace is supposed to be converted to the
'void __user *' via u64_to_user_ptr() before it can be used. (IIRC
Some arches require this..)

So, if I have a ioctl that takes a user pointer as a u64, and I want
to pass it to find_vma, then I do need to write:

    find_vma(untagged_addr(u64_to_user_ptr(ioctl_u64)))

Right?

So, IMHO, not accepting a 'void __user *' is just encouraging drivers
to skip the needed u64_to_user_ptr() step.

At the very worst we should have at least a 2nd function, but, IMHO,
it would be better to do a bit more work on adding missing
u64_to_user_ptr() calls to get the 'void __user *', and maybe a bit
more work on swapping unsigned long for 'void __user *' in various
places.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
