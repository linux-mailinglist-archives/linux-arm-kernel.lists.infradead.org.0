Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7B7446E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFw8XYoyV3pHgeVa5vqz185mWZTqyiBjVPSbSxYing4=; b=s6CvX4PRIHIiA+
	XHugXbv4zw2PO2Fq6XgqelyNT+FpCrXxRRDsYh0lgCVdKx+vlIbE3r7VCjoe2BN8aDaVf3gWpSvmN
	/7m0Xt7tLwzqbP1xBUC76tEQt4+RfXfK3kV8lt3EEzJ1V/HHgNaxun3VWXwmvK6CLfb45tU2hefMq
	Wxzfxv5sL51qe/27OC1amjsBl8Uncne+gKy2s7omFkF+vNzPQtrI7ZlEk1CyyBvDWb/HgccivKKOT
	3VfDSHYU34ScA+Gn0wWrE3dl+dNwz/Ns48FcYJUkAMJKFU0Qt75z+PfEm3dUvEf7okHZ9cSHpLjqw
	T+eXLqJmp1m3+FsVrPfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbT0c-0006k6-90; Thu, 13 Jun 2019 16:55:30 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbT0N-0006hv-6S; Thu, 13 Jun 2019 16:55:16 +0000
Received: by mail-io1-xd41.google.com with SMTP id k13so18474397iop.5;
 Thu, 13 Jun 2019 09:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ClC0u2JGR2lSo+6Tvkb2x52kadnHao11/SSLbD6/58k=;
 b=JrNaEHWuGK31T7Uo+VSWno6hHFAJENibo1UonPm+66izBPrzhseMDm7bv7X64xM5DK
 Cw9kQc0KCnUjh4IFkW/C31Zk4kzA6mouPoQfGyg+p3mDujIALjKIKTevGWXwncMxhJwO
 m2kMdmGqR/BatXqMusdoFI5nCzADTl/eYJnHTXoEVhw1h5HEyYenJYrp+kjJoQb3v6xJ
 mOUMwPay5Dm1ubWMu/GLLAxiBdkfT+DerQmRsGvmVB4Tgr0z0KELyQqYVcHzYXJRIgy/
 iSvOID0iZKuxCkn7pAxT6UAXELNV164onq0HuVxvAytjhlCn0A1cPqeVRPVxyuBCioD9
 8QjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ClC0u2JGR2lSo+6Tvkb2x52kadnHao11/SSLbD6/58k=;
 b=mis63qv18yDOc+XdsdM/MMMWnXLGMgkxzPvdyf8+yjOnJmJ61LV0JpMwkzO+hg/yE3
 W5iPbPCAzDAb0i8YXF16fPTjug7cbUsjaX1DaJd2AGy6splID1/qWJkBGx9Nv3TXbdCs
 QEe/l+EczVX36+2cz+t0NZsG2rON0to/laFVT1EfZeUiBt3HwJ2Idvmb9pEpkaOKIhx1
 KbqbYG49aVqD0/9nV4jOIOaMDaORhi+jjCtGJlsDTSTidBf6H4g0NebidduD62++NqPr
 eBJxPrnIKWTApga5cH9ObkrNrWH8iygV2MCXJxz5sO5U+mbqMqg/phpGXw8YmdT4pkzS
 QeQg==
X-Gm-Message-State: APjAAAWoeSXD4tY8n4sh6BnpvpteEHEKjjsikS2meaJN5l0NIpwmJKVO
 KHXa90M9LdG8yKabPZzNFlvloSh1y5cHUTc7JYY=
X-Google-Smtp-Source: APXvYqylceZhLVcUp0gOO9Vg8sEwwQ2V26ZkYvdHadRA9KxZ4IFbMZeY52TIAhHmV5cKS4Wm3sFmdLPdFRRz42Unlow=
X-Received: by 2002:a5e:8e42:: with SMTP id r2mr453389ioo.305.1560444913870;
 Thu, 13 Jun 2019 09:55:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190613162703.986-1-tiny.windzz@gmail.com>
 <20190613162703.986-3-tiny.windzz@gmail.com>
 <ac67e363-70cf-af64-d634-c3b0b6d408fa@ti.com>
In-Reply-To: <ac67e363-70cf-af64-d634-c3b0b6d408fa@ti.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Fri, 14 Jun 2019 00:55:02 +0800
Message-ID: <CAEExFWuM+oMUKf440myr0GHAnatdzaxr=0ibFDGVXDHs6J1bzA@mail.gmail.com>
Subject: Re: [PATCH 03/10] iommu/omap: convert to SPDX license tags
To: Suman Anna <s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_095515_242532_F5EB2C8E 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "joro@8bytes.org" <joro@8bytes.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "agross@kernel.org" <agross@kernel.org>, "krzk@kernel.org" <krzk@kernel.org>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "david.brown@linaro.org" <david.brown@linaro.org>,
 "robdclark@gmail.com" <robdclark@gmail.com>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 12:39 AM Suman Anna <s-anna@ti.com> wrote:
>
> Hi Yangtao,
>
> On 6/13/19 11:26 AM, Yangtao Li wrote:
> > Updates license to use SPDX-License-Identifier.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
>
> Thanks for the patch. Can you also update another related file
> while at this. Will leave it to Joerg if he prefers it as a separate
> patch, or folded into this patch.
>
> include/linux/platform_data/iommu-omap.h
>

Done.

Yangtao

> Acked-by: Suman Anna <s-anna@ti.com>
>
> regards
> Suman
>
> > ---
> >  drivers/iommu/omap-iommu-debug.c | 5 +----
> >  drivers/iommu/omap-iommu.c       | 5 +----
> >  drivers/iommu/omap-iommu.h       | 5 +----
> >  drivers/iommu/omap-iopgtable.h   | 5 +----
> >  4 files changed, 4 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/iommu/omap-iommu-debug.c b/drivers/iommu/omap-iommu-debug.c
> > index 4abc0ef522a8..55ec67a45101 100644
> > --- a/drivers/iommu/omap-iommu-debug.c
> > +++ b/drivers/iommu/omap-iommu-debug.c
> > @@ -1,13 +1,10 @@
> > +// SPDX-License-Identifier: GPL-2.0
> >  /*
> >   * omap iommu: debugfs interface
> >   *
> >   * Copyright (C) 2008-2009 Nokia Corporation
> >   *
> >   * Written by Hiroshi DOYU <Hiroshi.DOYU@nokia.com>
> > - *
> > - * This program is free software; you can redistribute it and/or modify
> > - * it under the terms of the GNU General Public License version 2 as
> > - * published by the Free Software Foundation.
> >   */
> >
> >  #include <linux/err.h>
> > diff --git a/drivers/iommu/omap-iommu.c b/drivers/iommu/omap-iommu.c
> > index d2fb347aa4ff..e6442876913f 100644
> > --- a/drivers/iommu/omap-iommu.c
> > +++ b/drivers/iommu/omap-iommu.c
> > @@ -1,3 +1,4 @@
> > +// SPDX-License-Identifier: GPL-2.0
> >  /*
> >   * omap iommu: tlb and pagetable primitives
> >   *
> > @@ -6,10 +7,6 @@
> >   *
> >   * Written by Hiroshi DOYU <Hiroshi.DOYU@nokia.com>,
> >   *           Paul Mundt and Toshihiro Kobayashi
> > - *
> > - * This program is free software; you can redistribute it and/or modify
> > - * it under the terms of the GNU General Public License version 2 as
> > - * published by the Free Software Foundation.
> >   */
> >
> >  #include <linux/dma-mapping.h>
> > diff --git a/drivers/iommu/omap-iommu.h b/drivers/iommu/omap-iommu.h
> > index 1703159ef5af..5256e17d86a7 100644
> > --- a/drivers/iommu/omap-iommu.h
> > +++ b/drivers/iommu/omap-iommu.h
> > @@ -1,13 +1,10 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> >  /*
> >   * omap iommu: main structures
> >   *
> >   * Copyright (C) 2008-2009 Nokia Corporation
> >   *
> >   * Written by Hiroshi DOYU <Hiroshi.DOYU@nokia.com>
> > - *
> > - * This program is free software; you can redistribute it and/or modify
> > - * it under the terms of the GNU General Public License version 2 as
> > - * published by the Free Software Foundation.
> >   */
> >
> >  #ifndef _OMAP_IOMMU_H
> > diff --git a/drivers/iommu/omap-iopgtable.h b/drivers/iommu/omap-iopgtable.h
> > index 01a315227bf0..871c2a38f453 100644
> > --- a/drivers/iommu/omap-iopgtable.h
> > +++ b/drivers/iommu/omap-iopgtable.h
> > @@ -1,13 +1,10 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> >  /*
> >   * omap iommu: pagetable definitions
> >   *
> >   * Copyright (C) 2008-2010 Nokia Corporation
> >   *
> >   * Written by Hiroshi DOYU <Hiroshi.DOYU@nokia.com>
> > - *
> > - * This program is free software; you can redistribute it and/or modify
> > - * it under the terms of the GNU General Public License version 2 as
> > - * published by the Free Software Foundation.
> >   */
> >
> >  #ifndef _OMAP_IOPGTABLE_H
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
