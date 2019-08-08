Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2712A8650E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 17:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekZq/++sPiPD++H1CvQRmRF5f4F4RLIM4WywalQkIHs=; b=J5MW4Do2yymUVD
	Qo3iH+Xsn1zB582BnVupW9/jcPQxYZbSR+mnaKr7qL5lo/FUKfNtZBlc31nd0wVMfwin8VkXHAqY4
	W5bdyO060txcgu383pJm3hZPQm8QoNptKosoF1jMvsUlM4Jzfbrc0ufwZZA6VUiLoh+/D4kgK3DFl
	lfBLq7xBvbPrnJJ8yFVDX+doNjdRbbgxN2mvy8mlsX+77JCYd37nScZYI3DLzZPdgkM+DV/N8isvu
	P3+c3tomwBw7Bwf4UxHcL3e3H9oNjOBNTk8uUveTJTpLrN5YUM4LNgcL24rjB4zCFk1eTB82kHPhG
	4EWEcXnNT9nomDqJcypQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvjwN-0002dt-Tk; Thu, 08 Aug 2019 15:02:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvjwB-0002d2-67; Thu, 08 Aug 2019 15:02:44 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB049218B0;
 Thu,  8 Aug 2019 15:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565276562;
 bh=dyMO+YEym8ib/r3ptFxeHa3pBfgJ53Bab+zG1JtBiD8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=T8SEdQkmyDZjxpkvg3O5aa5y0IUhZYhli6BHqmZLmfiiG7lkr51b/UqgTFh1RGV+e
 MfHwocgqqK6CPBSQL1LeWybLWFp8cKihuFna7gkTOy+M2wAZon7MndaSRynprNtU82
 2zgEQWoOZhEBTgp3ROz8ugCpgJEPPuHt0voaKgmo=
Received: by mail-qt1-f174.google.com with SMTP id 44so61395578qtg.11;
 Thu, 08 Aug 2019 08:02:42 -0700 (PDT)
X-Gm-Message-State: APjAAAUmys3pAavT+xY9md5Y4hnqn48GIHylCk7HXNC9dMs5wpu5S3V0
 wRD3OY/TolemKAasmclqZv6rDB3M1/Ga3F2Rpw==
X-Google-Smtp-Source: APXvYqwoUwqMMoJlRpUQeZhstAAUALmk5OLfWeCSiKB8+lRLcDvufCgBEJ1TDb+hHOMFdyjeedwU8GdoRwm/uZYI8ik=
X-Received: by 2002:ac8:7593:: with SMTP id s19mr6019854qtq.136.1565276561735; 
 Thu, 08 Aug 2019 08:02:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
 <20190731154752.16557-4-nsaenzjulienne@suse.de>
 <CAL_JsqKF5nh3hcdLTG5+6RU3_TnFrNX08vD6qZ8wawoA3WSRpA@mail.gmail.com>
 <2050374ac07e0330e505c4a1637256428adb10c4.camel@suse.de>
 <CAL_Jsq+LjsRmFg-xaLgpVx3miXN3hid3aD+mgTW__j0SbEFYjQ@mail.gmail.com>
 <12eb3aba207c552e5eb727535e7c4f08673c4c80.camel@suse.de>
In-Reply-To: <12eb3aba207c552e5eb727535e7c4f08673c4c80.camel@suse.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 8 Aug 2019 09:02:30 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJS6XBSc8DuK2sJApHtY4nCSFpLezf003YMD75THLHAqg@mail.gmail.com>
Message-ID: <CAL_JsqJS6XBSc8DuK2sJApHtY4nCSFpLezf003YMD75THLHAqg@mail.gmail.com>
Subject: Re: [PATCH 3/8] of/fdt: add function to get the SoC wide DMA
 addressable memory size
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_080243_265046_A2A01F83 
X-CRM114-Status: GOOD (  34.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: phill@raspberryi.org, devicetree@vger.kernel.org,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Will Deacon <will@kernel.org>,
 Eric Anholt <eric@anholt.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-mm@kvack.org, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Matthias Brugger <mbrugger@suse.com>, wahrenst@gmx.net,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 12:12 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Rob,
>
> On Mon, 2019-08-05 at 13:23 -0600, Rob Herring wrote:
> > On Mon, Aug 5, 2019 at 10:03 AM Nicolas Saenz Julienne
> > <nsaenzjulienne@suse.de> wrote:
> > > Hi Rob,
> > > Thanks for the review!
> > >
> > > On Fri, 2019-08-02 at 11:17 -0600, Rob Herring wrote:
> > > > On Wed, Jul 31, 2019 at 9:48 AM Nicolas Saenz Julienne
> > > > <nsaenzjulienne@suse.de> wrote:
> > > > > Some SoCs might have multiple interconnects each with their own DMA
> > > > > addressing limitations. This function parses the 'dma-ranges' on each of
> > > > > them and tries to guess the maximum SoC wide DMA addressable memory
> > > > > size.
> > > > >
> > > > > This is specially useful for arch code in order to properly setup CMA
> > > > > and memory zones.
> > > >
> > > > We already have a way to setup CMA in reserved-memory, so why is this
> > > > needed for that?
> > >
> > > Correct me if I'm wrong but I got the feeling you got the point of the patch
> > > later on.
> >
> > No, for CMA I don't. Can't we already pass a size and location for CMA
> > region under /reserved-memory. The only advantage here is perhaps the
> > CMA range could be anywhere in the DMA zone vs. a fixed location.
>
> Now I get it, sorry I wasn't aware of that interface.
>
> Still, I'm not convinced it matches RPi's use case as this would hard-code
> CMA's size. Most people won't care, but for the ones that do, it's nicer to
> change the value from the kernel command line than editing the dtb.

Sure, I fully agree and am not a fan of the CMA DT overlays I've seen.

> I get that
> if you need to, for example, reserve some memory for the video to work, it's
> silly not to hard-code it. Yet due to the board's nature and users base I say
> it's important to favor flexibility. It would also break compatibility with
> earlier versions of the board and diverge from the downstream kernel behaviour.
> Which is a bigger issue than it seems as most users don't always understand
> which kernel they are running and unknowingly copy configuration options from
> forums.
>
> As I also need to know the DMA addressing limitations to properly configure
> memory zones and dma-direct. Setting up the proper CMA constraints during the
> arch's init will be trivial anyway.

It was really just commentary on commit text as for CMA alone we have
a solution already. I agree on the need for zones.

>
> > > > IMO, I'd just do:
> > > >
> > > > if (of_fdt_machine_is_compatible(blob, "brcm,bcm2711"))
> > > >     dma_zone_size = XX;
> > > >
> > > > 2 lines of code is much easier to maintain than 10s of incomplete code
> > > > and is clearer who needs this. Maybe if we have dozens of SoCs with
> > > > this problem we should start parsing dma-ranges.
> > >
> > > FYI that's what arm32 is doing at the moment and was my first instinct. But
> > > it
> > > seems that arm64 has been able to survive so far without any machine
> > > specific
> > > code and I have the feeling Catalin and Will will not be happy about this
> > > solution. Am I wrong?
> >
> > No doubt. I'm fine if the 2 lines live in drivers/of/.
> >
> > Note that I'm trying to reduce the number of early_init_dt_scan_*
> > calls from arch code into the DT code so there's more commonality
> > across architectures in the early DT scans. So ideally, this can all
> > be handled under early_init_dt_scan() call.
>
> How does this look? (I'll split it in two patches and add a comment explaining
> why dt_dma_zone_size is needed)
>
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index f2444c61a136..1395be40b722 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -30,6 +30,8 @@
>
>  #include "of_private.h"
>
> +u64 dt_dma_zone_size __ro_after_init;

Avoiding a call from arch code by just having a variable isn't really
better. I'd rather see a common, non DT specific variable that can be
adjusted. Something similar to initrd_start/end. Then the arch code
doesn't have to care what hardware description code adjusted the
value.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
