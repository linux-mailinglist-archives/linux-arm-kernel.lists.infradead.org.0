Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5587040F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 17:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9m2IKQJTG6urzHEbHNAFfEzVRgxFO42184GWRMFgTWY=; b=jl7TA7cZxiOlR5
	P2NI8qhUqP5QJ4pRzB/B8bZvAT6DxBagVEOTWiDLWYO/kA8ajBV3mYlsGzwyHj8dQx2LIgQ8rCFc1
	4+8rx7ZVTml6x0WlM3wywrhHIgs5PwqX4d6+hWen4VzV3X1Bu3fHZedAQg8EPnAM508E6McFuYhu8
	zeghVGiMFOcclUdRqdVFi7LaHx7LL4YOluT8R1FakseAl+wvVjD4mQRX1+pQNP7STWzRElTdAROBr
	DPBZ0Vts3KglqXDkSlxwsfhLvzuKNybCE3cQgqUgRQZ88M1METIMz2Hy1tx8fh3pmm5J97Rm9wQfO
	pi9II5MKKrKJzxpsN1gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpaSE-0001OB-CJ; Mon, 22 Jul 2019 15:42:22 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpaRf-0001NQ-JC
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 15:41:49 +0000
Received: by mail-ed1-x542.google.com with SMTP id m10so41022848edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 08:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gbhi3M6mI+4oCuQkiXeYBwKqa8lehAmY1ApNgOUqhwo=;
 b=oq1L146UMTM5yp1F87M46OMRVNjVPxNYCqBgriKVv6dMDXX08s6uRiySQkE09kcK1A
 Ra2YvaKODVmITKUqtD7D1ZZBRTfaE2EIyiEpJokB2G8dfoqP1hIzdCqNe2owW2cN7JpK
 /zkAUcT1M6a8ckcpVXXe7ckudGM6GLl5YeRMMzlKGUi8Cgv8GgmvLGEpveZ4wCxnc3C4
 GLJFTrJWuI6GKBiuXFR8rfOXC8m6Lg7NcV5ejYFsiYQ+u0UPXpfbJ566t2UX28hlymTM
 STU8X04EdUcw3iu9gaHq2Zbbe4WfrqN3U1tyLEkqb89i0xg7+i4TO2G0kFl8exgLi//U
 0Dvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gbhi3M6mI+4oCuQkiXeYBwKqa8lehAmY1ApNgOUqhwo=;
 b=gPlqero+IcKrWFKJS4Ya88lRvlnCXA3Hp4nnHc/ydzaoxJHXRbze7Kur7C5yfVy2g1
 pIMm8hO97nJnvBOd8WacH7eZ8zQSBvDJRwcdfKgscAyOm4qUJPnUj9liNFJDUr/QkTcd
 ka3DmtM0dVimfd+t3Xrcl9qgc63LGdZzor7CSjZgY4Y455X3XZYNrADQP1xxBqBRIOA/
 nfdOmYWEiopaubiRBlo7jR4S8dpSVavwarOS6uNElEMhzTWWAwdLwMHaLMzcAoDnBoMf
 tI+M3oB+UI4ZxsLfN1i+RCggiSBfGAJLwWIW+N2ysnG3M6l0AFIkKVn/pmQqcVVvIMLq
 P7eg==
X-Gm-Message-State: APjAAAUnavkcYYZJqppQnwBV24B9e3abMct1dBRpoyMHiL0JkCklvmsW
 CoaIVZ4aD6x96m5tp2EEWaajOAG1wNcEs72Xm9oiu7ivnLQ=
X-Google-Smtp-Source: APXvYqxAGVaQMLs79f0ezsPQ6fjGuLy15ZNhz+Hy27pbz3hAzVegkYLJIcY3Cz+18kjo6Re9A52+O183SrZvHqwPE8o=
X-Received: by 2002:a50:8bfd:: with SMTP id n58mr60475682edn.272.1563810105719; 
 Mon, 22 Jul 2019 08:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190702202631.32148-2-robdclark@gmail.com>
 <20190710182844.25032-1-robdclark@gmail.com>
 <20190722142833.GB12009@8bytes.org>
In-Reply-To: <20190722142833.GB12009@8bytes.org>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 22 Jul 2019 08:41:34 -0700
Message-ID: <CAF6AEGvJc2RK3GkpcXiVKsuTX81D3oahnu=qWJ9LFst1eT3tMg@mail.gmail.com>
Subject: Re: [PATCH v2] iommu: add support for drivers that manage iommu
 explicitly
To: Joerg Roedel <joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_084147_632013_3E6B5962 
X-CRM114-Status: GOOD (  13.90  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Clark <robdclark@chromium.org>, aarch64-laptops@lists.linaro.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Robin Murphy <robin.murphy@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Joe Perches <joe@perches.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 7:28 AM Joerg Roedel <joro@8bytes.org> wrote:
>
> On Wed, Jul 10, 2019 at 11:28:30AM -0700, Rob Clark wrote:
> > --- a/include/linux/device.h
> > +++ b/include/linux/device.h
> > @@ -282,7 +282,8 @@ struct device_driver {
> >       struct module           *owner;
> >       const char              *mod_name;      /* used for built-in modules */
> >
> > -     bool suppress_bind_attrs;       /* disables bind/unbind via sysfs */
> > +     bool suppress_bind_attrs:1;     /* disables bind/unbind via sysfs */
> > +     bool driver_manages_iommu:1;    /* driver manages IOMMU explicitly */
>
> Who will set this bit?
>

It is set by the driver:

https://patchwork.freedesktop.org/patch/315291/

(This doesn't really belong in devicetree, since it isn't a
description of the hardware, so the driver is really the only place to
set this.. which is fine because it is about a detail of how the
driver works.)

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
