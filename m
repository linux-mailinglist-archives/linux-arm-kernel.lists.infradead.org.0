Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E36631E20B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oUXB1qbejDShS5TjDzFVftK846gMbr6MmcSsyaPEDTI=; b=tdV2dg/1UAU1Vf
	bzGMAJy5mxDoO6ggqLCWkPeKOhoVmx8maNkzFAHuzN5CLMJ69dO40DR+g0lBtabTBz7AQLPXKZtWH
	/QAr4pc2PqH/8hHb/9VPcFPuwLnY43+d2zSevpC+Kwo4Q5ZjM8rzpJBVLzgjQp0WSeK+n8rdyZEyp
	670YXYYIse82DeiMHDbJLpxqJQH9L7ZBJuU6HaNHrRIjgLztlr5GusvkHQ+IwFVBfDX6d9kUbphMB
	Ieuuwfs5hPrg/kqi/AQqV+J1MRwHcPxvnjiJu1ApJ1t7qsqJmOqF4b5woEGZE3c1VUwwAg4+7UeIK
	FmzsVQ8MlzzDN5JXTskQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXVx-0003pT-Ck; Tue, 26 May 2020 11:12:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXVn-0003oq-9O
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:12:48 +0000
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB7D220899
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 11:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590491565;
 bh=w3m3BiqegA/c+AK0c9B3Lz04RjxLTZODaFVIMVf+TVY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hU0oETOXSYMagC2q8kNXSo8qLzsqGsFQQdGVNPQhS6mftnrvRezldE1Xh+J67hDgK
 RYvOpeSd+apIGzRu6s39QRRzuZ55JKA3YZIpuVUDhJwUfamZsDoKINrI7UjEqcCqnK
 uSs1GA4XDfFvFA/hOyvbn1GW8b5AbbCBbZKPIErk=
Received: by mail-io1-f48.google.com with SMTP id p20so8049883iop.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 04:12:44 -0700 (PDT)
X-Gm-Message-State: AOAM531FaleneYUi7AFlie1QMT9TdW8Blo6hHDTvWFOFhHw6ToTcidqU
 Aqvr2BwzJWtp+Mort6VxeH3Y1O+jwA0e/P1Y5IA=
X-Google-Smtp-Source: ABdhPJy4K/V9tFR2GK96RiXGHjIJJ56IY7i7ivtw4AS3QQiZ4is+DnyTxH8db+0ZS9QH8rim5quPD2MhJStgltaiIgM=
X-Received: by 2002:a5d:9b8a:: with SMTP id r10mr16755157iom.171.1590491564286; 
 Tue, 26 May 2020 04:12:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200515093613.18691-1-ardb@kernel.org>
 <CAJZ5v0guHdbZTsU5e7KDAHDy9Gnh67JwtSSCeDaK8mUwAk1d3g@mail.gmail.com>
In-Reply-To: <CAJZ5v0guHdbZTsU5e7KDAHDy9Gnh67JwtSSCeDaK8mUwAk1d3g@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 26 May 2020 13:12:33 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFVYOoX=pe9uVY-j_o8YhhE_Fef6q6jc8S9nzBLYSBb=g@mail.gmail.com>
Message-ID: <CAMj1kXFVYOoX=pe9uVY-j_o8YhhE_Fef6q6jc8S9nzBLYSBb=g@mail.gmail.com>
Subject: Re: [PATCH] ACPI: GED: add support for _Exx / _Lxx handler methods
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_041247_366894_99CB92E1 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stable <stable@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Rafael,

I spotted an issue with this patch. Please see below.


On Fri, 15 May 2020 at 18:32, Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Fri, May 15, 2020 at 11:37 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > Per the ACPI spec, interrupts in the range [0, 255] may be handled
> > in AML using individual methods whose naming is based on the format
> > _Exx or _Lxx, where xx is the hex representation of the interrupt
> > index.
> >
> > Add support for this missing feature to our ACPI GED driver.
> >
> > Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> > Cc: Len Brown <lenb@kernel.org>
> > Cc: linux-acpi@vger.kernel.org
> > Cc: <stable@vger.kernel.org> # v4.9+
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  drivers/acpi/evged.c | 22 +++++++++++++++++---
> >  1 file changed, 19 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/acpi/evged.c b/drivers/acpi/evged.c
> > index aba0d0027586..6d7a522952bf 100644
> > --- a/drivers/acpi/evged.c
> > +++ b/drivers/acpi/evged.c
> > @@ -79,6 +79,8 @@ static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
> >         struct resource r;
> >         struct acpi_resource_irq *p = &ares->data.irq;
> >         struct acpi_resource_extended_irq *pext = &ares->data.extended_irq;
> > +       char ev_name[5];
> > +       u8 trigger;
> >
> >         if (ares->type == ACPI_RESOURCE_TYPE_END_TAG)
> >                 return AE_OK;
> > @@ -87,14 +89,28 @@ static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
> >                 dev_err(dev, "unable to parse IRQ resource\n");
> >                 return AE_ERROR;
> >         }
> > -       if (ares->type == ACPI_RESOURCE_TYPE_IRQ)
> > +       if (ares->type == ACPI_RESOURCE_TYPE_IRQ) {
> >                 gsi = p->interrupts[0];
> > -       else
> > +               trigger = p->triggering;
> > +       } else {
> >                 gsi = pext->interrupts[0];
> > +               trigger = p->triggering;

This should be 'pext->triggering' instead.

In practice, it doesn't matter, since p and pext point to the same
union, and the 'triggering' field happens to be at the same offset.
But it should still be fixed, of course.

Would you prefer a followup patch? Or can you fix it locally?


> > +       }
> >
> >         irq = r.start;
> >
> > -       if (ACPI_FAILURE(acpi_get_handle(handle, "_EVT", &evt_handle))) {
> > +       switch (gsi) {
> > +       case 0 ... 255:
> > +               sprintf(ev_name, "_%c%02hhX",
> > +                       trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
> > +
> > +               if (ACPI_SUCCESS(acpi_get_handle(handle, ev_name, &evt_handle)))
> > +                       break;
> > +               /* fall through */
> > +       default:
> > +               if (ACPI_SUCCESS(acpi_get_handle(handle, "_EVT", &evt_handle)))
> > +                       break;
> > +
> >                 dev_err(dev, "cannot locate _EVT method\n");
> >                 return AE_ERROR;
> >         }
> > --
>
> Applied as 5.8 material, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
