Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EC01D7D5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ic9FcnDUZFb762vrai1SA8e+1HzCY99LXnvk+SDC7HI=; b=pKp4dRuPSvUAOL
	v7Jn1qgWxDJI6yM3yeXKLounZMw47qMNb+jfYZu++io+3jWbApupNffkEXDsinMt53d1Rxh4Xn4Ak
	kkmYje8TPN/z8sat6v82SbugU1ZCfy1On9jJEh78QC6hN+xEJW6Gz5lBVs24w3LEszvlbq4q27ll9
	nZCvpTCUDS/gvfIwdPX4FbgHgX6oUEr0f/1ho04GDhy59y3W6JfLJ8qORLRTUQqKzKURJKUZo/XJL
	xqQBT+bLpy6rCMK/RUy2d2+nIejCYK0dwYgeCt4F8vPt2fJXVLqnZSpzideXJ4DVS5bXee/XMY1TF
	KkKFPLUQmjDF4cYrqytw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jai2m-0005pA-Va; Mon, 18 May 2020 15:51:09 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jai1s-0003zW-1p
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:50:14 +0000
Received: by mail-ed1-x544.google.com with SMTP id d24so935653eds.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 08:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mam0jmHC79p3v1pPEObliIl7gHrMe1XbetijSP5zncI=;
 b=CKIBsRZpRkNM2DDbEI75O6uMEon9GctsfbkrnQTJSoogb19ygIStXRAshUF0c4I+Rn
 91ArQTPD46KbURQ22gY6qmEIkkhxJIZBohLJQEgroA0QMp9vHrbwpU3X4HHDs1l+gp4d
 4jSFDJXSyXFJhcVKJijVmZaQJ6m11lnzI/SVjZO/F52kjZiiHR3s2cc3ErKUJmndJ5N6
 CzwPDMSIJzeh6hdg7YX3FJIhhYTjLinSUYE7CnNVVQW7OV8bb2mV6F4qS8TjRbWS6oCm
 Y8wuubh8LckHgZANHBsAL2uW/BDjWb+XKejPT89jttAzED+dqYcVJOViqAL4g1yFeDyI
 Pqbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mam0jmHC79p3v1pPEObliIl7gHrMe1XbetijSP5zncI=;
 b=qGw2Hg2lMWv7eJX7iP7f9JvQ8T405IuTw6CgbThlrTykm7qPSB/MBaMe47nDkXKUFF
 53OpI+P2XoZPxoT9QR7T8t1Yxqn1gh7P2rPN3kKgGfDcrK9RL7sjh6WAO+Y2wj3JnEpL
 3jIuKeg26YYKfUgPtmmbnSo0ok3/YiqRMO3MTwsANv3eoVHUnieJmmSHZeEHMt6ZJiD3
 cCs7vh9fLgOd1nu9A+96pcN9F6b29kywC1xvc1QOE/6wvOj9HgZoI6YdrwCer/JrfUpF
 WXHqx4IPvHNqMWGkPhOwdzErxNQ7Q2tUA5uGhvA0jgra7R+a3Orl+La1xsmsu2Y0FMSh
 Qk/w==
X-Gm-Message-State: AOAM5310sYvD1ktz5kyh1JkroPCnqh3qXM81/awFrLE535jTZ0OMQzhB
 Ogxo3YhpMIBwzEgT8UTrFhFG6YwlsV2/z+ph1uxE2NXw
X-Google-Smtp-Source: ABdhPJwAak2gmrJ75fYqfKG002IIAJ3g+T9yn75xNxFIQ0i05jgSdssvyWPSh4oXD0jc4sg7my3h0ep4LvxCtfrPbVs=
X-Received: by 2002:aa7:c38f:: with SMTP id k15mr482553edq.7.1589817009296;
 Mon, 18 May 2020 08:50:09 -0700 (PDT)
MIME-Version: 1.0
References: <1580249770-1088-1-git-send-email-jcrouse@codeaurora.org>
 <1580249770-1088-3-git-send-email-jcrouse@codeaurora.org>
 <20200318224840.GA10796@willie-the-truck>
 <CAF6AEGu-hj6=3rsCe5XeBq_ffoq9VFmL+ycrQ8N=iv89DZf=8Q@mail.gmail.com>
 <20200518151838.GL32394@willie-the-truck>
In-Reply-To: <20200518151838.GL32394@willie-the-truck>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 18 May 2020 08:50:27 -0700
Message-ID: <CAF6AEGswv3ZaJyy_kYv6FKAjO5=_juDwEtK+VE9TcVMLGvrdwA@mail.gmail.com>
Subject: Re: [PATCH v1 2/6] arm/smmu: Add auxiliary domain support for
 arm-smmuv2
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_085012_235282_F0C5F8AF 
X-CRM114-Status: GOOD (  28.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robdclark[at]gmail.com]
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 8:18 AM Will Deacon <will@kernel.org> wrote:
>
> On Wed, Mar 18, 2020 at 04:43:07PM -0700, Rob Clark wrote:
> > On Wed, Mar 18, 2020 at 3:48 PM Will Deacon <will@kernel.org> wrote:
> > > On Tue, Jan 28, 2020 at 03:16:06PM -0700, Jordan Crouse wrote:
> > > > Support auxiliary domains for arm-smmu-v2 to initialize and support
> > > > multiple pagetables for a single SMMU context bank. Since the smmu-v2
> > > > hardware doesn't have any built in support for switching the pagetable
> > > > base it is left as an exercise to the caller to actually use the pagetable.
> > > >
> > > > Aux domains are supported if split pagetable (TTBR1) support has been
> > > > enabled on the master domain.  Each auxiliary domain will reuse the
> > > > configuration of the master domain. By default the a domain with TTBR1
> > > > support will have the TTBR0 region disabled so the first attached aux
> > > > domain will enable the TTBR0 region in the hardware and conversely the
> > > > last domain to be detached will disable TTBR0 translations.  All subsequent
> > > > auxiliary domains create a pagetable but not touch the hardware.
> > > >
> > > > The leaf driver will be able to query the physical address of the
> > > > pagetable with the DOMAIN_ATTR_PTBASE attribute so that it can use the
> > > > address with whatever means it has to switch the pagetable base.
> > > >
> > > > Following is a pseudo code example of how a domain can be created
> > > >
> > > >  /* Check to see if aux domains are supported */
> > > >  if (iommu_dev_has_feature(dev, IOMMU_DEV_FEAT_AUX)) {
> > > >        iommu = iommu_domain_alloc(...);
> > > >
> > > >        if (iommu_aux_attach_device(domain, dev))
> > > >                return FAIL;
> > > >
> > > >       /* Save the base address of the pagetable for use by the driver
> > > >       iommu_domain_get_attr(domain, DOMAIN_ATTR_PTBASE, &ptbase);
> > > >  }
> > >
> > > I'm not really understanding what the pagetable base gets used for here and,
> > > to be honest with you, the whole thing feels like a huge layering violation
> > > with the way things are structured today. Why doesn't the caller just
> > > interface with io-pgtable directly?
> > >
> > > Finally, if we need to support context-switching TTBR0 for a live domain
> > > then that code really needs to live inside the SMMU driver because the
> > > ASID and TLB management necessary to do that safely doesn't belong anywhere
> > > else.
> >
> > We do in fact need live domain switching, that is really the whole
> > point.  The GPU CP (command processor/parser) is directly updating
> > TTBR0 and triggering TLB flush, asynchronously from the CPU.
> >
> > And I think the answer about ASID is easy (on current hw).. it must be zero[*].
>
> Using ASID zero is really bad, because it means that you will end up sharing
> TLB entries with whichever device is using context bank 0.
>
> Is the SMMU only used by the GPU in your SoC?
>

yes, the snapdragon SoCs have two SMMU instances, one used by the GPU,
where ASID0/cb0 is the gpu itself, and another cb is the GMU
(basically power control for the gpu), and the second SMMU is
everything else.

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
