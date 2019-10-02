Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 670C8C4B56
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 12:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCa21c6aDbNaFdWxTqrW8ngOZQZwXezLEAJ/dXyCoF4=; b=YtN1DpD4vJIW6E
	te9iWVNSC0WhQZXfSWZ7ndZvzvXYChrXNGO5ZNpzAAl1X2nkIUN7Tj61pSTv0axK09V7qVZen+IJs
	3M6itrkW9kSj48C1uuVhbXxeGhrxRYEQ4+j4QAo/yfMnebneNwFXYhGi72VMcQ5QanS/Nl328RRnP
	NBipadQ2UTotK//qRWa0vKH/qEFHbjU4sLHmXhaQ8/jGSctx+KlIrT621/A8prLLrpXCtkQXUXXiz
	yhWX7NwlamiE97G2VPMbMY4V58UpKqC4agQAB7hlYFAZxIh5Co6LvFnspzAtfVgwvNZ3wlYu5QQAJ
	092NTlaNB18kekPIEGOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFbnw-00050B-4N; Wed, 02 Oct 2019 10:24:20 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFbno-0004wR-WC
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 10:24:15 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E04EC200017;
 Wed,  2 Oct 2019 10:23:55 +0000 (UTC)
Date: Wed, 2 Oct 2019 12:23:55 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH 2/3] watchdog: sam9x60_wdt: introduce sam9x60 watchdog
 timer driver
Message-ID: <20191002102343.GL4106@piout.net>
References: <1570001371-8174-1-git-send-email-eugen.hristev@microchip.com>
 <1570001371-8174-2-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570001371-8174-2-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_032413_337759_AC9F40F1 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, wim@linux-watchdog.org,
 linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 02/10/2019 07:35:26+0000, Eugen.Hristev@microchip.com wrote:
> +static void wdt_write(struct sam9x60_wdt *wdt, u32 field, u32 val)
> +{
> +	/*
> +	 * WDT_CR and WDT_MR must not be modified within three slow clock
> +	 * periods following a restart of the watchdog performed by a write
> +	 * access in WDT_CR.
> +	 */
> +	while (time_before(jiffies, wdt->last_ping + WDT_DELAY))
> +		usleep_range(30, 125);
> +	writel_relaxed(val, wdt->reg_base + field);
> +	wdt->last_ping = jiffies;
> +}
> +
> +static void wdt_write_nosleep(struct sam9x60_wdt *wdt, u32 field, u32 val)
> +{
> +	if (time_before(jiffies, wdt->last_ping + WDT_DELAY))
> +		usleep_range(123, 250);

So you have a _nosleep function that does sleep?

> +	writel_relaxed(val, wdt->reg_base + field);
> +	wdt->last_ping = jiffies;
> +}
> +
> +static int sam9x60_wdt_start(struct watchdog_device *wdd)
> +{
> +	struct sam9x60_wdt *wdt = watchdog_get_drvdata(wdd);
> +
> +	wdt->mr &= ~AT91_WDT_WDDIS;
> +	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
> +	wdt_write_nosleep(wdt, AT91_WDT_IER, wdt->ir);

I don't think AT91_WDT_IER needs to be protected, you can probably write
it directly. Also, you certainly need to do that before starting the
watchdog to avoid race conditions.

> +
> +	return 0;
> +}
> +
> +static int sam9x60_wdt_stop(struct watchdog_device *wdd)
> +{
> +	struct sam9x60_wdt *wdt = watchdog_get_drvdata(wdd);
> +
> +	wdt->mr |= AT91_WDT_WDDIS;
> +	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
> +	wdt_write_nosleep(wdt, AT91_WDT_IDR, wdt->ir);
> +

I don't think AT91_WDT_IDR needs to be protected.

> +	return 0;
> +}
> +
> +static int sam9x60_wdt_ping(struct watchdog_device *wdd)
> +{
> +	struct sam9x60_wdt *wdt = watchdog_get_drvdata(wdd);
> +
> +	wdt_write(wdt, AT91_WDT_CR, AT91_WDT_KEY | AT91_WDT_WDRSTT);
> +
> +	return 0;
> +}
> +
> +static int sam9x60_wdt_set_timeout(struct watchdog_device *wdd,
> +				   unsigned int timeout)
> +{
> +	struct sam9x60_wdt *wdt = watchdog_get_drvdata(wdd);
> +
> +	wdt_write(wdt, AT91_WDT_WLR,
> +		  AT91_WDT_SET_COUNTER(WDT_SEC2TICKS(timeout)));
> +

I don't think AT91_WDT_WLR needs to be protected.

> +	wdd->timeout = timeout;
> +
> +	return 0;
> +}
> +
> +static const struct watchdog_info sam9x60_wdt_info = {
> +	.options = WDIOF_SETTIMEOUT | WDIOF_MAGICCLOSE | WDIOF_KEEPALIVEPING,
> +	.identity = "Microchip SAM9X60 Watchdog",
> +};
> +
> +static const struct watchdog_ops sam9x60_wdt_ops = {
> +	.owner = THIS_MODULE,
> +	.start = sam9x60_wdt_start,
> +	.stop = sam9x60_wdt_stop,
> +	.ping = sam9x60_wdt_ping,
> +	.set_timeout = sam9x60_wdt_set_timeout,
> +};
> +
> +static irqreturn_t sam9x60_wdt_irq_handler(int irq, void *dev_id)
> +{
> +	struct sam9x60_wdt *wdt = platform_get_drvdata(dev_id);
> +
> +	if (wdt_read(wdt, AT91_WDT_ISR)) {
> +		pr_crit("Microchip Watchdog Software Reset\n");
> +		emergency_restart();
> +		pr_crit("Reboot didn't succeed\n");
> +	}

I'm not really convinced by the software restart use case but I guess it
is to be able to shut down while still flushing data to the storage.
This would not protect against kernel issues then.

> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int of_sam9x60_wdt_init(struct device_node *np, struct sam9x60_wdt *wdt)
> +{
> +	const char *tmp;
> +
> +	wdt->mr = AT91_WDT_WDDIS;
> +
> +	if (!of_property_read_string(np, "atmel,watchdog-type", &tmp) &&
> +	    !strcmp(tmp, "software"))
> +		wdt->ir = AT91_WDT_PERINT;
> +	else
> +		wdt->mr |= AT91_WDT_PERIODRST;
> +
> +	if (of_property_read_bool(np, "atmel,idle-halt"))
> +		wdt->mr |= AT91_WDT_WDIDLEHLT;
> +
> +	if (of_property_read_bool(np, "atmel,dbg-halt"))
> +		wdt->mr |= AT91_WDT_WDDBGHLT;
> +
> +	return 0;
> +}
> +
> +static int sam9x60_wdt_init(struct sam9x60_wdt *wdt)
> +{
> +	u32 reg;
> +	/*
> +	 * When booting and resuming, the bootloader may have changed the
> +	 * watchdog configuration.
> +	 * If the watchdog is already running, we can safely update it.
> +	 * Else, we have to disable it properly.
> +	 */
> +	if (wdt_enabled) {
> +		wdt_write_nosleep(wdt, AT91_WDT_MR, wdt->mr);
> +		wdt_write_nosleep(wdt, AT91_WDT_IER, wdt->ir);
> +		wdt_write(wdt, AT91_WDT_WLR,
> +			  AT91_WDT_SET_COUNTER(WDT_SEC2TICKS(WDT_DEFAULT_TIMEOUT)));
> +
> +	} else {
> +		reg = wdt_read(wdt, AT91_WDT_MR);
> +		if (!(reg & AT91_WDT_WDDIS))
> +			wdt_write_nosleep(wdt, AT91_WDT_MR,
> +					  reg | AT91_WDT_WDDIS);
> +	}
> +	return 0;
> +}
> +
> +static int sam9x60_wdt_probe(struct platform_device *pdev)
> +{
> +	struct watchdog_device *wdd;
> +	struct sam9x60_wdt *wdt;
> +	struct resource *res;
> +	void __iomem *regs;
> +	u32 irq = 0;
> +	int ret;
> +
> +	wdt = devm_kzalloc(&pdev->dev, sizeof(*wdt), GFP_KERNEL);
> +	if (!wdt)
> +		return -ENOMEM;
> +
> +	wdd = &wdt->wdd;
> +	wdd->timeout = WDT_DEFAULT_TIMEOUT;
> +	wdd->info = &sam9x60_wdt_info;
> +	wdd->ops = &sam9x60_wdt_ops;
> +	wdd->min_timeout = MIN_WDT_TIMEOUT;
> +	wdd->max_timeout = MAX_WDT_TIMEOUT;
> +	wdt->last_ping = jiffies;
> +
> +	watchdog_set_drvdata(wdd, wdt);
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	regs = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(regs))
> +		return PTR_ERR(regs);
> +
> +	wdt->reg_base = regs;
> +
> +	irq = irq_of_parse_and_map(pdev->dev.of_node, 0);
> +	if (!irq)
> +		dev_warn(&pdev->dev, "failed to get IRQ from DT\n");
> +
> +	ret = of_sam9x60_wdt_init(pdev->dev.of_node, wdt);
> +	if (ret)
> +		return ret;
> +
> +	if ((wdt->ir & AT91_WDT_PERINT) && irq) {
> +		ret = devm_request_irq(&pdev->dev, irq, sam9x60_wdt_irq_handler,
> +				       IRQF_SHARED | IRQF_IRQPOLL |
> +				       IRQF_NO_SUSPEND, pdev->name, pdev);
> +		if (ret) {
> +			dev_err(&pdev->dev,
> +				"cannot register interrupt handler\n");
> +			return ret;
> +		}
> +	}
> +
> +	watchdog_init_timeout(wdd, wdt_timeout, &pdev->dev);
> +
> +	ret = sam9x60_wdt_init(wdt);
> +	if (ret)
> +		return ret;
> +
> +	watchdog_set_nowayout(wdd, nowayout);
> +
> +	ret = watchdog_register_device(wdd);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to register watchdog device\n");
> +		return ret;
> +	}
> +
> +	platform_set_drvdata(pdev, wdt);
> +
> +	dev_info(&pdev->dev, "initialized (timeout = %d sec, nowayout = %d)\n",
> +		 wdd->timeout, nowayout);
> +
> +	return 0;
> +}
> +
> +static int sam9x60_wdt_remove(struct platform_device *pdev)
> +{
> +	struct sam9x60_wdt *wdt = platform_get_drvdata(pdev);
> +
> +	sam9x60_wdt_stop(&wdt->wdd);
> +
> +	watchdog_unregister_device(&wdt->wdd);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id sam9x60_wdt_of_match[] = {
> +	{ .compatible = "microchip,sam9x60-wdt", },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, sam9x60_wdt_of_match);
> +
> +#ifdef CONFIG_PM_SLEEP

Most of the logic has been copy/pasted from sama5d4_wdt.c and this
already miss some improvement that have been made between the time you
copied it and now.

Are you sure both drivers shouldn't be merged? I feel like this will be a
maintenance hell if we don't do that now.

> +static int sam9x60_wdt_resume(struct device *dev)
> +{
> +	struct sam9x60_wdt *wdt = dev_get_drvdata(dev);
> +
> +	/*
> +	 * FIXME: writing MR also pings the watchdog which may not be desired.
> +	 * This should only be done when the registers are lost on suspend but
> +	 * there is no way to get this information right now.
> +	 */
> +	sam9x60_wdt_init(wdt);
> +
> +	return 0;
> +}
> +#endif
> +
> +static SIMPLE_DEV_PM_OPS(sam9x60_wdt_pm_ops, NULL,
> +			 sam9x60_wdt_resume);
> +
> +static struct platform_driver sam9x60_wdt_driver = {
> +	.probe		= sam9x60_wdt_probe,
> +	.remove		= sam9x60_wdt_remove,
> +	.driver		= {
> +		.name	= "sam9x60_wdt",
> +		.pm	= &sam9x60_wdt_pm_ops,
> +		.of_match_table = sam9x60_wdt_of_match,
> +	}
> +};
> +module_platform_driver(sam9x60_wdt_driver);
> +
> +MODULE_AUTHOR("Eugen Hristev");
> +MODULE_DESCRIPTION("Microchip SAM9X60 Watchdog Timer driver");
> +MODULE_LICENSE("GPL v2");
> -- 
> 2.7.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
