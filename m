Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E1B1A7B26
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzG4xa2k1Av1/vX0Z8xbg8DDlMbEfBrga9hft4nL9eQ=; b=DZNiupNB++OjTS
	1TqHKZNLfr0TsEnE0HYGoqw+H6JqDqKu5mxgY3H6yq/KjlM6JwIUjMKYAzQgkY36GTnJEI/BsAqcq
	Yi0Nftz0rVKCKpSgvVf9RDM/r9XJ+hhUePzZdGYt7AC6YM6zPV+K4d3N6PUpxMm2H7XBUkhcs1c4u
	600JZS22ml9gh/6iAM3HxGmVwOs63Y3bjOzTojqTjWT4tj0lf/l7DD5Yf8W1FSpmXEVTxX6R5JFaC
	cE0Cz5PqykdOrLiIaqlOhuizmPw/Pzoy8ohH5Byg851MeVDy8239rUJfOs6n9J8mmpc8bEBvBFi7Y
	aDP1aKL8SlqUajmN1GiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKyp-0002bg-Fu; Tue, 14 Apr 2020 12:47:55 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKyg-0002b1-DG
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:47:49 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A6D5220000E;
 Tue, 14 Apr 2020 12:47:41 +0000 (UTC)
Date: Tue, 14 Apr 2020 14:47:41 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Message-ID: <20200414124741.GJ34509@piout.net>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-5-git-send-email-claudiu.beznea@microchip.com>
 <20200410222658.GB3628@piout.net>
 <c4d46198-488b-c5d6-2a66-865a16840dc4@microchip.com>
 <20200413104652.GE3628@piout.net>
 <3116d1fc-af96-1e0c-aa07-3b34cbd58209@microchip.com>
 <20200414111600.GE34509@piout.net>
 <a07d841e-efa9-6c01-69e2-0ed33f9759c5@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a07d841e-efa9-6c01-69e2-0ed33f9759c5@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_054746_581750_815EFF3F 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, jason@lakedaemon.net,
 devicetree@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/04/2020 12:13:46+0000, Claudiu.Beznea@microchip.com wrote:
> 
> 
> On 14.04.2020 14:16, Alexandre Belloni wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On 14/04/2020 08:42:08+0000, Claudiu.Beznea@microchip.com wrote:
> >>> Why would one use the RTT while the RTC is far superior?
> >>
> >> I didn't enabled this for a particular use case, but: couldn't this be used
> >> by some user that wants to generate multiple alarms? from multiple RTCs?
> >>
> > 
> > I very much doubt that as Linux is able to properly multiplex alarms and
> > basically, the only one we are interested in is actually wakeup.
> 
> I think you can use the wakealarm sysfs exported file to prepare an alarm
> and take user space actions based on that without being suspended.
> 
> > 
> >> Moreover, this IP's counter has the possibility of being clocked at 1Hz.
> >> Couldn't this minimize the power consumption while being in a power saving
> >> mode?
> >>
> > 
> > And that 1Hz clock is coming from the RTC so using the RTC is
> > definitively consuming less power.
> 
> Datasheet specifies this: "Configuring the RTPRES field value to 0x8000
> (default value) corresponds to feeding the real-time counter with a
> 
> 1Hz signal (if the slow clock is 32.768 kHz)."
> 
> So, it is not the RTC, it is the slow clock divided by 32768.

This is not what you described previously, using RTPRES means running
the RTT at 32kHz. This is exactly what happens with the RTC but you get
the added clock calibration circuitry that is probably not drawing to
much power but the added consumption of the configurable prescaler
versus the static prescaler of the RTC is probably similar.

Using RTC1HZ would be driving the RTT at 1Hz.

> > But this is very unlikely to happen because this would be limited to a
> > single board device tree instead of impact every sam9x60 based boards.
> 
> Very unlikely but a having a patch with diff like this:
> 
> +&gpbr {
> +     status = "okay";
> +};
> +
> +&rtt {
> +     atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
> +     status = "okay";
> +};
> +
> 
> and reverting it may affect the other users of gpbr in sam9x60ek.dts.
> 

Again, this affects only sam9x60ek.dts instead of possibly multiple DTs
that may be out of tree. So the risk of doing that is null.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
