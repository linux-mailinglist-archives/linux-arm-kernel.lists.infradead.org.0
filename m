Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36715102A8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:13:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ulosTFZYkq0wisoWykfw46xu+hgL+GUfplpQvdjBRI0=; b=k2hasAEDPplcZ8
	dKXmCA4xtxBiseWi0Py3WWWz5xsNYZGPRhsXioUuWw38lLQix0n13w4yGvUFf/XWJXim67mTmYL8t
	PhIu43X6XcmW7Snu0/KZ1CqXBYeKgzj4fpErPXPl8XJrItYijBiMLoUO7QR+EIzGoKAgmCIen7DUd
	fwisFeJMJf6tXxEopnZuFK6oJ+XcY6bzwbGOMQXjOd9eloj/4/ThyqipPce6oeB1mQUVCq+m7ytJc
	S1PpPMzABOZpsUReB9T5NCosMjfv2ltqZBcbZFHn6TSp2nxyyGHAj3TWIppwbOBE9t6/XVyV5tnWK
	I6/JyQh2CF1GQrWPNeqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX74L-0000C0-AB; Tue, 19 Nov 2019 17:13:37 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX74A-0000BL-Aw; Tue, 19 Nov 2019 17:13:27 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574183599; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=WDSjZYruHs846rVnBZJQO7u5WX2egbgNexwb1BkCxPJ9Hg4jeYLi9kgZBSLjWcieaaGy78vwPoQIOnWDPQLN7bnehFVBM/x0rmKNduQ04HpDqEyMAso8N7QtVkYsn/kp+qmuHqdcncb5o2m2jOjZ3ir7Ziygn2iswx8Jdtpmw8c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574183599;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:Message-ID:Subject:To;
 bh=ZoPNDtgpNo969SUav3/naw8G3H4Fg/a6JWrsoZRqzTo=; 
 b=jQhE5Ve4Mu+bFucQLAmsCCOJ7yYptJNkRjhOR0ok2Cro873ZGEkegXNsf5rB4Op3dskgwzCOXeA6eInZi6qKvUtJgYqD86GGgEqMr55oBbmPak9uq6WFkmLhpZwQ3YiXzsWstIMN/IxRfXN7Wkpb/KUDtakgnM6ZuWxF04qNkbg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574183599; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:Cc:Subject:From:To:Message-Id;
 l=4081; bh=ZoPNDtgpNo969SUav3/naw8G3H4Fg/a6JWrsoZRqzTo=;
 b=UvF7Z8d82GFpt9cJsOCdOegi2H49Uri5OVc5RNyq337PtKyWoL6EaTKyKfkYyoSx
 c/Uvo+uFf+JD9Hz3Uj9iVnYggHSTnN3sOn8FAJDIujboM9bI0ergbP+OLVmlCpabGIL
 oSugsA10iu0T6QaCDWEAtObH2/BIc/iMHTnTMwXM=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1574183598332174.61623192517845;
 Tue, 19 Nov 2019 09:13:18 -0800 (PST)
Originaldate: Tue Nov 19, 2019 at 12:14 PM
Originalfrom: "Matthias Brugger" <matthias.bgg@gmail.com>
Original: =?utf-8?q?=0A=0AOn_19/11/2019_07:14,_Stephen_Brennan_wrote:
 =0A>_BCM2711_f?=
 =?utf-8?q?eatures_a_RNG200_hardware_random_number_generator_block,_which_?=
 =?utf-8?q?is=0A>_different_from_the_BCM283x_from_which_it_inherits._Move_?=
 =?utf-8?q?the_rng_block_from=0A>_BCM283x_into_a_separate_common_file,_and?=
 =?utf-8?q?_update_the_rng_declaration_of=0A>_BCM2711.=0A>_=0A=0AI'd_prefe?=
 =?utf-8?q?r_to_split_this_in_two_patches._One_moving_the_node_and_another?=
 =?utf-8?q?_one=0Aadding_the_new_node_for_bcm2711.=0A=0ARegards,=0AMatthia?=
 =?utf-8?q?s=0A=0A>_Signed-off-by:_Stephen_Brennan_<stephen@brennan.io>=0A?=
 =?utf-8?q?>_---=0A>__arch/arm/boot/dts/bcm2711.dtsi________|__6_+++---=0A?=
 =?utf-8?q?>__arch/arm/boot/dts/bcm2835.dtsi________|__1_+=0A>__arch/arm/b?=
 =?utf-8?q?oot/dts/bcm2836.dtsi________|__1_+=0A>__arch/arm/boot/dts/bcm28?=
 =?utf-8?q?37.dtsi________|__1_+=0A>__arch/arm/boot/dts/bcm283x-common.dts?=
 =?utf-8?q?i_|_11_+++++++++++=0A>__arch/arm/boot/dts/bcm283x.dtsi________|?=
 =?utf-8?q?__6_------=0A>__6_files_changed,_17_insertions(+),_9_deletions(?=
 =?utf-8?q?-)=0A>__create_mode_100644_arch/arm/boot/dts/bcm283x-common.dts?=
 =?utf-8?q?i=0A>_=0A>_diff_--git_a/arch/arm/boot/dts/bcm2711.dtsi_b/arch/a?=
 =?utf-8?q?rm/boot/dts/bcm2711.dtsi=0A>_index_ac83dac2e6ba..4975567e948e_1?=
 =?utf-8?q?00644=0A>_---_a/arch/arm/boot/dts/bcm2711.dtsi=0A>_+++_b/arch/a?=
 =?utf-8?q?rm/boot/dts/bcm2711.dtsi=0A>_@@_-92,10_+92,10_@@_pm:_watchdog@7?=
 =?utf-8?q?e100000_{=0A>__=09=09};=0A>__=0A>__=09=09rng@7e104000_{=0A>_+?=
 =?utf-8?q?=09=09=09compatible_=3D_"brcm,bcm2711-rng200";=0A>_+=09=09=09re?=
 =?utf-8?q?g_=3D_<0x7e104000_0x28>;=0A>__=09=09=09interrupts_=3D_<GIC=5FSP?=
 =?utf-8?q?I_125_IRQ=5FTYPE=5FLEVEL=5FHIGH>;=0A>_-=0A>_-=09=09=09/*_RNG_is?=
 =?utf-8?q?_incompatible_with_brcm,bcm2835-rng_*/=0A>_-=09=09=09status_=3D?=
 =?utf-8?q?_"disabled";=0A>_+=09=09=09status_=3D_"okay";=0A>__=09=09};=0A>?=
 =?utf-8?q?__=0A>__=09=09uart2:_serial@7e201400_{=0A>_diff_--git_a/arch/ar?=
 =?utf-8?q?m/boot/dts/bcm2835.dtsi_b/arch/arm/boot/dts/bcm2835.dtsi=0A>_in?=
 =?utf-8?q?dex_53bf4579cc22..f7b2f46e307d_100644=0A>_---_a/arch/arm/boot/d?=
 =?utf-8?q?ts/bcm2835.dtsi=0A>_+++_b/arch/arm/boot/dts/bcm2835.dtsi=0A>_@@?=
 =?utf-8?q?_-1,5_+1,6_@@=0A>__//_SPDX-License-Identifier:_GPL-2.0=0A>__#in?=
 =?utf-8?q?clude_"bcm283x.dtsi"=0A>_+#include_"bcm283x-common.dtsi"=0A>__#?=
 =?utf-8?q?include_"bcm2835-common.dtsi"=0A>__=0A>__/_{=0A>_diff_--git_a/a?=
 =?utf-8?q?rch/arm/boot/dts/bcm2836.dtsi_b/arch/arm/boot/dts/bcm2836.dtsi?=
 =?utf-8?q?=0A>_index_82d6c4662ae4..a85374195796_100644=0A>_---_a/arch/arm?=
 =?utf-8?q?/boot/dts/bcm2836.dtsi=0A>_+++_b/arch/arm/boot/dts/bcm2836.dtsi?=
 =?utf-8?q?=0A>_@@_-1,5_+1,6_@@=0A>__//_SPDX-License-Identifier:_GPL-2.0?=
 =?utf-8?q?=0A>__#include_"bcm283x.dtsi"=0A>_+#include_"bcm283x-common.dts?=
 =?utf-8?q?i"=0A>__#include_"bcm2835-common.dtsi"=0A>__=0A>__/_{=0A>_diff_?=
 =?utf-8?q?--git_a/arch/arm/boot/dts/bcm2837.dtsi_b/arch/arm/boot/dts/bcm2?=
 =?utf-8?q?837.dtsi=0A>_index_9e95fee78e19..045d78ffea08_100644=0A>_---_a/?=
 =?utf-8?q?arch/arm/boot/dts/bcm2837.dtsi=0A>_+++_b/arch/arm/boot/dts/bcm2?=
 =?utf-8?q?837.dtsi=0A>_@@_-1,4_+1,5_@@=0A>__#include_"bcm283x.dtsi"=0A>_+?=
 =?utf-8?q?#include_"bcm283x-common.dtsi"=0A>__#include_"bcm2835-common.dt?=
 =?utf-8?q?si"=0A>__=0A>__/_{=0A>_diff_--git_a/arch/arm/boot/dts/bcm283x-c?=
 =?utf-8?q?ommon.dtsi_b/arch/arm/boot/dts/bcm283x-common.dtsi=0A>_new_file?=
 =?utf-8?q?_mode_100644=0A>_index_000000000000..3c8834bee390=0A>_---_/dev/?=
 =?utf-8?q?null=0A>_+++_b/arch/arm/boot/dts/bcm283x-common.dtsi=0A>_@@_-0,?=
 =?utf-8?q?0_+1,11_@@=0A>_+//_SPDX-License-Identifier:_GPL-2.0=0A>_+=0A>_+?=
 =?utf-8?q?/_{=0A>_+=09soc_{=0A>_+=09=09rng@7e104000_{=0A>_+=09=09=09compa?=
 =?utf-8?q?tible_=3D_"brcm,bcm2835-rng";=0A>_+=09=09=09reg_=3D_<0x7e104000?=
 =?utf-8?q?_0x10>;=0A>_+=09=09=09interrupts_=3D_<2_29>;=0A>_+=09=09};=0A>_?=
 =?utf-8?q?+=09};=0A>_+};=0A>_diff_--git_a/arch/arm/boot/dts/bcm283x.dtsi_?=
 =?utf-8?q?b/arch/arm/boot/dts/bcm283x.dtsi=0A>_index_3caaa57eb6c8..521933?=
 =?utf-8?q?9fc27c_100644=0A>_---_a/arch/arm/boot/dts/bcm283x.dtsi=0A>_+++_?=
 =?utf-8?q?b/arch/arm/boot/dts/bcm283x.dtsi=0A>_@@_-84,12_+84,6_@@_clocks:?=
 =?utf-8?q?_cprman@7e101000_{=0A>__=09=09=09=09<&dsi1_0>,_<&dsi1_1>,_<&dsi?=
 =?utf-8?q?1_2>;=0A>__=09=09};=0A>__=0A>_-=09=09rng@7e104000_{=0A>_-=09=09?=
 =?utf-8?q?=09compatible_=3D_"brcm,bcm2835-rng";=0A>_-=09=09=09reg_=3D_<0x?=
 =?utf-8?q?7e104000_0x10>;=0A>_-=09=09=09interrupts_=3D_<2_29>;=0A>_-=09?=
 =?utf-8?q?=09};=0A>_-=0A>__=09=09mailbox:_mailbox@7e00b880_{=0A>__=09=09?=
 =?utf-8?q?=09compatible_=3D_"brcm,bcm2835-mbox";=0A>__=09=09=09reg_=3D_<0?=
 =?utf-8?q?x7e00b880_0x40>;=0A>_=0A?=
In-Reply-To: <ab52b007-b6d7-4e97-9436-eb78365e6e99@gmail.com>
Date: Tue, 19 Nov 2019 09:13:16 -0800
Subject: Re: [PATCH v2 3/3] ARM: dts: bcm2711: Enable HWRNG support
From: "Stephen Brennan" <stephen@brennan.io>
To: "Matthias Brugger" <matthias.bgg@gmail.com>
Message-Id: <BYK1IGW6G2CG.2RK3VD0SFYFKT@pride>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_091326_429934_E31AADCB 
X-CRM114-Status: GOOD (  15.50  )
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

Hi Matthias,

On Tue Nov 19, 2019 at 12:14 PM, Matthias Brugger wrote:
>
> 
>
> 
> On 19/11/2019 07:14, Stephen Brennan wrote:
> > BCM2711 features a RNG200 hardware random number generator block, which is
> > different from the BCM283x from which it inherits. Move the rng block from
> > BCM283x into a separate common file, and update the rng declaration of
> > BCM2711.
> > 
>
> 
> I'd prefer to split this in two patches. One moving the node and another
> one
> adding the new node for bcm2711.
>

Makes sense, I thought about doing it initially but didn't do it. In the 
patch moving the node, should the bcm2711 continue to inherit the moved rng 
node from its new location?

Thanks,
Stephen

> 
> Regards,
> Matthias
>
> 
> > Signed-off-by: Stephen Brennan <stephen@brennan.io>
> > ---
> >  arch/arm/boot/dts/bcm2711.dtsi        |  6 +++---
> >  arch/arm/boot/dts/bcm2835.dtsi        |  1 +
> >  arch/arm/boot/dts/bcm2836.dtsi        |  1 +
> >  arch/arm/boot/dts/bcm2837.dtsi        |  1 +
> >  arch/arm/boot/dts/bcm283x-common.dtsi | 11 +++++++++++
> >  arch/arm/boot/dts/bcm283x.dtsi        |  6 ------
> >  6 files changed, 17 insertions(+), 9 deletions(-)
> >  create mode 100644 arch/arm/boot/dts/bcm283x-common.dtsi
> > 
> > diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> > index ac83dac2e6ba..4975567e948e 100644
> > --- a/arch/arm/boot/dts/bcm2711.dtsi
> > +++ b/arch/arm/boot/dts/bcm2711.dtsi
> > @@ -92,10 +92,10 @@ pm: watchdog@7e100000 {
> >  		};
> >  
> >  		rng@7e104000 {
> > +			compatible = "brcm,bcm2711-rng200";
> > +			reg = <0x7e104000 0x28>;
> >  			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
> > -
> > -			/* RNG is incompatible with brcm,bcm2835-rng */
> > -			status = "disabled";
> > +			status = "okay";
> >  		};
> >  
> >  		uart2: serial@7e201400 {
> > diff --git a/arch/arm/boot/dts/bcm2835.dtsi b/arch/arm/boot/dts/bcm2835.dtsi
> > index 53bf4579cc22..f7b2f46e307d 100644
> > --- a/arch/arm/boot/dts/bcm2835.dtsi
> > +++ b/arch/arm/boot/dts/bcm2835.dtsi
> > @@ -1,5 +1,6 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >  #include "bcm283x.dtsi"
> > +#include "bcm283x-common.dtsi"
> >  #include "bcm2835-common.dtsi"
> >  
> >  / {
> > diff --git a/arch/arm/boot/dts/bcm2836.dtsi b/arch/arm/boot/dts/bcm2836.dtsi
> > index 82d6c4662ae4..a85374195796 100644
> > --- a/arch/arm/boot/dts/bcm2836.dtsi
> > +++ b/arch/arm/boot/dts/bcm2836.dtsi
> > @@ -1,5 +1,6 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >  #include "bcm283x.dtsi"
> > +#include "bcm283x-common.dtsi"
> >  #include "bcm2835-common.dtsi"
> >  
> >  / {
> > diff --git a/arch/arm/boot/dts/bcm2837.dtsi b/arch/arm/boot/dts/bcm2837.dtsi
> > index 9e95fee78e19..045d78ffea08 100644
> > --- a/arch/arm/boot/dts/bcm2837.dtsi
> > +++ b/arch/arm/boot/dts/bcm2837.dtsi
> > @@ -1,4 +1,5 @@
> >  #include "bcm283x.dtsi"
> > +#include "bcm283x-common.dtsi"
> >  #include "bcm2835-common.dtsi"
> >  
> >  / {
> > diff --git a/arch/arm/boot/dts/bcm283x-common.dtsi b/arch/arm/boot/dts/bcm283x-common.dtsi
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
> > +			compatible = "brcm,bcm2835-rng";
> > +			reg = <0x7e104000 0x10>;
> > +			interrupts = <2 29>;
> > +		};
> > +	};
> > +};
> > diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
> > index 3caaa57eb6c8..5219339fc27c 100644
> > --- a/arch/arm/boot/dts/bcm283x.dtsi
> > +++ b/arch/arm/boot/dts/bcm283x.dtsi
> > @@ -84,12 +84,6 @@ clocks: cprman@7e101000 {
> >  				<&dsi1 0>, <&dsi1 1>, <&dsi1 2>;
> >  		};
> >  
> > -		rng@7e104000 {
> > -			compatible = "brcm,bcm2835-rng";
> > -			reg = <0x7e104000 0x10>;
> > -			interrupts = <2 29>;
> > -		};
> > -
> >  		mailbox: mailbox@7e00b880 {
> >  			compatible = "brcm,bcm2835-mbox";
> >  			reg = <0x7e00b880 0x40>;
> > 
>
> 
>
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
