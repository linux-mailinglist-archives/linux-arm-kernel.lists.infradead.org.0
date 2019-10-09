Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A581D14D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJBNl7mhW40+xaD3x/CVYoTA4PLsXC7azlC8Zkl4wRs=; b=qnZnFISx6VK4ap
	QaPw0wEofd5cbozQzYr1sQjGVdchcwZHs0L4ZgpQnc9wl+F89kZhxeUFKmsDor/QECcbKVMleM47j
	TfCSmRZ/wi0Tb9VZvgTyeg8sMAEUO4aRpO49tRwjx0sV3pfLkqSesm1OD8Xqak7TlcWIbbE8Appo8
	75MCht3K5IMrDsD8MiNI4NTpJFwgTZp+uCVlRaZF9Xwxycl+/s7/7C+AOlIuUlGOEJythCa+smXx8
	JJqxkje+6usAVXEpMHFsed5gdCAPG3tjKKc+O/pMoAaY2w2aMvzcq8ld1tOawWyZ0Z/cUazmLkCvc
	fkdcQh9XqnOVxC66EDKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFOt-00022T-Be; Wed, 09 Oct 2019 17:05:23 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFOm-00021V-PD
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:05:18 +0000
Received: by mail-yw1-xc41.google.com with SMTP id m13so1063955ywa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 10:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cXYEAzqhy4HyxKWCqy6LZ1LbETT8kg39/BhJJ7xImgY=;
 b=XzVmSlbV54ObweYND+EDGBljHGj8sj2ueCWS95v8Cm859OOOsxIuOqof31AgJZJrgP
 sYoUG7ZWjf0njqLgiU/hHNjEW3C0MMBKx89WWFO4DlJsMsmXm9jBIVcqPd+ZLd3OohCE
 KhSVBkByAnQTmF2FGZmUJkgGhHEEaZhRl6B9NyXxJUeV2DGCqJZ0MjYh5FNdExNErUXW
 GEbdBw/gn5VkXbsjJ7FErGQIO1W5a+kZIEUbAKx6L4oG0gifFpjsyGy6tO64qy7oFvz6
 37uGRsoh98fhFqLA7+BGliNL2VfTiKSiDP9UYDDl71wQtxmr3M3OEC59H09+EJL7JJen
 pD0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cXYEAzqhy4HyxKWCqy6LZ1LbETT8kg39/BhJJ7xImgY=;
 b=OcgFUef5aNxQLrojt4QsxQScDZW3rl3A0Wk31bDZMLoMMcipRwdnLjnoz2ofxWCuFe
 YD6cie/8Nb4LFaqGKD46l6CsmSrL4pklM4mIr66EapHVWuzROOAq0QI7oOArxNq/El/A
 2ewffmMjRWRFB79z2XPl2yJZBIOC19CLzW0w7mmnK8fR0hQRLh9QAc90IxkvJ6pG9/Ca
 VBIuvML53BQqfJ1VrVmOKXjkc6qkG0H5bwZGe/JUXLnn3SAS7Q/TiUpbHonfYVf/waXz
 NN2Agb9Jcaxr/c+PO+xPNXB/XQje0KveoKsBDvPWjMBzZk4t30TK/FbxOu/6bpcy7ZS2
 wEyQ==
X-Gm-Message-State: APjAAAVJeXWN0uwi14hLiWEIOee/VvDH2MQ8d2cw129jiuQjYKig+WCk
 j9GnxZCpagblYiDhNPUrnlY=
X-Google-Smtp-Source: APXvYqyrAU/nAC3kYzoD94JUe4/RiRHCUfehRJlN8ivjdiAlO4Zf6n0Riga+hkaAtINX8fhZjpe9Nw==
X-Received: by 2002:a0d:e1c2:: with SMTP id k185mr3552287ywe.103.1570640712141; 
 Wed, 09 Oct 2019 10:05:12 -0700 (PDT)
Received: from icarus (072-189-084-142.res.spectrum.com. [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id u67sm682257ywf.44.2019.10.09.10.05.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 10:05:11 -0700 (PDT)
Date: Wed, 9 Oct 2019 13:05:08 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v17 09/14] gpio: uniphier: Utilize for_each_set_clump8
 macro
Message-ID: <20191009170508.GB93820@icarus>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
 <271a7735b02b6a8b1f54c018e38ea932d1fd299e.1570633189.git.vilhelm.gray@gmail.com>
 <CAK7LNAQStJsZ4cYTJyAPvjyngWkKs+5y=yzJb6vz3-cco+2-ug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAQStJsZ4cYTJyAPvjyngWkKs+5y=yzJb6vz3-cco+2-ug@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_100516_820033_DEF4FA47 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch <linux-arch@vger.kernel.org>, preid@electromag.com.au,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM mailing list <linux-pm@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 morten.tiljeset@prevas.dk, sean.nyekjaer@prevas.dk,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Lukas Wunner <lukas@wunner.de>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 01:33:06AM +0900, Masahiro Yamada wrote:
> On Thu, Oct 10, 2019 at 12:27 AM William Breathitt Gray
> <vilhelm.gray@gmail.com> wrote:
> >
> > Replace verbose implementation in set_multiple callback with
> > for_each_set_clump8 macro to simplify code and improve clarity. An
> > improvement in this case is that banks that are not masked will now be
> > skipped.
> >
> > Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> > Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> > ---
> >  drivers/gpio/gpio-uniphier.c | 16 ++++++----------
> >  1 file changed, 6 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpio/gpio-uniphier.c b/drivers/gpio/gpio-uniphier.c
> > index 93cdcc41e9fb..3e4b15d0231e 100644
> > --- a/drivers/gpio/gpio-uniphier.c
> > +++ b/drivers/gpio/gpio-uniphier.c
> > @@ -15,9 +15,6 @@
> >  #include <linux/spinlock.h>
> >  #include <dt-bindings/gpio/uniphier-gpio.h>
> >
> > -#define UNIPHIER_GPIO_BANK_MASK                \
> > -                               GENMASK((UNIPHIER_GPIO_LINES_PER_BANK) - 1, 0)
> > -
> >  #define UNIPHIER_GPIO_IRQ_MAX_NUM      24
> >
> >  #define UNIPHIER_GPIO_PORT_DATA                0x0     /* data */
> > @@ -147,15 +144,14 @@ static void uniphier_gpio_set(struct gpio_chip *chip,
> >  static void uniphier_gpio_set_multiple(struct gpio_chip *chip,
> >                                        unsigned long *mask, unsigned long *bits)
> >  {
> > -       unsigned int bank, shift, bank_mask, bank_bits;
> > -       int i;
> > +       unsigned long i;
> > +       unsigned long bank_mask;
> > +       unsigned long bank;
> > +       unsigned long bank_bits;
> 
> 
> Please do not split it into multiple lines
> unless you need to do so.
> 
> Thanks.

No problem, I'll update this patch to declare them all on the same line.

William Breathitt Gray

> > -       for (i = 0; i < chip->ngpio; i += UNIPHIER_GPIO_LINES_PER_BANK) {
> > +       for_each_set_clump8(i, bank_mask, mask, chip->ngpio) {
> >                 bank = i / UNIPHIER_GPIO_LINES_PER_BANK;
> > -               shift = i % BITS_PER_LONG;
> > -               bank_mask = (mask[BIT_WORD(i)] >> shift) &
> > -                                               UNIPHIER_GPIO_BANK_MASK;
> > -               bank_bits = bits[BIT_WORD(i)] >> shift;
> > +               bank_bits = bitmap_get_value8(bits, i);
> >
> >                 uniphier_gpio_bank_write(chip, bank, UNIPHIER_GPIO_PORT_DATA,
> >                                          bank_mask, bank_bits);
> > --
> > 2.23.0
> >
> 
> 
> -- 
> Best Regards
> Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
