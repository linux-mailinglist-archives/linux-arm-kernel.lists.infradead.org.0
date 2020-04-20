Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EA61B04F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 10:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+DmmYYHy1bl2ahP8LGH2B1to/4k4Eqc7d46p2/C2gA=; b=RhQPVUN/lrTvIn
	FkUSM15/CwdfLB234N/F2OLho0clfCjh8RqUHuA0zcZMWgiBDtr8+AX1M338ZzynFgclW/yVGgJtJ
	JMS7zOTS0asSs/rwpqB7I08bAS9qHwDiPawGYLrzCjC3/zMVBn3541YRzefPx/n3/1lCdEjyoWqYv
	+bCxCQxqXagJ+O82YxFQNDNrCjSHTwCROkil38sUYW5RVYtm8n0BkxNxgav91rMGtn4LWdDfqiXgr
	Y9cTZAVDqfWX3eYJv/ahwUB8IMiSFlJyE5Dnsjvp0wFc+7fHGbRbe7b+2Ez3WGRXgpAiXPpptVWtD
	vSSzsucfqJo6pAZRFZ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSG9-0005oj-OX; Mon, 20 Apr 2020 08:58:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSFq-0005n8-EN
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:58:17 +0000
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
 [209.85.166.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED95020A8B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587373094;
 bh=DEmsx+S/GIcJZ0HOpimHmurmcIqeF6svnoQi7El41uQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Bj7I4ew2KslJmfCPWlkSLHmSiBdJfUIsge/l6C+nqQqCYUxZiFkxi4maNjhPycH59
 cACIe29ZCMEbvNHEIUXIAIoiDLItBJotRu0LeMWU/3t/bL1vFGMTFkkj8Tr38+mMjn
 XVbFyLf08UjVhuBHL5bB0o9Mp9uJp8D88BUI8HI4=
Received: by mail-il1-f178.google.com with SMTP id z12so8967582ilb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 01:58:13 -0700 (PDT)
X-Gm-Message-State: AGi0PuYcGh4cZN55udBh+eWaBB/UgmTBurofoi8GoKo3nvRA50pfQYx1
 L7oZ97mSg5zM3I6WxzG9oJ7N/xyb1sepnCBzsJ8=
X-Google-Smtp-Source: APiQypK9WWlCnPi+Y6TWNI8AEtYlQ17lFK1ber2Xdxw7bb8gaS3lkusAf95iX8jJzW7+0Ca2R4nECTwG81Xal62mBcU=
X-Received: by 2002:a92:39dd:: with SMTP id h90mr14799399ilf.80.1587373093368; 
 Mon, 20 Apr 2020 01:58:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200404073047.17898-1-ardb@kernel.org>
 <20200420084051.GA12852@red-moon.cambridge.arm.com>
In-Reply-To: <20200420084051.GA12852@red-moon.cambridge.arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 20 Apr 2020 10:58:02 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHjeSFK7yH+pZCcdaK8Sdf+fhJFm+yn6JA3gH8jgbZwCA@mail.gmail.com>
Message-ID: <CAMj1kXHjeSFK7yH+pZCcdaK8Sdf+fhJFm+yn6JA3gH8jgbZwCA@mail.gmail.com>
Subject: Re: [PATCH] arm64: iort: take _DMA methods into account for named
 components
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_015814_535365_64CCB03A 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 robin.murphy@arm.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 at 10:41, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Sat, Apr 04, 2020 at 09:30:47AM +0200, Ard Biesheuvel wrote:
> > Where IORT nodes for named components can describe simple DMA limits
> > expressed as the number of address bits a device can driver, _DMA methods
> > in AML can express more complex topologies, involving DMA translation in
> > particular.
> >
> > Currently, we only take this _DMA method into account if it appears on a
> > ACPI device node describing a PCIe root complex, but it is perfectly
> > acceptable to attach them to named components as well, so let's ensure
> > we take them into account in those cases too.
> >
> > Reported-by: Andrei Warkentin <awarkentin@vmware.com>
> > Fixes: 7ad4263980826e8b ("ACPI: Make acpi_dma_configure() DMA regions aware")
> > Cc: <stable@vger.kernel.org> # v4.14+
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  drivers/acpi/arm64/iort.c | 11 ++++-------
> >  1 file changed, 4 insertions(+), 7 deletions(-)
>
> Only question is whether there is FW in the field with _DMA methods that
> now we would start parsing (and hopefully everything will still work)
> but for that the only choice is applying this patch and see, so:
>

Perhaps it would be better to call acpi_dma_get_range() on dev->parent then?

> Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
>
> > diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> > index ed3d2d1a7ae9..07eb78baf198 100644
> > --- a/drivers/acpi/arm64/iort.c
> > +++ b/drivers/acpi/arm64/iort.c
> > @@ -1146,13 +1146,10 @@ void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *dma_size)
> >       else
> >               size = 1ULL << 32;
> >
> > -     if (dev_is_pci(dev)) {
> > -             ret = acpi_dma_get_range(dev, &dmaaddr, &offset, &size);
> > -             if (ret == -ENODEV)
> > -                     ret = rc_dma_get_range(dev, &size);
> > -     } else {
> > -             ret = nc_dma_get_range(dev, &size);
> > -     }
> > +     ret = acpi_dma_get_range(dev, &dmaaddr, &offset, &size);
> > +     if (ret == -ENODEV)
> > +             ret = dev_is_pci(dev) ? rc_dma_get_range(dev, &size)
> > +                                   : nc_dma_get_range(dev, &size);
> >
> >       if (!ret) {
> >               /*
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
