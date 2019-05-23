Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA55274B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 05:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHWO21ImvA9zYZ8fnLFCmPZ5iv+C5gN+qw8b71yeUQU=; b=Y/9m77YiyriTMY
	2KGDSSk4sFKc+CR6Cajg5aCAmRIN/ssixkuV+Q1m8jhJJcuXHRebhDWSk9ZOtNfLV1u/uWw96Vj+4
	0Rl7yM8aWTDbzyYZPCiODDNwZiT8T1uHyCtowF0UC91LKA9S5Dg0tmHXJBiZoEijchaoMlSn4+Htj
	3ez354jDGkER4B3z7/IIMaVUvpUyJqaJD1d65F2zNTx+MbyHnCnDFgYYhUBKWOHhDcoCZ/An2YYsA
	4l30o9sL0pmmkDo3xM1/87DnuBCikyZOQS0GfxvFh3nCULBqURfgQn4zXsSdOzRxEcXzwNATkQ6XL
	H1cA5E6r7Sl/q/2MwuzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTe9G-000813-8K; Thu, 23 May 2019 03:12:06 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTe99-00080P-7C
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 03:12:00 +0000
Received: by mail-io1-xd41.google.com with SMTP id m7so3657011ioa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 20:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZEV/rTrYbrsm5G11OPGYPy+mSyQ1OAcKoS1nv9PMwiw=;
 b=PhQ/JgIq+OwtWsNg5SbJ4x/PiyBr6WlunoBwPdvzxLn7xURhq1waFX3FO9BNznU0yF
 5gWON3W07d9wI8HxMMUR20iyPJVSrjzksTMklWxtZJ8yw+PLfRTFacg718R9iU/DWYz1
 4s+2A/oxe/Xry4dzTVf8Jf70ezzDsTo/qiEPVX+5tQRy9L66f9t6grU3slZSoTWIx9MX
 iALhAemAkXsjYteAirHmBQouEx3EJFRXVhGmre9RgpkEl0ayNKrVqhNJLCNQz2pLoIg0
 aKaVTwzzouhOqvJCaMT3UkdrunAkQ6XwjsOIccx6VKi7yrymRxjt94ljsC5OrOqz0/y5
 YL/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZEV/rTrYbrsm5G11OPGYPy+mSyQ1OAcKoS1nv9PMwiw=;
 b=Ag2UOhAffqr0rdLCr37Pf4IoCUibRmcvCGWcu98O5H5Xh8LqcJS0LiA5WNVk/4ikXw
 KhY7bqyUZr2NCayGs/KYSs0WMqM07dBQ6GwQ6ixYDwh6VX9sj7RlIersHvuJRUWvbN3U
 cHKg436IpRJ1v5zWRr4t2Gp52+wPkd+vo21vcZEIYqe5D3nKvb09avAyAdq/AYh0bolN
 l0Zq4LEGJjcQAtbfCIvaAKwHLDuk7KdSHNxT3LyEO5NYmNwapb9zDgQLWOqmZ67edwyw
 +Q4wnJNy0SvJknXrau6O9IgTzT0P5xaspH0g5ZRuAXRQF483FPRqL5NoiTY97V878cGL
 0xqw==
X-Gm-Message-State: APjAAAX4MIQGBKObe7qxshB+PWW/EQo/BJFtHkvruSc+2Br8xqRlgjOj
 xi5r4nv7zvprsnwt6A6XCbWA6+6rmkTfKaka/oA=
X-Google-Smtp-Source: APXvYqxkuUWfAecH5Z0mRMgmV18FKAsua/f2L/m4KWR9mlqpOwgbk8mioIOnqOqI+kmvlajTHdDKMeATOVYcte06abU=
X-Received: by 2002:a6b:d81a:: with SMTP id y26mr55542520iob.122.1558581115261; 
 Wed, 22 May 2019 20:11:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190521143023.31810-1-miquel.raynal@bootlin.com>
 <20190521143023.31810-2-miquel.raynal@bootlin.com>
In-Reply-To: <20190521143023.31810-2-miquel.raynal@bootlin.com>
From: raymond pang <raymondpangxd@gmail.com>
Date: Thu, 23 May 2019 03:11:39 +0000
Message-ID: <CAHG4imNxsdzjzRpFWnL+PuznjdOU4hsp2E-g1bt4WVJeokfT3w@mail.gmail.com>
Subject: Re: [PATCH v4 01/10] ata: libahci: Ensure the host interrupt status
 bits are cleared
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_201159_265472_E0C25971 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (raymondpangxd[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 Nadav Haklai <nadavh@marvell.com>, devicetree@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, linux-ide@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Antoine Tenart <antoine.tenart@bootlin.com>, Jens Axboe <axboe@kernel.dk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Miquel,

This patch adds clearing GHC.IS into hot path, could you explain how
irq storm is generated? thanks
According to AHCI Spec, HBA should not refer to GHC.IS to generate
MSI when applying multiple MSIs.

Best Regards,
Raymond

On Tue, May 21, 2019 at 2:31 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> ahci_multi_irqs_intr_hard() is going to be used as interrupt handler
> to support SATA per-port interrupts. The current logic is to check and
> clear the SATA port interrupt status register only. To avoid spurious
> IRQs and interrupt storms, it will be needed to clear the port
> interrupt bit in the host interrupt status register as well.
>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/ata/libahci.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/ata/libahci.c b/drivers/ata/libahci.c
> index 692782dddc0f..9db6f488db59 100644
> --- a/drivers/ata/libahci.c
> +++ b/drivers/ata/libahci.c
> @@ -1912,7 +1912,10 @@ static void ahci_port_intr(struct ata_port *ap)
>  static irqreturn_t ahci_multi_irqs_intr_hard(int irq, void *dev_instance)
>  {
>         struct ata_port *ap = dev_instance;
> +       struct ata_host *host = ap->host;
> +       struct ahci_host_priv *hpriv = host->private_data;
>         void __iomem *port_mmio = ahci_port_base(ap);
> +       void __iomem *mmio = hpriv->mmio;
>         u32 status;
>
>         VPRINTK("ENTER\n");
> @@ -1924,6 +1927,8 @@ static irqreturn_t ahci_multi_irqs_intr_hard(int irq, void *dev_instance)
>         ahci_handle_port_interrupt(ap, port_mmio, status);
>         spin_unlock(ap->lock);
>
> +       writel(BIT(ap->port_no), mmio + HOST_IRQ_STAT);
> +
>         VPRINTK("EXIT\n");
>
>         return IRQ_HANDLED;
> --
> 2.19.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
