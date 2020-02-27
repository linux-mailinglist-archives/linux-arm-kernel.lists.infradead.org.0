Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0336317163E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:46:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poZoN+Nmy3F7h2Q7q4VhJ1jKyQYCm5AH6SaynLZVx+U=; b=uwgPReFbsqQNrA
	5uEN0upMoVjCPoXc8ossaitiKKqjk1I113PtYg1z5OLcduwGBtkniq9dC7Ok6Z4HwLtfXCDp7vhzP
	iln9sVBI7USAwZYMVU8yNTOurjbYFUFPVfgxkrI8m3nE03c7Xfu4KCKaRouvjWCyQkUUTx2t+JhVz
	AtcDuh/3oNkB9se86dlPEY3gc/qi6uZdQlJxAq95oQT3tjmUaB+dHgfc5PomGnrP2D17RO0ynxZOI
	UH1SH60ixOiZXM9C89jYpIlHx1zYTN+f5bvosJjtPZ/b6virkF4JR5Hu4Wdb3H7cAhfzTWHt0OcPH
	HEzGqgsQqK8jfdq9TQBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7HcZ-00039l-Ht; Thu, 27 Feb 2020 11:46:27 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7HcQ-00038T-SY
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 11:46:21 +0000
X-Originating-IP: 86.202.111.97
Received: from localhost (lfbn-lyo-1-16-97.w86-202.abo.wanadoo.fr
 [86.202.111.97])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 821602000A;
 Thu, 27 Feb 2020 11:45:54 +0000 (UTC)
Date: Thu, 27 Feb 2020 12:45:54 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
Subject: Re: [PATCH] rtc: zynqmp: Add calibration set and get support
Message-ID: <20200227114554.GA3436@piout.net>
References: <1582191106-30431-1-git-send-email-srinivas.neeli@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582191106-30431-1-git-send-email-srinivas.neeli@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_034619_193820_87027D8E 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it,
 Srinivas Goud <srinivas.goud@xilinx.com>, sgoud@xilinx.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, git@xilinx.com,
 shubhraj@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 20/02/2020 15:01:46+0530, Srinivas Neeli wrote:
> diff --git a/drivers/rtc/rtc-zynqmp.c b/drivers/rtc/rtc-zynqmp.c
> index 4b1077e2f826..b4118e9e4fcc 100644
> --- a/drivers/rtc/rtc-zynqmp.c
> +++ b/drivers/rtc/rtc-zynqmp.c
> @@ -40,6 +40,12 @@
>  #define RTC_CALIB_MASK		0x1FFFFF
>  #define RTC_ALRM_MASK          BIT(1)
>  #define RTC_MSEC               1000
> +#define RTC_FR_MASK             0xF0000
> +#define RTC_SEC_MAX_VAL         0xFFFFFFFF

This value is not used

> +#define RTC_FR_MAX_TICKS        16
> +#define RTC_OFFSET_MAX          150000
> +#define RTC_OFFSET_MIN          -150000
> +#define RTC_PPB                 1000000000LL
>  
>  struct xlnx_rtc_dev {
>  	struct rtc_device	*rtc;
> @@ -184,12 +190,84 @@ static void xlnx_init_rtc(struct xlnx_rtc_dev *xrtcdev)
>  	writel(xrtcdev->calibval, (xrtcdev->reg_base + RTC_CALIB_WR));
>  }
>  
> +static int xlnx_rtc_read_offset(struct device *dev, long *offset)
> +{
> +	struct xlnx_rtc_dev *xrtcdev = dev_get_drvdata(dev);
> +	long offset_val;
> +	unsigned int reg;
> +	unsigned int tick_mult = RTC_PPB / xrtcdev->calibval;
> +

I don't get why you are not simply reusing xrtcdev->calibval. Using
.set_offset has to take precedence on any value that would have been set
using DT. Ideally, the DT binding should be removed too.

Currently, the calibration value is overwritten using the DT value
every time .set_time is called because xrtcdev->calibval is never
updated.

> +	reg = readl(xrtcdev->reg_base + RTC_CALIB_RD);
> +
> +	/* Offset with seconds ticks */
> +	offset_val = reg & RTC_TICK_MASK;
> +	offset_val = offset_val - xrtcdev->calibval;
> +	offset_val = offset_val * tick_mult;
> +
> +	/* Offset with fractional ticks */
> +	if (reg & RTC_FR_EN)
> +		offset_val += ((reg & RTC_FR_MASK) >> RTC_FR_DATSHIFT)
> +			* (tick_mult / RTC_FR_MAX_TICKS);
> +	*offset = offset_val;
> +
> +	return 0;
> +}
> +
> +static int xlnx_rtc_set_offset(struct device *dev, long offset)
> +{
> +	struct xlnx_rtc_dev *xrtcdev = dev_get_drvdata(dev);
> +	short int  max_tick;
> +	unsigned char fract_tick = 0;
> +	unsigned int  calibval;
> +	int fract_offset;
> +	unsigned int tick_mult = RTC_PPB / xrtcdev->calibval;
> +
> +	/* Make sure offset value is within supported range */
> +	if (offset < RTC_OFFSET_MIN || offset > RTC_OFFSET_MAX)
> +		return -ERANGE;
> +
> +	/* Number ticks for given offset */
> +	max_tick = div_s64_rem(offset, tick_mult, &fract_offset);
> +
> +	/* Number fractional ticks for given offset */
> +	if (fract_offset) {
> +		if (fract_offset < 0) {
> +			fract_offset = fract_offset + tick_mult;
> +			max_tick--;
> +		}
> +		if (fract_offset > (tick_mult / RTC_FR_MAX_TICKS)) {
> +			for (fract_tick = 1; fract_tick < 16; fract_tick++) {
> +				if (fract_offset <=
> +				    (fract_tick *
> +				     (tick_mult / RTC_FR_MAX_TICKS)))
> +					break;
> +			}
> +		}
> +	}
> +
> +	/* Zynqmp RTC uses second and fractional tick
> +	 * counters for compensation
> +	 */
> +	calibval = max_tick + xrtcdev->calibval;
> +
> +	if (fract_tick)
> +		calibval |= RTC_FR_EN;
> +
> +	calibval |= (fract_tick <<  RTC_FR_DATSHIFT);
> +
> +	writel(calibval, (xrtcdev->reg_base + RTC_CALIB_WR));
> +
> +	return 0;
> +}
> +
>  static const struct rtc_class_ops xlnx_rtc_ops = {
>  	.set_time	  = xlnx_rtc_set_time,
>  	.read_time	  = xlnx_rtc_read_time,
>  	.read_alarm	  = xlnx_rtc_read_alarm,
>  	.set_alarm	  = xlnx_rtc_set_alarm,
>  	.alarm_irq_enable = xlnx_rtc_alarm_irq_enable,
> +	.read_offset    = xlnx_rtc_read_offset,
> +	.set_offset     = xlnx_rtc_set_offset,
>  };
>  
>  static irqreturn_t xlnx_rtc_interrupt(int irq, void *id)
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
