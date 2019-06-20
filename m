Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 847574DC60
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 23:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WnBRQn09UWIrLIz+s0QF86BETkbRprudUW1hH/7w2sQ=; b=gJQwGzJqOnydts
	0UoNpuYbCY2lAoCjaFrZeqPX0v+NGFe1hhb25tzDz2LwXGUGqjENu8R45OvPAA+I2EvdSQt8XpN5o
	p5eSsUtTd1c+/l2EWAkZPcPZF+B875tD/Jvvmsd95ZwZVrOEN7QpSTFYpqCLYIxyef7CtwCyEEeQd
	Tiy+9OWL5iA+vxaihK5fycD6bYv3xGb1oWixmGaLRULjloVEpXQQ9ZUNTZrr7SaDYjyZvUZDr93tC
	ROFYhsauR/uCBigDttY64T8Lk994tfxRK+DQgZXTUR5D+f8eSn6OU0Z8+1JqfltBeL7KHVkiK865j
	ooFEEAJznp+x5pc8n9jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4S1-0003nG-Dz; Thu, 20 Jun 2019 21:18:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4Rj-0003m5-Mg; Thu, 20 Jun 2019 21:18:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CgfSr6OXpUyqvm3UTW7jbZ0Gfdfs29YwkHCNmm8OMhA=; b=G1zhdoz2AQEleJNPzDZEUV9+4
 qTqFFBkO/XhhIcIKKxUaYDW3QnPt+1YtHlXtMEG9L50lx3SgzemvB/wejqkuWoogzz7IbWwMUh6RF
 ABspNvjxA9cL6kBlx0c8OfIL/v7jArqdNkQqIhJMZjvUl4RUz3aDeDObSbcKLeVJ3g1Usv/V8sHrp
 cm03WqevHZfgFVPT58O9QkzqWGxp3CHGQOcf/mEqLU/4XuA4MeLHmHM7mVaaZ9tWxzVuGk5fYfvA/
 UterMgq0v3mKYQipBk+39N/J67Om3LVpGC9XwjLoG2KRtkcOw6cw65U/cG1ooopq+F9pzXmjBuPWx
 hdWQNvRQw==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4Rh-000676-7Y; Thu, 20 Jun 2019 21:18:15 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id D39F9C0003;
 Thu, 20 Jun 2019 21:17:36 +0000 (UTC)
Date: Thu, 20 Jun 2019 23:17:36 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kevin Hilman <khilman@kernel.org>
Subject: Re: [PATCH 2/2] rtc: Add Amlogic Virtual Wake RTC
Message-ID: <20190620211736.GF23549@piout.net>
References: <20190607194343.18359-1-khilman@kernel.org>
 <20190607194343.18359-2-khilman@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607194343.18359-2-khilman@kernel.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_221813_346607_76606D0A 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Kevin,

On 07/06/2019 12:43:43-0700, Kevin Hilman wrote:
> +static int meson_vrtc_read_time(struct device *dev, struct rtc_time *tm)
> +{
> +	unsigned long local_time;
> +	struct timespec64 time;
> +
> +	ktime_get_raw_ts64(&time);
> +	local_time = time.tv_sec - (sys_tz.tz_minuteswest * 60);
The RTC is supposed to be set to UTC so the TZ adjustment is not
necessary.

> +	rtc_time_to_tm(local_time, tm);
> +

Please use the 64 bit version.

> +	return 0;
> +}
> +
> +static void meson_vrtc_set_wakeup_time(struct meson_vrtc_data *vrtc,
> +				       unsigned long time)
> +{
> +	writel_relaxed(time, vrtc->io_alarm);
> +
> +	dev_dbg(&vrtc->pdev->dev, "set_wakeup_time: %lu\n", time);
> +}
> +
> +static int meson_vrtc_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
> +{
> +	struct meson_vrtc_data *vrtc = dev_get_drvdata(dev);
> +	struct timespec64 time;
> +	unsigned long local_time;
> +	unsigned long alarm_secs;
> +	int ret;
> +
> +	if (alarm->enabled) {
> +		ret = rtc_tm_to_time(&alarm->time, &alarm_secs);
> +		if (ret)
> +			return ret;
> +

Use the 64bit version which makes it clear that it never fails (checking
ret is useless).

> +		ktime_get_raw_ts64(&time);
> +		local_time = time.tv_sec - (sys_tz.tz_minuteswest * 60);
> +
> +		vrtc->alarm_time = alarm_secs;
> +
> +		if (alarm_secs >= local_time) {

This is already ensured by the core so no need to check here.

> +			alarm_secs = alarm_secs - local_time;
> +
> +			meson_vrtc_set_wakeup_time(vrtc, alarm_secs);
> +
> +			pr_debug("system will wakeup %lus later\n", alarm_secs);
> +		}
> +	} else {
> +		vrtc->alarm_time = 0;
> +		meson_vrtc_set_wakeup_time(vrtc, 0);
> +	}
> +
> +	return 0;
> +}
> +
> +static int meson_vrtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
> +{
> +	struct meson_vrtc_data *vrtc = dev_get_drvdata(dev);
> +
> +	if (!vrtc->alarm_time) {

I think this test is inverted.

> +		alm->enabled = true;
> +
> +		rtc_time_to_tm(vrtc->alarm_time, &alm->time);
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct rtc_class_ops meson_vrtc_ops = {
> +	.read_time = meson_vrtc_read_time,
> +	.set_alarm = meson_vrtc_set_alarm,
> +	.read_alarm = meson_vrtc_read_alarm,
> +};
> +
> +static int meson_vrtc_probe(struct platform_device *pdev)
> +{
> +	struct meson_vrtc_data *vrtc;
> +	struct resource *res;
> +
> +	vrtc = devm_kzalloc(&pdev->dev, sizeof(*vrtc), GFP_KERNEL);
> +	if (!vrtc)
> +		return -ENOMEM;
> +
> +	vrtc->pdev = pdev;
> +
> +	/* Alarm registers */
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	vrtc->io_alarm = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(vrtc->io_alarm))
> +		return PTR_ERR(vrtc->io_alarm);
> +
> +	device_init_wakeup(&pdev->dev, 1);
> +
> +	platform_set_drvdata(pdev, vrtc);
> +
> +	vrtc->rtc = devm_rtc_device_register(&pdev->dev, "meson-vrtc",
> +					     &meson_vrtc_ops, THIS_MODULE);
> +	if (IS_ERR(vrtc->rtc))
> +		return PTR_ERR(vrtc->rtc);
> +

Please use devm_rtc_allocate_device and rtc_register_device. This
doesn't help much but my plan is to get rid of devm_rtc_device_register.

I suppose you don't get any interrupt for the alarm?


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
