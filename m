Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 398275C5A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 00:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTlv9+bGkUetk5ZOKkcZ1jNhhHXKXIYDA+JrMLQvfdM=; b=A5nEjRPsWUcUQ2
	IRAtq+d6rNwggLNneVkbiQq3E4zb5lxw1CNa/tufY8ZxBKOeG2UnA7DSaSBdsdg9K+MbMGeRgZs4b
	DmcgFAkkILjPN0nr3zaKJdB5utz8JZoPHdoK8oq/kHA4LtgpDZdHsVnJauvDCeJLU5C6g07XDjE9X
	9XwVDDst1IP1KJ3nVpiMkilOcpoqJklcDZLplw7voB8ChNCTcn6MKu5f1KU3JjtbFEAZwbvc4S0SX
	BKKtgGjW0cv4dFztu7j0ODyzF0u2ZnLTtbXgYBAhwmBBstwc7yWLvkdU1Law58YiRC67IOMgcYaOA
	C8JoTJj+2b8KF/1KhyNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi4jg-0002VZ-Om; Mon, 01 Jul 2019 22:25:20 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi4j3-0002KZ-Q6
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 22:24:43 +0000
Received: by mail-io1-xd42.google.com with SMTP id h6so32560175ioh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 15:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XMyri1Kc2uUO6xCU2IcO24Tpe83UI0VvKrQ6KZuOhAU=;
 b=b1pYdXjvGR6IJz3r7vcZ/W10d9xEy0Q1egU4/nIpgqiWZSCQGbmC0Yj2PgA+Jj+bpk
 xourNJKMfRItRibpvw2EtaCtOQbu0FOHAJboaMi002paWpVJAnjCFZpnuE8CKKZilMs2
 Lo0iBT68D/W/toSa6E9HDhMCZFjL/m1FrSqqmabPVOyg2JqAQDA7EK66D5jvzklgtj5h
 0WFkjFOVDU5kRYDhqRhDcFkAlfg2TpVCKGyOLHEM4LM9Pd5PH2TAkgyj1shjYGPmHGEs
 8Vgv4Q3Wnpmqih2V29LcCNXhSb5YPBNp+9voq7pM3E52O1JLvLz05kLYFARm6Rcatk1/
 rC2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XMyri1Kc2uUO6xCU2IcO24Tpe83UI0VvKrQ6KZuOhAU=;
 b=cORSKevvpyoGqNUX0FZ9u7TFcNl+nuhBE9eoP+0PUyPGXqZoh+wx7nJ4Mczj92nbBP
 Gz21BcAMaQn++ewURf3cjVvm2ldIYo2kYoXP/lpsfAeX8ljnEULVfY6hRCbsaXnvqkgp
 XQaw5epNfrlXAKhHgdaUillMIB+MkQoRIVr2Zb7T+GFN96fW75+5b5SHn510TrDNnS2C
 JMYf82cbtAIZem4Lny75mwMIV6Dqlf01nA0gCkCytagwJiKBU5rd0FI+by5sgXIMlyG+
 D/M8Z0HV59+cYDSytg8ghpeUyUanUDNv+cM97FWmfKRnock1FYzNlDJw10hHuQS7bXu1
 sRlw==
X-Gm-Message-State: APjAAAURBv7uhGk65gMJFi2OVCO4btisu0f9Fr4eBKDFI9rTSfJLSG66
 AAsB4H+FOzUWzVy/iJMJ8hoyLt+xI4WYvLglg8yFcQ==
X-Google-Smtp-Source: APXvYqy0De/UfjY18/K1X7cMzz6lbB+XBq2gow9/0FqRHaaXvxyzPvE5Fls4BG2oJGxMFbwvX3/fSGu32V+4cDt83OM=
X-Received: by 2002:a5d:915a:: with SMTP id y26mr20178482ioq.207.1562019880815; 
 Mon, 01 Jul 2019 15:24:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190617130149.1782930-1-arnd@arndb.de>
 <7a96a4d2-25e7-f9cf-1109-23c5495325a8@oracle.com>
In-Reply-To: <7a96a4d2-25e7-f9cf-1109-23c5495325a8@oracle.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 1 Jul 2019 15:24:29 -0700
Message-ID: <CAOesGMi5urJPF3cKfF+UB_KrK50_VQw+MMS5w_UqKzEMYKeXFA@mail.gmail.com>
Subject: Re: [PATCH] soc: ti: fix irq-ti-sci link error
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_152441_903232_2F403777 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: kernle.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishanth Menon <nm@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Tony Lindgren <tony@atomide.com>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 1, 2019 at 10:36 AM <santosh.shilimkar@oracle.com> wrote:
>
> On 6/17/19 6:01 AM, Arnd Bergmann wrote:
> > The irqchip driver depends on the SoC specific driver, but we want
> > to be able to compile-test it elsewhere:
> >
> > WARNING: unmet direct dependencies detected for TI_SCI_INTA_MSI_DOMAIN
> >    Depends on [n]: SOC_TI [=n]
> >    Selected by [y]:
> >    - TI_SCI_INTA_IRQCHIP [=y] && TI_SCI_PROTOCOL [=y]
> >
> > drivers/irqchip/irq-ti-sci-inta.o: In function `ti_sci_inta_irq_domain_probe':
> > irq-ti-sci-inta.c:(.text+0x204): undefined reference to `ti_sci_inta_msi_create_irq_domain'
> >
> > Rearrange the Kconfig and Makefile so we build the soc driver whenever
> > its users are there, regardless of the SOC_TI option.
> >
> > Fixes: 49b323157bf1 ("soc: ti: Add MSI domain bus support for Interrupt Aggregator")
> > Fixes: f011df6179bd ("irqchip/ti-sci-inta: Add msi domain support")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> Thanks Arnd. Will you be able to add it to your fixes queue.
>
> FWIW, Acked-by: Santosh Shilimkar <ssantosh@kernle.org>

Cc:ing to arm@kernel.org is the best way to make sure it surfaces.

Also, please do Acked-by on separate line so the tools catch it next
time (also, check for typos. :)

Applying to fixes.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
