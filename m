Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BC11B055B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5sFFNuSK0b5hXBpxPjheX7Ck1yyZi4L7I4xGaUke08=; b=cmS0XRoiX77UEz
	A9o40aM9xoRtAtw/OU+i2wusMaRVOpbvWUtbY9iRzuJcdLagjT1gFSqUnp7UKLgx/e6T7O+hIYIJA
	ix2KmcwU5VjVZdmCim7oJAXWobCr633gQwmYzjvq7DkHBtEzTcrJnmM/iv4bTTRDjMkUWsLu+SKy5
	ajhMK9xnJRWzeJ6ZXUgbpxu+Wlw/iPa5oBj0AVPbI1HWsZxWBcsclKEqUD93veNLBHi/742pAC2Ki
	nQnDL8dEGE00r6yyxMLceQ2baH/JDi84ZfwXAKsXBIkWid62RPQNlp3xG0STkbdJLOIewv9EqfPem
	NAfsqZN2wRsX5ZiM1wAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSWQ-000290-NU; Mon, 20 Apr 2020 09:15:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSW6-0001EP-WA
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 09:15:04 +0000
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4AD0320CC7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 09:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587374102;
 bh=rtyI1QYk7kXyoQ9RZ/YlhBkTYHl5nQaYUd2s1wLtjis=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HkhYQJOBT4rkbeV25vCagtrH3NvzGncrr5LmkHf/9qJXqNS2BELtRf1Z61kOOuHgb
 SR+S562c61zw2NdDAWEPN+wyEedoQGUIGY2A6arr3BRnB/nJuv+UjLR79lAfRUIN2i
 DtI0ol3G1EG+iKVnQqiSvms+t7L0bgXoxJCDK1Es=
Received: by mail-io1-f50.google.com with SMTP id o127so10161662iof.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 02:15:02 -0700 (PDT)
X-Gm-Message-State: AGi0PuZHMJgVKia5vCUKx7440yBdULXmkU/VorvagHbJHyYX+lddXV9m
 i+veiy9PzXR8E72ZFngt1WVTmFODtU0x7FygpKQ=
X-Google-Smtp-Source: APiQypIPj+PwRatUFjzaELCw+Grz8xq4w0RCNDJQrsi13+C8LnpJRAGp22UuW4xt4j/cWuaMgMrNGSfo8JoVlCr3O0I=
X-Received: by 2002:a5d:9b8a:: with SMTP id r10mr7854789iom.171.1587374101613; 
 Mon, 20 Apr 2020 02:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200404073047.17898-1-ardb@kernel.org>
 <20200420084051.GA12852@red-moon.cambridge.arm.com>
 <CAMj1kXHjeSFK7yH+pZCcdaK8Sdf+fhJFm+yn6JA3gH8jgbZwCA@mail.gmail.com>
 <20200420091342.GA6867@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200420091342.GA6867@e121166-lin.cambridge.arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 20 Apr 2020 11:14:50 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHFJMyw6jYPd9puaN=xc1BYpF7+VnCMkBhMxBgDm9skgg@mail.gmail.com>
Message-ID: <CAMj1kXHFJMyw6jYPd9puaN=xc1BYpF7+VnCMkBhMxBgDm9skgg@mail.gmail.com>
Subject: Re: [PATCH] arm64: iort: take _DMA methods into account for named
 components
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_021503_099589_CE4B9438 
X-CRM114-Status: GOOD (  21.57  )
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

On Mon, 20 Apr 2020 at 11:13, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Mon, Apr 20, 2020 at 10:58:02AM +0200, Ard Biesheuvel wrote:
> > On Mon, 20 Apr 2020 at 10:41, Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> > >
> > > On Sat, Apr 04, 2020 at 09:30:47AM +0200, Ard Biesheuvel wrote:
> > > > Where IORT nodes for named components can describe simple DMA limits
> > > > expressed as the number of address bits a device can driver, _DMA methods
> > > > in AML can express more complex topologies, involving DMA translation in
> > > > particular.
> > > >
> > > > Currently, we only take this _DMA method into account if it appears on a
> > > > ACPI device node describing a PCIe root complex, but it is perfectly
> > > > acceptable to attach them to named components as well, so let's ensure
> > > > we take them into account in those cases too.
> > > >
> > > > Reported-by: Andrei Warkentin <awarkentin@vmware.com>
> > > > Fixes: 7ad4263980826e8b ("ACPI: Make acpi_dma_configure() DMA regions aware")
> > > > Cc: <stable@vger.kernel.org> # v4.14+
> > > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > > ---
> > > >  drivers/acpi/arm64/iort.c | 11 ++++-------
> > > >  1 file changed, 4 insertions(+), 7 deletions(-)
> > >
> > > Only question is whether there is FW in the field with _DMA methods that
> > > now we would start parsing (and hopefully everything will still work)
> > > but for that the only choice is applying this patch and see, so:
> > >
> >
> > Perhaps it would be better to call acpi_dma_get_range() on dev->parent then?
>
> I think it is fine as it is -  maybe we can hold off sending it all
> the way to stable kernels until we are confident it does not cause
> unintended breakage ?
>
> Anyway, thanks for putting it together.
>
> Minor nit: I'd make "arm64: iort:" in the subject "ACPI/IORT:"
> just to keep logs uniform.
>

OK, I'll respin and resend, with the ACPI folks on cc this time.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
