Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C0F165C74
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 12:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqIuiBnSVAxp+CrCsA5vvM4tdtJOkArx7l60E1j7cTU=; b=id6n+dYGmpWpMu
	pxRYzmC+KbvuGeB3S+IsP/lLi6grOpBCq2zkiol9uVu/GVLLEEMyyXnubmMYkrhAxDBs2kzbKvjbE
	p95h9wDNPqE96tFr3fPU73NWGFFz+I2BBNMWiLhhItBW4zL9QXwt9EsrnjKSw/OfHollcSnwG4FXl
	D+90yGp9ijs+2GGJprIui5FJQAn6ImJQlWFi7PHRJrjTyAa2m+pwuOAmBuHSqzYqf7RQqtM3CmU2x
	QBJk9JeZUgw8/O2NN+Ro+GovCf0yA6huqRXl3JEeSVDc6f39ub7j09ZXrzzVxQl5eRHtMVj/qm0m4
	rQReSkIfO+Iy4p5XPZvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4jgp-0005rQ-Al; Thu, 20 Feb 2020 11:08:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4jgh-0005qq-Bw
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 11:08:12 +0000
Received: by mail-wm1-x343.google.com with SMTP id p17so1568330wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 03:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ar2G2uxRG/czZkeC4MUfsnBfTqnZVt+SalROTcfSNAY=;
 b=LdSMyATcrqVq+1wkPrk2DT2ZfZt2yYVUkGrN3dZc2e9GCaYjFW2jfg6adajl9cTeR0
 Sh46U1Lcksm7ZWGzs9357FvencneOf4Dp7RBf084zYNUYdX4qccvc8UnIwJf5oim0agh
 LWbiNjL8OUKDNZtHvK9cY5QCnjbIBhUkorV/r3rF+Frpkmt0cwXzR5YsCFboiMgcAEiy
 t8UhNn8EQJIZfgdjftYudM4OBUMDpguUrTzk5yE64pCoD2MRltDerrR9/n/PT5Ef+mGg
 rdEU4d3BkHzR9UiwvQQu3JIRYqedO1eikPrL4Boi/NNf355DcVTNDVgYXX9VLinZdRyz
 Q24g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ar2G2uxRG/czZkeC4MUfsnBfTqnZVt+SalROTcfSNAY=;
 b=XN59OWwvozwqD04v+eM7U4K/qvJUZ1ckgyYZ7w/6tnXD4pMaIJBEWRB8jrbZGRByvj
 HXWzZYcTN1tGw+G0hwP2japykavXQBF8oM3lpYeu80pzOcXgSrr+4vIoLHFinHFkkJXJ
 LqB9P1fMycotHDMERIzVEG6lAUx6LEPRcAaX7g7UfAJhbjTdF4D2cL+uWs3fvTFAfqol
 bksduzgXsxt75uvMQx6WMKdvzgzSOQijMAw+yTUsSggPMsibwpJTV2XRrpFbSiA6fl8/
 r7IFHGzouFGtLx/ihZo8GeivvI8HXf3dQlX+u/wcolDztAuXUR/ko2pXG9F12p+qQz8D
 dgOw==
X-Gm-Message-State: APjAAAWgmM/fAPa1JXz+1mgOjkTgT9SjUrcSCf3znyhQN7ab0qRZaChO
 9odbpK01t3EVNwxGaBz3ikDdHwZpTXH9gryTV6U=
X-Google-Smtp-Source: APXvYqwdc8JQs/LddLHuBYujJ23zXBp/eT+FPZZtoMagGjYaa1MnuIvWCAZ57NpM1eGriyGn0BTbc3wrw1d/1bZ5oYw=
X-Received: by 2002:a7b:cc97:: with SMTP id p23mr3838372wma.89.1582196889370; 
 Thu, 20 Feb 2020 03:08:09 -0800 (PST)
MIME-Version: 1.0
References: <20200213025930.27943-1-jaedon.shin@gmail.com>
 <20200213025930.27943-3-jaedon.shin@gmail.com>
 <aaa85a4d-8b36-893e-3e7a-dc27b4d6bae5@gmail.com>
In-Reply-To: <aaa85a4d-8b36-893e-3e7a-dc27b4d6bae5@gmail.com>
From: Gregory Fong <gregory.0xf0@gmail.com>
Date: Thu, 20 Feb 2020 03:07:41 -0800
Message-ID: <CADtm3G40-2EQcQxisiDTd=DkPbMP4gCi4E5TsvDRL6ph51TEVQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] PCI: brcmstb: Add regulator support
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_030811_433577_6965B79F 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gregory.0xf0[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gregory.0xf0[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Jaedon Shin <jaedon.shin@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm-kernel@lists.infradead.org, Jim Quinlan <james.quinlan@broadcom.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 7:58 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
> On 2/12/2020 6:59 PM, Jaedon Shin wrote:
> > ARM-based Broadcom STB SoCs have GPIO-based voltage regulator for PCIe
> > turning off/on power supplies.
> >
> > Signed-off-by: Jaedon Shin <jaedon.shin@gmail.com>
> > ---
> >  drivers/gpio/gpio-brcmstb.c           | 13 ++++-
> >  drivers/pci/controller/pcie-brcmstb.c | 76 +++++++++++++++++++++++++++
> >  2 files changed, 88 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpio/gpio-brcmstb.c b/drivers/gpio/gpio-brcmstb.c
> > index 05e3f99ae59c..0cee5fcd2782 100644
> > --- a/drivers/gpio/gpio-brcmstb.c
> > +++ b/drivers/gpio/gpio-brcmstb.c
> > @@ -777,7 +777,18 @@ static struct platform_driver brcmstb_gpio_driver = {
> >       .remove = brcmstb_gpio_remove,
> >       .shutdown = brcmstb_gpio_shutdown,
> >  };
> > -module_platform_driver(brcmstb_gpio_driver);
> > +
> > +static int __init brcmstb_gpio_init(void)
> > +{
> > +     return platform_driver_register(&brcmstb_gpio_driver);
> > +}
> > +subsys_initcall(brcmstb_gpio_init);
> > +
> > +static void __exit brcmstb_gpio_exit(void)
> > +{
> > +     platform_driver_unregister(&brcmstb_gpio_driver);
> > +}
> > +module_exit(brcmstb_gpio_exit);
>
> We do this in the downstream tree, but there is no reason, we should
> just deal with EPROBE_DEFER being returned from the regulator subsystem
> until the GPIO provide is available.
>

Agreed, also see this thread from January 2016:
https://lore.kernel.org/linux-mips/568EAA99.1020603@gmail.com/

Best regards,
Gregory

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
