Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AE110160D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 06:49:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=VJ/tAmgPDWU//MOz98Bc3TAkAAefzr7erfvhe5Neiy0=; b=ssfi7Y7eITgX0R
	8XUaA8+xBhbOJxLry/zcfHPbsQOGsuJ/dodPm2koggPK5cEi/0/NxkVmq6MnnfTmiskZsxDjALoFc
	hU9N8cK8pc0TS1wtNYy5yRyzRvKNPJwrSTcLLMDl4ynQIHmOATMrHnnz+F8HTs9o/9uBSVVYSW6Xz
	PAvIm9Abv7wymgbEwHgl8ja0+3c4mbYq5DZm09A7GQjy8osUuiN1psF9Ls7dl3bCQHaignyhSGF6h
	z/8VH3RRmrEF++kIZv4ziU9zMRCMQuZVE4NG4Sme0OrIkN2hHBEeArc5k0HdVqQ8MGQXaEbS4ErSW
	Q1ZyCimGJeMM8U3lFURQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWwOM-0003ab-O7; Tue, 19 Nov 2019 05:49:34 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWwOC-0003XP-BR; Tue, 19 Nov 2019 05:49:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574142546; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=AoezPkE/AZwVtb/MIvG+t/bP8LK3U3rkzfxnXH5SGBL/2+0pYP8URCpbunqoluEY1yNspYAM8H2TwAvspOMlStjaNmJhMA8+T/2EtwV92o4BV8CrpxL+Xat9HD1Ey5aO6BVPg449l8uePA/WgKQLzI5sJzzAcquqwl3+crrPOuI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574142546;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:Message-ID:Subject:To;
 bh=8aG5xAT9J4+OFgRMDpokJYhuqlwLqFHvo4kBXwpx4t0=; 
 b=h+avyOoDInFXduFp6BcxsOkbT3TUiPwQ6G+5ReI+oaVc5CzJBJGxkR0WUj8MlaPEWJkQ5W9zdWM4J018NQTJnLGagy3Dwc3Q29CS4nZhCHAfOO51CvymcDsafLzoKfGt1XjeCW6+l4K7t+80IYHc10smilasR2hbM7yWeRDOOLY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574142546; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:Cc:Subject:From:To:Message-Id;
 l=2200; bh=8aG5xAT9J4+OFgRMDpokJYhuqlwLqFHvo4kBXwpx4t0=;
 b=h04vzW4Hx25staIqTtT+ebrsVPVEeO9XpueCcIurCNKAePq+Q55ygt6Y1gJeSlEL
 HRORKxgnvhG31px9A5fVrM04oiSyPyK13Q4MilLbWXZFVH1hUlW4EX3IFnfD4+skYkP
 E8K8EvQnufm282P+TWFR5QPXp2tMihVLzg72MvBA=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1574142545915820.4572493784793;
 Mon, 18 Nov 2019 21:49:05 -0800 (PST)
In-Reply-To: <5cc711fd-4d47-5369-c424-363677334b9f@gmx.net>
Originaldate: Mon Nov 18, 2019 at 8:44 PM
Originalfrom: "Stefan Wahren" <wahrenst@gmx.net>
Original: =?utf-8?q?Hi,
 =0D=0A=0D=0AAm_18.11.19_um_12:44_schrieb_Nicolas_Saenz_Julie?=
 =?utf-8?q?nne:=0D=0A>_Hi_Stephen,=0D=0A>=0D=0A>_On_Sun,_2019-11-17_at_23:?=
 =?utf-8?q?58_-0800,_Stephen_Brennan_wrote:=0D=0A>>_From:_Stefan_Wahren_<w?=
 =?utf-8?q?ahrenst@gmx.net>=0D=0A>>=0D=0A>>_This_enables_hardware_random_n?=
 =?utf-8?q?umber_generator_support_for_the_BCM2711=0D=0A>>_on_the_Raspberr?=
 =?utf-8?q?y_Pi_4_board.=0D=0A>>=0D=0A>>_Signed-off-by:_Stefan_Wahren_<wah?=
 =?utf-8?q?renst@gmx.net>=0D=0A>>_Signed-off-by:_Stephen_Brennan_<stephen@?=
 =?utf-8?q?brennan.io>=0D=0A>>_---=0D=0A>>__arch/arm/boot/dts/bcm2711.dtsi?=
 =?utf-8?q?_|_5_++---=0D=0A>>__1_file_changed,_2_insertions(+),_3_deletion?=
 =?utf-8?q?s(-)=0D=0A>>=0D=0A>>_diff_--git_a/arch/arm/boot/dts/bcm2711.dts?=
 =?utf-8?q?i_b/arch/arm/boot/dts/bcm2711.dtsi=0D=0A>>_index_ac83dac2e6ba..?=
 =?utf-8?q?2c19e5de284a_100644=0D=0A>>_---_a/arch/arm/boot/dts/bcm2711.dts?=
 =?utf-8?q?i=0D=0A>>_+++_b/arch/arm/boot/dts/bcm2711.dtsi=0D=0A>>_@@_-92,1?=
 =?utf-8?q?0_+92,9_@@_pm:_watchdog@7e100000_{=0D=0A>>__=09=09};=0D=0A>>=0D?=
 =?utf-8?q?=0A>>__=09=09rng@7e104000_{=0D=0A>>_+=09=09=09compatible_=3D_"b?=
 =?utf-8?q?rcm,bcm2711-rng200";=0D=0A>>__=09=09=09interrupts_=3D_<GIC=5FSP?=
 =?utf-8?q?I_125_IRQ=5FTYPE=5FLEVEL=5FHIGH>;=0D=0A>>_-=0D=0A>>_-=09=09=09/?=
 =?utf-8?q?*_RNG_is_incompatible_with_brcm,bcm2835-rng_*/=0D=0A>>_-=09=09?=
 =?utf-8?q?=09status_=3D_"disabled";=0D=0A>>_+=09=09=09status_=3D_"okay";?=
 =?utf-8?q?=0D=0A>>__=09=09};=0D=0A>>=0D=0A>>__=09=09uart2:_serial@7e20140?=
 =?utf-8?q?0_{=0D=0A>_We_inherit_the_reg_property_from_bcm283x.dtsi,_on_wh?=
 =?utf-8?q?ich_we_only_define_a_size=0D=0A>_of_0x10_bytes._I_gather_from_t?=
 =?utf-8?q?he_driver_that_iproc-rng200's_register_space_is=0D=0A>_at_least?=
 =?utf-8?q?_0x28_bytes_big._We_should_also_update_the_'reg'_property_to:?=
 =?utf-8?q?=0D=0A>=0D=0A>_=09reg_=3D_<0x7e104000_0x28>;=0D=0A=0D=0AThanks_?=
 =?utf-8?q?for_sending_and_noticing._A_proper_solution_would_be_to_move_th?=
 =?utf-8?q?e=0D=0Awhole_rng_node_from_bcm283x.dtsi_to_bcm283x-common.dtsi_?=
 =?utf-8?q?and_define_a=0D=0Acompletely_new_rng_node_in_bcm2711.dtsi.=0D?=
 =?utf-8?q?=0A=0D=0ARegards=0D=0AStefan=0D=0A=0D=0A>=0D=0A>_Regards,=0D=0A?=
 =?utf-8?q?>_Nicolas=0D=0A>=0D=0A>=0D=0A>_=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F?=
 =?utf-8?q?=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F?=
 =?utf-8?q?=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=0D=0A>_linux-a?=
 =?utf-8?q?rm-kernel_mailing_list=0D=0A>_linux-arm-kernel@lists.infradead.?=
 =?utf-8?q?org=0D=0A>_http://lists.infradead.org/mailman/listinfo/linux-ar?=
 =?utf-8?q?m-kernel=0D=0A?=
Date: Mon, 18 Nov 2019 21:49:04 -0800
Subject: Re: [PATCH 3/3] ARM: dts: bcm2711: Enable HWRNG support
From: "Stephen Brennan" <stephen@brennan.io>
To: "Stefan Wahren" <wahrenst@gmx.net>, "Nicolas Saenz Julienne"
 <nsaenzjulienne@suse.de>
Message-Id: <BYJMYLOFLH80.EDWI9BX3JBY3@pride>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_214924_516991_7A1E33A5 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 BAD_ENC_HEADER         Message has bad MIME encoding in the header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Stefan & Nicolas,

On Mon Nov 18, 2019 at 8:44 PM, Stefan Wahren wrote:
> Hi,
>
> 
> Am 18.11.19 um 12:44 schrieb Nicolas Saenz Julienne:
> > Hi Stephen,
> >
> > On Sun, 2019-11-17 at 23:58 -0800, Stephen Brennan wrote:
> >> From: Stefan Wahren <wahrenst@gmx.net>
> >>
> >> This enables hardware random number generator support for the BCM2711
> >> on the Raspberry Pi 4 board.
> >>
> >> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> >> Signed-off-by: Stephen Brennan <stephen@brennan.io>
> >> ---
> >>  arch/arm/boot/dts/bcm2711.dtsi | 5 ++---
> >>  1 file changed, 2 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> >> index ac83dac2e6ba..2c19e5de284a 100644
> >> --- a/arch/arm/boot/dts/bcm2711.dtsi
> >> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> >> @@ -92,10 +92,9 @@ pm: watchdog@7e100000 {
> >>  		};
> >>
> >>  		rng@7e104000 {
> >> +			compatible = "brcm,bcm2711-rng200";
> >>  			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
> >> -
> >> -			/* RNG is incompatible with brcm,bcm2835-rng */
> >> -			status = "disabled";
> >> +			status = "okay";
> >>  		};
> >>
> >>  		uart2: serial@7e201400 {
> > We inherit the reg property from bcm283x.dtsi, on which we only define a size
> > of 0x10 bytes. I gather from the driver that iproc-rng200's register space is
> > at least 0x28 bytes big. We should also update the 'reg' property to:
> >
> > 	reg = <0x7e104000 0x28>;
>
> 
> Thanks for sending and noticing. A proper solution would be to move the
> whole rng node from bcm283x.dtsi to bcm283x-common.dtsi and define a
> completely new rng node in bcm2711.dtsi.

Thanks both for your time and consideration. I'm not terribly familiar with 
device tree source but I think I understand what you'd like here. I'll send 
a v2 that does this!

Regards,
Stephen

>
> 
> Regards
> Stefan
>
> 
> >
> > Regards,
> > Nicolas
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
> 
>
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
