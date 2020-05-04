Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D94E1C481B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 22:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6yA31ZyovjFktVm6ICZLVD2abBQHI77qFPnnKtENf8=; b=k5EU5kiycBREVX
	NhmxjIx08e2XduqIbsMB0yLESfWj8oBTmjY6UpGMRbgROkcOs1ujw1VwycYQc4fqF0coTwVeGSTL6
	ErpbPJhVppWK0FoVfdNLrcrjVof5eblWeeHqmpRXXvPFNvOlXam65y23AMsk3uVQ+w507QTyEXe0Y
	/bmUMS/Ox1HidYNvMLWtTPPWWZ/R80+tesY4R0zwD8kd7Lgl2c4+Pief+Fp+M40/2NK1VsbB+D//g
	cbVGwdWLpTVmBlA+cO5SNnnOTYH64UX8WZMxYRFyaqCxKqDZhFA04wX9NHaG/MI2lRn5j8F9McKrc
	KqS5RdRPEZrQP9AJ5dPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVhe6-0004Du-Lx; Mon, 04 May 2020 20:24:58 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVhdy-0004Ar-BZ; Mon, 04 May 2020 20:24:52 +0000
IronPort-SDR: RFkBD9CBR8Gk3rVy5l3GBCTlYIW1a3PuaJA+H52zFn8PHgtJSwPpr8V7iRDwHcIGPKoFyvwelw
 AUjcNSa0GSGw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 13:24:48 -0700
IronPort-SDR: jvk/9LK3jvTn1Qq14j4FHplMGgwv+dnrHzjS/mtGNF2eRzMSGVrAXlLOm08LzOj5NFrVCDa+Km
 pqhqLWUVCpSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="295610884"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2020 13:24:47 -0700
Date: Mon, 4 May 2020 13:24:47 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH V2 11/11] drm: Remove drm specific kmap_atomic code
Message-ID: <20200504202446.GA985727@iweiny-DESK2.sc.intel.com>
References: <20200504010912.982044-1-ira.weiny@intel.com>
 <20200504010912.982044-12-ira.weiny@intel.com>
 <CAKMK7uF4fd3upBYSQEzs==Nx7osn=wZPnxoKLKm9HTxwU_sZ+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uF4fd3upBYSQEzs==Nx7osn=wZPnxoKLKm9HTxwU_sZ+w@mail.gmail.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_132450_444441_15A2D868 
X-CRM114-Status: GOOD (  23.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Huang Rui <ray.huang@amd.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Helge Deller <deller@gmx.de>, X86 ML <x86@kernel.org>,
 linux-csky@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 arcml <linux-snps-arc@lists.infradead.org>, linux-xtensa@linux-xtensa.org,
 Dan Williams <dan.j.williams@intel.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 01:18:51PM +0200, Daniel Vetter wrote:
> On Mon, May 4, 2020 at 3:09 AM <ira.weiny@intel.com> wrote:
> >
> > From: Ira Weiny <ira.weiny@intel.com>
> >
> > kmap_atomic_prot() is now exported by all architectures.  Use this
> > function rather than open coding a driver specific kmap_atomic.
> >
> > Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
> > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > Signed-off-by: Ira Weiny <ira.weiny@intel.com>
> =

> I'm assuming this lands through some other tree or a topic branch or what=
ever.

Yes I think Andrew queued this up before and so I hope he will continue to =
do
so with the subsequent versions.

Andrew, LMK if this is an issue.

Thanks,
Ira

> =

> Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> =

> Cheers, Daniel
> =

> > ---
> >  drivers/gpu/drm/ttm/ttm_bo_util.c    | 56 ++--------------------------
> >  drivers/gpu/drm/vmwgfx/vmwgfx_blit.c | 16 ++++----
> >  include/drm/ttm/ttm_bo_api.h         |  4 --
> >  3 files changed, 12 insertions(+), 64 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/tt=
m_bo_util.c
> > index 52d2b71f1588..f09b096ba4fd 100644
> > --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > @@ -257,54 +257,6 @@ static int ttm_copy_io_page(void *dst, void *src, =
unsigned long page)
> >         return 0;
> >  }
> >
> > -#ifdef CONFIG_X86
> > -#define __ttm_kmap_atomic_prot(__page, __prot) kmap_atomic_prot(__page=
, __prot)
> > -#define __ttm_kunmap_atomic(__addr) kunmap_atomic(__addr)
> > -#else
> > -#define __ttm_kmap_atomic_prot(__page, __prot) vmap(&__page, 1, 0,  __=
prot)
> > -#define __ttm_kunmap_atomic(__addr) vunmap(__addr)
> > -#endif
> > -
> > -
> > -/**
> > - * ttm_kmap_atomic_prot - Efficient kernel map of a single page with
> > - * specified page protection.
> > - *
> > - * @page: The page to map.
> > - * @prot: The page protection.
> > - *
> > - * This function maps a TTM page using the kmap_atomic api if availabl=
e,
> > - * otherwise falls back to vmap. The user must make sure that the
> > - * specified page does not have an aliased mapping with a different ca=
ching
> > - * policy unless the architecture explicitly allows it. Also mapping a=
nd
> > - * unmapping using this api must be correctly nested. Unmapping should
> > - * occur in the reverse order of mapping.
> > - */
> > -void *ttm_kmap_atomic_prot(struct page *page, pgprot_t prot)
> > -{
> > -       if (pgprot_val(prot) =3D=3D pgprot_val(PAGE_KERNEL))
> > -               return kmap_atomic(page);
> > -       else
> > -               return __ttm_kmap_atomic_prot(page, prot);
> > -}
> > -EXPORT_SYMBOL(ttm_kmap_atomic_prot);
> > -
> > -/**
> > - * ttm_kunmap_atomic_prot - Unmap a page that was mapped using
> > - * ttm_kmap_atomic_prot.
> > - *
> > - * @addr: The virtual address from the map.
> > - * @prot: The page protection.
> > - */
> > -void ttm_kunmap_atomic_prot(void *addr, pgprot_t prot)
> > -{
> > -       if (pgprot_val(prot) =3D=3D pgprot_val(PAGE_KERNEL))
> > -               kunmap_atomic(addr);
> > -       else
> > -               __ttm_kunmap_atomic(addr);
> > -}
> > -EXPORT_SYMBOL(ttm_kunmap_atomic_prot);
> > -
> >  static int ttm_copy_io_ttm_page(struct ttm_tt *ttm, void *src,
> >                                 unsigned long page,
> >                                 pgprot_t prot)
> > @@ -316,13 +268,13 @@ static int ttm_copy_io_ttm_page(struct ttm_tt *tt=
m, void *src,
> >                 return -ENOMEM;
> >
> >         src =3D (void *)((unsigned long)src + (page << PAGE_SHIFT));
> > -       dst =3D ttm_kmap_atomic_prot(d, prot);
> > +       dst =3D kmap_atomic_prot(d, prot);
> >         if (!dst)
> >                 return -ENOMEM;
> >
> >         memcpy_fromio(dst, src, PAGE_SIZE);
> >
> > -       ttm_kunmap_atomic_prot(dst, prot);
> > +       kunmap_atomic(dst);
> >
> >         return 0;
> >  }
> > @@ -338,13 +290,13 @@ static int ttm_copy_ttm_io_page(struct ttm_tt *tt=
m, void *dst,
> >                 return -ENOMEM;
> >
> >         dst =3D (void *)((unsigned long)dst + (page << PAGE_SHIFT));
> > -       src =3D ttm_kmap_atomic_prot(s, prot);
> > +       src =3D kmap_atomic_prot(s, prot);
> >         if (!src)
> >                 return -ENOMEM;
> >
> >         memcpy_toio(dst, src, PAGE_SIZE);
> >
> > -       ttm_kunmap_atomic_prot(src, prot);
> > +       kunmap_atomic(src);
> >
> >         return 0;
> >  }
> > diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_blit.c b/drivers/gpu/drm/vmw=
gfx/vmwgfx_blit.c
> > index bb46ca0c458f..94d456a1d1a9 100644
> > --- a/drivers/gpu/drm/vmwgfx/vmwgfx_blit.c
> > +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_blit.c
> > @@ -374,12 +374,12 @@ static int vmw_bo_cpu_blit_line(struct vmw_bo_bli=
t_line_data *d,
> >                 copy_size =3D min_t(u32, copy_size, PAGE_SIZE - src_pag=
e_offset);
> >
> >                 if (unmap_src) {
> > -                       ttm_kunmap_atomic_prot(d->src_addr, d->src_prot=
);
> > +                       kunmap_atomic(d->src_addr);
> >                         d->src_addr =3D NULL;
> >                 }
> >
> >                 if (unmap_dst) {
> > -                       ttm_kunmap_atomic_prot(d->dst_addr, d->dst_prot=
);
> > +                       kunmap_atomic(d->dst_addr);
> >                         d->dst_addr =3D NULL;
> >                 }
> >
> > @@ -388,8 +388,8 @@ static int vmw_bo_cpu_blit_line(struct vmw_bo_blit_=
line_data *d,
> >                                 return -EINVAL;
> >
> >                         d->dst_addr =3D
> > -                               ttm_kmap_atomic_prot(d->dst_pages[dst_p=
age],
> > -                                                    d->dst_prot);
> > +                               kmap_atomic_prot(d->dst_pages[dst_page],
> > +                                                d->dst_prot);
> >                         if (!d->dst_addr)
> >                                 return -ENOMEM;
> >
> > @@ -401,8 +401,8 @@ static int vmw_bo_cpu_blit_line(struct vmw_bo_blit_=
line_data *d,
> >                                 return -EINVAL;
> >
> >                         d->src_addr =3D
> > -                               ttm_kmap_atomic_prot(d->src_pages[src_p=
age],
> > -                                                    d->src_prot);
> > +                               kmap_atomic_prot(d->src_pages[src_page],
> > +                                                d->src_prot);
> >                         if (!d->src_addr)
> >                                 return -ENOMEM;
> >
> > @@ -499,9 +499,9 @@ int vmw_bo_cpu_blit(struct ttm_buffer_object *dst,
> >         }
> >  out:
> >         if (d.src_addr)
> > -               ttm_kunmap_atomic_prot(d.src_addr, d.src_prot);
> > +               kunmap_atomic(d.src_addr);
> >         if (d.dst_addr)
> > -               ttm_kunmap_atomic_prot(d.dst_addr, d.dst_prot);
> > +               kunmap_atomic(d.dst_addr);
> >
> >         return ret;
> >  }
> > diff --git a/include/drm/ttm/ttm_bo_api.h b/include/drm/ttm/ttm_bo_api.h
> > index 0a9d042e075a..de1ccdcd5703 100644
> > --- a/include/drm/ttm/ttm_bo_api.h
> > +++ b/include/drm/ttm/ttm_bo_api.h
> > @@ -668,10 +668,6 @@ int ttm_bo_mmap_obj(struct vm_area_struct *vma, st=
ruct ttm_buffer_object *bo);
> >  int ttm_bo_mmap(struct file *filp, struct vm_area_struct *vma,
> >                 struct ttm_bo_device *bdev);
> >
> > -void *ttm_kmap_atomic_prot(struct page *page, pgprot_t prot);
> > -
> > -void ttm_kunmap_atomic_prot(void *addr, pgprot_t prot);
> > -
> >  /**
> >   * ttm_bo_io
> >   *
> > --
> > 2.25.1
> >
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> =

> =

> =

> -- =

> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
