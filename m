Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41224D093D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:09:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+gKmrGBaizl6rxKBNh6UtdI/wTwQLg65QNTXYSrK/M=; b=IcAdMNpRfmS5Qy
	Z7O0w5geqZCIETytRz3CKALg8P2WyenGp+HK8JzVu1y/nnQGL5kSoL0nuD8XBlCRbzC2yssFre0to
	v9T3R+o/MW5mGQnPsENqtLl50jjd3a/InsrqIrab8DDsHfF8kD0cd6yuQ5QD0GZFfFmLqbHgbZf9a
	vPxp9ksfcOYXtkyCJsRmQ9bP6AoowzdsrLL4eeN1dClLt8XnU0bJcENXoiqgOBmMwbNRsy3zivPvc
	DK6Sy9H9RQy2iLGoV9mTKu5sBIs2rkSkFwIJdHT+sH2YdvKt/KCBVbhRTIJKtSWLbNVGoNBSdDFyq
	9a7EKSvu+epy3MLaPljw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI723-0000TZ-EX; Wed, 09 Oct 2019 08:09:15 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6yF-0005gm-IE
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:05:21 +0000
Received: by mail-ed1-x542.google.com with SMTP id v38so1156658edm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 01:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3E0V0aOu3g2aASZWIE15ppPWG2zpJ6BIMHadxXwPGJM=;
 b=Wy+fMCn6bQNsAvH2t7CAUcAbS0cogbGpbonr79/Lnr7QOUcYd/LWBCJdHdu1K1Arbl
 phmWYeGx0sM1IHdel9vQN+wNn7Mo71abv6iR6p7CudVLWdWKI4H06xYrhZNYC8yAziOc
 pRb6FXFj/rsG4B4qjhfvNcor1b2INvR9lRefc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3E0V0aOu3g2aASZWIE15ppPWG2zpJ6BIMHadxXwPGJM=;
 b=A1/oFDr9jduYorOox9p8i2Nn53mXOhV86zzo4JHaAOBOmqM2okJo783mxXe/EseKA+
 Ypy//MlWKsnnM5pfNBIYDswdweTa1QHeWfHRRw3g43sxTI+cI1lA4CWaGyIOiJEhEL3g
 rLmyBEziZFtxBXQRzb34o0Ip7XRNWuCVA0ADbXKRl96svkzS4ev8qOww0lEy8ELV2ybV
 ojU80q6rTWgNZL5W1Ks3AwuVHoqDfGNbAfLddwHwY2x0dnLnZ0f4IZS6yXr0yqMs1hqM
 O0dfLq9W8ym80eOlL1rw24xDVPrdbc0d0uJj+2sGJBy3erZ61YJ0nPsawa+/gzaA0s39
 FQNw==
X-Gm-Message-State: APjAAAWKyTYH09TeQvmj7qTNkLl5JwFYiGHHKQH50tAFSr1fUL9IlHqA
 0/nnMVyW8yTNG5tNPckssxfrUkWF+NwCUQ==
X-Google-Smtp-Source: APXvYqzPZGI/0Vb8ocYsSKP9K1N3pCv03jeTNStoRZaK07pGHt23NLvmqkq/X6sJRDIUogGR+wr2Sg==
X-Received: by 2002:a17:907:39b:: with SMTP id
 ss27mr1513603ejb.151.1570608316993; 
 Wed, 09 Oct 2019 01:05:16 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id d4sm158240ejm.24.2019.10.09.01.05.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Oct 2019 01:05:16 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id 3so1382058wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 01:05:16 -0700 (PDT)
X-Received: by 2002:a1c:a516:: with SMTP id o22mr1631005wme.116.1570607822816; 
 Wed, 09 Oct 2019 00:57:02 -0700 (PDT)
MIME-Version: 1.0
References: <1569822142-14303-1-git-send-email-yong.wu@mediatek.com>
 <CAAFQd5C+FM3n-Ww4C+qDD1QZOGZrqEYw4EvYECfadGcDH0fmew@mail.gmail.com>
 <1570522162.19130.38.camel@mhfsdcap03>
In-Reply-To: <1570522162.19130.38.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 9 Oct 2019 16:56:50 +0900
X-Gmail-Original-Message-ID: <CAAFQd5C3U7pZo4SSUJ52Q7E+0FaUoORQFbQC5RhCHBhi=NFYTw@mail.gmail.com>
Message-ID: <CAAFQd5C3U7pZo4SSUJ52Q7E+0FaUoORQFbQC5RhCHBhi=NFYTw@mail.gmail.com>
Subject: Re: [PATCH] iommu/mediatek: Move the tlb_sync into tlb_flush
To: Yong Wu <yong.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010519_643614_7BB47CE1 
X-CRM114-Status: GOOD (  38.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, Oct 8, 2019 at 5:09 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> Hi Tomasz,
>
> Sorry for reply late.
>
> On Wed, 2019-10-02 at 14:18 +0900, Tomasz Figa wrote:
> > Hi Yong,
> >
> > On Mon, Sep 30, 2019 at 2:42 PM Yong Wu <yong.wu@mediatek.com> wrote:
> > >
> > > The commit 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API
> > > TLB sync") help move the tlb_sync of unmap from v7s into the iommu
> > > framework. It helps add a new function "mtk_iommu_iotlb_sync", But it
> > > lacked the dom->pgtlock, then it will cause the variable
> > > "tlb_flush_active" may be changed unexpectedly, we could see this warning
> > > log randomly:
> > >
> >
> > Thanks for the patch! Please see my comments inline.
> >
> > > mtk-iommu 10205000.iommu: Partial TLB flush timed out, falling back to
> > > full flush
> > >
> > > To fix this issue, we can add dom->pgtlock in the "mtk_iommu_iotlb_sync".
> > > And when checking this issue, we find that __arm_v7s_unmap call
> > > io_pgtable_tlb_add_flush consecutively when it is supersection/largepage,
> > > this also is potential unsafe for us. There is no tlb flush queue in the
> > > MediaTek M4U HW. The HW always expect the tlb_flush/tlb_sync one by one.
> > > If v7s don't always gurarantee the sequence, Thus, In this patch I move
> > > the tlb_sync into tlb_flush(also rename the function deleting "_nosync").
> > > and we don't care if it is leaf, rearrange the callback functions. Also,
> > > the tlb flush/sync was already finished in v7s, then iotlb_sync and
> > > iotlb_sync_all is unnecessary.
> >
> > Performance-wise, we could do much better. Instead of synchronously
> > syncing at the end of mtk_iommu_tlb_add_flush(), we could sync at the
> > beginning, if there was any previous flush still pending. We would
> > also have to keep the .iotlb_sync() callback, to take care of waiting
> > for the last flush. That would allow better pipelining with CPU in
> > cases like this:
> >
> > for (all pages in range) {
> >    change page table();
> >    flush();
> > }
> >
> > "change page table()" could execute while the IOMMU is flushing the
> > previous change.
>
> Do you mean adding a new tlb_sync before tlb_flush_no_sync, like below:
>
> mtk_iommu_tlb_add_flush_nosync {
>    + mtk_iommu_tlb_sync();
>    tlb_flush_no_sync();
>    data->tlb_flush_active = true;
> }
>
> mtk_iommu_tlb_sync {
>         if (!data->tlb_flush_active)
>                 return;
>         tlb_sync();
>         data->tlb_flush_active = false;
> }
>
> This way look improve the flow, But adjusting the flow is not the root
> cause of this issue. the problem is "data->tlb_flush_active" may be
> changed from mtk_iommu_iotlb_sync which don't have a dom->pglock.

That was not the only problem with existing code. Existing code also
assumed that add_flush and sync always go in pairs, but that's not
true.

My suggestion is to fix the locking in the driver and keep the sync
deferred as much as possible, so that performance is not degraded. I
changed my mind, though. I think we would need to make more changes to
the driver to make it implement the flushing efficiently, so let's go
with the current simple approach for now and improve incrementally.

>
> Currently the synchronisation of the tlb_flush/tlb_sync flow are
> controlled by the variable "data->tlb_flush_active".
>
> In this patch putting the tlb_flush/tlb_sync together looks make
> the flow simpler:
> a) Don't need the sensitive variable "tlb_flush_active".
> b) Remove mtk_iommu_iotlb_sync, Don't need add lock in it.
> c) Simplify the tlb_flush_walk/tlb_flush_leaf.
> is it ok?
>

Okay, let's do so as a first step to fix the issue. Then we can
optimize in follow up patches.

> >
> > >
> > > Besides, there are two minor changes:
> > > a) Use writel for the register F_MMU_INV_RANGE which is for triggering the
> > > HW work. We expect all the setting(iova_start/iova_end...) have already
> > > been finished before F_MMU_INV_RANGE.
> > > b) Reduce the tlb timeout value from 100000us to 1000us. the original value
> > > is so long that affect the multimedia performance.
> >
> > By definition, timeout is something that should not normally happen.
> > Too long timeout affecting multimedia performance would suggest that
> > the timeout was actually happening, which is the core problem, not the
> > length of the timeout. Could you provide more details on this?
>
> As description above, this issue is because there is no dom->pgtlock in
> the mtk_iommu_iotlb_sync. I have tried that the issue will disappear
> after adding lock in it.
>
> Although the issue is fixed after this patch, I still would like to
> reduce the timeout value for somehow error happen in the future. 100ms
> is unnecessary for us. It looks a minor improvement rather than fixing
> the issue. I will use a new patch for it.
>

Okay, makes sense.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
