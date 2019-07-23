Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7360071C96
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 18:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLBcCZ8umMaHKVrAzfkwEaU64mrQqvu7cc4dEorbM0c=; b=Ac4J5i34k9v1oV
	4J9kVPw7fMrJIDCCoErtp/fAZHbZi3TYTCf0OxlS13vFNdut3uW1VyC2eKnw6QpOaasgcMKOz42lH
	n5pd40c/vXJCvlt4AJd3s1xucB1vq4uf77IPb3G0iqVnIwMzbdJwMunUqtMG9oZL+3xtAlbffXRkB
	KgOtgcs8Qy+Kp7ricwhlZ1NMdcCxs1q8wMuQqxPjuuFBwWen5tMpdnutxWZLWbXpp1M4Viq/fXSzg
	rX7lKGhcsyK8OIZ8lYB9ncecl5QikkoP8/+CIR+Nf/VEo/AWl/7TJNXXpj9veoRJoghHJ5KXPzT0b
	tls8mCbNPM1yCN+YL5sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxOy-0007Tv-2e; Tue, 23 Jul 2019 16:12:32 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxOi-0007TP-Eo
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 16:12:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SFvQ5u4FZKcYENDt824YzA7WxOELPQK+cgWZ4VxPqUo=; b=d195U1tdUFoJSZau+1l1XGRRix
 0/szGeGwpmjbP7o/UkQWI/bCxyHCVsSWSDH1tz2LeiRroUBU1zundZ31uTTC2pmjsdhb/BAo/5R7A
 HWwFQs8Ph5Q86Lv1s5q71nBOtLX37n2KFJu7xl/17Faspj9z/kbpcC4VJtdoYsmuyMLg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hpxOe-0002Be-Oc; Tue, 23 Jul 2019 18:12:12 +0200
Date: Tue, 23 Jul 2019 18:12:12 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Oliver Hartkopp <socketcan@hartkopp.net>
Subject: Re: TS-219 RTC issue with Debian Buster
Message-ID: <20190723161212.GA8095@lunn.ch>
References: <99a8e2cc-61a2-3b43-0d72-6f001cffe572@hartkopp.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99a8e2cc-61a2-3b43-0d72-6f001cffe572@hartkopp.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_091216_648869_2FFA41D8 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tbm@cyrius.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 05:30:48PM +0200, Oliver Hartkopp wrote:
> Hi all,
> 
> I upgraded my TS-219 to Debian Buster with Kernel 4.19.0-5-marvell.

Hi Oliver

Did the same test work with older Debians?

> I wonder whether the problem comes from a missing interrupt assignment
> 
> rtc: rtc@10300 {
>              compatible = "marvell,kirkwood-rtc", "marvell,orion-rtc";
>              reg = <0x10300 0x20>;
>              interrupts = <53>;            <- HERE!?!
>              clocks = <&gate_clk 7>;
>                };
> 
> ... I found in linux/arch/arm/boot/dts/kirkwood-6282.dtsi ?!?
> 
> In /proc/interrupts there's no rtc assigned to an interrupt 53.

There is code in the driver to request this interrupt. Do you see an
error message like:

interrupt not available.

> Accessing the rtc values (time/date) via /sys/class/rtc/rtc0 entries works
> well and setting the date/time via "hwclock --systohc" does its job too. So
> I2C and the rtc_s35390a driver seem to work so far.

Now i'm confused. I don't see any mention of s35390a for any TS
devices. Some kirkwood machines do make use of an external RTC, not
the built in. But not this machine, as far as i know.

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
