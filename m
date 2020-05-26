Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FEE1E239E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 16:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toF5i/AW3Wyhb+jmfYlBQm8uOKed3Ni51ecUC6/bfaw=; b=ng6CE7+0zck3sc
	1CkZFwZQSmobsIfjqhQCsS5txUpUvJ618/Mpz9y55UF0ADH5Ga9V/OaLTthRNmIzIjeJSQRfISk03
	qdLCXXsDoJtBvXpoIzXG6s0pqe9nSP8j0EnWkMrcKz8HtynpeMY1nUB9WReJ3i1Njv9UEjeUH0CuU
	i5spu7oGG5fEDejEea0y3iGLc63z/5bIUNPUo1Y09x+eia+51s57gskUn1EOlQkNoTjz8zAfMg2yH
	4L4pnckNw7kzweVh91EizPd8us+nwknirZp5AX13XMRjXDkHPTer37/GfmPvWjFHX53QYkaAJ37jX
	oqsLPShcvEKFUXatjSKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdaCD-0002KV-3e; Tue, 26 May 2020 14:04:45 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdaBt-0002FX-Hw
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 14:04:26 +0000
Received: by mail-ot1-f68.google.com with SMTP id z3so16325071otp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 07:04:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Ierdu4jhjBArg4KAhxK2ET/zYux67GkijyWUlcmSlg=;
 b=fSpnZ0fZ1oQUtt8Jbb3ueN2PiTNpf/l3YKg4qFjq4zjh/XCeRZDBguvahWn6pK9eWP
 9pbshpuyHdBvdZSKCugNNK4t8tBwP7NIXYpdeJ2CJ5XHX+Mn+Z93fkJcYbG1fyLE0hnD
 gQbSj+EQ1EL0St6z7zibxjNRAiBlSFGu0h1MqEY81i7RYQhjhKJOgi9sR5C/FZivL9wz
 B57+riv6JXUz8DrEuLx5P1Jyy+qqlvBxaUSWxAtIFHxPxsFe6EjaSxTtb8pxzUkMXIkH
 0yxCqJQyeZ9VHgQu9cgJqylt/u4iurUnQWUKpHdEInvydzEDRKJloogureh0Ee51WRn1
 o/eQ==
X-Gm-Message-State: AOAM5337ATiKWLZJkbpuVbkdTfmWjupVn4szdnt22Ws93M+ecjkcs0DT
 X6kQ6ykvbsAggTnkPIClAW7FOAdd/GK6qzFFcU0=
X-Google-Smtp-Source: ABdhPJyUNtHDNcsWTXkodpXr8omxt8fKKmdXPMuKjXr10pz49QCMDOCfVptyEHRHzvYaFzWQrAougJhfu1ijiVuoj4E=
X-Received: by 2002:a9d:6c0f:: with SMTP id f15mr934672otq.118.1590501863497; 
 Tue, 26 May 2020 07:04:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200515093613.18691-1-ardb@kernel.org>
 <CAJZ5v0guHdbZTsU5e7KDAHDy9Gnh67JwtSSCeDaK8mUwAk1d3g@mail.gmail.com>
 <CAMj1kXFVYOoX=pe9uVY-j_o8YhhE_Fef6q6jc8S9nzBLYSBb=g@mail.gmail.com>
In-Reply-To: <CAMj1kXFVYOoX=pe9uVY-j_o8YhhE_Fef6q6jc8S9nzBLYSBb=g@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 26 May 2020 16:04:10 +0200
Message-ID: <CAJZ5v0i0LbDjATGGN-+Xu_ztyrkCL5EXqwjdYDLwpnALiOoBtA@mail.gmail.com>
Subject: Re: [PATCH] ACPI: GED: add support for _Exx / _Lxx handler methods
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_070425_607271_9A578014 
X-CRM114-Status: GOOD (  22.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stable <stable@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 1:12 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> Hello Rafael,
>
> I spotted an issue with this patch. Please see below.
>
>
> On Fri, 15 May 2020 at 18:32, Rafael J. Wysocki <rafael@kernel.org> wrote:
> >
> > On Fri, May 15, 2020 at 11:37 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > Per the ACPI spec, interrupts in the range [0, 255] may be handled
> > > in AML using individual methods whose naming is based on the format
> > > _Exx or _Lxx, where xx is the hex representation of the interrupt
> > > index.
> > >
> > > Add support for this missing feature to our ACPI GED driver.
> > >
> > > Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> > > Cc: Len Brown <lenb@kernel.org>
> > > Cc: linux-acpi@vger.kernel.org
> > > Cc: <stable@vger.kernel.org> # v4.9+
> > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > ---
> > >  drivers/acpi/evged.c | 22 +++++++++++++++++---
> > >  1 file changed, 19 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/acpi/evged.c b/drivers/acpi/evged.c
> > > index aba0d0027586..6d7a522952bf 100644
> > > --- a/drivers/acpi/evged.c
> > > +++ b/drivers/acpi/evged.c
> > > @@ -79,6 +79,8 @@ static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
> > >         struct resource r;
> > >         struct acpi_resource_irq *p = &ares->data.irq;
> > >         struct acpi_resource_extended_irq *pext = &ares->data.extended_irq;
> > > +       char ev_name[5];
> > > +       u8 trigger;
> > >
> > >         if (ares->type == ACPI_RESOURCE_TYPE_END_TAG)
> > >                 return AE_OK;
> > > @@ -87,14 +89,28 @@ static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
> > >                 dev_err(dev, "unable to parse IRQ resource\n");
> > >                 return AE_ERROR;
> > >         }
> > > -       if (ares->type == ACPI_RESOURCE_TYPE_IRQ)
> > > +       if (ares->type == ACPI_RESOURCE_TYPE_IRQ) {
> > >                 gsi = p->interrupts[0];
> > > -       else
> > > +               trigger = p->triggering;
> > > +       } else {
> > >                 gsi = pext->interrupts[0];
> > > +               trigger = p->triggering;
>
> This should be 'pext->triggering' instead.
>
> In practice, it doesn't matter, since p and pext point to the same
> union, and the 'triggering' field happens to be at the same offset.
> But it should still be fixed, of course.
>
> Would you prefer a followup patch? Or can you fix it locally?

A followup, please.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
