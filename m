Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD7434669
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Ml/Eu6xabNJnjneapk9vSbS11y7B3Yl+wySuOLqsjg=; b=uZx+2QsJC1sy5W
	EoIdvkEzcLVEtz9JEO8IC36ypDB+hdzc32bXBXjgphsLgdJplQfgIyo11in0D1fpeNUumWe37Q1k5
	unEisg/vRlyGjzj896QiOuffpcHyMXNprEJ732Msh9458NlA3zwsRPRoG5K/Us4JU8qC3ckBVK0ID
	4xCj8dYNCmqR1UiKkYEJEe5M9No8+L+WSVEpX4WGwCoEOMN5g5yCkEIhe5RH9YP2R9SiaYiOhhknq
	75uzTFQANVWnfF2qe5ZP0FdI1CsTDAclto2p9DstMHKyPj2Bejp3cTkOLdX7iyFkzC+DS2rHCV370
	flgOLQMU72S7NiB9CACQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8Ol-0006Wz-5v; Tue, 04 Jun 2019 12:18:39 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8Od-0006Wb-Uz
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:18:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id f25so10254799pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 05:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=izP2xVkH+lJ1XiJaz25EL/2sjI5XZqFKPi8rAth3/y8=;
 b=anXrne3zDdmEVildSzDwGKYMdshtpWiEi/bSjfUgHwDoCg62X8GEgJ1oLKPrpJDBTp
 sCO27Nd8vGOH1LG/aPfklMvFylAFcLd0duV9qTE0Uw2bgUkgehc21vjcK8KjtBKBSIeh
 hbrrSVL1q8qPT28KLxALn+5w5v0FjrGnKuEQGLgwne0GhOjJGw91IA05Yw5AYbDH2v2V
 eAfpEy7jnKgsdj8ID/iHcGjtOrlCN+u9PocCqqNSQrn/Xx8uaOQ0ef5ELA37nbSJameE
 4YvdhcrfbGwQSFgLEIgyOhrMQbK4CtUaCUAqm4fpOOKP+JqNZLGloD+rwiN3Vuf1ojqO
 poUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=izP2xVkH+lJ1XiJaz25EL/2sjI5XZqFKPi8rAth3/y8=;
 b=F3VaEwsFH4zS4RmvQ1HPiLOe2AoteuKakQFamfyyLqN3tjMuIMLCpUea8N8jLmzrk0
 DnWrFOw1IYv6eFaWG6jVsw68JG6Xa4SAlWhKS4f8vQmoYh1NV7Tairmh64IGEklj9/CI
 yV7Pu9qrrsESOwHtd9lk26+U0iP0PSwSSF4rwpYGgTulKLuYJFc9U9PNe08PTvzhpkRd
 vTbc7nXwrpHj9rIxxsCephbWt6Otgi7Kehw/ybBkUjwBkdglYQDQmFXLDGK3SCg2BHoS
 m8nsxQ3XN/WnW5sZU+urIUB/1jE+kjevw2BN6JSmr4slXGKDuxd8ZFLRFW+ndvbsScWn
 ggig==
X-Gm-Message-State: APjAAAUjhQ+zO2NliT+sQ1gwmMOuhaTq4NV2mHYDsmgCG8UWgkWSThod
 GiQvzAHJ1DzpV27nosFeSIvCfIA2vRibwBiySkcqKA==
X-Google-Smtp-Source: APXvYqz1BnXRogJ38HsJg+YXXm2v0kW8wf81Q7/M4AVfD5zoRhp7qhUtn8D86raEkRJz58lLKdDFOynhTkL7EDkBRUg=
X-Received: by 2002:a63:1919:: with SMTP id z25mr35448936pgl.440.1559650710127; 
 Tue, 04 Jun 2019 05:18:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
 <c829f93b19ad6af1b13be8935ce29baa8e58518f.1559580831.git.andreyknvl@google.com>
 <20190603174619.GC11474@ziepe.ca>
In-Reply-To: <20190603174619.GC11474@ziepe.ca>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 4 Jun 2019 14:18:19 +0200
Message-ID: <CAAeHK+xy-dx4dLDLLj9dRzRNSVG9H5nDPPnjpYF38qKZNNCh_g@mail.gmail.com>
Subject: Re: [PATCH v16 12/16] IB,
 arm64: untag user pointers in ib_uverbs_(re)reg_mr()
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_051832_022008_2F7BEB88 
X-CRM114-Status: GOOD (  25.28  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Dmitry Vyukov <dvyukov@google.com>,
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
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 7:46 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Mon, Jun 03, 2019 at 06:55:14PM +0200, Andrey Konovalov wrote:
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> >
> > ib_uverbs_(re)reg_mr() use provided user pointers for vma lookups (through
> > e.g. mlx4_get_umem_mr()), which can only by done with untagged pointers.
> >
> > Untag user pointers in these functions.
> >
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> >  drivers/infiniband/core/uverbs_cmd.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/infiniband/core/uverbs_cmd.c b/drivers/infiniband/core/uverbs_cmd.c
> > index 5a3a1780ceea..f88ee733e617 100644
> > +++ b/drivers/infiniband/core/uverbs_cmd.c
> > @@ -709,6 +709,8 @@ static int ib_uverbs_reg_mr(struct uverbs_attr_bundle *attrs)
> >       if (ret)
> >               return ret;
> >
> > +     cmd.start = untagged_addr(cmd.start);
> > +
> >       if ((cmd.start & ~PAGE_MASK) != (cmd.hca_va & ~PAGE_MASK))
> >               return -EINVAL;
>
> I feel like we shouldn't thave to do this here, surely the cmd.start
> should flow unmodified to get_user_pages, and gup should untag it?
>
> ie, this sort of direction for the IB code (this would be a giant
> patch, so I didn't have time to write it all, but I think it is much
> saner):

Hi Jason,

ib_uverbs_reg_mr() passes cmd.start to mlx4_get_umem_mr(), which calls
find_vma(), which only accepts untagged addresses. Could you explain
how your patch helps?

Thanks!

>
> diff --git a/drivers/infiniband/core/umem.c b/drivers/infiniband/core/umem.c
> index 54628ef879f0ce..7b3b736c87c253 100644
> --- a/drivers/infiniband/core/umem.c
> +++ b/drivers/infiniband/core/umem.c
> @@ -193,7 +193,7 @@ EXPORT_SYMBOL(ib_umem_find_best_pgsz);
>   * @access: IB_ACCESS_xxx flags for memory being pinned
>   * @dmasync: flush in-flight DMA when the memory region is written
>   */
> -struct ib_umem *ib_umem_get(struct ib_udata *udata, unsigned long addr,
> +struct ib_umem *ib_umem_get(struct ib_udata *udata, void __user *addr,
>                             size_t size, int access, int dmasync)
>  {
>         struct ib_ucontext *context;
> @@ -201,7 +201,7 @@ struct ib_umem *ib_umem_get(struct ib_udata *udata, unsigned long addr,
>         struct page **page_list;
>         unsigned long lock_limit;
>         unsigned long new_pinned;
> -       unsigned long cur_base;
> +       void __user *cur_base;
>         struct mm_struct *mm;
>         unsigned long npages;
>         int ret;
> diff --git a/drivers/infiniband/core/uverbs_cmd.c b/drivers/infiniband/core/uverbs_cmd.c
> index 5a3a1780ceea4d..94389e7f12371f 100644
> --- a/drivers/infiniband/core/uverbs_cmd.c
> +++ b/drivers/infiniband/core/uverbs_cmd.c
> @@ -735,7 +735,8 @@ static int ib_uverbs_reg_mr(struct uverbs_attr_bundle *attrs)
>                 }
>         }
>
> -       mr = pd->device->ops.reg_user_mr(pd, cmd.start, cmd.length, cmd.hca_va,
> +       mr = pd->device->ops.reg_user_mr(pd, u64_to_user_ptr(cmd.start),
> +                                        cmd.length, cmd.hca_va,
>                                          cmd.access_flags,
>                                          &attrs->driver_udata);
>         if (IS_ERR(mr)) {
> diff --git a/drivers/infiniband/hw/mlx5/mr.c b/drivers/infiniband/hw/mlx5/mr.c
> index 4d033796dcfcc2..bddbb952082fc5 100644
> --- a/drivers/infiniband/hw/mlx5/mr.c
> +++ b/drivers/infiniband/hw/mlx5/mr.c
> @@ -786,7 +786,7 @@ static int mr_cache_max_order(struct mlx5_ib_dev *dev)
>  }
>
>  static int mr_umem_get(struct mlx5_ib_dev *dev, struct ib_udata *udata,
> -                      u64 start, u64 length, int access_flags,
> +                      void __user *start, u64 length, int access_flags,
>                        struct ib_umem **umem, int *npages, int *page_shift,
>                        int *ncont, int *order)
>  {
> @@ -1262,8 +1262,8 @@ struct ib_mr *mlx5_ib_reg_dm_mr(struct ib_pd *pd, struct ib_dm *dm,
>                                  attr->access_flags, mode);
>  }
>
> -struct ib_mr *mlx5_ib_reg_user_mr(struct ib_pd *pd, u64 start, u64 length,
> -                                 u64 virt_addr, int access_flags,
> +struct ib_mr *mlx5_ib_reg_user_mr(struct ib_pd *pd, void __user *start,
> +                                 u64 length, u64 virt_addr, int access_flags,
>                                   struct ib_udata *udata)
>  {
>         struct mlx5_ib_dev *dev = to_mdev(pd->device);
> diff --git a/include/rdma/ib_verbs.h b/include/rdma/ib_verbs.h
> index ec6446864b08e9..b3c8eaaa35c760 100644
> --- a/include/rdma/ib_verbs.h
> +++ b/include/rdma/ib_verbs.h
> @@ -2464,8 +2464,8 @@ struct ib_device_ops {
>         struct ib_mr *(*reg_user_mr)(struct ib_pd *pd, u64 start, u64 length,
>                                      u64 virt_addr, int mr_access_flags,
>                                      struct ib_udata *udata);
> -       int (*rereg_user_mr)(struct ib_mr *mr, int flags, u64 start, u64 length,
> -                            u64 virt_addr, int mr_access_flags,
> +       int (*rereg_user_mr)(struct ib_mr *mr, int flags, void __user *start,
> +                            u64 length, u64 virt_addr, int mr_access_flags,
>                              struct ib_pd *pd, struct ib_udata *udata);
>         int (*dereg_mr)(struct ib_mr *mr, struct ib_udata *udata);
>         struct ib_mr *(*alloc_mr)(struct ib_pd *pd, enum ib_mr_type mr_type,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
