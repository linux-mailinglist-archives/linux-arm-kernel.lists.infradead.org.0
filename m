Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AC514E0BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 19:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=4wvNcrsyLLbYZu1mVNQpciqNwORTcrB3S+llNwLDFss=; b=bI5HC6rPMjG4RM
	9Dby5o+mGQfQWa6cJ8BloiWOsF3DcvxJ93MQTusDtQcHkYA3qUgNlxcieOiJJyDN5W1lOXLiwK1Ns
	N5fZ7P0ZLleo6FbSDEZw1xGaA9qJvQEqU6j3gJNaH1Ml3Bi05Abpm+sUX0m4aj1ZnPZdchlphnPvf
	enGVocvFCGtZtIvMoQLYa3thkvWBvRV835PGgAVrUlyxJt6YFNdwXyMtABywYEghSbVT75AFbeHNF
	41lq50Pdzb+c7i9iSGS3TO3w0NkPDHAFUcXYCYha1YsgtoZjTQwUvzN1X46ro+nu9yUDo1IUFk6B/
	/VMptGl0Rl5ksLTBtFDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixEVC-0003VJ-B3; Thu, 30 Jan 2020 18:25:18 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixEV0-0002cE-AM; Thu, 30 Jan 2020 18:25:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 96B7BAF21;
 Thu, 30 Jan 2020 18:25:02 +0000 (UTC)
In-Reply-To: <20200128141958.vwbxoqglt5gw4xj5@wunner.de>
Date: Thu, 30 Jan 2020 17:11:55 +0100
Subject: Re: [PATCH] serial: 8250_early: Add earlycon for BCM2835 aux uart
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Lukas Wunner" <lukas@wunner.de>
Message-Id: <C099APQHQAHB.3Q9UVYJYT98TN@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_102506_515507_C2662639 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Matthias Brugger <mbrugger@suse.com>, Scott Branden <sbranden@broadcom.com>,
 gregkh@linuxfoundation.org, jslaby@suse.com, linux-kernel@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Stephen Boyd <swboyd@chromium.org>, Florian
 Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 matthias.bgg@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue Jan 28, 2020 at 3:19 PM, Lukas Wunner wrote:
> On Tue, Jan 28, 2020 at 01:42:21PM +0100, Nicolas Saenz Julienne wrote:
> > I'm testing this by booting directly from RPi4's bootloader. And it
> > works as long as I add this to config.txt:
> > 
> > enable_uart=1
> > gpu_freq=500
> > 
> > Which AFAIK blocks frequency scalin on the GPU and fixes the clock to a
> > point where the serial is set at 115200 bauds.
> > 
> > Ideally it'd be nice to be able to query the clock frequency, and
> > recalculate the divisors based on that. But I don't know if it's
> > feasible at that point in the boot process.
>
> Well, we don't even support adjusting the baudrate *after* the kernel
> has booted.

Don't 8250 uarts have a clk divisor? I've seen other 8250 earlycon
drivers do this (see 8250_ingenic.c), that said I think it's a lost
cause for us.

BTW did you had the oportunity to have a go at the patch?

> The problem is that in mainline, bcm2835_defconfig contains:
> CONFIG_CPU_FREQ_DEFAULT_GOV_CONSERVATIVE=y
>
> Likewise in the Foundation's downstream tree, bcmrpi_defconfig as well
> as bcm2711_defconfig and bcm2709_defconfig contain:
> CONFIG_CPU_FREQ_DEFAULT_GOV_POWERSAVE=y
>
> In contrast to this, we set the following on Revolution Pi devices:
> CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE=y
>
> Downclocking influences not only the uart1 baud rate but also the
> spi0 clock. We attach Ethernet chips to spi0, throughput was
> significantly worse with the ondemand governor (which is what we
> used previously). We felt that maximum Ethernet performance
> outweighs the relatively small powersaving gains.

In that regard I suggest you use the upstream cpufreq driver which
behaves properly in that regard. It disables GPU freq scaling, so as to
change CPU frequencies without SPI/I2C/UART issues.

Regards,
Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
