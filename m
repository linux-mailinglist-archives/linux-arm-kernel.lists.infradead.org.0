Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE865B223
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 23:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xeCwIZchqR2jnVpzVaa+zNahk0/Iwq1JWl5ZC7CIcZ4=; b=f/XBLmaSKVNAaUpx/wrhOpWuC/
	1MuLJfQrkTsgf3a3pZdZc/mlKWl5Sn95nZrlyqR+y9+fju8sSVaviAbhJEZAXd4VWcfYT57ZJqTDA
	iJqLz+a0paLf2d9J4+hWKzMHoq725AouifsuarCeD0x8QBsDvipBlYoe9k0K5yTxG2pWLE1lEZvDZ
	CsbqqOZJlnjiXnzmfu7l+hajFzHFzuc2tCYOuPeBAHOl5kbAIK1MRp9GJ1rdTSMkXdcRqPx+/kyEA
	XE8mQ+SKtqHOLhJxHAnHtidUuBRZ8JMvf92GDmQQekYb5lwIVwTGy78eIxJZ8IJwQJq5ttEEw0Weo
	NiuPtxOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhhde-0006fe-Ax; Sun, 30 Jun 2019 21:45:34 +0000
Received: from hostingweb31-40.netsons.net ([89.40.174.40])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhhdQ-0005ro-6s
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 21:45:22 +0000
Received: from [78.134.78.251] (port=38792 helo=[192.168.77.66])
 by hostingweb31.netsons.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <luca@lucaceresoli.net>)
 id 1hhhd6-000CcS-Hw; Sun, 30 Jun 2019 23:45:00 +0200
From: Luca Ceresoli <luca@lucaceresoli.net>
Subject: Re: [PATCH v9 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
To: Vishal Sagar <vishal.sagar@xilinx.com>, Hyun Kwon <hyunk@xilinx.com>,
 laurent.pinchart@ideasonboard.com, mchehab@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, Michal Simek <michals@xilinx.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 hans.verkuil@cisco.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Dinesh Kumar <dineshk@xilinx.com>,
 Sandip Kothari <sandipk@xilinx.com>, Jacopo Mondi <jacopo@jmondi.org>
References: <1560247809-117978-1-git-send-email-vishal.sagar@xilinx.com>
 <1560247809-117978-3-git-send-email-vishal.sagar@xilinx.com>
Message-ID: <b51bdf5d-4002-5ec6-d687-b97b4f8bbd78@lucaceresoli.net>
Date: Sun, 30 Jun 2019 23:45:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560247809-117978-3-git-send-email-vishal.sagar@xilinx.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hostingweb31.netsons.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lucaceresoli.net
X-Get-Message-Sender-Via: hostingweb31.netsons.net: authenticated_id:
 luca@lucaceresoli.net
X-Authenticated-Sender: hostingweb31.netsons.net: luca@lucaceresoli.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_144520_486066_7FC08825 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vishal,

a few questions below about the SLBF error management.

On 11/06/19 12:10, Vishal Sagar wrote:
> The Xilinx MIPI CSI-2 Rx Subsystem soft IP is used to capture images
> from MIPI CSI-2 camera sensors and output AXI4-Stream video data ready
> for image processing. Please refer to PG232 for details.
> 
> The driver is used to set the number of active lanes, if enabled
> in hardware. The CSI2 Rx controller filters out all packets except for
> the packets with data type fixed in hardware. RAW8 packets are always
> allowed to pass through.
> 
> It is also used to setup and handle interrupts and enable the core. It
> logs all the events in respective counters between streaming on and off.
> 
> The driver supports only the video format bridge enabled configuration.
> Some data types like YUV 422 10bpc, RAW16, RAW20 are supported when the
> CSI v2.0 feature is enabled in design. When the VCX feature is enabled,
> the maximum number of virtual channels becomes 16 from 4.
> 
> Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> Reviewed-by: Hyun Kwon <hyun.kwon@xilinx.com>

...

> --- /dev/null
> +++ b/drivers/media/platform/xilinx/xilinx-csi2rxss.c

...
> +/**
> + * xcsi2rxss_irq_handler - Interrupt handler for CSI-2
> + * @irq: IRQ number
> + * @dev_id: Pointer to device state
> + *
> + * In the interrupt handler, a list of event counters are updated for
> + * corresponding interrupts. This is useful to get status / debug.
> + *
> + * In case of stream line buffer full condition, the IP is reset, stopped and
> + * an event is raised.
> + *
> + * Return: IRQ_HANDLED after handling interrupts
> + *         IRQ_NONE is no interrupts
> + */
> +static irqreturn_t xcsi2rxss_irq_handler(int irq, void *dev_id)
> +{
> +	struct xcsi2rxss_state *state = (struct xcsi2rxss_state *)dev_id;
> +	struct xcsi2rxss_core *core = &state->core;
> +	u32 status;
> +
> +	status = xcsi2rxss_read(core, XCSI_ISR_OFFSET) & XCSI_ISR_ALLINTR_MASK;
> +	dev_dbg_ratelimited(core->dev, "interrupt status = 0x%08x\n", status);
> +
> +	if (!status)
> +		return IRQ_NONE;
> +
> +	/* Received a short packet */
> +	if (status & XCSI_ISR_SPFIFONE) {
> +		dev_dbg_ratelimited(core->dev, "Short packet = 0x%08x\n",
> +				    xcsi2rxss_read(core, XCSI_SPKTR_OFFSET));
> +	}
> +
> +	/* Short packet FIFO overflow */
> +	if (status & XCSI_ISR_SPFIFOF)
> +		dev_alert_ratelimited(core->dev, "Short packet FIFO overflowed\n");
> +
> +	/*
> +	 * Stream line buffer full
> +	 * This means there is a backpressure from downstream IP
> +	 */
> +	if (status & XCSI_ISR_SLBF) {
> +		dev_alert_ratelimited(core->dev, "Stream Line Buffer Full!\n");
> +		if (core->rst_gpio) {
> +			gpiod_set_value(core->rst_gpio, 1);
> +			/* minimum 40 dphy_clk_200M cycles */
> +			ndelay(250);
> +			gpiod_set_value(core->rst_gpio, 0);
> +		}
> +		xcsi2rxss_stop_stream(state);

I've been hit by the dreadful "Stream Line Buffer Full" error, getting
the CSI-2 RX completely stuck in SLBF and not transmitting any frames
sporadically after glitches in the incoming MIPI stream. And I found
that adding xcsi2rxss_start_stream() here just after
xcsi2rxss_stop_stream() allows to continue the stream with almost no
interruption and without userspace intervention.

Do you think this is a reliable solution, or does it have side-effects I
didn't encounter? Note I'm not using pm nor the ctrls, so register
writes are limited to the enable/disable code paths.

Does video_aresetn also reset registers?

BTW in my code I also moved xcsi2rxss_stop_stream() before the if
(core->rst_gpio) {}. There is no strong reason for this, I didn't
observe any functional difference, it just looks
more logical to me to stop the IP before resetting it.

...

> +static int xcsi2rxss_probe(struct platform_device *pdev)
> +{
> +	struct v4l2_subdev *subdev;
> +	struct xcsi2rxss_state *xcsi2rxss;
> +	struct xcsi2rxss_core *core;
> +	struct resource *res;
> +	int ret, num_ctrls, i;
> +
> +	xcsi2rxss = devm_kzalloc(&pdev->dev, sizeof(*xcsi2rxss), GFP_KERNEL);
> +	if (!xcsi2rxss)
> +		return -ENOMEM;
> +
> +	core = &xcsi2rxss->core;
> +	core->dev = &pdev->dev;
> +
> +	core->clks = devm_kmemdup(core->dev, xcsi2rxss_clks,
> +				  sizeof(xcsi2rxss_clks), GFP_KERNEL);
> +	if (!core->clks)
> +		return -ENOMEM;
> +
> +	/* Reset GPIO */
> +	core->rst_gpio = devm_gpiod_get_optional(core->dev, "reset",
> +						 GPIOD_OUT_HIGH);

Is GPIOD_OUT_HIGH correct? video_aresetn is active low.

> +	if (IS_ERR(core->rst_gpio)) {
> +		if (PTR_ERR(core->rst_gpio) != -EPROBE_DEFER)
> +			dev_err(core->dev, "Video Reset GPIO not setup in DT");
> +		return PTR_ERR(core->rst_gpio);
> +	}
> +
> +	mutex_init(&xcsi2rxss->lock);
> +
> +	ret = xcsi2rxss_parse_of(xcsi2rxss);
> +	if (ret < 0)
> +		return ret;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	core->iomem = devm_ioremap_resource(core->dev, res);
> +	if (IS_ERR(core->iomem))
> +		return PTR_ERR(core->iomem);
> +
> +	core->num_clks = ARRAY_SIZE(xcsi2rxss_clks);
> +
> +	ret = clk_bulk_get(core->dev, core->num_clks, core->clks);
> +	if (ret)
> +		return ret;
> +
> +	ret = clk_bulk_prepare_enable(core->num_clks, core->clks);
> +	if (ret)
> +		goto err_clk_put;
> +
> +	if (xcsi2rxss->core.rst_gpio) {
> +		gpiod_set_value_cansleep(xcsi2rxss->core.rst_gpio, 1);
> +		/* minimum of 40 dphy_clk_200M cycles */
> +		usleep_range(1, 2);
> +		gpiod_set_value_cansleep(xcsi2rxss->core.rst_gpio, 0);
> +	}

"xcsi2rxss->core" -> "core" in these lines.

Thanks,
-- 
Luca

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
