Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B699EE7C72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 23:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dn9zH8vgorl9wWn0pYGNZjaoSbdzbFZzmwq984194ts=; b=mi7Xj6rDSB3GPs
	ucGOcOuTQ8/ibI6cRlzLXVsqorRkGgEfm9yf0nFosuc+5FL6qc0hp+UyoQ9DHEWaN0qmRcYjZ7mnX
	QHCfvYYHGFGz5rWuRr9u/cHfmWxueGmQYgZw2sxmG/AOw1SSg31wGYl08ORlz9fQJHvD0d6H/xZfo
	j6Nvdjiz/omjGtg6XnvdM90H0ldcLn2F60DslVHzJOsF8TKtdUn5nb7kjkr9WYqeip5Kw88MrDPQe
	PAPfdsWUchSLLx/ctvx1N5nK4a8w6wDMV42T/EE1RBNCMObRGVKZgZ9dPF6YOSjKVwu1OuS9M3c2N
	rfvXgYRFJFX1JRQn4EvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPDef-00020G-Di; Mon, 28 Oct 2019 22:38:29 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPDeS-0001zl-Iz
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 22:38:17 +0000
Received: by mail-il1-x143.google.com with SMTP id a13so9660738ilp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 15:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1pqft6NUgSGPSsYgTI6KAW/EqfWsmOX+X7GP8nWIKRQ=;
 b=KOtAhmLxM5DZQvf2Ll3f33KbklGMeTG2PKDxS+jixVpbEYv/r2fkX8rWW/POBAh8EZ
 bhaa9F6E4wiUOAv7xzTF/OPYtmaoF81sAIOIN1D7uz2hMlzRn/GbsAID1pmlxlh0ULbu
 KCWrpiKfUYuFXj/u1i4vCnm4AsCswlKrH1PH0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1pqft6NUgSGPSsYgTI6KAW/EqfWsmOX+X7GP8nWIKRQ=;
 b=WMW21A9XdJCJaz4amqUXT98k8tcPVN6fvmmZS/p6sqJhyka7a+NxPxKHadiaHMlOqf
 GWSE8i994WUHJoVfnmBLLF0wYpdvx3FJsu/79L9Ibr8C/9xNJ4kDwaIqZaBvSlsGw2L3
 LRJ5rsQXYnBCEw/PGnDWh2pyKDR87NEy1TzFCj50SyIZVueASQq6qzMrIs9NdCdEJIaC
 OPuYaBEyV/DG11ShSafnEXM598E0pnlvapI4epwdmfCjaKgKsAKXNmTLH6TlTt97UUox
 m660QVdXdBfmi5LfJitu92EOQBmryZEitR51JZxdvPub73SFsZFYywuFQ7nTznAKEcTL
 YsTg==
X-Gm-Message-State: APjAAAWR/I5iuCeJOQV7z1m+X3cObHtD04imk+VRHfIIUQ97denkxIc9
 AVUXNzLTIf9DBcYJT9Frx7j3muGrGunF0RSr8IujKQ==
X-Google-Smtp-Source: APXvYqzOjbPZql47NIkJK7AmtptD85c0h2swAJ0981IFdP5pW7aIvp/4iQe9Q33o2yPDwnBDa7OGwzugpAmPA0ld6FE=
X-Received: by 2002:a92:6e0a:: with SMTP id j10mr5422292ilc.26.1572302295420; 
 Mon, 28 Oct 2019 15:38:15 -0700 (PDT)
MIME-Version: 1.0
References: <418d8426-f299-1269-2b2e-f86677cf22c2@arm.com>
 <20191007204906.19571-1-robdclark@gmail.com>
 <20191028222042.GB8532@willie-the-truck>
In-Reply-To: <20191028222042.GB8532@willie-the-truck>
From: Rob Clark <robdclark@chromium.org>
Date: Mon, 28 Oct 2019 15:38:04 -0700
Message-ID: <CAJs_Fx7zRWsTPiAg0PFt+8nJPpHpzSkxW6XMMJwozVO6vyB78A@mail.gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu: fix "hang" when games exit
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_153816_648152_550906C7 
X-CRM114-Status: GOOD (  21.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: freedreno <freedreno@lists.freedesktop.org>, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, open list <linux-kernel@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 3:20 PM Will Deacon <will@kernel.org> wrote:
>
> Hi Rob,
>
> On Mon, Oct 07, 2019 at 01:49:06PM -0700, Rob Clark wrote:
> > From: Rob Clark <robdclark@chromium.org>
> >
> > When games, browser, or anything using a lot of GPU buffers exits, there
> > can be many hundreds or thousands of buffers to unmap and free.  If the
> > GPU is otherwise suspended, this can cause arm-smmu to resume/suspend
> > for each buffer, resulting 5-10 seconds worth of reprogramming the
> > context bank (arm_smmu_write_context_bank()/arm_smmu_write_s2cr()/etc).
> > To the user it would appear that the system just locked up.
> >
> > A simple solution is to use pm_runtime_put_autosuspend() instead, so we
> > don't immediately suspend the SMMU device.
>
> Please can you reword the subject to be a bit more useful? The commit
> message is great, but the subject is a bit like "fix bug in code" to me.

yeah, not the best $subject, but I wasn't quite sure how to fit
something better in a reasonable # of chars.. maybe something like:
"iommu/arm-smmu: optimize unmap but avoiding toggling runpm state"?

BR,
-R


>
> > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > ---
> > v1: original
> > v2: unconditionally use autosuspend, rather than deciding based on what
> >     consumer does
> >
> >  drivers/iommu/arm-smmu.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > index 3f1d55fb43c4..b7b41f5001bc 100644
> > --- a/drivers/iommu/arm-smmu.c
> > +++ b/drivers/iommu/arm-smmu.c
> > @@ -289,7 +289,7 @@ static inline int arm_smmu_rpm_get(struct arm_smmu_device *smmu)
> >  static inline void arm_smmu_rpm_put(struct arm_smmu_device *smmu)
> >  {
> >       if (pm_runtime_enabled(smmu->dev))
> > -             pm_runtime_put(smmu->dev);
> > +             pm_runtime_put_autosuspend(smmu->dev);
> >  }
> >
> >  static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
> > @@ -1445,6 +1445,9 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
> >       /* Looks ok, so add the device to the domain */
> >       ret = arm_smmu_domain_add_master(smmu_domain, fwspec);
>
> Please can you put a comment here explaining what this is doing? An abridged
> version of the commit message is fine.
>
> > +     pm_runtime_set_autosuspend_delay(smmu->dev, 20);
> > +     pm_runtime_use_autosuspend(smmu->dev);
>
> Cheers,
>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
