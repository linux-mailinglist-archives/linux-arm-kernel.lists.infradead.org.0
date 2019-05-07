Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8CD15D39
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmS3pACO6M51uI4AzeFVO0Sm4UFn5sYuvasgvpwZh84=; b=JTZcJ7xnMsEghZ
	HSArJV945eC6b7RY5ihko0ommrnX+OVdS8PuEqsU7yy+qz+85Q+mP/M6ezyIN211/W4IudRyI019S
	ZcUdIW3DM0v30DVxVg7K5ggkN+DOmmkHuQ9d9JufR3MkfC6PJlR3x7XwwIC72g2OuKar1ac/GeDRI
	OAuMsyta1fxZgL9pt/12wfjQf+KgbyT/bWWp6KZFGCe0D3iofMALsCctWiVFIR1UcyZ1M+KeY2TbD
	R9G1ZV14xaxegdIe15YKhQGwEgUnlEGuIZVTmyK4uFc6tA88b5QnpFa0//1STe9swXVL0qWy/xLXy
	b1K9fKJzXN0N3ZZ6vX3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtKO-0007te-1F; Tue, 07 May 2019 06:11:48 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtK2-0007h7-Vv; Tue, 07 May 2019 06:11:38 +0000
Received: from [192.168.1.166] ([37.4.249.123]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MDN3O-1hYJSE3YiE-00AWHk; Tue, 07 May 2019 08:11:16 +0200
Subject: Re: [PATCH] i2c: bcm2835: Model Divider in CCF
To: Annaliese McDermond <nh6z@nh6z.net>, eric@anholt.net,
 f.fainelli@gmail.com, wsa@the-dreams.de, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20190505034339.30778-1-nh6z@nh6z.net>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <f4765697-9ce7-8b40-707a-23fae3e8580f@i2se.com>
Date: Tue, 7 May 2019 08:11:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190505034339.30778-1-nh6z@nh6z.net>
Content-Language: en-US
X-Provags-ID: V03:K1:qjuN8pegFVcCz+KSGRugG3up2qXTGUZphlsdQB2AbLSZ6dEoF8b
 LAipYY5Gnw5OJ5IEwG4LADDSTc1MR4IacXTtA/urgOfi+JKYGa47V8kNx0DsfIM6eADz/Lg
 MnUkHM3S2widW4vZ9GP2XrrWIZDL0StdUWe711QrMH+hk4vCY4vxjZ8QVSZ0U3beUeFSxyU
 FyaTNuOJR4Nx7mnTonUTg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rGyictQGXqk=:P1xv4O221hqjnN0/L2HW0/
 guW5IF9lbWIE49h38eTSa9GkC5+d18zZjIu8IV4dSpWDhocig4mbLMy+GIqA7/Dutbj5i90ds
 2l1BXkT0n667wzySg2yPQ69MfRvp2Ek9rvzrUp+sQxe55i5goQPOgEryOwZvVBBxbS48a8dd2
 5la2CoGW/9uIncG0YvmSIC8zqibiCisQoKVgqEjER69UETDRzMBPrJ+a4hEch22tz/4K9jFwa
 me+6PQwq/OdaS72/fRl6Kadt0huuiZONJkF0grsQFAzZqwqZCzNEo8COVL00eImkPiWhFbGZa
 9Aih+xjbqDY/lWJI3X02LQ4TAmiTrobUyoZgOqdEJk+Uas0EMVMvkL95W7Di96zSX8j2oLIIj
 wdLDiT0QlR+pWC6L+aZ+j+vvtCdlG1+k4qOtKjv6JdF8NYliUZt29wApOb9m1Dz5EBOFRY+3b
 KgclzVts1R7x42ph1sKvJSEJv7XtDsbiUOoKw3blWDvBmGCdgo1Oj59Ic7kx69F/zZl1Ke1Pm
 /G/8A5GG2fSC8GNqbC/b+wAeF4VCW0Z40Yo0+8U4XxF2xLBGhEMoQOaDuX0pDRDV335JX+uJh
 ks1MVzd8CzCoZH8Koq/dnIgYmwolOkm29LfEHWu8iq5rUudha1Owdq7wcPNpxDL0xUqoRfYgf
 8D/BOTZi+gsIGd0V7tPk4kG1BpimJ/BpslQiwHl8ujsYQwTQNDLPw1XCrc0P7RisPeaN+g0/v
 frt7yW36awm08JfdKPy9SHuWWfpvZW9e6w5u5D3I41yckPx0ArI3VtAqgog=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_231127_859161_E3199DF9 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: team@nwdigitalradio.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

assuming Wolfram is fine with this approach, my comments below

Am 05.05.19 um 05:43 schrieb Annaliese McDermond:
> ...
>
> Signed-off-by: Annaliese McDermond <nh6z@nh6z.net>
> ---
>  drivers/i2c/busses/i2c-bcm2835.c | 143 +++++++++++++++++++++++--------
>  1 file changed, 108 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/i2c/busses/i2c-bcm2835.c b/drivers/i2c/busses/i2c-bcm2835.c
> index d2fbb4bb4a43..1f9f60b80618 100644
> --- a/drivers/i2c/busses/i2c-bcm2835.c
> +++ b/drivers/i2c/busses/i2c-bcm2835.c
> @@ -4,6 +4,8 @@
>   */
>  
>  #include <linux/clk.h>
> +#include <linux/clkdev.h>
> +#include <linux/clk-provider.h>
>  #include <linux/completion.h>
>  #include <linux/err.h>
>  #include <linux/i2c.h>
> @@ -51,9 +53,7 @@
>  struct bcm2835_i2c_dev {
>  	struct device *dev;
>  	void __iomem *regs;
> -	struct clk *clk;
>  	int irq;
> -	u32 bus_clk_rate;
>  	struct i2c_adapter adapter;
>  	struct completion completion;
>  	struct i2c_msg *curr_msg;
> @@ -74,26 +74,28 @@ static inline u32 bcm2835_i2c_readl(struct bcm2835_i2c_dev *i2c_dev, u32 reg)
>  	return readl(i2c_dev->regs + reg);
>  }
>  
> -static int bcm2835_i2c_set_divider(struct bcm2835_i2c_dev *i2c_dev)
> +#define to_clk_bcm2835_i2c(_hw) container_of(_hw, struct clk_bcm2835_i2c, hw)
> +struct clk_bcm2835_i2c {
> +	struct clk_hw hw;
> +	struct bcm2835_i2c_dev *i2c_dev;
> +};
> +
> +static int clk_bcm2835_i2c_set_rate(struct clk_hw *hw, unsigned long rate,
> +				unsigned long parent_rate)
>  {
> +	struct clk_bcm2835_i2c *div = to_clk_bcm2835_i2c(hw);
> +
please avoid such whitespace changes, i assume checkpatch.pl would
complain about this
>  	u32 divider, redl, fedl;
>  
> -	divider = DIV_ROUND_UP(clk_get_rate(i2c_dev->clk),
> -			       i2c_dev->bus_clk_rate);
> -	/*
> -	 * Per the datasheet, the register is always interpreted as an even
> -	 * number, by rounding down. In other words, the LSB is ignored. So,
> -	 * if the LSB is set, increment the divider to avoid any issue.
> -	 */
please try to keep this comment somewhere
> +	divider = DIV_ROUND_UP(parent_rate, rate);
>  	if (divider & 1)
>  		divider++;
> +
>  	if ((divider < BCM2835_I2C_CDIV_MIN) ||
> -	    (divider > BCM2835_I2C_CDIV_MAX)) {
> -		dev_err_ratelimited(i2c_dev->dev, "Invalid clock-frequency\n");
> +	    (divider > BCM2835_I2C_CDIV_MAX))
>  		return -EINVAL;
> -	}
>  
> -	bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_DIV, divider);
> +	bcm2835_i2c_writel(div->i2c_dev, BCM2835_I2C_DIV, divider);
>  
>  	/*
>  	 * Number of core clocks to wait after falling edge before
> @@ -108,12 +110,72 @@ static int bcm2835_i2c_set_divider(struct bcm2835_i2c_dev *i2c_dev)
>  	 */
>  	redl = max(divider / 4, 1u);
>  
> -	bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_DEL,
> +	bcm2835_i2c_writel(div->i2c_dev, BCM2835_I2C_DEL,
>  			   (fedl << BCM2835_I2C_FEDL_SHIFT) |
>  			   (redl << BCM2835_I2C_REDL_SHIFT));
> +
this whitespace change is unrelated
>  	return 0;
>  }
>  
> +static long clk_bcm2835_i2c_round_rate(struct clk_hw *hw, unsigned long rate,
> +				unsigned long *parent_rate)
> +{
> +	u32 divider;
> +
> +	divider = DIV_ROUND_UP(*parent_rate, rate);
this could go into one line
> +	if (divider & 1)
> +		divider++;
> +
> +	if ((divider < BCM2835_I2C_CDIV_MIN) ||
> +	    (divider > BCM2835_I2C_CDIV_MAX))
> +		return -EINVAL;
> +
> +	return DIV_ROUND_UP(*parent_rate, divider);
> +}
> +
> +static unsigned long clk_bcm2835_i2c_recalc_rate(struct clk_hw *hw,
> +						unsigned long parent_rate)
> +{
> +	struct clk_bcm2835_i2c *div = to_clk_bcm2835_i2c(hw);
> +
same here, no empty line between the declarations
> +	u32 divider;
> +
> +	divider = bcm2835_i2c_readl(div->i2c_dev, BCM2835_I2C_DIV);
> +
> +	return DIV_ROUND_UP(parent_rate, divider);
> +}
> +
> +static const struct clk_ops clk_bcm2835_i2c_ops = {
> +	.set_rate = clk_bcm2835_i2c_set_rate,
> +	.round_rate = clk_bcm2835_i2c_round_rate,
> +	.recalc_rate = clk_bcm2835_i2c_recalc_rate,
> +};
> +
> +static struct clk *bcm2835_i2c_register_div(struct device *dev,
> +					const char *mclk_name,
> +					struct bcm2835_i2c_dev *i2c_dev)
> +{
> +	struct clk_init_data init;
> +	struct clk_bcm2835_i2c *priv;
> +	const char *devname = dev_name(dev);
> +
> +	init.ops = &clk_bcm2835_i2c_ops;
> +	init.name = "bcm2835-i2c";
> +	init.parent_names = (const char* []) { mclk_name };
> +	init.num_parents = 1;
> +	init.flags = 0;
> +
> +	priv = devm_kzalloc(dev, sizeof(struct clk_bcm2835_i2c), GFP_KERNEL);
> +	if (priv == NULL)
> +		return (struct clk *) -ENOMEM;
ERR_PTR(-ENOMEM) ?
> +
> +	priv->hw.init = &init;
> +	priv->i2c_dev = i2c_dev;
> +
> +	clk_hw_register_clkdev(&priv->hw, init.name, devname);
> +	return devm_clk_register(dev, &priv->hw);
> +}
> +
>  static void bcm2835_fill_txfifo(struct bcm2835_i2c_dev *i2c_dev)
>  {
>  	u32 val;
> @@ -271,7 +333,7 @@ static int bcm2835_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[],
>  {
>  	struct bcm2835_i2c_dev *i2c_dev = i2c_get_adapdata(adap);
>  	unsigned long time_left;
> -	int i, ret;
> +	int i;
>  
>  	for (i = 0; i < (num - 1); i++)
>  		if (msgs[i].flags & I2C_M_RD) {
> @@ -280,10 +342,6 @@ static int bcm2835_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[],
>  			return -EOPNOTSUPP;
>  		}
>  
> -	ret = bcm2835_i2c_set_divider(i2c_dev);
> -	if (ret)
> -		return ret;
> -
>  	i2c_dev->curr_msg = msgs;
>  	i2c_dev->num_msgs = num;
>  	reinit_completion(&i2c_dev->completion);
> @@ -338,6 +396,9 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
>  	struct resource *mem, *irq;
>  	int ret;
>  	struct i2c_adapter *adap;
> +	const char *mclk_name;
> +	struct clk *bus_clk;
> +	u32 bus_clk_rate;
>  
>  	i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
>  	if (!i2c_dev)
> @@ -351,21 +412,6 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
>  	if (IS_ERR(i2c_dev->regs))
>  		return PTR_ERR(i2c_dev->regs);
>  
> -	i2c_dev->clk = devm_clk_get(&pdev->dev, NULL);
> -	if (IS_ERR(i2c_dev->clk)) {
> -		if (PTR_ERR(i2c_dev->clk) != -EPROBE_DEFER)
> -			dev_err(&pdev->dev, "Could not get clock\n");
> -		return PTR_ERR(i2c_dev->clk);
> -	}
> -
> -	ret = of_property_read_u32(pdev->dev.of_node, "clock-frequency",
> -				   &i2c_dev->bus_clk_rate);
> -	if (ret < 0) {
> -		dev_warn(&pdev->dev,
> -			 "Could not read clock-frequency property\n");
> -		i2c_dev->bus_clk_rate = 100000;
> -	}
> -
>  	irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
>  	if (!irq) {
>  		dev_err(&pdev->dev, "No IRQ resource\n");
> @@ -380,6 +426,30 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
>  		return -ENODEV;
>  	}
>  
> +	mclk_name = of_clk_get_parent_name(pdev->dev.of_node, 0);
> +
> +	bus_clk = bcm2835_i2c_register_div(&pdev->dev, mclk_name, i2c_dev);

this function could return an error, so we better handle this

Thanks Stefan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
