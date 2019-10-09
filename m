Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF97D1236
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlpBS4lfk7MKin4Tp77C6MizB8I2wwqIDt7+m6J3gCI=; b=hMv1NlZjAb50ut
	Ju5l/u1tAz7szLuPAHAGnmokTOCg+z15LQZHY+rTo5fz9v3WfOD0mPHsR9BIuXePN2N8f7zBDCAwr
	COKGgsUmADYL4Ibd1bPqeoVX7oK9pbHeU++PugAo/BNoe5gzCr4afrqhN1i/gmC2rNL4ROMHcDfYC
	clc6W3J6bHEy928+qvkBmf3aieXhAQyzMMOqPj47rnaXYW8ZQwSRDik1EI/8Yf2HqKcLVzPY2H/MM
	xq7zIq3GbHFq1fGGn0ANRwc43u4E3rS8ulBcJDCZf1DC5dLO4AWs8y7bHcK6lxUarg4hSuLzwZXNA
	FUjGt06mr0Rw5laDgPTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDfG-0003sA-AG; Wed, 09 Oct 2019 15:14:10 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDf5-0003rR-Tt
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:14:02 +0000
Received: by mail-ed1-x542.google.com with SMTP id r4so2378343edy.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 08:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4dVOT/zwpO/iVlKT34i6lLt8un5vjwtrCBmaYK+BcfI=;
 b=ifDZMaGbzZ5zS8oLCskFTxsRDRy0vcmM6IDugkmp5x82gdumWWGf6drBBSbP2zXj1X
 keZnbytz7jKV9Bc7Px0ObzoVxcVnraGGKYROf0qAcLNCkS7CrVkbKcLA6O1VtlsCeaNB
 k//x58dAPebQUDYg1zX1dmiP1ryeq3hqRi88I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4dVOT/zwpO/iVlKT34i6lLt8un5vjwtrCBmaYK+BcfI=;
 b=M3dDBh2VtkXVJXWI9biOhPuxRvdzm6GQE1Ooe+ZKmbHfYOKFMWhIIOpC59TwcYAg3m
 PmaN9/F/HsTGxyBv/6RfgbEE4VXQf9SlB9kfKs0d3D4IbI2iE+Si1XeCYFbZft2SvBTA
 zzz2d1qexUFPSk80Bu+XFDeyGE1J/7i7ubzm6FiJk85jfriWbd32SBi+JPzeWSV0uPvy
 3WmdRBajTfOzQ3da0rFfzeoBCP4EWJmQVv9NYarKnNnBrJlgpI4T+CodcMgsEGeEquEr
 kJ+ygxAbp781ddlSS6Lqx1jc07BbxjoUI0ftpsY2WxRdHq3t4GhPZD5kKOiqiGTjytDH
 ufLw==
X-Gm-Message-State: APjAAAUln22y1cZpb7aIdzNnesQybMjLK1ahGprlIYGAZ6HzKXmzM8G8
 ayayqI0LWPsp+6ugZYYYXTNNg2vzK57ZkA==
X-Google-Smtp-Source: APXvYqzQhNClo8xpb91MPDF18vqdIVzvX63QwpkZOI2K/R/dnE/iyFhUT43QUWk5UnYtpfqoFiSWOQ==
X-Received: by 2002:a17:906:3615:: with SMTP id
 q21mr3266292ejb.152.1570634036895; 
 Wed, 09 Oct 2019 08:13:56 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id e39sm397450edb.69.2019.10.09.08.13.56
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Oct 2019 08:13:56 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id 7so3068413wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 08:13:56 -0700 (PDT)
X-Received: by 2002:a1c:dcd6:: with SMTP id t205mr3094517wmg.10.1570633728709; 
 Wed, 09 Oct 2019 08:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <1569822142-14303-1-git-send-email-yong.wu@mediatek.com>
 <CAAFQd5C+FM3n-Ww4C+qDD1QZOGZrqEYw4EvYECfadGcDH0fmew@mail.gmail.com>
 <1570522162.19130.38.camel@mhfsdcap03>
 <CAAFQd5C3U7pZo4SSUJ52Q7E+0FaUoORQFbQC5RhCHBhi=NFYTw@mail.gmail.com>
 <1570628307.19130.53.camel@mhfsdcap03>
In-Reply-To: <1570628307.19130.53.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 10 Oct 2019 00:08:37 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Aj-DDofzQ1vyKT9OcXpf-Udfx4zeWtVGcQf7S-o+mStQ@mail.gmail.com>
Message-ID: <CAAFQd5Aj-DDofzQ1vyKT9OcXpf-Udfx4zeWtVGcQf7S-o+mStQ@mail.gmail.com>
Subject: Re: [PATCH] iommu/mediatek: Move the tlb_sync into tlb_flush
To: Yong Wu <yong.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_081359_988651_20572DCF 
X-CRM114-Status: GOOD (  38.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, Oct 9, 2019 at 10:38 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> On Wed, 2019-10-09 at 16:56 +0900, Tomasz Figa wrote:
> > On Tue, Oct 8, 2019 at 5:09 PM Yong Wu <yong.wu@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > Sorry for reply late.
> > >
> > > On Wed, 2019-10-02 at 14:18 +0900, Tomasz Figa wrote:
> > > > Hi Yong,
> > > >
> > > > On Mon, Sep 30, 2019 at 2:42 PM Yong Wu <yong.wu@mediatek.com> wrote:
> > > > >
> > > > > The commit 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API
> > > > > TLB sync") help move the tlb_sync of unmap from v7s into the iommu
> > > > > framework. It helps add a new function "mtk_iommu_iotlb_sync", But it
> > > > > lacked the dom->pgtlock, then it will cause the variable
> > > > > "tlb_flush_active" may be changed unexpectedly, we could see this warning
> > > > > log randomly:
> > > > >
> > > >
> > > > Thanks for the patch! Please see my comments inline.
> > > >
> > > > > mtk-iommu 10205000.iommu: Partial TLB flush timed out, falling back to
> > > > > full flush
> > > > >
> > > > > To fix this issue, we can add dom->pgtlock in the "mtk_iommu_iotlb_sync".
> > > > > And when checking this issue, we find that __arm_v7s_unmap call
> > > > > io_pgtable_tlb_add_flush consecutively when it is supersection/largepage,
> > > > > this also is potential unsafe for us. There is no tlb flush queue in the
> > > > > MediaTek M4U HW. The HW always expect the tlb_flush/tlb_sync one by one.
> > > > > If v7s don't always gurarantee the sequence, Thus, In this patch I move
> > > > > the tlb_sync into tlb_flush(also rename the function deleting "_nosync").
> > > > > and we don't care if it is leaf, rearrange the callback functions. Also,
> > > > > the tlb flush/sync was already finished in v7s, then iotlb_sync and
> > > > > iotlb_sync_all is unnecessary.
> > > >
> > > > Performance-wise, we could do much better. Instead of synchronously
> > > > syncing at the end of mtk_iommu_tlb_add_flush(), we could sync at the
> > > > beginning, if there was any previous flush still pending. We would
> > > > also have to keep the .iotlb_sync() callback, to take care of waiting
> > > > for the last flush. That would allow better pipelining with CPU in
> > > > cases like this:
> > > >
> > > > for (all pages in range) {
> > > >    change page table();
> > > >    flush();
> > > > }
> > > >
> > > > "change page table()" could execute while the IOMMU is flushing the
> > > > previous change.
> > >
> > > Do you mean adding a new tlb_sync before tlb_flush_no_sync, like below:
> > >
> > > mtk_iommu_tlb_add_flush_nosync {
> > >    + mtk_iommu_tlb_sync();
> > >    tlb_flush_no_sync();
> > >    data->tlb_flush_active = true;
> > > }
> > >
> > > mtk_iommu_tlb_sync {
> > >         if (!data->tlb_flush_active)
> > >                 return;
> > >         tlb_sync();
> > >         data->tlb_flush_active = false;
> > > }
> > >
> > > This way look improve the flow, But adjusting the flow is not the root
> > > cause of this issue. the problem is "data->tlb_flush_active" may be
> > > changed from mtk_iommu_iotlb_sync which don't have a dom->pglock.
> >
> > That was not the only problem with existing code. Existing code also
> > assumed that add_flush and sync always go in pairs, but that's not
> > true.
>
> Yes. Thus I put the tlb_flush always followed by tlb_sync to make sure
> they always go in pairs.
>
> >
> > My suggestion is to fix the locking in the driver and keep the sync
> > deferred as much as possible, so that performance is not degraded. I
>
> I really didn't get this timeout warning log in previous kernel(Many
> tlb_flush followed by one tlb_sync),

Locking issues typically lead to timing problems (race conditions), so
it might just be that the sequence or timing of calls changed between
kernel versions, enough to trigger the issue.

> But deferring the sync is not
> suggested by our DE, thus I still would like to fix the sequence in this
> patch with putting them together.
>

What's the reason it's not suggested? From my understanding, there
shouldn't be any dependency on hardware design here, it's just a
simple software optimization - we can pipeline other CPU operations
while the IOMMU is flushing the TLB.

Basically, right now:

CPU writes page tables 1
IOMMU flushes 1 | CPU busy waits
CPU writes page tables 2
IOMMU flushes 2 | CPU busy waits
CPU writes page tables 3
IOMMU flushes 3 | CPU busy waits
...

With my suggestion that could be:

CPU writes page tables 1 I
IOMMU flushes 1 | CPU writes page tables 2
IOMMU flushes 1 | CPU busy waits less time
IOMMU flushes 2 | CPU writes page tables 3
IOMMU flushes 2 | CPU busy waits less time
IOMMU flushes 3 | CPU busy waits

It reduces the time the CPU spends on busy waiting rather than doing
something useful. It also reduces the total time of maps and unmaps.

Actually, we can optimize even more. Please consider the case below.

CPU writes PTE for IOVA 0x1000.
IOMMU flushes 0x1000 | CPU busy waits
CPU writes PTE for IOVA 0x2000.
IOMMU flushes 0x2000 | CPU busy waits
CPU writes PTE for IOVA 0x3000.
IOMMU flushes 0x3000 | CPU busy waits
CPU writes PTE for IOVA 0x8000.
IOMMU flushes 0x8000 | CPU busy waits

However, depending on the way the hardware implements TLB flush, the
optimal sequence of operations could be:

CPU writes PTE for IOVA 0x1000.
CPU writes PTE for IOVA 0x2000.
CPU writes PTE for IOVA 0x3000.
IOMMU flushes 0x1000-0x3000 | CPU writes PTE for IOVA 0x8000.
IOMMU flushes 0x1000-0x3000 | CPU busy waits remaining flush time.
IOMMU flushes 0x8000 | CPU busy waits.

What's the algorithmic complexity of the TLB flush operation on
MediaTek IOMMU? If N is the number of pages to flush, is it O(N), O(1)
or something else?

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
