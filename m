Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF14A9B43
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6HwF7wFtfwoFFi2dInqjCEe5SZoHfi1TxQoFqzkxu0=; b=KaEMO95OcAcxtR
	4KOlaq02YcwAOxQSquhtgnNITppwfng5hNrUIjRjEhQSdDogrjJKn6wnTbW1wqjUDYH4vs+0sVMJG
	EyT5qYnNZD6i/5jOCcVAvMqD6NvijoEQVpLX/EQnPZoOfv3E2khROvlK4jqIJXtPtXaXLIUQONs6a
	ub6kLW/OiWVOsiHMFEvozCapLCuwENrxPoS7kRLf7gF2yiKH0UTtUnpeKdmgewjX7KL68os8CztTs
	6gTs5EKaM94HIiWU5chaGWGX2xFLIzABb46dk/VIhKgmbJ+fRLCq3Xu6393QlW0NDuYtsvnwCxLgQ
	EzFz4me7GCe6VQ8lBorg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5luJ-00041p-9c; Thu, 05 Sep 2019 07:10:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5lsd-0002sJ-Tk
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 07:08:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id x3so811970plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 00:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=PwzRRjHAyauE5ygGFHxAxEXfzZozrZL9TYYXfKwo6ww=;
 b=PDkAL9nH5jqUhNHP6Y7eT8x0B7kuGD5XK0dTinVzbocINTNmJMN2J6IBLGHuOIap0/
 q+7HYZo1xoxoRvz5ZYQADiURHIXbhYgOybtLWyLD8MKkfUPItM6LDnQEiWuUccGmZzAa
 OrWPTgVkNPaIAo4WLjXJ7ZLgnpJva7V13i6FFyeSMy+DaK8uQsk5RwpchEAIUOQtE/Yy
 /feaBcwjeYWYNyru3hGPghhZ4fdFqfI3RHW458Xw1fswaousMGKu2NaKPZa+LIxsqatz
 rvYH2AtizjnJqd1HIWf1DyocVmkKfKcklO9EbvAm+zLKEoJ/9gfRn1bmZBaqfGASaGZk
 bgzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=PwzRRjHAyauE5ygGFHxAxEXfzZozrZL9TYYXfKwo6ww=;
 b=r8n0OSx67g2pjDgCg2nOq8+nJALmGB5UxMl8l3kQsqEojygcZA059GdqqdM9+BMe+j
 8HrcgUT5M+buVjbjCKMU4avRQl8HUfAYhiAYdMj+bI9b02jLMWp2xBZzhOzOdnyK3zP4
 rtUhJT1gnj8c6gn4ROzkmVl6ltotFuArGaAOlIN/snq+LoTxtBcqOPOfEXp+Th6AVVCW
 tmAp1X1uVTM8oW27Bgu13BdMYPZOaxTCwvDFjjYGdaWU8L1QYxX8UNSqR0/QwX/gumTY
 EdUfrOAAJKN+/7bj+ty67DKRKNcYdiE6LyzvMikgXNPqohWj/AAw0Ea25YTfEQeatMLR
 uuIw==
X-Gm-Message-State: APjAAAVCs9Y717muE5FxClAPVUElt4RcdeZ6Gu3kzXs0MAao75PR6y3Z
 R7jo0x5bvRF59yBDIZv10lo=
X-Google-Smtp-Source: APXvYqxDU4O5RR5ccOAyRtGejxYvGW4X25EjIdd2LIc3b+4GZaBaRTzhGiT16qy7APgYJPZZniNa1g==
X-Received: by 2002:a17:902:f301:: with SMTP id
 gb1mr1755357plb.249.1567667310708; 
 Thu, 05 Sep 2019 00:08:30 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.googlemail.com with ESMTPSA id v27sm2714757pgn.76.2019.09.05.00.08.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 00:08:30 -0700 (PDT)
Message-ID: <aa7bf455b3ef834fb4e965a6cfc594dc1f7ddb1c.camel@gmail.com>
Subject: Re: [PATCH v2 3/4] gpio: Add in ast2600 details to Aspeed driver
From: Rashmica Gupta <rashmica.g@gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 05 Sep 2019 17:08:24 +1000
In-Reply-To: <40601711-5fcf-40a0-bfc2-ae5043948a41@www.fastmail.com>
References: <20190905011732.16059-1-rashmica.g@gmail.com>
 <40601711-5fcf-40a0-bfc2-ae5043948a41@www.fastmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_000832_118566_461B7BED 
X-CRM114-Status: GOOD (  28.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-09-05 at 13:27 +0930, Andrew Jeffery wrote:
> 
> On Thu, 5 Sep 2019, at 10:47, Rashmica Gupta wrote:
> > The ast2600 is a new generation of SoC from ASPEED. Similarly to
> > the
> > ast2400 and ast2500, it has a GPIO controller for it's 3.6V GPIO
> > pins.
> > Additionally, it has a GPIO controller for 36 1.8V GPIO pins. These
> > voltages are fixed and cannot be configured via pinconf, so we need
> > two
> > separate drivers for them.
> 
> Working backwards, we don't really have multiple drivers, just
> different
> configurations for the same driver. So I think this should be
> reworded.
> 
> Also it's not really the voltage differences that are driving the
> different
> configurations but rather that there are two separate sets of
> registers
> in the 2600 with overlapping bank names (they happen to be split into
> 3.3V and 1.8V groups). The key point being that there aren't just
> more
> GPIO registers tacked on the end of the original 3.3V group.
> 

Good point! I'll reword this. Also they are 3.3V, I'm not sure why I
wrote 3.6V in my patches.

> > Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
> > ---
> >  drivers/gpio/gpio-aspeed.c | 30 ++++++++++++++++++++++++++++--
> >  1 file changed, 28 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-
> > aspeed.c
> > index 16c6eaf70857..4723b8780a8c 100644
> > --- a/drivers/gpio/gpio-aspeed.c
> > +++ b/drivers/gpio/gpio-aspeed.c
> > @@ -662,12 +662,14 @@ static void aspeed_gpio_irq_handler(struct
> > irq_desc *desc)
> >  	struct gpio_chip *gc = irq_desc_get_handler_data(desc);
> >  	struct irq_chip *ic = irq_desc_get_chip(desc);
> >  	struct aspeed_gpio *data = gpiochip_get_data(gc);
> > -	unsigned int i, p, girq;
> > +	unsigned int i, p, girq, banks;
> >  	unsigned long reg;
> > +	struct aspeed_gpio *gpio = gpiochip_get_data(gc);
> >  
> >  	chained_irq_enter(ic, desc);
> >  
> > -	for (i = 0; i < ARRAY_SIZE(aspeed_gpio_banks); i++) {
> > +	banks = DIV_ROUND_UP(gpio->config->nr_gpios, 32);
> > +	for (i = 0; i < banks; i++) {
> >  		const struct aspeed_gpio_bank *bank =
> > &aspeed_gpio_banks[i];
> >  
> >  		reg = ioread32(bank_reg(data, bank, reg_irq_status));
> > @@ -1108,9 +1110,33 @@ static const struct aspeed_gpio_config
> > ast2500_config =
> >  	/* 232 for simplicity, actual number is 228 (4-GPIO hole in
> > GPIOAB) */
> >  	{ .nr_gpios = 232, .props = ast2500_bank_props, };
> >  
> > +static const struct aspeed_bank_props ast2600_bank_props[] = {
> > +	/*     input	  output   */
> > +	{5, 0xffffffff,  0x0000ffff}, /* U/V/W/X */
> > +	{6, 0xffff0000,  0x0fff0000}, /* Y/Z */
> > +	{ },
> > +};
> > +
> > +static const struct aspeed_gpio_config ast2600_config =
> > +	/* 208 3.6V GPIOs */
> > +	{ .nr_gpios = 208, .props = ast2600_bank_props, };
> > +
> > +static const struct aspeed_bank_props ast2600_1_8v_bank_props[] =
> > {
> > +	/*     input	  output   */
> > +	{1, 0x0000000f,  0x0000000f}, /* E */
> 
> If there are 36 GPIOs then this configuration is suggesting that all
> of them
> are capable of input and output. A handy observation here is that the
> first
> 36 GPIOs of the 3.3V GPIO controller in the 2600 also have both
> capabilities,
> so we can re-use the 3.3V configuration if we can limit the number of
> GPIOs
> somehow.
> 
> The devicetree binding already describes an `ngpios` property so
> perhaps
> we could make use of this to use the same properties struct instance
> for both
> controllers in the 2600: Require that the property be present for
> 2600-
> compatible devicetree nodes and test for its presence in probe(),
> then fall
> back to the hard-coded value in the config struct if it is not (this
> keeps
> devicetree compatibility for the 2400 and 2500 drivers).
> 
> This way we can eliminate the aspeed,ast2600-1-8v-gpio compatible
> string
> below (we just use aspeed,ast2600-gpio for both controllers).
> 
> Thoughts?

I like this idea. Once I have confirmation that all the 1.8V pins are
indeed input and output capable I'll send out a v3.

> 
> Andrew
> 
> > +	{ },
> > +};
> > +
> > +static const struct aspeed_gpio_config ast2600_1_8v_config =
> > +	/* 36 1.8V GPIOs */
> > +	{ .nr_gpios = 36, .props = ast2600_1_8v_bank_props, };
> > +
> >  static const struct of_device_id aspeed_gpio_of_table[] = {
> >  	{ .compatible = "aspeed,ast2400-gpio", .data = &ast2400_config,
> > },
> >  	{ .compatible = "aspeed,ast2500-gpio", .data = &ast2500_config,
> > },
> > +	{ .compatible = "aspeed,ast2600-gpio", .data = &ast2600_config,
> > },
> > +	{ .compatible = "aspeed,ast2600-1-8v-gpio",
> > +	  .data = &ast2600_1_8v_config, },
> >  	{}
> >  };
> >  MODULE_DEVICE_TABLE(of, aspeed_gpio_of_table);
> > -- 
> > 2.20.1
> > 
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
