Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC234AEECD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 17:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XJcQ2gqDQsjXiLUTIfXjJIvHKwOsNAeEjt3NxEhkDw=; b=mqKubZ4H+nzVbp
	mKa9a/79qHi37xwekN4kv9beo9kfufTEPzbyDxdG6ad6ZKrPlYBK6/IP4KCCDkB27IFllRbhUDeZ7
	O9eTXe6dNpUOgM8chMqYGu/KmcMLxvGovh4yB7GP0vWnMrR3zVgXtQ8U0zj5jzf9felwQH2E5/Oi1
	pIpEaBuRrQ3U+IIwi3AzKpIDlDEELrFo/GvHe+g9meY5s1QkIBMoJgB1WGYkgngYQc3BSIBJ/K2dH
	BAWFM12n5TC/cHOxU6K+NuqSfjJ4DXqbBU/SsEH+JWm4KZSraMGPkXTMaY3gVXRQ/4hTF2M/2IZip
	FbHbC+r86nTeNQRGsZwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7iL0-0005Af-A3; Tue, 10 Sep 2019 15:45:50 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7iKq-00059Z-FL
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 15:45:43 +0000
Received: by mail-ed1-x544.google.com with SMTP id c20so8556272eds.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 08:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ab44L4UsH9lWBk/ePs+t6LQUuKmRHFW0SwCWgf68+rc=;
 b=FUDx1VssMY5+grYTJ9mTO+OtexdcbSTMSsn3//VPNV0zPdSp95pA3zNOdpx4boIzLL
 +8wfwTnUnSWaD0DyKayLxvtLd1DNtf9KpsXdscr1lunnkyj9RgO10ZaIY4qDgscT06xv
 gsu7UNxm0Xryuv9rrw5a4GpIEVPRKWhPVPWKzBpbTQx6lkHw+mIFYb+srXGudTMQJCt5
 gonRN5rE57R/vyk+7sS8MiPSdeYzF3ZPo7wNMrmBj3lVkr6zixiEP6LKYNeZGu9gq5mv
 nhhDZVq5ROoxeNpfmQu0BO+jdHGVOWyuw0NkkZqryUCoeygfaKH+6X5QUf5q5jC92gdh
 i8nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ab44L4UsH9lWBk/ePs+t6LQUuKmRHFW0SwCWgf68+rc=;
 b=DOSE/yNd3XQlr2necz2/ZptWFBfLLcb9yfokvHGCs8p0NynWfq+2AuqUaqCBYKsIoU
 urn91lnfPe83pqalyPNfVctyUx60zJBezXbqPIVoOgDB4MFj5qumBE7GxGRa9+FwByx4
 cMV6tnDJZNLkltNa9QhnqphNW5TATM4x7kMz+SGxmjry0y/uoG7oq+Pozdt3W4mRhbsK
 3aJ+Pe24grWs8cexqZA8Mod+bfvvcRP8zEhnMmNPO57OwccEnVQs6Ba4S1v5CVNIHlqa
 NAlgWW+wzxoH28TSOeWVfnPAM23HpWBde6PKBQNIx88NpQBdiwHLK/wEbxifo63on2f5
 lpOA==
X-Gm-Message-State: APjAAAWxHMUEQdPJdD5NXUBSFobtdeH1hSy0Bc7PGLXsBFOgbTSzSEYz
 Ib/XrbTuW55/8F9/LHWU5wBmxVdYJFy/68Su1QY=
X-Google-Smtp-Source: APXvYqzoKSvtwc7h3YF+c3ClC8RRDwvQEOuO9vmMklmmZ6/J8nMaSUMmvks3o2VNkPh4WYQkviIc241SjZs7jn1Ep9c=
X-Received: by 2002:a17:906:2451:: with SMTP id
 a17mr16927007ejb.164.1568130338310; 
 Tue, 10 Sep 2019 08:45:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190907175013.24246-1-robdclark@gmail.com>
 <418d8426-f299-1269-2b2e-f86677cf22c2@arm.com>
In-Reply-To: <418d8426-f299-1269-2b2e-f86677cf22c2@arm.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 10 Sep 2019 08:45:27 -0700
Message-ID: <CAF6AEGtd7kr2MckVy99ERQs4gmxjY6DteNdTLknBgpAZRpDgrA@mail.gmail.com>
Subject: Re: [PATCH] iommu/arm-smmu: fix "hang" when games exit
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_084540_521747_0B33C6C8 
X-CRM114-Status: GOOD (  30.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Clark <robdclark@chromium.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 Will Deacon <will@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, open list <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 "moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 8:01 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 07/09/2019 18:50, Rob Clark wrote:
> > From: Rob Clark <robdclark@chromium.org>
> >
> > When games, browser, or anything using a lot of GPU buffers exits, there
> > can be many hundreds or thousands of buffers to unmap and free.  If the
> > GPU is otherwise suspended, this can cause arm-smmu to resume/suspend
> > for each buffer, resulting 5-10 seconds worth of reprogramming the
> > context bank (arm_smmu_write_context_bank()/arm_smmu_write_s2cr()/etc).
> > To the user it would appear that the system is locked up.
> >
> > A simple solution is to use pm_runtime_put_autosuspend() instead, so we
> > don't immediately suspend the SMMU device.
> >
> > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > ---
> > Note: I've tied the autosuspend enable/delay to the consumer device,
> > based on the reasoning that if the consumer device benefits from using
> > an autosuspend delay, then it's corresponding SMMU probably does too.
> > Maybe that is overkill and we should just unconditionally enable
> > autosuspend.
>
> I'm not sure there's really any reason to expect that a supplier's usage
> model when doing things for itself bears any relation to that of its
> consumer(s), so I'd certainly lean towards the "unconditional" argument
> myself.

Sounds good, I'll respin w/ unconditional autosuspend

> Of course ideally we'd skip resuming altogether in the map/unmap paths
> (since resume implies a full TLB reset anyway), but IIRC that approach
> started to get messy in the context of the initial RPM patchset. I'm
> planning to fiddle around a bit more to clean up the implementation of
> the new iommu_flush_ops stuff, so I've made a note to myself to revisit
> RPM to see if there's a sufficiently clean way to do better. In the
> meantime, though, I don't have any real objection to using some
> reasonable autosuspend delay on the principle that if we've been woken
> up to map/unmap one page, there's a high likelihood that more will
> follow in short order (and in the configuration slow-paths it won't have
> much impact either way).

It does sort of remind me about something I was chatting with Jordan
the other day.. about how we could possibly skip the TLB inv for
unmaps from non-current pagetables once we have per-context
pagetables.

The challenge is, since the GPU's command parser is the one switching
pagetables, we don't have any race-free way to know which pagetables
are current.  But we do know which contexts have work queued up for
the GPU, so we can know either that a given context definitely isn't
current, or that it might be current.  And in the "definitely not
current" case we could skip TLB inv.

BR,
-R

>
> Robin.
>
> >   drivers/iommu/arm-smmu.c | 11 ++++++++++-
> >   1 file changed, 10 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > index c2733b447d9c..73a0dd53c8a3 100644
> > --- a/drivers/iommu/arm-smmu.c
> > +++ b/drivers/iommu/arm-smmu.c
> > @@ -289,7 +289,7 @@ static inline int arm_smmu_rpm_get(struct arm_smmu_device *smmu)
> >   static inline void arm_smmu_rpm_put(struct arm_smmu_device *smmu)
> >   {
> >       if (pm_runtime_enabled(smmu->dev))
> > -             pm_runtime_put(smmu->dev);
> > +             pm_runtime_put_autosuspend(smmu->dev);
> >   }
> >
> >   static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
> > @@ -1445,6 +1445,15 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
> >       /* Looks ok, so add the device to the domain */
> >       ret = arm_smmu_domain_add_master(smmu_domain, fwspec);
> >
> > +#ifdef CONFIG_PM
> > +     /* TODO maybe device_link_add() should do this for us? */
> > +     if (dev->power.use_autosuspend) {
> > +             pm_runtime_set_autosuspend_delay(smmu->dev,
> > +                     dev->power.autosuspend_delay);
> > +             pm_runtime_use_autosuspend(smmu->dev);
> > +     }
> > +#endif
> > +
> >   rpm_put:
> >       arm_smmu_rpm_put(smmu);
> >       return ret;
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
