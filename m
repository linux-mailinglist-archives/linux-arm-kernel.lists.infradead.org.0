Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B821C28E4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 01:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x580f+T/431egcy4JnCDmMDLBb2VVMip4X5nlQzPoaA=; b=OhRLtneS0w1joN
	hTkTWbaQRbxhPK2Ghp3c4gUzBylDRtToZ+p1gSzrV97qy9fsyHarOE7THQ1mQwLv8ebH0kWudTbtI
	O+gbIrPA+T0ua7mu/aX0zzPN0g8bzn6twLDdzJ0XKIi1gGsmavCdEH3Kk6NHK73c/pQiUIMbIOSoB
	/pjcQxw/s0Li6Tur9s5kyAYfTH6GqqM89br0LEwkLfv2GbVaP7niLgDdUxCVQINbzBRJVi9byvS6L
	A7CaVhQZ4zxT4+ItdtglUhseH2V7FsKlC4zJZryTHK1j2pCw7bxpxlEqJtgwC1HCXouVeCJ7+Mepi
	Mf5qWNY9gzkakloTy2uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV1Vr-0002wk-VK; Sat, 02 May 2020 23:25:39 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV1Vl-0002vt-2W
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 23:25:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id v63so3569476pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 16:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CVlWMAKp18S0P8kQgLwOyHRbh71918p9Tk2lI3iv4Ak=;
 b=n4zyeICAYipFj095vmkRirFf/aIpFPmfyn7yX0AUCGll44pwQ7QMRWE0DG981KWMh/
 50RkcbA05DetnGlVXZdOME/SBRI3CmKpfmx5QqnIoU+qUqGrnj2YAC2uwb/UawXpqDNt
 ElLEi5tMKII3gumhjjC2Kmm79fGr/BLB0cTcj/IQa+hp/k1KPV/3KSRW2isFKvAgR+Td
 +DlVACYs2NKd0tkNIiH04fX08qe3fSpHhbYGEuQGNg898/b60N2MyOKnwtR0XYNptrvQ
 DIIzmUOMSH13JP0frhayPAzABL8BfgcZsy7Q9znHT/6ZgzADkyRm9EXzG9PazIZtt54A
 FOew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CVlWMAKp18S0P8kQgLwOyHRbh71918p9Tk2lI3iv4Ak=;
 b=Kc+48h8Typ7U4hqjNwP3Cq04UJE2OJckPrcX3ItqIzi+Wp69gO0xBYrXA/al6+foP1
 bnhpwADQBnNw6hPV0p8Rva//TunvVvYI42rTJuThfwizOA1GcgGjfjl1iaS6l/k1iPiv
 FIZmZ9lBWVaktAul/Uv02N1NTsedxWMBTMY+bHLnsb6aK5O7bmwzdSpPLsvmlp2MXMhT
 qsqkqV5o4ff9PIVpYEG+g0ULwLyX1eg0Eu1A2WByr71qpqyKeaYGSGrNwWd9PpU5/UCU
 f0Cj0c0YUckcLBg2ASIvpsz43lmM2yZEUqSD6l2aTaKIwhlEYP7pwkBdFVh+JPYqUT9u
 BIqA==
X-Gm-Message-State: AGi0Pub3WZjYOqysVc5uuFhDAh9/xca5vZO2/x9Dfa3h5AXtmExF4dvF
 mIo2DUd6MbLInNRZLzQHhgs=
X-Google-Smtp-Source: APiQypIiLyuiW51T33HPehYlOp5zHydcZZf3Uml1cyldx+ViXFmvCF0VSTrQJ+608jL9mJA7oYIHdg==
X-Received: by 2002:a62:be0c:: with SMTP id l12mr10670123pff.95.1588461932182; 
 Sat, 02 May 2020 16:25:32 -0700 (PDT)
Received: from syed ([106.210.101.167])
 by smtp.gmail.com with ESMTPSA id g16sm5243374pfq.203.2020.05.02.16.25.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 02 May 2020 16:25:31 -0700 (PDT)
Date: Sun, 3 May 2020 04:55:12 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v4 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <20200502232512.GA31703@syed>
References: <cover.1588443578.git.syednwaris@gmail.com>
 <366a64f80ee9fe1c644ea038ac112ead9766d5c8.1588443578.git.syednwaris@gmail.com>
 <20200502190354.GA6513@shinobu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502190354.GA6513@shinobu>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_162533_117040_06F4D265 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, akpm@linux-foundation.org,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 02, 2020 at 03:03:54PM -0400, William Breathitt Gray wrote:
> On Sun, May 03, 2020 at 12:21:54AM +0530, Syed Nayyar Waris wrote:
> > This patch reimplements the xgpio_set_multiple function in
> > drivers/gpio/gpio-xilinx.c to use the new for_each_set_clump macro.
> > Instead of looping for each bit in xgpio_set_multiple
> > function, now we can check each channel at a time and save cycles.
> > 
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > Cc: Michal Simek <michal.simek@xilinx.com>
> > Signed-off-by: Syed Nayyar Waris <syednwaris@gmail.com>
> > Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> > ---
> > Changes in v4:
> >  - Minor change: Hardcode value for better code readability.
> > 
> > Changes in v3:
> >  - No change.
> > 
> > Changes in v2:
> >  - No change.
> > 
> >  drivers/gpio/gpio-xilinx.c | 64 ++++++++++++++++++++------------------
> >  1 file changed, 34 insertions(+), 30 deletions(-)
> > 
> > diff --git a/drivers/gpio/gpio-xilinx.c b/drivers/gpio/gpio-xilinx.c
> > index 67f9f82e0db0..67c5eeaf1bb9 100644
> > --- a/drivers/gpio/gpio-xilinx.c
> > +++ b/drivers/gpio/gpio-xilinx.c
> > @@ -136,39 +136,43 @@ static void xgpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
> >  static void xgpio_set_multiple(struct gpio_chip *gc, unsigned long *mask,
> >  			       unsigned long *bits)
> >  {
> > -	unsigned long flags;
> > +	unsigned long flags[2];
> >  	struct xgpio_instance *chip = gpiochip_get_data(gc);
> > -	int index = xgpio_index(chip, 0);
> > -	int offset, i;
> > -
> > -	spin_lock_irqsave(&chip->gpio_lock[index], flags);
> > -
> > -	/* Write to GPIO signals */
> > -	for (i = 0; i < gc->ngpio; i++) {
> > -		if (*mask == 0)
> > -			break;
> > -		/* Once finished with an index write it out to the register */
> > -		if (index !=  xgpio_index(chip, i)) {
> > -			xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
> > -				       index * XGPIO_CHANNEL_OFFSET,
> > -				       chip->gpio_state[index]);
> > -			spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
> > -			index =  xgpio_index(chip, i);
> > -			spin_lock_irqsave(&chip->gpio_lock[index], flags);
> > -		}
> > -		if (__test_and_clear_bit(i, mask)) {
> > -			offset =  xgpio_offset(chip, i);
> > -			if (test_bit(i, bits))
> > -				chip->gpio_state[index] |= BIT(offset);
> > -			else
> > -				chip->gpio_state[index] &= ~BIT(offset);
> > -		}
> > +	u32 *const state = chip->gpio_state;
> > +	unsigned int *const width = chip->gpio_width;
> > +	const unsigned long state_size = 32;
> > +	const unsigned long total_state_bits = state_size * 2;
> 
> Hello Syed,
> 
> I don't think there's much need for these two variables either. You can
> remove the state_size and total_state_bits variables, and instead inline
> 32 and 64 directly in your code below.

Hi. Have sent v5 patchset incorporating your review comment.

Thank you.

> 
> William Breathitt Gray
> 
> > +	unsigned long offset, clump;
> > +	size_t index;
> > +
> > +	DECLARE_BITMAP(old, 64);
> > +	DECLARE_BITMAP(new, 64);
> > +	DECLARE_BITMAP(changed, 64);
> > +
> > +	spin_lock_irqsave(&chip->gpio_lock[0], flags[0]);
> > +	spin_lock_irqsave(&chip->gpio_lock[1], flags[1]);
> > +
> > +	bitmap_set_value(old, state[0], 0, width[0]);
> > +	bitmap_set_value(old, state[1], width[0], width[1]);
> > +	bitmap_replace(new, old, bits, mask, gc->ngpio);
> > +
> > +	bitmap_set_value(old, state[0], 0, state_size);
> > +	bitmap_set_value(old, state[1], state_size, state_size);
> > +	state[0] = bitmap_get_value(new, 0, width[0]);
> > +	state[1] = bitmap_get_value(new, width[0], width[1]);
> > +	bitmap_set_value(new, state[0], 0, state_size);
> > +	bitmap_set_value(new, state[1], state_size, state_size);
> > +	bitmap_xor(changed, old, new, total_state_bits);
> > +
> > +	for_each_set_clump(offset, clump, changed, total_state_bits, state_size) {
> > +		index = offset / state_size;
> > +		xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
> > +				index * XGPIO_CHANNEL_OFFSET,
> > +				state[index]);
> >  	}
> >  
> > -	xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
> > -		       index * XGPIO_CHANNEL_OFFSET, chip->gpio_state[index]);
> > -
> > -	spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
> > +	spin_unlock_irqrestore(&chip->gpio_lock[1], flags[1]);
> > +	spin_unlock_irqrestore(&chip->gpio_lock[0], flags[0]);
> >  }
> >  
> >  /**
> > -- 
> > 2.26.2
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
