Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F41A5C25DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 19:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALOmh/KRADjFEG2dLsbJCnx5DfMzq991SYdRG5fiR2c=; b=BXOF1Yyhop+OPz
	2aihDmTL3d/cPp62n1Tx54nybzu6L8Q+CgTF9zeHkujREK4rYhhQ1dh90nqOc/AGQvRwXQBenhDmQ
	B0DSE1CRL+MRtGZzhGyTzO3wGtiWfdPGyt+2FQ+1+Ijw2sGHUCoSw4dy3afU0pAY6YhsgxHeFi5A2
	dluy5dQdna+defO8r+VuqiGrWFSz8Ia9c2u7f9JTz8+amyLcD+7Ct3ae6FT5HUOW21qwebCP1elZZ
	NSMmvLIbU3vOx8jbaWvuZALvle59RpP/+zqRI4y5LY4te2gEJbPQucDe1KwRThKNyI1rjwhFwvO4Z
	irg6d512r88dThDdQhIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEzr1-0001Bk-Io; Mon, 30 Sep 2019 17:52:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEzqq-0001BO-TL
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 17:52:50 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A1A5224EF
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 17:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569865968;
 bh=VISkbcq9PrIKw4uSwLgeOR8cIOEhbkOGT8DrF2vMfH8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JZZYJ+3TehBv+dThkEnIA1tz/i+GwCWs/S9WWNbVt37mA4zcDMDWmbtZe0ayNdo2I
 uGJpVKBMAhusGQP8qAbF5yYiCCsnmC4osuresTxr5w9aXFGaA803X9pKKr+raAWXN6
 zmnAO6zWpv2I74AQdnXukcn21aTmcb76TgRNUsqU=
Received: by mail-qk1-f181.google.com with SMTP id q203so8618580qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 10:52:48 -0700 (PDT)
X-Gm-Message-State: APjAAAXRwC1X8n7qYn4bhEbs0iRBJWZvCRZx5bRSapz18f4efikphi3c
 k/gqyMV89WN2mvvPvUqZ/LtE2hHadB3sFYm1QA==
X-Google-Smtp-Source: APXvYqwSgFXNXIifS2TCwJyfW8UXbcMfsRC7IuB9Q/oOn9llMQFx1aqDBr5NmWeVhwufGbKzICqmqGALjAhfiaM6IFY=
X-Received: by 2002:a37:682:: with SMTP id 124mr1316439qkg.393.1569865967571; 
 Mon, 30 Sep 2019 10:52:47 -0700 (PDT)
MIME-Version: 1.0
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
 <1e499f85220b735849126171e64ebdd1da0302ce.1569856049.git.robin.murphy@arm.com>
 <167ec566-1936-8a05-83fc-74d20d9fb8bc@arm.com>
In-Reply-To: <167ec566-1936-8a05-83fc-74d20d9fb8bc@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Sep 2019 12:52:36 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+GnSVTEPaLfwcWiAbbTwJFM=NzJB1WnS-D3SfW4xzCSw@mail.gmail.com>
Message-ID: <CAL_Jsq+GnSVTEPaLfwcWiAbbTwJFM=NzJB1WnS-D3SfW4xzCSw@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/panfrost: Use coherent pagetable walk on Juno
To: Steven Price <steven.price@arm.com>, Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_105248_990542_B2815F82 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Liviu Dudau <liviu.dudau@arm.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 11:26 AM Steven Price <steven.price@arm.com> wrote:
>
> On 30/09/2019 16:24, Robin Murphy wrote:
> > Although going full "dma-coherent" ends badly due to GEM objects still
> > being forcibly mapped non-cacheable, we can at least take advantage of
> > Juno's ACE-lite integration to skip cache maintenance for pagetables.
> >
> > CC: Rob Herring <robh@kernel.org>
> > CC: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > ---
> >
> > This isn't really meant as a series, I'm just sending it together
> > with patch #1 for context.
> >
> >  drivers/gpu/drm/panfrost/panfrost_mmu.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
> > index bdd990568476..560439f63277 100644
> > --- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
> > +++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
> > @@ -365,6 +365,9 @@ int panfrost_mmu_pgtable_alloc(struct panfrost_file_priv *priv)
> >               .iommu_dev      = pfdev->dev,
> >       };
> >
> > +     if (of_device_is_compatible(pfdev->dev->of_node, "arm,juno-mali"))
> > +             pfdev->mmu->pgtbl_cfg.coherent_walk = true;
>
> Should be:
>         mmu->pgtbl_cfg.coherent_walk = true;

IOW, base this on 5.4 or drm-misc-next.

> Also I'm not sure whether we should do this based on a compatible
> string. kbase has a "system-coherency" device-tree flag for it. In
> theory we could end up with a long list of compatibles here...

Why not use 'dma-coherent' which you set? If not, I'm confused as to
what 'dma-coherent' is supposed to mean. Is it possible for page table
walks to have different coherency than the rest of the accesses?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
