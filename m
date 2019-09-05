Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A80A9913
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 05:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57Ux7lsgxyttPJ8DkWTDPJZP7jkTrJT7JegIIHXgNv4=; b=ok6wf4mP36vTVj
	RxNxdGvJubjNYwNUPdMgkzxB8unDTKDicAI6tLGqH/eN3AXDkJpn1D1pDg0zJpqTaWPnCQmx2KrnX
	FDX6gemYti/mc40z1amAexQtGgudiFcj5CbG7uVGl64nmJbkO95UcLlBDbhsyxI2uskNvhJtC8Bxv
	0yOMyd4kgDHKVPC6IGEsq0hLtUXNewh8BS79nIJuSd6bwtqQO2G4bDweofdYDghQHOBOfA1DjKxhV
	sLz5qxQKqYy7P2gysWQ+HrR1RFG0OP8etRg/kjhALhEzURimyUOYQRPbXS+ykI59IeIaCkdgdYbF9
	H4t85JmRHfDkskdsCSKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5itT-0005h5-3x; Thu, 05 Sep 2019 03:57:11 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5itL-0005gM-75
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 03:57:04 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 814F92224B;
 Wed,  4 Sep 2019 23:57:00 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 04 Sep 2019 23:57:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=+V9xRJ/1HYR/6pMO/bSb1yTgfA8crQE
 LD2nMcJY5P7A=; b=IoF9PQ1RkDCys0xkz+lZRQguCSRh7slGKu5KZtp+1LyW8i/
 a7DFk4a3k8BtOhf3yMfLLSfil2OCs40k4cHV+u5IYo8s+WGQ++7d/oyGVAlENucA
 o71Auw5Mq6LTZ4NPnB9KetCTEFIwBqqduKdrSUKdEj10plt+Qe/CSfJm2wQKTqFO
 UXL16wcbbdvN3cRvfC/hq7znM/QPAVG2mlvUDyxSuT7G+ISWgdmGu77tHkwPUJCS
 C4yiZuq5kYTiRqD/hznCSwgGFs5pDopWR/QAhsGJgkCt/Ircho/SU/Dpcuv3h9S9
 /ycjiFlSF9aZuJtaGI9R3k91VLlCXg9JtgMEIJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=+V9xRJ
 /1HYR/6pMO/bSb1yTgfA8crQELD2nMcJY5P7A=; b=RwBU5HufEwtLr7hmn5hFM8
 3jFoeaJ/dg+xVlYvI5fqMNShQ4Eu8zM3oi5mz+xKKP5pCsHH0uH3xEymJCvQQkoh
 44rcJkgW5aPTeOpKzS0BDRH3NeTbmcAzKcziFoieNzQ+6XuDixV9yKRHgD8HWUj1
 KNfzO3/2KvcY7cOFI+c4y7Yb4iYMuuNRoY2V9Me4HuiMLF5j0NU0+7H3gB/tX9Ay
 pJC5rI2R8fr6Jd/nzv2A18/fK0IMaOfj6+7jLKCgmmvznh1mhjUbOKCGgUZkFFpR
 0NVPf0lro9lxurIyhhsCXIdc8Mif6W5v4l+a8pV62PILCB2SJbJt+SZsu5xuQFng
 ==
X-ME-Sender: <xms:i4dwXYRhJyeuKwo61YgKWs1xYKTxeAkjPWH8YzFfRaWAyMAPeRvWKw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejiedgjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:i4dwXQIyRvLX_XI8h3N3YZS7z2WMtSyGY6UxtYCZWxpZf1NNjzwNMQ>
 <xmx:i4dwXb-2b7vzCwNRzTIqEdxId6bRzjUZf4DjhBkpK4vXb8TOTIuLcQ>
 <xmx:i4dwXXKNO2LuZxAZ5fiOhTrraiZATYgyFrnuHMtXRoczXTAl9ApV_g>
 <xmx:jIdwXWJQvkWW9LqKYDunvqlKDW5hvmqknTx00ao0U65HUg7nIQ4AOg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id E2964E00A3; Wed,  4 Sep 2019 23:56:58 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-186-gf4cb3c3-fmstable-20190904v1
Mime-Version: 1.0
Message-Id: <40601711-5fcf-40a0-bfc2-ae5043948a41@www.fastmail.com>
In-Reply-To: <20190905011732.16059-1-rashmica.g@gmail.com>
References: <20190905011732.16059-1-rashmica.g@gmail.com>
Date: Thu, 05 Sep 2019 13:27:23 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rashmica Gupta" <rashmica.g@gmail.com>,
 "Linus Walleij" <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 3/4] gpio: Add in ast2600 details to Aspeed driver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_205703_399653_7137D71F 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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



On Thu, 5 Sep 2019, at 10:47, Rashmica Gupta wrote:
> The ast2600 is a new generation of SoC from ASPEED. Similarly to the
> ast2400 and ast2500, it has a GPIO controller for it's 3.6V GPIO pins.
> Additionally, it has a GPIO controller for 36 1.8V GPIO pins. These
> voltages are fixed and cannot be configured via pinconf, so we need two
> separate drivers for them.

Working backwards, we don't really have multiple drivers, just different
configurations for the same driver. So I think this should be reworded.

Also it's not really the voltage differences that are driving the different
configurations but rather that there are two separate sets of registers
in the 2600 with overlapping bank names (they happen to be split into
3.3V and 1.8V groups). The key point being that there aren't just more
GPIO registers tacked on the end of the original 3.3V group.

> 
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
> ---
>  drivers/gpio/gpio-aspeed.c | 30 ++++++++++++++++++++++++++++--
>  1 file changed, 28 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
> index 16c6eaf70857..4723b8780a8c 100644
> --- a/drivers/gpio/gpio-aspeed.c
> +++ b/drivers/gpio/gpio-aspeed.c
> @@ -662,12 +662,14 @@ static void aspeed_gpio_irq_handler(struct irq_desc *desc)
>  	struct gpio_chip *gc = irq_desc_get_handler_data(desc);
>  	struct irq_chip *ic = irq_desc_get_chip(desc);
>  	struct aspeed_gpio *data = gpiochip_get_data(gc);
> -	unsigned int i, p, girq;
> +	unsigned int i, p, girq, banks;
>  	unsigned long reg;
> +	struct aspeed_gpio *gpio = gpiochip_get_data(gc);
>  
>  	chained_irq_enter(ic, desc);
>  
> -	for (i = 0; i < ARRAY_SIZE(aspeed_gpio_banks); i++) {
> +	banks = DIV_ROUND_UP(gpio->config->nr_gpios, 32);
> +	for (i = 0; i < banks; i++) {
>  		const struct aspeed_gpio_bank *bank = &aspeed_gpio_banks[i];
>  
>  		reg = ioread32(bank_reg(data, bank, reg_irq_status));
> @@ -1108,9 +1110,33 @@ static const struct aspeed_gpio_config ast2500_config =
>  	/* 232 for simplicity, actual number is 228 (4-GPIO hole in GPIOAB) */
>  	{ .nr_gpios = 232, .props = ast2500_bank_props, };
>  
> +static const struct aspeed_bank_props ast2600_bank_props[] = {
> +	/*     input	  output   */
> +	{5, 0xffffffff,  0x0000ffff}, /* U/V/W/X */
> +	{6, 0xffff0000,  0x0fff0000}, /* Y/Z */
> +	{ },
> +};
> +
> +static const struct aspeed_gpio_config ast2600_config =
> +	/* 208 3.6V GPIOs */
> +	{ .nr_gpios = 208, .props = ast2600_bank_props, };
> +
> +static const struct aspeed_bank_props ast2600_1_8v_bank_props[] = {
> +	/*     input	  output   */
> +	{1, 0x0000000f,  0x0000000f}, /* E */

If there are 36 GPIOs then this configuration is suggesting that all of them
are capable of input and output. A handy observation here is that the first
36 GPIOs of the 3.3V GPIO controller in the 2600 also have both capabilities,
so we can re-use the 3.3V configuration if we can limit the number of GPIOs
somehow.

The devicetree binding already describes an `ngpios` property so perhaps
we could make use of this to use the same properties struct instance for both
controllers in the 2600: Require that the property be present for 2600-
compatible devicetree nodes and test for its presence in probe(), then fall
back to the hard-coded value in the config struct if it is not (this keeps
devicetree compatibility for the 2400 and 2500 drivers).

This way we can eliminate the aspeed,ast2600-1-8v-gpio compatible string
below (we just use aspeed,ast2600-gpio for both controllers).

Thoughts?

Andrew

> +	{ },
> +};
> +
> +static const struct aspeed_gpio_config ast2600_1_8v_config =
> +	/* 36 1.8V GPIOs */
> +	{ .nr_gpios = 36, .props = ast2600_1_8v_bank_props, };
> +
>  static const struct of_device_id aspeed_gpio_of_table[] = {
>  	{ .compatible = "aspeed,ast2400-gpio", .data = &ast2400_config, },
>  	{ .compatible = "aspeed,ast2500-gpio", .data = &ast2500_config, },
> +	{ .compatible = "aspeed,ast2600-gpio", .data = &ast2600_config, },
> +	{ .compatible = "aspeed,ast2600-1-8v-gpio",
> +	  .data = &ast2600_1_8v_config, },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, aspeed_gpio_of_table);
> -- 
> 2.20.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
