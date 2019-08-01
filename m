Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8527D7A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8G4kHeM5qEt+V2yoRatxj7hi2XWiT5Wz1/AXnAjyhLw=; b=mssG3Hom3QR0ap
	V2OOwe3u7B74DjW2tzoWgqG8FHbKaTTKMMI1S/I/yg9P/KPPf8uDnzDNogrDO8O95ApilqQFipiRq
	6cwDy8w1VuKSj8FWExqrEvJT/k4TtFJ1EjoQaunjHywkPNq0T4TXWseXv8ldjMRODxy3ZqhhxHrqu
	UyOOZUoWv1I67pLUhE2/x5LELXdCSnvPikKqDdD/RqiCmTu/IrJWRelzYsuHCDpNAKqERQTK3aXne
	fpyGf/78oNkgJjT/NgaubM434iwL7jI0/mGfiGyOaknL8G+UScIjorUgsFoqLIdI3BtkF1AAWti71
	FPfl9xsjWstfmLqEXTZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6UZ-0000wL-Dg; Thu, 01 Aug 2019 08:31:19 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6UP-0000vn-89
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:31:14 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: QVvAFk9Xh40A6vikjzCsUd/G634OOnv6t53ZNOOEWG1by4QxTDLjWb3b5ADwFH0kB6XayxTX+J
 ElqoApx1dyu3j6K2zRiAHl/CdoFNWf79pA70CJe1cwkVHKosGh+IgEyCAJyTWuo5ISRw0phO5A
 dM1N45V1BSEuS7qIQ+QuPk2WGt+KpG+fjRml8eiK9/4p6MuJoK4kNvVDyfkoFBRm/XAmVC3nD1
 14LuKNqgjN+WLbvbWduOyddp5wfvOgMthjuzPckYkalP3UH0v9eFY/mjAOhOfNYeqFvtX/axpr
 0Ck=
X-IronPort-AV: E=Sophos;i="5.64,333,1559545200"; d="scan'208";a="43541049"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Aug 2019 01:30:55 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Aug 2019 01:30:55 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 1 Aug 2019 01:30:55 -0700
Date: Thu, 1 Aug 2019 10:29:58 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] ARM: at91/dt: pinctrl: add helper define for MULTI_DRIVE
 + PULL_UP
Message-ID: <20190801082958.6xzctmtmttrfyp7y@M43218.corp.atmel.com>
Mail-Followup-To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
References: <20190731221448.tnxrrwny2jpe7iop@pengutronix.de>
 <20190731222439.15704-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731222439.15704-1-uwe@kleine-koenig.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_013112_947573_43015133 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 12:24:39AM +0200, Uwe Kleine-K=F6nig wrote:
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
> =

> On Thu, Aug 01, 2019 at 12:14:48AM +0200, Uwe Kleine-K=F6nig wrote:
> > The define I added in include/dt-bindings/pinctrl/at91.h would be nice
> > to have though to simplify overriding the SoC's default pinctrl. Would
> > it be OK to add this?
> =

> something like this ...
> =


Nice, easier for the user.

> The name is a bit inconsistent compared to
> AT91_PINCTRL_PULL_UP_DEGLITCH, but on the pro side it is shorter.
> Assuming you like this, what is your naming preference?

I advocate consistency in this case.

Regards

Ludovic

> =

> Best regards
> Uwe
> =

>  include/dt-bindings/pinctrl/at91.h | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/include/dt-bindings/pinctrl/at91.h b/include/dt-bindings/pin=
ctrl/at91.h
> index 3831f91fb3ba..b8bb55a935f6 100644
> --- a/include/dt-bindings/pinctrl/at91.h
> +++ b/include/dt-bindings/pinctrl/at91.h
> @@ -21,6 +21,7 @@
>  #define AT91_PINCTRL_DEBOUNCE_VAL(x)	(x << 17)
>  =

>  #define AT91_PINCTRL_PULL_UP_DEGLITCH	(AT91_PINCTRL_PULL_UP | AT91_PINCT=
RL_DEGLITCH)
> +#define AT91_PINCTRL_MULTI_DRIVE_PU	(AT91_PINCTRL_MULTI_DRIVE | AT91_PIN=
CTRL_PULL_UP)
>  =

>  #define AT91_PINCTRL_DRIVE_STRENGTH_DEFAULT		(0x0 << 5)
>  #define AT91_PINCTRL_DRIVE_STRENGTH_LOW			(0x1 << 5)
> -- =

> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
