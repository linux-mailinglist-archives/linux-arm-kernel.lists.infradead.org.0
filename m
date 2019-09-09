Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFFBAD7CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 13:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXRdD7JfDHYzPIid38I7fxGLyNb8bVQInvpCM7vTsZ4=; b=Vx/DbInnrKTNCx
	Xay/AsVXrqCQxkOdVJJ7qGhENwNnqnxk/J34AOqkvBPpz/Ku3irDqMPV9MPS0dZ4MrS4EN1s0mHFl
	FpkXE2jGMihXNc1zD+rH9p4AXRuvQ7jUjCPMG8mQCVckD70LrbloLmntU959K6xsvPENh8weEdQVy
	1ijdjvJZZgBblZjqifPzhRCdCjyXuwdcIigLDLnE+HM1d9hbVuX1rIcxG7el0AyIwW89717ElYzcK
	J79NHAutvJ68EcKQBBnLxBch3bcK30DLCIgilMPBU43iQAWNXx3JE0k+QNC5kC7UWaSf0c0xVEJnR
	aZoIppW/w6zaPs/cTQQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Hgj-00028w-Ch; Mon, 09 Sep 2019 11:18:29 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Hgb-000287-ST
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 11:18:23 +0000
Received: by mail-ot1-f65.google.com with SMTP id 41so8243125oti.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 04:18:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zh4V8eaNqjPb0Ic/4Yf7AfafCdOdwH/svi7VuLX2orY=;
 b=srIO7MgFZWgn7IzAQDQUuZxM0NHOPRuMnROaPF+C/HERHMwmarTBilBdtj+tNSiPj6
 9vDEKcsAlnvFJxlC+F0chT22F9c7s+y8Fph7kT1YXw/XPn7Kc1diCeCA3xD7OtgLgsrl
 nKX4Ii/kDVg3EQ5bxRK6P2RWfI/4sh6Z8v5W/eGzRdHohe8vzwOmq1MLf56mGWtBzFgG
 qCt35W2NMo+nu9Wo1wH7xsOR3bM+CWOgOVeASEPtN/n6U06l2TcnVBx73LoDb7Agz87m
 hdjKUx0tQmiAFscBzq5pXyikJn12GN4RWTUySMfxmhwbZTSOHvqhU4zCnq41w4Gbfa9b
 zX/A==
X-Gm-Message-State: APjAAAXtVLqaLlS2LKK2eGQPwCp9hYpkfavUgJRN01Gvxw90ri357syG
 EktWyn2yQyyLpFPV1sMUWpdk8lhwAhSh/GIKGVo=
X-Google-Smtp-Source: APXvYqxoJ5YE9dczWZW9yBoBQ0LHRTHR+SjV1aqmUHb5bh9Jk8Mb4XXtlEmXIZODlEij2FTkD0l0LwW/9wgClhVgq6E=
X-Received: by 2002:a9d:5a06:: with SMTP id v6mr18090742oth.250.1568027900747; 
 Mon, 09 Sep 2019 04:18:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190907161634.27378-1-marek.vasut@gmail.com>
In-Reply-To: <20190907161634.27378-1-marek.vasut@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Sep 2019 13:18:07 +0200
Message-ID: <CAMuHMdXVhtE5Jmpu8QYv+P8pGtegr4MGhNGRwy4Y1wRQYmL2_Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
To: Marek Vasut <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_041821_918959_D358A54A 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wolfram Sang <wsa@the-dreams.de>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Sat, Sep 7, 2019 at 6:16 PM <marek.vasut@gmail.com> wrote:
> From: Marek Vasut <marek.vasut+renesas@gmail.com>
>
> Add dma-ranges property into /soc node to describe the DMA capabilities
> of the bus. This is currently needed to translate PCI DMA ranges, which
> are limited to 32bit addresses.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>

> --- a/arch/arm64/boot/dts/renesas/r8a7795.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
> @@ -330,6 +330,7 @@
>                 #address-cells = <2>;
>                 #size-cells = <2>;
>                 ranges;
> +               dma-ranges = <0 0x40000000 0 0x40000000 0 0xc0000000>;

Shouldn't the length be 0x80000000 (for all SoCs)?
Or should we allow DMA to internal System RAM, too?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
