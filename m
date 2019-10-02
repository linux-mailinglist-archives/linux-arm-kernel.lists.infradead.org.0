Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90496C46F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 07:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qnS2SJ+Hzs9ZufQc5XOcYQXefD704GtfWZ0RGWjYro=; b=Rh3drGDXa/iLuD
	r7LJmKngcH2BJuXNfCHaVxDPPMooLG4LPFvdrHKHzXo4eWNyMqL8OSs5clNjfYHD6kHjT7d+Yzxsc
	c5SA4tXXDNSQU5pwW1ohPkLWarPu5M5n813MFgAJpy8ikjNxSe8MfIPpgeTu/Dr8OoV0Nx6Rkb88t
	D0sAhT9EbWxtoKmUlUOBJiaYyiGLq3ycoRvYpIlF5wV4j4XqRqWlgUDAX+3fIqW+HDzIz5AOzM65/
	FwAZMcG+2WxcZVnCghWqCKABwaz6BQVIdsksHerg1dorEUnJTSBoJyeB1NtfTbs08/FEAd1TcqH2f
	+Kp4Zt731DZdAfZxJ7Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFX9j-0000O5-Gs; Wed, 02 Oct 2019 05:26:31 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFX9a-0000NW-GK
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 05:26:24 +0000
Received: by mail-ed1-x541.google.com with SMTP id r4so14040703edy.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 22:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ht5W39F73OZwYjr1QLPkqRTtjn0zYK8mGDiJXCTjAlQ=;
 b=HY4Kgjra1y5r/BLGDdRwRt0LVOQfQN7mE0ZX1xPteQgWm23AJKW4lSMw9UxCI+29nE
 j1ycltij3ElQkF+De830aSaDo7u3QjbXKewfYdC1Ve+r4WYDXl0GLloAmdbaD9I7Lg30
 h/0zQ7jqZPIu1FwyNoGFeSkQyprdtRdWK2m4M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ht5W39F73OZwYjr1QLPkqRTtjn0zYK8mGDiJXCTjAlQ=;
 b=mCDt03d3Z8wVDCITg8tW01qwDgJHR/Xg6EKzE/Fqwx+jyuWatyXg8O5kSFDwhxN12q
 BT0FYUjhXU5+eR6rpTWbN/Qut3+R3yF6hRGN0ARtcXVufnuQ+Y7eqE5EKlITIy2jlum1
 iL+vctQuI2KxljIEoXtj9UVCpyNDTKKp5bp5TLAPKhWpELE3InTYDdwaNW56SLpfarC+
 BzcwHY3l1tDM7U2xC+kBBS7KoYMaq7vgWULJ1oHaRT2OJ4aHKSM8a5CtyllnxU+/FI2V
 j+JOoz9OOKWYi+JDpgmXYtbfGXS/BElk5YXLzxrH1ARnfdOQ2DBAnjIbG+emabDq0MMs
 56rw==
X-Gm-Message-State: APjAAAX6PzfzpEPyOtZkUnc1oWkZ/bJSVUdFR1nIa8A48eyd3SmbT4Lw
 enJnhcu4Hl0jMPKr51+EJTwQqJ9BfylTxQ==
X-Google-Smtp-Source: APXvYqzT0ijjanFefPS8zQ1kK4PzY60ioSE8MivYSg84xPeBb+WcS5qtMHG0vpzu+SaolUMO7kqj6w==
X-Received: by 2002:a05:6402:794:: with SMTP id
 d20mr1905989edy.20.1569993980665; 
 Tue, 01 Oct 2019 22:26:20 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com.
 [209.85.128.47])
 by smtp.gmail.com with ESMTPSA id s24sm3587684edx.5.2019.10.01.22.26.20
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Oct 2019 22:26:20 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id v17so5440816wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 22:26:20 -0700 (PDT)
X-Received: by 2002:a1c:a516:: with SMTP id o22mr1287949wme.116.1569993537804; 
 Tue, 01 Oct 2019 22:18:57 -0700 (PDT)
MIME-Version: 1.0
References: <1569822142-14303-1-git-send-email-yong.wu@mediatek.com>
In-Reply-To: <1569822142-14303-1-git-send-email-yong.wu@mediatek.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 2 Oct 2019 14:18:46 +0900
X-Gmail-Original-Message-ID: <CAAFQd5C+FM3n-Ww4C+qDD1QZOGZrqEYw4EvYECfadGcDH0fmew@mail.gmail.com>
Message-ID: <CAAFQd5C+FM3n-Ww4C+qDD1QZOGZrqEYw4EvYECfadGcDH0fmew@mail.gmail.com>
Subject: Re: [PATCH] iommu/mediatek: Move the tlb_sync into tlb_flush
To: Yong Wu <yong.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_222622_547784_32384DEB 
X-CRM114-Status: GOOD (  35.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream <srv_heupstream@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, chao.hao@mediatek.com,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yong,

On Mon, Sep 30, 2019 at 2:42 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> The commit 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API
> TLB sync") help move the tlb_sync of unmap from v7s into the iommu
> framework. It helps add a new function "mtk_iommu_iotlb_sync", But it
> lacked the dom->pgtlock, then it will cause the variable
> "tlb_flush_active" may be changed unexpectedly, we could see this warning
> log randomly:
>

Thanks for the patch! Please see my comments inline.

> mtk-iommu 10205000.iommu: Partial TLB flush timed out, falling back to
> full flush
>
> To fix this issue, we can add dom->pgtlock in the "mtk_iommu_iotlb_sync".
> And when checking this issue, we find that __arm_v7s_unmap call
> io_pgtable_tlb_add_flush consecutively when it is supersection/largepage,
> this also is potential unsafe for us. There is no tlb flush queue in the
> MediaTek M4U HW. The HW always expect the tlb_flush/tlb_sync one by one.
> If v7s don't always gurarantee the sequence, Thus, In this patch I move
> the tlb_sync into tlb_flush(also rename the function deleting "_nosync").
> and we don't care if it is leaf, rearrange the callback functions. Also,
> the tlb flush/sync was already finished in v7s, then iotlb_sync and
> iotlb_sync_all is unnecessary.

Performance-wise, we could do much better. Instead of synchronously
syncing at the end of mtk_iommu_tlb_add_flush(), we could sync at the
beginning, if there was any previous flush still pending. We would
also have to keep the .iotlb_sync() callback, to take care of waiting
for the last flush. That would allow better pipelining with CPU in
cases like this:

for (all pages in range) {
   change page table();
   flush();
}

"change page table()" could execute while the IOMMU is flushing the
previous change.

>
> Besides, there are two minor changes:
> a) Use writel for the register F_MMU_INV_RANGE which is for triggering the
> HW work. We expect all the setting(iova_start/iova_end...) have already
> been finished before F_MMU_INV_RANGE.
> b) Reduce the tlb timeout value from 100000us to 1000us. the original value
> is so long that affect the multimedia performance.

By definition, timeout is something that should not normally happen.
Too long timeout affecting multimedia performance would suggest that
the timeout was actually happening, which is the core problem, not the
length of the timeout. Could you provide more details on this?

>
> Fixes: 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API TLB sync")
> Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
> This patch looks break the logic for tlb_flush and tlb_sync. I'm not
> sure if it
> is reasonable. If someone has concern, I could change:
> a) Add dom->pgtlock in the mtk_iommu_iotlb_sync
> b) Add a io_pgtable_tlb_sync in [1].
>
> [1]
> https://elixir.bootlin.com/linux/v5.3-rc1/source/drivers/iommu/io-pgtable-arm-v7s.c#L655
>
> This patch rebase on Joerg's mediatek-smmu-merge branch which has mt8183
> and Will's "Rework IOMMU API to allow for batching of invalidation".
> ---
>  drivers/iommu/mtk_iommu.c | 74 ++++++++++++-----------------------------------
>  drivers/iommu/mtk_iommu.h |  1 -
>  2 files changed, 19 insertions(+), 56 deletions(-)
>
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 6066272..e13cc56 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -173,11 +173,12 @@ static void mtk_iommu_tlb_flush_all(void *cookie)
>         }
>  }
>
> -static void mtk_iommu_tlb_add_flush_nosync(unsigned long iova, size_t size,
> -                                          size_t granule, bool leaf,
> -                                          void *cookie)
> +static void mtk_iommu_tlb_add_flush(unsigned long iova, size_t size,
> +                                   size_t granule, void *cookie)
>  {
>         struct mtk_iommu_data *data = cookie;
> +       int ret;
> +       u32 tmp;
>
>         for_each_m4u(data) {
>                 writel_relaxed(F_INVLD_EN1 | F_INVLD_EN0,
> @@ -186,25 +187,15 @@ static void mtk_iommu_tlb_add_flush_nosync(unsigned long iova, size_t size,
>                 writel_relaxed(iova, data->base + REG_MMU_INVLD_START_A);
>                 writel_relaxed(iova + size - 1,
>                                data->base + REG_MMU_INVLD_END_A);
> -               writel_relaxed(F_MMU_INV_RANGE,
> -                              data->base + REG_MMU_INVALIDATE);
> -               data->tlb_flush_active = true;
> -       }
> -}
> -
> -static void mtk_iommu_tlb_sync(void *cookie)
> -{
> -       struct mtk_iommu_data *data = cookie;
> -       int ret;
> -       u32 tmp;
> -
> -       for_each_m4u(data) {
> -               /* Avoid timing out if there's nothing to wait for */
> -               if (!data->tlb_flush_active)
> -                       return;
> +               writel(F_MMU_INV_RANGE, data->base + REG_MMU_INVALIDATE);
>
> +               /*
> +                * There is no tlb flush queue in the HW, the HW always expect
> +                * tlb_flush and tlb_sync one by one. Here tlb_sync always
> +                * follows tlb_flush to avoid break the sequence.
> +                */
>                 ret = readl_poll_timeout_atomic(data->base + REG_MMU_CPE_DONE,
> -                                               tmp, tmp != 0, 10, 100000);
> +                                               tmp, tmp != 0, 10, 1000);
>                 if (ret) {
>                         dev_warn(data->dev,
>                                  "Partial TLB flush timed out, falling back to full flush\n");
> @@ -212,36 +203,21 @@ static void mtk_iommu_tlb_sync(void *cookie)
>                 }
>                 /* Clear the CPE status */
>                 writel_relaxed(0, data->base + REG_MMU_CPE_DONE);
> -               data->tlb_flush_active = false;
>         }
>  }
>
> -static void mtk_iommu_tlb_flush_walk(unsigned long iova, size_t size,
> -                                    size_t granule, void *cookie)
> +static void mtk_iommu_tlb_flush_page(struct iommu_iotlb_gather *gather,
> +                                    unsigned long iova, size_t granule,
> +                                    void *cookie)
>  {
> -       mtk_iommu_tlb_add_flush_nosync(iova, size, granule, false, cookie);
> -       mtk_iommu_tlb_sync(cookie);
> -}
> -
> -static void mtk_iommu_tlb_flush_leaf(unsigned long iova, size_t size,
> -                                    size_t granule, void *cookie)
> -{
> -       mtk_iommu_tlb_add_flush_nosync(iova, size, granule, true, cookie);
> -       mtk_iommu_tlb_sync(cookie);
> -}
> -
> -static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
> -                                           unsigned long iova, size_t granule,
> -                                           void *cookie)
> -{
> -       mtk_iommu_tlb_add_flush_nosync(iova, granule, granule, true, cookie);
> +       mtk_iommu_tlb_add_flush(iova, granule, granule, cookie);
>  }
>
>  static const struct iommu_flush_ops mtk_iommu_flush_ops = {
>         .tlb_flush_all = mtk_iommu_tlb_flush_all,
> -       .tlb_flush_walk = mtk_iommu_tlb_flush_walk,
> -       .tlb_flush_leaf = mtk_iommu_tlb_flush_leaf,
> -       .tlb_add_page = mtk_iommu_tlb_flush_page_nosync,
> +       .tlb_flush_walk = mtk_iommu_tlb_add_flush,
> +       .tlb_flush_leaf = mtk_iommu_tlb_add_flush,
> +       .tlb_add_page = mtk_iommu_tlb_flush_page,
>  };
>
>  static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
> @@ -445,17 +421,6 @@ static size_t mtk_iommu_unmap(struct iommu_domain *domain,
>         return unmapsz;
>  }
>
> -static void mtk_iommu_flush_iotlb_all(struct iommu_domain *domain)
> -{
> -       mtk_iommu_tlb_sync(mtk_iommu_get_m4u_data());
> -}
> -
> -static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
> -                                struct iommu_iotlb_gather *gather)
> -{
> -       mtk_iommu_tlb_sync(mtk_iommu_get_m4u_data());
> -}
> -
>  static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
>                                           dma_addr_t iova)
>  {
> @@ -574,8 +539,7 @@ static int mtk_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
>         .detach_dev     = mtk_iommu_detach_device,
>         .map            = mtk_iommu_map,
>         .unmap          = mtk_iommu_unmap,
> -       .flush_iotlb_all = mtk_iommu_flush_iotlb_all,

Don't we still want .flush_iotlb_all()? I think it should be more
efficient in some cases than doing a big number of single flushes.
(That said, the previous implementation didn't do any flush at all. It
just waited for previously queued flushes to happen. Was that
expected?)

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
