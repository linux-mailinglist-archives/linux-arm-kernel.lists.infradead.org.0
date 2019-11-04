Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E52EE7F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 20:05:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeu1hpeDqG2cUvzI3EiBUz/uz+iwY0PGp/b1BYT3zeA=; b=CvtJkVQBbn0o9T
	I7RgUKatBJbGiMYeR0MVg0VK0MvWZVbatLS2+BButO3MmUHbaq0D/KgNIfrZdWkLFmdgKJyvubwzX
	GZwsp1QgGRQyxLUEangP7vledz02jMjsejIgBG+Bqog8zPYZ1Fn5C7dIWVsx/5jNaJZbuvSAEE7ZX
	u+WBbHv+bDdaHkRJDlx+AZYJ/WuLHpy5Je/BnAt2sbtlG7ENSCcgq8NqwGY2qvv/kugugxBybKPl5
	xfKFtpUVcuYmrmZqJ5zRw56mUx2puWX8ZCUpx+ALkamTPnELLgrVp6j4fIFdhsVFzT4RnGQ5JZsO4
	Dg1pojb57b9s+XZQ07nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRhfW-0007l4-14; Mon, 04 Nov 2019 19:05:38 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRhfN-0007kB-HR
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 19:05:31 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iRhfE-0003cU-49; Mon, 04 Nov 2019 20:05:20 +0100
Date: Mon, 4 Nov 2019 20:05:18 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 2/2] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
In-Reply-To: <1572880204-4514-3-git-send-email-claudiu.beznea@microchip.com>
Message-ID: <alpine.DEB.2.21.1911041851230.17054@nanos.tec.linutronix.de>
References: <1572880204-4514-1-git-send-email-claudiu.beznea@microchip.com>
 <1572880204-4514-3-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_110529_724479_9F4ADA41 
X-CRM114-Status: GOOD (  26.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 4 Nov 2019, Claudiu Beznea wrote:
> +struct mchp_pit64b_common_data {
> +	void __iomem *base;
> +	struct clk *pclk;
> +	struct clk *gclk;
> +	u64 cycles;
> +	u8 pres;

Can you please make the members tabular for readability sake in all the
structs?

struct mchp_pit64b_common_data {
	void __iomem	*base;
	struct clk	*pclk;
	struct clk	*gclk;
	u64		cycles;
	u8		pres;
};


> +static struct mchp_pit64b_data {
> +	struct mchp_pit64b_clksrc_data *csd;
> +	struct mchp_pit64b_clkevt_data *ced;
> +} data;

This is suboptimal style for two reasons:

     1) Having a seperate struct and instance declaration is way simpler to
     	parse.

     2) Naming a global variable with a generic name is unintuitive and is
     	too easily confused with local variable names. See below.

> +static inline u64 mchp_pit64b_get_period(void __iomem *base)
> +{
> +	u32 lsb, msb;

lsb and msb are not really correct here. They stand for Least/Most
Significant Bit (Byte).

lsw/msw would be more correct, but 'high/low' would be sufficiently self
explaining as well.

      /*
       * Please use proper multi-line comments and not the network style.
       * below. Can you spot the difference?
       */

> +	/* LSB must be read first to guarantee an atomic read of the 64 bit
> +	 * timer.
> +	 */

Does that mean that the hardware latches the upper 32bit when the lower
32bit are read? If so, please write it out.

But aside of that this is fundamentally broken not only on SMP, but also on
UP because the clocksource read function can be called in preemptible
and/or interruptible context.

   thread()
     ktime_get))
       t = clocksource->read()
          low = read(LSW); <- Latches MSW

---> interrupt or preemption

       ktime_get))
         t = clocksource->read()
            low = read(LSW);    <- Latches MSW
	    high = read(MSW);   <- Reads correct MSW

<--- interrupt or preemption ends

          high = read(MSW);     <- Read incorrect MSW

On SMP the same issue exists between two CPUs....

> +	lsb = mchp_pit64b_read(base, MCHP_PIT64B_TLSBR);
> +	msb = mchp_pit64b_read(base, MCHP_PIT64B_TMSBR);

> +static inline void mchp_pit64b_set_period(void __iomem *base, u64 cycles)
> +{
> +	u32 lsb, msb;
> +
> +	lsb = cycles & MCHP_PIT64B_LSBMASK;
> +	msb = cycles >> 32;
> +
> +	/* LSB must be write last to guarantee an atomic update of the timer

s/write/written/

> +	 * even when SMOD=1.
> +	 */
> +	mchp_pit64b_write(base, MCHP_PIT64B_MSB_PR, msb);
> +	mchp_pit64b_write(base, MCHP_PIT64B_LSB_PR, lsb);
> +}
> +
> +static inline void mchp_pit64b_reset(struct mchp_pit64b_common_data *data,

And this is exactly the issue I mentioned above. You have a local argument
name which shadows a global variable name. Bah.

> +				     u32 mode, bool irq_ena)
> +{
> +	mode |= MCHP_PIT64B_PRESCALER(data->pres);
> +	if (data->gclk)
> +		mode |= MCHP_PIT64B_MR_SGCLK;
> +
> +	mchp_pit64b_write(data->base, MCHP_PIT64B_CR, MCHP_PIT64B_CR_SWRST);
> +	mchp_pit64b_write(data->base, MCHP_PIT64B_MR, mode);
> +	mchp_pit64b_set_period(data->base, data->cycles);
> +	if (irq_ena)
> +		mchp_pit64b_write(data->base, MCHP_PIT64B_IER,
> +				  MCHP_PIT64B_IER_PERIOD);

This lacks brackets as after the condition follows a multi-line statement.
It's techincally a single line, but visually a multi-line statement due to
the line break.

> +	mchp_pit64b_write(data->base, MCHP_PIT64B_CR, MCHP_PIT64B_CR_START);
> +}
> +
> +static u64 mchp_pit64b_read_clk(struct clocksource *cs)
> +{
> +	return mchp_pit64b_get_period(data.csd->cd->base);

Lot of indirection here in the hotpath. You surely could avoid touching
multiple cache-lines here by restructuring your data layout so that you
have the only interesting element of 'common data', i.e. base, in the
structure which encapsulates the 'clocksource'.

struct mchp_cs {
	void __iomem		*base;
	struct clocksource 	cs;
};

And then your read function becomes either:
{
    struct mchp_cs *mcs = container_of(cs, struct mchp_cs, cs);

    return read_cs(mcs->base);
}

or if you have he clocksource statically allocated, i.e.:

struct mchp_cs mchp_clksource = { /* init here */ };

{
	return read_cs(mchp_clksource.base);
}
	
> +static u64 mchp_sched_read_clk(void)
> +{
> +	return mchp_pit64b_get_period(data.csd->cd->base);

Ditto

> +
> +static int mchp_pit64b_clkevt_set_next_event(unsigned long evt,
> +					     struct clock_event_device *cedev)
> +{
> +	mchp_pit64b_set_period(data.ced->cd->base, evt);
> +	mchp_pit64b_write(data.ced->cd->base, MCHP_PIT64B_CR,
> +			  MCHP_PIT64B_CR_START);

Same issue here.

> +static irqreturn_t mchp_pit64b_interrupt(int irq, void *dev_id)
> +{
> +	struct mchp_pit64b_clkevt_data *irq_data = dev_id;
> +
> +	if (data.ced != irq_data)
> +		return IRQ_NONE;

How is this supposed to happen?

> +
> +	if (mchp_pit64b_read(irq_data->cd->base, MCHP_PIT64B_ISR) &
> +	    MCHP_PIT64B_ISR_PERIOD) {

Why are you reading this from the device and not from the mode information
of the clockevent which would be faster obviously?

> +static int __init mchp_pit64b_pres_compute(u32 *pres, u32 clk_rate,
> +					   u32 max_rate)
> +{
> +	u32 tmp;
> +
> +	for (*pres = 0; *pres < MCHP_PIT64B_PRES_MAX; (*pres)++) {
> +		tmp = clk_rate / (*pres + 1);
> +		if (tmp <= max_rate)
> +			break;
> +	}
> +
> +	if (*pres == MCHP_PIT64B_PRES_MAX)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static int __init mchp_pit64b_pres_prepare(struct mchp_pit64b_common_data *cd,
> +					   unsigned long max_rate)
> +{
> +	unsigned long pclk_rate, diff = 0, best_diff = ULONG_MAX;
> +	long gclk_round = 0;
> +	u32 pres, best_pres = 0;
> +	int ret = 0;
> +
> +	pclk_rate = clk_get_rate(cd->pclk);
> +	if (!pclk_rate)
> +		return -EINVAL;
> +
> +	if (cd->gclk) {
> +		gclk_round = clk_round_rate(cd->gclk, max_rate);
> +		if (gclk_round < 0)
> +			goto pclk;
> +
> +		if (pclk_rate / gclk_round < 3)
> +			goto pclk;
> +
> +		ret = mchp_pit64b_pres_compute(&pres, gclk_round, max_rate);
> +		if (ret)
> +			best_diff = abs(gclk_round - max_rate);
> +		else
> +			best_diff = abs(gclk_round / (pres + 1) - max_rate);
> +		best_pres = pres;
> +	}
> +
> +pclk:
> +	/* Check if requested rate could be obtained using PCLK. */
> +	ret = mchp_pit64b_pres_compute(&pres, pclk_rate, max_rate);
> +	if (ret)
> +		diff = abs(pclk_rate - max_rate);
> +	else
> +		diff = abs(pclk_rate / (pres + 1) - max_rate);
> +
> +	if (best_diff > diff) {
> +		/* Use PCLK. */
> +		cd->gclk = NULL;
> +		best_pres = pres;
> +	} else {
> +		clk_set_rate(cd->gclk, gclk_round);
> +	}
> +
> +	cd->pres = best_pres;
> +
> +	pr_info("PIT64B: using clk=%s with prescaler %u, freq=%lu [Hz]\n",
> +		cd->gclk ? "gclk" : "pclk", cd->pres,
> +		cd->gclk ? gclk_round / (cd->pres + 1)
> +			 : pclk_rate / (cd->pres + 1));
> +
> +	return 0;

Lots of undocumented functionality which open codes stuff which exists
already in the clk framework AFAICT.

Why are you not simply implementing this as clk framework components?


            |-----|
  gclk ---->|     |    |---------|
            | MUX |--->| Divider |->
  pclk ---->|     |    |---------|
            |-----|

which is exaxtly how your hardware looks like. The clk framework has all
the selection mechanisms in place and all this conditional clock stuff can
be removed all over the place simply because you just ask for the desired
frequency on init. Also suspend/resume and all the other stuff just works
without all the mess involved.

> +free:
> +	kfree(csd);
> +	data.csd = NULL;

It does not matter here, but for correctness sake this is the wrong
order and triggers my built-in UAF-race detector.

You need to NULL the pointer _before_ freeing the underlying memory.

> +static int __init mchp_pit64b_dt_init(struct device_node *node)
> +{
> +	struct mchp_pit64b_common_data *cd;
> +	u32 irq;
> +	int ret;
> +
> +	if (data.csd && data.ced)
> +		return -EBUSY;

Huch?

> +	cd = kzalloc(sizeof(*cd), GFP_KERNEL);
> +	if (!cd)
> +		return -ENOMEM;

If either data.csd or data.ced exists then the common data exists as
well. Why would you allocate another instance?

> +
> +	cd->pclk = of_clk_get_by_name(node, "pclk");
> +	if (IS_ERR(cd->pclk)) {
> +		ret = PTR_ERR(cd->pclk);
> +		goto free;
> +	}

....

> +	if (!data.ced) {

And here you actually have a conditional which is confusing at best.

> +		irq = irq_of_parse_and_map(node, 0);
> +		if (!irq) {
> +			pr_debug("%s: Failed to get PIT64B clockevent IRQ!\n",
> +				 MCHP_PIT64B_NAME);
> +			ret = -ENODEV;
> +			goto gclk_unprepare;
> +		}
> +		ret = mchp_pit64b_dt_init_clkevt(cd, irq);
> +		if (ret)
> +			goto irq_unmap;
> +	} else {
> +		ret = mchp_pit64b_dt_init_clksrc(cd);
> +		if (ret)
> +			goto gclk_unprepare;
> +	}

So the first invocation of this init function is supposed to init the clock
event device and the second one inits the clock source. And both allocate
common data. How is that common?

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
