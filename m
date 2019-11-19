Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C62B102A84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:From:
	Subject:To:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=AdqT/2HrUQfVEXyQox5+2m6oYTFFjlB8H/6Kso8cpkI=; b=OaO
	E7I2d2xfTSLe4HgrBv7qo5Ojj4Q468R5v6sWQnodAdkCYEDrdpffz+8rOT6Mu7NzhBDMkfPfdZ8iz
	MYa6a21e5VGlLo93XKrwY7o070nw38czIcD+hi1cscV3shZMn/mIWw8XTmZZOPiDS2BmQNafcvjzL
	h7aKUxnszsg/p62le8rhKxEgNsmqnf92NYJr7VfjU/mRetbNos4WfwuMTyHVm77xTV+kKk+GGskrK
	Ul857zOwkMbDZEPT3hMJ3JixqrXcmj7qNqzudELX4w6dla3S71Nt4UQo1Ds85F0JzysQA9U6qim0W
	lAVIqZMLXHAeCcQDq8I0MczvUnE6mOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX71E-0008Ge-2B; Tue, 19 Nov 2019 17:10:24 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX715-0008GF-P0; Tue, 19 Nov 2019 17:10:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574183396; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=XYPUAbgf5LIgblvM/PEfwK5c2qlDOv7KjOrZkDTAJkCpLe3aPNwVcEZxdetHrsCzAxQcE4OrAdVNFamYcvN7vqmzQWLg3Q2dIIRDnbCMqt8nnO+YWK/37ORQWdhFUmO5vYzv9Pt7JZHEx0DlDSg/NiuBdlOCEs6Mu2UWiRdq13U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574183396;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:Message-ID:Subject:To;
 bh=hhl/eyaWl95DxKVbZbTd0hS6m1pSAzWQWE9upjbQJsc=; 
 b=U8vHQYhf/pGufVqEy0wjBPDlvZT/bjUMJKvpR7jjmtL+HMJV+iT6iyVa+Q6mIkcD3YZ0oZJIBsbunGZVQ10s7CCE3/yFj1E//jLzCZSa7KDD1EgPUIUdSIp8FPq8MpSYlBO39AygjHddELYkWpVlItb7lZ46WOpZINIoF/bvZGc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574183396; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:To:Cc:Subject:From:Message-Id;
 l=3868; bh=hhl/eyaWl95DxKVbZbTd0hS6m1pSAzWQWE9upjbQJsc=;
 b=acKD7zvdIoQFRM/iZ37BOh23jIrYcub3FrIQkmnx3rTjnNLzv6gb0/0Br5oBcqBF
 ZrjEDGNCe9omOsve4xOgT5Cpds+QjbSOwSV1tOCnyHDWp5scmmpPAKv2YxaRb/j/Hbo
 QLkxHFQ7oIiE+u7uKXpBB/RsGrHzKnohjnbe4zQU=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1574183395000471.61621983311886;
 Tue, 19 Nov 2019 09:09:55 -0800 (PST)
Originaldate: Tue Nov 19, 2019 at 11:07 AM
Originalfrom: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
Original: =?utf-8?q?Hi_Stephen,_thanks_for_the_follow-up.
 =0D=0A=0D=0AOn_Mon,_2019-1?=
 =?utf-8?q?1-18_at_22:14_-0800,_Stephen_Brennan_wrote:=0D=0A>_BCM2711_feat?=
 =?utf-8?q?ures_a_RNG200_hardware_random_number_generator_block,_which_i?=
 =?utf-8?q?=3D=0D=0As=0D=0A>_different_from_the_BCM283x_from_which_it_inhe?=
 =?utf-8?q?rits._Move_the_rng_block_fro=3D=0D=0Am=0D=0A>_BCM283x_into_a_se?=
 =?utf-8?q?parate_common_file,_and_update_the_rng_declaration_of=0D=0A>_BC?=
 =?utf-8?q?M2711.=0D=0A>=3D20=0D=0A>_Signed-off-by:_Stephen_Brennan_<steph?=
 =?utf-8?q?en@brennan.io>=0D=0A>_---=0D=0A=0D=0AIt's_petty_in_this_case_bu?=
 =?utf-8?q?t_you_should_add_a_list_of_changes_here_too.=0D=0A=0D=0A>__arch?=
 =?utf-8?q?/arm/boot/dts/bcm2711.dtsi________|__6_+++---=0D=0A>__arch/arm/?=
 =?utf-8?q?boot/dts/bcm2835.dtsi________|__1_+=0D=0A>__arch/arm/boot/dts/b?=
 =?utf-8?q?cm2836.dtsi________|__1_+=0D=0A>__arch/arm/boot/dts/bcm2837.dts?=
 =?utf-8?q?i________|__1_+=0D=0A>__arch/arm/boot/dts/bcm283x-common.dtsi_|?=
 =?utf-8?q?_11_+++++++++++=0D=0A>__arch/arm/boot/dts/bcm283x.dtsi________|?=
 =?utf-8?q?__6_------=0D=0A>__6_files_changed,_17_insertions(+),_9_deletio?=
 =?utf-8?q?ns(-)=0D=0A>__create_mode_100644_arch/arm/boot/dts/bcm283x-comm?=
 =?utf-8?q?on.dtsi=0D=0A>=3D20=0D=0A>_diff_--git_a/arch/arm/boot/dts/bcm27?=
 =?utf-8?q?11.dtsi_b/arch/arm/boot/dts/bcm2711.d=3D=0D=0Atsi=0D=0A>_index_?=
 =?utf-8?q?ac83dac2e6ba..4975567e948e_100644=0D=0A>_---_a/arch/arm/boot/dt?=
 =?utf-8?q?s/bcm2711.dtsi=0D=0A>_+++_b/arch/arm/boot/dts/bcm2711.dtsi=0D?=
 =?utf-8?q?=0A>_@@_-92,10_+92,10_@@_pm:_watchdog@7e100000_{=0D=0A>__=09=09?=
 =?utf-8?q?};=0D=0A>_=3D20=0D=0A>__=09=09rng@7e104000_{=0D=0A>_+=09=09=09c?=
 =?utf-8?q?ompatible_=3D3D_"brcm,bcm2711-rng200";=0D=0A>_+=09=09=09reg_=3D?=
 =?utf-8?q?3D_<0x7e104000_0x28>;=0D=0A>__=09=09=09interrupts_=3D3D_<GIC=5F?=
 =?utf-8?q?SPI_125_IRQ=5FTYPE=5FLEVEL=5FHIGH>;=0D=0A>_-=0D=0A>_-=09=09=09/?=
 =?utf-8?q?*_RNG_is_incompatible_with_brcm,bcm2835-rng_*/=0D=0A>_-=09=09?=
 =?utf-8?q?=09status_=3D3D_"disabled";=0D=0A>_+=09=09=09status_=3D3D_"okay?=
 =?utf-8?q?";=0D=0A>__=09=09};=0D=0A>_=3D20=0D=0A>__=09=09uart2:_serial@7e?=
 =?utf-8?q?201400_{=0D=0A>_diff_--git_a/arch/arm/boot/dts/bcm2835.dtsi_b/a?=
 =?utf-8?q?rch/arm/boot/dts/bcm2835.d=3D=0D=0Atsi=0D=0A>_index_53bf4579cc2?=
 =?utf-8?q?2..f7b2f46e307d_100644=0D=0A>_---_a/arch/arm/boot/dts/bcm2835.d?=
 =?utf-8?q?tsi=0D=0A>_+++_b/arch/arm/boot/dts/bcm2835.dtsi=0D=0A>_@@_-1,5_?=
 =?utf-8?q?+1,6_@@=0D=0A>__//_SPDX-License-Identifier:_GPL-2.0=0D=0A>__#in?=
 =?utf-8?q?clude_"bcm283x.dtsi"=0D=0A>_+#include_"bcm283x-common.dtsi"=0D?=
 =?utf-8?q?=0A>__#include_"bcm2835-common.dtsi"=0D=0A>_=3D20=0D=0A>__/_{?=
 =?utf-8?q?=0D=0A>_diff_--git_a/arch/arm/boot/dts/bcm2836.dtsi_b/arch/arm/?=
 =?utf-8?q?boot/dts/bcm2836.d=3D=0D=0Atsi=0D=0A>_index_82d6c4662ae4..a8537?=
 =?utf-8?q?4195796_100644=0D=0A>_---_a/arch/arm/boot/dts/bcm2836.dtsi=0D?=
 =?utf-8?q?=0A>_+++_b/arch/arm/boot/dts/bcm2836.dtsi=0D=0A>_@@_-1,5_+1,6_@?=
 =?utf-8?q?@=0D=0A>__//_SPDX-License-Identifier:_GPL-2.0=0D=0A>__#include_?=
 =?utf-8?q?"bcm283x.dtsi"=0D=0A>_+#include_"bcm283x-common.dtsi"=0D=0A>__#?=
 =?utf-8?q?include_"bcm2835-common.dtsi"=0D=0A>_=3D20=0D=0A>__/_{=0D=0A>_d?=
 =?utf-8?q?iff_--git_a/arch/arm/boot/dts/bcm2837.dtsi_b/arch/arm/boot/dts/?=
 =?utf-8?q?bcm2837.d=3D=0D=0Atsi=0D=0A>_index_9e95fee78e19..045d78ffea08_1?=
 =?utf-8?q?00644=0D=0A>_---_a/arch/arm/boot/dts/bcm2837.dtsi=0D=0A>_+++_b/?=
 =?utf-8?q?arch/arm/boot/dts/bcm2837.dtsi=0D=0A>_@@_-1,4_+1,5_@@=0D=0A>__#?=
 =?utf-8?q?include_"bcm283x.dtsi"=0D=0A>_+#include_"bcm283x-common.dtsi"?=
 =?utf-8?q?=0D=0A>__#include_"bcm2835-common.dtsi"=0D=0A>_=3D20=0D=0A>__/_?=
 =?utf-8?q?{=0D=0A>_diff_--git_a/arch/arm/boot/dts/bcm283x-common.dtsi=0D?=
 =?utf-8?q?=0A>_b/arch/arm/boot/dts/bcm283x-common.dtsi=0D=0A>_new_file_mo?=
 =?utf-8?q?de_100644=0D=0A>_index_000000000000..3c8834bee390=0D=0A>_---_/d?=
 =?utf-8?q?ev/null=0D=0A>_+++_b/arch/arm/boot/dts/bcm283x-common.dtsi=0D?=
 =?utf-8?q?=0A>_@@_-0,0_+1,11_@@=0D=0A>_+//_SPDX-License-Identifier:_GPL-2?=
 =?utf-8?q?.0=0D=0A>_+=0D=0A>_+/_{=0D=0A>_+=09soc_{=0D=0A>_+=09=09rng@7e10?=
 =?utf-8?q?4000_{=0D=0A>_+=09=09=09compatible_=3D3D_"brcm,bcm2835-rng";=0D?=
 =?utf-8?q?=0A>_+=09=09=09reg_=3D3D_<0x7e104000_0x10>;=0D=0A>_+=09=09=09in?=
 =?utf-8?q?terrupts_=3D3D_<2_29>;=0D=0A>_+=09=09};=0D=0A>_+=09};=0D=0A>_+}?=
 =?utf-8?q?;=0D=0A=0D=0AI_think_Stefan_wrote_bcm283x-common.dtsi_by_mistak?=
 =?utf-8?q?e,_he_really_meant=0D=0Abcm2835-common.dtsi.=0D=0A=0D=0ASee_bcm?=
 =?utf-8?q?2835-common.dtsi's_header_comment:=0D=0A=0D=0A/*_This_include_f?=
 =?utf-8?q?ile_covers_the_common_peripherals_and_configuration_betwee=3D?=
 =?utf-8?q?=0D=0An=0D=0A_*_bcm2835,_bcm2836_and_bcm2837_implementations.?=
 =?utf-8?q?=0D=0A_*/=0D=0A=0D=0ARegards,=0D=0ANicolas=0D=0A=0D=0A?=
In-Reply-To: <e38de8daad5a2c9b03bda1aa2632844e3ed3d11e.camel@suse.de>
Date: Tue, 19 Nov 2019 09:09:53 -0800
To: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 3/3] ARM: dts: bcm2711: Enable HWRNG support
From: "Stephen Brennan" <stephen@brennan.io>
Message-Id: <BYK1FVFPTH7J.159A75JOGITR1@pride>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_091015_873346_F9D5596B 
X-CRM114-Status: GOOD (  17.14  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Herbert Xu <herbert@gondor.apana.org.au>, Scott
 Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On Tue Nov 19, 2019 at 11:07 AM, Nicolas Saenz Julienne wrote:
> Hi Stephen, thanks for the follow-up.
>
> 
> On Mon, 2019-11-18 at 22:14 -0800, Stephen Brennan wrote:
> > BCM2711 features a RNG200 hardware random number generator block, which i=
> s
> > different from the BCM283x from which it inherits. Move the rng block fro=
> m
> > BCM283x into a separate common file, and update the rng declaration of
> > BCM2711.
> >=20
> > Signed-off-by: Stephen Brennan <stephen@brennan.io>
> > ---
>
> 
> It's petty in this case but you should add a list of changes here too.

To make sure I understand, you mean listing out the changes in each 
revision of the patch series?

>
> 
> >  arch/arm/boot/dts/bcm2711.dtsi        |  6 +++---
> >  arch/arm/boot/dts/bcm2835.dtsi        |  1 +
> >  arch/arm/boot/dts/bcm2836.dtsi        |  1 +
> >  arch/arm/boot/dts/bcm2837.dtsi        |  1 +
> >  arch/arm/boot/dts/bcm283x-common.dtsi | 11 +++++++++++
> >  arch/arm/boot/dts/bcm283x.dtsi        |  6 ------
> >  6 files changed, 17 insertions(+), 9 deletions(-)
> >  create mode 100644 arch/arm/boot/dts/bcm283x-common.dtsi
> >=20
> > diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.d=
> tsi
> > index ac83dac2e6ba..4975567e948e 100644
> > --- a/arch/arm/boot/dts/bcm2711.dtsi
> > +++ b/arch/arm/boot/dts/bcm2711.dtsi
> > @@ -92,10 +92,10 @@ pm: watchdog@7e100000 {
> >  		};
> > =20
> >  		rng@7e104000 {
> > +			compatible =3D "brcm,bcm2711-rng200";
> > +			reg =3D <0x7e104000 0x28>;
> >  			interrupts =3D <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
> > -
> > -			/* RNG is incompatible with brcm,bcm2835-rng */
> > -			status =3D "disabled";
> > +			status =3D "okay";
> >  		};
> > =20
> >  		uart2: serial@7e201400 {
> > diff --git a/arch/arm/boot/dts/bcm2835.dtsi b/arch/arm/boot/dts/bcm2835.d=
> tsi
> > index 53bf4579cc22..f7b2f46e307d 100644
> > --- a/arch/arm/boot/dts/bcm2835.dtsi
> > +++ b/arch/arm/boot/dts/bcm2835.dtsi
> > @@ -1,5 +1,6 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >  #include "bcm283x.dtsi"
> > +#include "bcm283x-common.dtsi"
> >  #include "bcm2835-common.dtsi"
> > =20
> >  / {
> > diff --git a/arch/arm/boot/dts/bcm2836.dtsi b/arch/arm/boot/dts/bcm2836.d=
> tsi
> > index 82d6c4662ae4..a85374195796 100644
> > --- a/arch/arm/boot/dts/bcm2836.dtsi
> > +++ b/arch/arm/boot/dts/bcm2836.dtsi
> > @@ -1,5 +1,6 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >  #include "bcm283x.dtsi"
> > +#include "bcm283x-common.dtsi"
> >  #include "bcm2835-common.dtsi"
> > =20
> >  / {
> > diff --git a/arch/arm/boot/dts/bcm2837.dtsi b/arch/arm/boot/dts/bcm2837.d=
> tsi
> > index 9e95fee78e19..045d78ffea08 100644
> > --- a/arch/arm/boot/dts/bcm2837.dtsi
> > +++ b/arch/arm/boot/dts/bcm2837.dtsi
> > @@ -1,4 +1,5 @@
> >  #include "bcm283x.dtsi"
> > +#include "bcm283x-common.dtsi"
> >  #include "bcm2835-common.dtsi"
> > =20
> >  / {
> > diff --git a/arch/arm/boot/dts/bcm283x-common.dtsi
> > b/arch/arm/boot/dts/bcm283x-common.dtsi
> > new file mode 100644
> > index 000000000000..3c8834bee390
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/bcm283x-common.dtsi
> > @@ -0,0 +1,11 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +/ {
> > +	soc {
> > +		rng@7e104000 {
> > +			compatible =3D "brcm,bcm2835-rng";
> > +			reg =3D <0x7e104000 0x10>;
> > +			interrupts =3D <2 29>;
> > +		};
> > +	};
> > +};
>
> 
> I think Stefan wrote bcm283x-common.dtsi by mistake, he really meant
> bcm2835-common.dtsi.
>
> 
> See bcm2835-common.dtsi's header comment:
>
> 
> /* This include file covers the common peripherals and configuration
> betwee=
> n
> * bcm2835, bcm2836 and bcm2837 implementations.
> */
>

Wow, thank you, that makes a lot more sense!

Best,
Stephen

> 
> Regards,
> Nicolas
>
> 
>
> 
>
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
