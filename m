Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DDC17BCFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:41:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynkIo66RzO2T2VRv13qmsXA5bxvDzAyDM+RaGbvtcjg=; b=ua2gGUEpch7Aq0
	XM+D3WAObcL3LTE2cwr7T6sk5aetLusIv08dLu8cJ/yS20lo2nKLF8BCeFio2GOMQrDY0MX18EWeg
	yus/zZuhmzQMeeRdXA3maCId3jXbW919CafZWOc9yaFT1eqUTBTtrzFWZWwqdbe1LExGHjcdt2Tca
	h6okgwG5/fKhSzMtFWZFZzcAaB1biHN2UOoG4vB/aKISZbgTa+kDZ2bnXOZ/I2IqM6YsCo3APOfQG
	Swi+tFjZ3fbZicaVD/FNT/C2Y4BU/e+ueLHm/jg83t1VW7BHSh6k4eIBwRQ5LNULkIKsTitN57+rC
	Zt4YntlS9A9vmP0RJxUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACIQ-0006l4-7D; Fri, 06 Mar 2020 12:41:42 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACIC-0006d6-5g
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 12:41:29 +0000
Received: by mail-oi1-f193.google.com with SMTP id t24so2397134oij.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 04:41:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C7/8UfpcQCiN90TR5rRqxibvlhXF5Mt2BA1c7KeP18M=;
 b=S8PtczqyKfhiSEomDZN2XmiSXO70PapAy2MK1phDDv0E/J5naEN+Pne9FCNEy+01Dl
 8TiBX+kcgoxbLz2to4SMljm5+WHb7yKG4Z1L2b4rdPA1hcLsJyuZMEpeWlu8LqVtdswg
 T/o4BgJ5ihEhZ3n7rMN8e0W1HKr3Fs1D1dez0aoWNp5xGF5ReXiQX0Jb3SNlEB5e8i5E
 GSiOQCAlRNEtbtHGiJjGRP5qdIzcprc+jZOCBWAAd6MB+ictTdkC92AREVBIp8jRD+M7
 Q70uKKLatt7xr43uDxPau3jy2edVw+sODItvqHdHZwK5sSIi4nsTJlAXpf0kE4P2Dc/S
 ViUg==
X-Gm-Message-State: ANhLgQ2cEKumuiXzqvvvQqRhwGo4uLiM/MR8e94YqtJFAOP/XStxsA8J
 f2Wl11Ahqi34pwBqJAA1GVRGAhElR/25WemWKWY=
X-Google-Smtp-Source: ADFU+vvFX93FQt/K5Y/NK1W5n/Rkjy+IGlDMjymnBd+wtV2G0VFU7RzvCgKX4HHOXk86z4FvGXCbRuKcufXWvp0EUZE=
X-Received: by 2002:aca:ac4c:: with SMTP id v73mr2492413oie.102.1583498483747; 
 Fri, 06 Mar 2020 04:41:23 -0800 (PST)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <20200305103228.9686-2-zhang.lyra@gmail.com>
In-Reply-To: <20200305103228.9686-2-zhang.lyra@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 6 Mar 2020 13:41:11 +0100
Message-ID: <CAMuHMdU-gAhupHotQTHAZfopkGF_jQc-VrVxb24caw_BfzWd6g@mail.gmail.com>
Subject: Re: [PATCH 2/2] tty: serial: make SERIAL_SPRD not depend on ARCH_SPRD
To: Chunyan Zhang <zhang.lyra@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_044128_211028_043AACDB 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chunyan,

On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> From: Chunyan Zhang <chunyan.zhang@unisoc.com>
>
> Remove the dependency with ARCH_SPRD from sprd serial/console Kconfig-s,
> since we want them can be built-in when ARCH_SPRD is set as 'm'.

Why would you want a serial driver for a specific platform to be builtin,
while all other platform support is modular?

> Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> ---
>  drivers/tty/serial/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> index 52eaac21ff9f..2b9addc0afb5 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -1452,7 +1452,6 @@ config SERIAL_MEN_Z135
>
>  config SERIAL_SPRD
>         tristate "Support for Spreadtrum serial"
> -       depends on ARCH_SPRD
>         select SERIAL_CORE
>         help
>           This enables the driver for the Spreadtrum's serial.

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
