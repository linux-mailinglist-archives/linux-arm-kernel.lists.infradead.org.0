Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A39D72063
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 22:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NIC268tWu78fkGFE+AQWmDSDIkQ3uaodCFjJ+MuuP8c=; b=XqUA7bOPmX0raK
	tZoNV7+itie2pAl713lo/FJXAJ26ooDIKfaxXHx4JfTDBM4+VqY/sUOrPG5UTgiMumAHY7maRpMPb
	caDL3tYC4qhZx01RWfy4JxFWuuK1EoyFG2YiItuNY4m6eRr8C4IjTpzEbHBWeScrUAjPZpVYAovAL
	/jkiZ06jJbqj0WckAOwJLe05NE6/8q25icY2njEBm3fboUJsl6oWMf0fV1YUovvgAb8+buB3CMf1L
	S/5JOLjApBRqxNIdTZl+WGJ7we2patDrBsDJkHbYrBbF25wXVxCL0cAO77lzLLHd2zLzuPwqJaemN
	PRajE/Sby7J1BPSQdcPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq10k-0007g8-9A; Tue, 23 Jul 2019 20:03:46 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq10W-0007fA-PG
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 20:03:35 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 82CF71BF206;
 Tue, 23 Jul 2019 20:03:21 +0000 (UTC)
Date: Tue, 23 Jul 2019 22:03:21 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH] ARM: kirkwood: ts219: disable the SoC's RTC
Message-ID: <20190723200321.GN24911@piout.net>
References: <20190723194505.28060-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723194505.28060-1-uwe@kleine-koenig.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_130332_980706_152D572A 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Andrew Lunn <andrew@lunn.ch>, Oliver Hartkopp <socketcan@hartkopp.net>,
 tbm@cyrius.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/07/2019 21:45:05+0200, Uwe Kleine-K=F6nig wrote:
> The internal RTC doesn't work, loading the driver only yields
> =

> 	rtc-mv f1010300.rtc: internal RTC not ticking
> =

> . So disable it.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
>  arch/arm/boot/dts/kirkwood-ts219.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/kirkwood-ts219.dtsi b/arch/arm/boot/dts/ki=
rkwood-ts219.dtsi
> index a88eb22070a1..994cabcf4b51 100644
> --- a/arch/arm/boot/dts/kirkwood-ts219.dtsi
> +++ b/arch/arm/boot/dts/kirkwood-ts219.dtsi
> @@ -104,3 +104,11 @@
>  &pcie0 {
>  	status =3D "okay";
>  };
> +
> +&rtc {
> +	/*
> +	 * There is a s35390a available on the i2c bus, the internal rtc isn't
> +	 * working (probably no crystal assembled).
> +	 */
> +	status =3D "disabled";
> +};

You could also use the aliases to ensure rtc0 is the s35390a. This would
solve the initial issue.

> -- =

> 2.20.1
> =


-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
