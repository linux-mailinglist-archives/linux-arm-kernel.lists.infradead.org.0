Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 846A82C55E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIjbgQVIU4iP7epXmXumofbnhXRw3KI4rBHDfJGqTik=; b=d+OZuNyP5Z6Mpn
	d9aze4a7h1oGdsyO+tIXnr0GkCs2eVC2P4glohrWSwF+PK3OjYdj66Ngwz/XlfD2bzSASygrOjeE1
	0QEzP1ilWRcD08fRICTB4tW8vFxa5X2qNFksa7EPrISG9/cASSikVpJ8PKROFZdZ3HI47TkIXOXDC
	kx+ztgv1le8eMyL9QwJxnkyTaq3driAJzKwIwgusbXzhqXsqCUf/dA7cOFo5V46eedBhtlvsnpsX5
	sSVaJgHqgopO31U9J4nCLZzNtFWXWZxUxLZi1+dXaqFNOv5wkfp+6hU3YGblQnZ1/BUWdA124ZVJO
	YnwKl6fcSw3v/2q/rSig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVaFi-0002tt-Ml; Tue, 28 May 2019 11:26:46 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVaFb-0002tK-1E
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:26:40 +0000
Received: by mail-io1-xd41.google.com with SMTP id g16so15397311iom.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 04:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f63H1f5vJ9qAhu7DFKNxQrE7HwrSDOZLpyEalUp3FmA=;
 b=MoNcMVK+19rETeCSdS86WvUOF+QanmMuzgyz4USKjDCyqJy5ATxtytdNyWhLUhPzK7
 3lLrA4eJp6EUT974Ua9jV0EW1h3qZbVDHKknvEVDD0yCnCqhV3q1+395Q30LTAn5kyK8
 YJ/9sbJy+3/3jSrakrFSJGTunWBuqpSw9bTrYyQLBB2BB/1K8kUaCM1rOjXwFd8T1Kem
 x5hrYzZwsa+/3J4oY99XIA70l/itoCfN5VdEhdJgMf5CBuZH+xrGEZNyswxjs+4JDpGK
 x04m+SZ/gzISHQNxsntNIhWsx6Qp31qyqxvHeq1YNtXegLT6XWBd45+kOk48qErpubmi
 DSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f63H1f5vJ9qAhu7DFKNxQrE7HwrSDOZLpyEalUp3FmA=;
 b=UoDiftF8HOP3yJUyaewLT0yaWuSkNMub0uTWzs3c5zD5amGgjuel+pLPDwtClK/Nu/
 SbWu8WKFNvMz8VRaVrF2oxHiRtt7IQM0drqdY16Gbhz3cIXfiitjZRptj/3KOyxI2FIp
 pnI7uVU/rKhV4t7wDWfEtqDspgIf2G9cx+uFuE1/Yh4ZvSUrR5KvjvOBXoYT2ek3DZm+
 WvqCGy93qMHR9AOtd0LU6sZrLLGP4udcLn3s1K4TVCOASB5pS1AfvHywXqseXnz1CpxY
 sgyAsyNm0KynH19ba8Ta4S1mFnqOItzmIddEJr6QpcsMBUyloUAvzpPcXtDH0eSI9ua2
 6Ksg==
X-Gm-Message-State: APjAAAXQK969mGdDc0XcoGo635QK8nnTyFQjwMEI8fmy1fXW8c0N2oTc
 o65AVzxjzNeoVevFGOkdxPkspYW2RqQ4a0HX0DR4Kw==
X-Google-Smtp-Source: APXvYqxPxBqa6Q5trPqt6nLpEjrJvWagv+vXglYbTXmsfxK8aHVbZ7UlOoBk7J5fCcFuJ1NWlwPXJV7IrICxwnh16Ds=
X-Received: by 2002:a05:6602:2109:: with SMTP id
 x9mr108496iox.128.1559042797766; 
 Tue, 28 May 2019 04:26:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
 <20190527112720.2266-5-ard.biesheuvel@linaro.org>
 <CACRpkdZt-AosWLPcwDQqi_2i4adDk-ioT3g3aTicyXiZpQOGGg@mail.gmail.com>
In-Reply-To: <CACRpkdZt-AosWLPcwDQqi_2i4adDk-ioT3g3aTicyXiZpQOGGg@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 28 May 2019 13:26:25 +0200
Message-ID: <CAKv+Gu90dwSdLOwVFEuobSEAMYCS+ju8x-MDHVGng8OKG7taug@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] gpio: mb86s7x: enable ACPI support
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_042639_232690_D20D7683 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Graeme Gregory <graeme.gregory@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 at 10:34, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Mon, May 27, 2019 at 1:27 PM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
>
> > Make the mb86s7x GPIO block discoverable via ACPI. In addition, add
> > support for ACPI GPIO interrupts routed via platform interrupts, by
> > wiring the two together via the to_irq() gpiochip callback.
> >
> > Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>
> > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>

Thanks.

> I assume you want to merge this through the IRQ tree or the ACPI
> tree, so go ahead.
>
> If you want me to queue the whole thing in the GPIO tree just tell
> me (once we have the ACKs in place).
>

Marc is willing to take the whole thing via the irqchip tree. I'll
need to apply some tweaks though, so I'll send out a v4 shortly.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
