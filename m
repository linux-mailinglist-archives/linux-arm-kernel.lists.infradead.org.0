Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BA88FC87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 09:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpQVLDVi2+f4sZ7PcC4VqTnWg00u7h/NvXCU5LafXSw=; b=WgdJxG/k82Mfw4
	NAQevDe8HHqMDiOH1kamswqAoY3dx6jHpzmmDUF76yPlclN/ZuRPdY9FkqevoYc52yxaZwrTQPiiI
	ueGkrcZaWH+csxMaxx+ovVEUANiMw4jUXFHFis4E5ZwKhXLzStg7Jz25/12pkox9gdmrHWOgcU2/a
	M+I4hwHmABR7zJcrgIwrnCa72gD7Nke7pafIqci95LER+RehqNIY2aZ1Bf+zKQxRjEQNJD/IM+Kv7
	urLarm64MMOteZCisIojOy9MxJEEjUqJqfDvD48ibk0hkXIa17o9PKR/NhGid7XwHMrV7pspuNE+q
	PNAmeN1gupfFmKhhKt9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyWpc-0000ow-P1; Fri, 16 Aug 2019 07:39:28 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyWpP-0000mq-Nx
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 07:39:17 +0000
Received: by mail-ot1-f67.google.com with SMTP id g17so8024666otl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 00:39:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rNgiwRT8IqruHTtyg4qTM81WOjWWtlc2s7dRDLMNYXA=;
 b=XoMM3fWo533NoJjfN/baU0AKYn3PlW2VjSbf0mYn9wEWWBMZAaAVb2ftJghVlrpwnF
 4jxOef4tRGyXbhKf99ZnNkMBvPwwtcea68jE7YTPp9PlOZ7yGkrDuYUIjdboqQ25zBaV
 peG/mD8YuB4TbEFwfW9LeY96vKTBbUzsTiOSo4CJNDVLJ6hg39kBKLjQ3s9FZdaK4Ai2
 hWN23AmNisf1wCJc4hITtvGgDligFBucpJWKD9n2BePc/NvGhxEDErIMpLqJ4UtTX8yT
 Y49sgoncZI2NCqVnrKcl9W2bnlfyX8kFJo4LZRMzemc7sIgpqKtxNbMs74hxysSYWPb6
 M5mA==
X-Gm-Message-State: APjAAAVgRB3hwsUU1T3ayN6zc2LTt2QLmX6+HMCP3LoP+0DridHIU0+v
 grXhMb+gd+PZjJaDHDYhrTl9S5Z8jVXKWJGMv78=
X-Google-Smtp-Source: APXvYqz193ixgGnhQHDM0sA58o87yH16orCv5VbCTsKEDkS808wZnFykFKzgKwDR213pxnj04zPYszKH8AWAfSfEEwQ=
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr6603053oto.250.1565941154237; 
 Fri, 16 Aug 2019 00:39:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190816062435.881-1-hch@lst.de> <20190816062435.881-7-hch@lst.de>
In-Reply-To: <20190816062435.881-7-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 16 Aug 2019 09:39:03 +0200
Message-ID: <CAMuHMdVj+4Kh6pRGrz32w4zgwGHH4-r+-iHX1CSAXU6t4sprJw@mail.gmail.com>
Subject: Re: [PATCH 6/6] driver core: initialize a default DMA mask for
 platform device
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_003915_784887_3062A686 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Gavin Li <git@thegavinli.com>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Linux-Arch <linux-arch@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Alan Stern <stern@rowland.harvard.edu>, NXP Linux Team <linux-imx@nxp.com>,
 Mathias Nyman <mathias.nyman@intel.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Minas Harutyunyan <hminas@synopsys.com>, Bin Liu <b-liu@ti.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Geoff Levand <geoff@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On Fri, Aug 16, 2019 at 8:30 AM Christoph Hellwig <hch@lst.de> wrote:
> We still treat devices without a DMA mask as defaulting to 32-bits for
> both mask, but a few releases ago we've started warning about such
> cases, as they require special cases to work around this sloppyness.
> Add a dma_mask field to struct platform_device so that we can initialize
> the dma_mask pointer in struct device and initialize both masks to
> 32-bits by default, replacing similar functionality in m68k and
> powerpc.  The arch_setup_pdev_archdata hooks is now unused and removed.
>
> Note that the code looks a little odd with the various conditionals
> because we have to support platform_device structures that are
> statically allocated.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/m68k/kernel/dma.c               |  9 -------

Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

>  arch/sh/boards/mach-ecovec24/setup.c |  2 --
>  arch/sh/boards/mach-migor/setup.c    |  1 -

Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>
given "[PATCH 0/2] Remove calls to empty arch_setup_pdev_archdata()"
https://lore.kernel.org/linux-renesas-soc/1526641611-2769-1-git-send-email-geert+renesas@glider.be/

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
