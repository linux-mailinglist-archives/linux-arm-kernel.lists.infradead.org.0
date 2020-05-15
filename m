Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7061D5619
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i73e0jAgIDn74/Aei2xrxEe/MAUQjh/e3O2X99JisWk=; b=JtgKBnhC0ZrGml
	DPo5FuZq57P92Eba97r7huSJ9IF4r4y2AusRXCXnKpjhliOKVzRcteMQfBGlbUZBYjk5TmBtAFkHC
	kwzRPMxi8K9+moyPY+4XYzWW4L7Jg45ca0dtNQKorZwwZzZD5ei+WVEUAQW4xjH/DwH2jSb9B72js
	UO1aPa31EmQzENgupSEKjSVOSskS73IxiLo1MbWmPFLQOUnWe58kaxxhFk8YmstrcE15rFUP2Jv7W
	hBQzfnDe1Kk26RDP6uKlchPXyFy21/hhVmvvHI4LMJ0xLZzL8QxO40tLegNbMlbyBoHs04z/0MhLb
	ur1xW/a3otnfAvfbvEkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdGH-0001oY-T7; Fri, 15 May 2020 16:32:37 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdG8-0001ni-H0
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 16:32:29 +0000
Received: by mail-ot1-f65.google.com with SMTP id a68so2345140otb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 09:32:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1EkG6O/3cmUPYt5DCQJXeRo2YDJdl3A9XsZfu0rbjpI=;
 b=RVqa+3R/bJtK11UHdIPxC5KOnIwJwlhWp1Scwajj0AV5BEH4/jr0WBH89eUiqN7EjJ
 tyMZUj0V7aypXN3m6kjpk66rQ77Hcxut7ucQF1kkpiWX4Y3KrUIeDcJdO81xAs5wysYn
 7disfQ22lQ47UEdXIOeyxoGO77ptsFFZ7q0AtIa7zyYhmDt87p38ACizP7UaZ3TZ3P+z
 KWIqT3XZ8BXwXUgXFoD0Rh2INJXDWeq0oaa99YBpNa0FjB+wPzc1b7PvyRK5OHk8L+qf
 oGA64+pxmPtll88Ok3ZjdPi1P7E6kMY8KpzrxTycBJlr+BBT38BK6EhOJCwYniOifNfZ
 XUjw==
X-Gm-Message-State: AOAM532VEfBEqg31yB6I8geCfSCIO4z+v2VFqx69oqhf8iX2/mllAMsa
 o+p1/ulLBuPMUtQFchTxkYyshW/MDTREtsymZ0A=
X-Google-Smtp-Source: ABdhPJxo0/cj2tVHy034QYN22JdcAzua5TQIunVoodyMMWprdbREtuanWAuUarfMnKINXK9/gLW23mnPdEZd/9cbVdI=
X-Received: by 2002:a9d:6ac8:: with SMTP id m8mr2917760otq.262.1589560346499; 
 Fri, 15 May 2020 09:32:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200515093613.18691-1-ardb@kernel.org>
In-Reply-To: <20200515093613.18691-1-ardb@kernel.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 15 May 2020 18:32:14 +0200
Message-ID: <CAJZ5v0guHdbZTsU5e7KDAHDy9Gnh67JwtSSCeDaK8mUwAk1d3g@mail.gmail.com>
Subject: Re: [PATCH] ACPI: GED: add support for _Exx / _Lxx handler methods
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_093228_562511_01FD59CF 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Fri, May 15, 2020 at 11:37 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> Per the ACPI spec, interrupts in the range [0, 255] may be handled
> in AML using individual methods whose naming is based on the format
> _Exx or _Lxx, where xx is the hex representation of the interrupt
> index.
>
> Add support for this missing feature to our ACPI GED driver.
>
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Len Brown <lenb@kernel.org>
> Cc: linux-acpi@vger.kernel.org
> Cc: <stable@vger.kernel.org> # v4.9+
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  drivers/acpi/evged.c | 22 +++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/acpi/evged.c b/drivers/acpi/evged.c
> index aba0d0027586..6d7a522952bf 100644
> --- a/drivers/acpi/evged.c
> +++ b/drivers/acpi/evged.c
> @@ -79,6 +79,8 @@ static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
>         struct resource r;
>         struct acpi_resource_irq *p = &ares->data.irq;
>         struct acpi_resource_extended_irq *pext = &ares->data.extended_irq;
> +       char ev_name[5];
> +       u8 trigger;
>
>         if (ares->type == ACPI_RESOURCE_TYPE_END_TAG)
>                 return AE_OK;
> @@ -87,14 +89,28 @@ static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
>                 dev_err(dev, "unable to parse IRQ resource\n");
>                 return AE_ERROR;
>         }
> -       if (ares->type == ACPI_RESOURCE_TYPE_IRQ)
> +       if (ares->type == ACPI_RESOURCE_TYPE_IRQ) {
>                 gsi = p->interrupts[0];
> -       else
> +               trigger = p->triggering;
> +       } else {
>                 gsi = pext->interrupts[0];
> +               trigger = p->triggering;
> +       }
>
>         irq = r.start;
>
> -       if (ACPI_FAILURE(acpi_get_handle(handle, "_EVT", &evt_handle))) {
> +       switch (gsi) {
> +       case 0 ... 255:
> +               sprintf(ev_name, "_%c%02hhX",
> +                       trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
> +
> +               if (ACPI_SUCCESS(acpi_get_handle(handle, ev_name, &evt_handle)))
> +                       break;
> +               /* fall through */
> +       default:
> +               if (ACPI_SUCCESS(acpi_get_handle(handle, "_EVT", &evt_handle)))
> +                       break;
> +
>                 dev_err(dev, "cannot locate _EVT method\n");
>                 return AE_ERROR;
>         }
> --

Applied as 5.8 material, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
