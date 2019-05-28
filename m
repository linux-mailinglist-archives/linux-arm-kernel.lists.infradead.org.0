Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD712C808
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJt9VXsbcqNmkV8aRBRRcLHP6QxxldLcCYCpG19BhYY=; b=rKcffpC2cf+bMA
	3tgtoanTzGDJLc1K6XBuNYOpqJcuVL3mJvTXYRXrTDoVZCu4uBsfCjtYvomt0PqrTjEUYXivFjyPF
	f8L4RELrKs/j3WC4GllnXhX3iWOOqRfllRe4DNL1OzuyZk0ORqPncc1ulG9qYxhp7IaWOncLlt15f
	hLLzBjLo+fp3YpQCPgWS5ae8XNt90OfzFUnnhkGvirPtIJv3HV8Xgb5uQ7utZSNMQ83EAp0eG/1T8
	T8zSxGox7yEck7XuYtS7KgDZpeCSPNQD9iua2l2M0ZntaJFNMEqbewWXwgRZZxbSaRJ7syP450nzu
	pviQ+l91HiiMPV4odghw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcOU-0003Ap-2Y; Tue, 28 May 2019 13:43:58 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcOI-00033F-6N
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:43:48 +0000
Received: from plaes.org (localhost [127.0.0.1])
 by plaes.org (Postfix) with ESMTPSA id C71B5402DD;
 Tue, 28 May 2019 13:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1559051023; bh=f16GXwO0bccw+CqyxghYo/6IH2hKOaqFoaXAUl2gBYY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nsFTjcKaRiqZx+PCgmpPV4uZ/cM9FBuepy2A96v2cnNvGBmmSQLg7/hAyTqSWCbIb
 XnTU75k8LsJlRz+Kmx6Ry+gKKR3lBa6ZCm80MNo8WlPBbf0cux4PwMlvoqHlBIyRPZ
 4XC/sNs+shNbpEATraIYAAT2UGxSvrKGxcAw3fPjUgcA2nOFsvP4nLJNkg+rZTE1XO
 nKgXg8HWyQk1ERo7LO3sHRrqb9nPZQFu2biMrYy5JYUzCf14XoX6OeyOXBLQf0M3Jl
 jO9GlPYr/8XKFdrmUZx0LXfL0XTxBiMoFdTeZAVXSfYg7u68J8oijIh8CS0O916rZV
 D/Jp3Frlo70pg==
Date: Tue, 28 May 2019 13:43:42 +0000
From: Priit Laes <plaes@plaes.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [linux-sunxi] [RESEND PATCH] ARM: dts: sun7i: olimex-lime2:
 Enable ac and power supplies
Message-ID: <20190528134342.25fep6kpmrr4p7vw@plaes.org>
References: <20190528063544.17408-1-plaes@plaes.org>
 <2b671c1f0734177a6283407f753403473b70f5bc.camel@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b671c1f0734177a6283407f753403473b70f5bc.camel@bootlin.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_064346_531896_3C9D4405 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 02:58:57PM +0200, Paul Kocialkowski wrote:
> Hi,
> 
> On Tue, 2019-05-28 at 09:35 +0300, Priit Laes wrote:
> > Lime2 has battery connector so enable these supplies.
> 
> Out of curiosity, what is reported to userspace when no battery is
> attached?

Data from /sys/class/power_supply/axp20x-battery:

[snip]
$ for i in $(ls -1); do echo "cat $i"; cat $i; done

cat capacity
100
cat constant_charge_current
1200000
cat constant_charge_current_max
1200000
cat current_now
0
cat health
Good
cat online
0
cat present
0
cat status
Not charging
cat type
Battery
cat uevent
POWER_SUPPLY_NAME=axp20x-battery
POWER_SUPPLY_PRESENT=0
POWER_SUPPLY_ONLINE=0
POWER_SUPPLY_STATUS=Not charging
POWEROSUPPLY_VOLTAGE_NOW=0
POWER_SUPPLY_CURRENT_NOW=0
POWER_SUPPLY_CON/TANT_CHARGE_CURRENT=1200000
POWER_SUPPLY_CONSTANT_CHARGE_CURRENT_MAX=1200000
POWER_SUPPLY_HEALTH=Good
POWER_SUPPLY_VOLTAGE_MAXODESIGN=4200000
POWEROSUPPLY_VOLTAGE_MIN_DESIGN=2900000
POWER_SUPPLY_CAPACITY=100
cat voltage_max_design
4200000
cat voltage_min_design
2900000
cat voltage_now
0
[/snip]

> Looks good otherwise:
> Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> 
> Cheers,
> 
> Paul
> 
> > Signed-off-by: Priit Laes <plaes@plaes.org>
> > ---
> >  arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
> > index 9c8eecf4337a..9001b5527615 100644
> > --- a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
> > +++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
> > @@ -206,6 +206,14 @@
> >  
> >  #include "axp209.dtsi"
> >  
> > +&ac_power_supply {
> > +	status = "okay";
> > +};
> > +
> > +&battery_power_supply {
> > +	status = "okay";
> > +};
> > +
> >  &reg_dcdc2 {
> >  	regulator-always-on;
> >  	regulator-min-microvolt = <1000000>;
> > -- 
> > 2.11.0
> > 
> -- 
> Paul Kocialkowski, Bootlin
> Embedded Linux and kernel engineering
> https://bootlin.com
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
