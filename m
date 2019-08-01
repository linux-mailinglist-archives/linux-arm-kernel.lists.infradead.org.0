Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EFE7E3E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 22:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36Rnmc9lsMqMxFkWAQqK8e0OhzFt/kTceNP4iKk00W4=; b=R8evmVA72/ckII
	cEFhwW/Uoq1C+BBw4a+VW8XwjyycR2eOKg43pG4pw2Ljs2R90P1dEBvjOQd0a27fEDAm2eg/q8S1p
	MAluS3RcVI2VkGmeQ/QQ2ulmWYg3Ul3pfwtd/Yv0cmxyuFjLrbK7fG0gL1WuIjapIuEcTiOhGzVuJ
	GeKPqHsVou3A8Um0XThRWD03EuGf9Xa5nZOYrgc3XiYAfDD+pY80g5w4jzt2s2crTDeMqH6IqJun4
	TFKoAXVR1ZMQKHd10YA6LojRAJliAuPx2S9h+7NJbJz2J+hD79opFCxXnP8YwuamKRXjwtUvqgbC5
	dOijkyx50HKJ/w7gFrRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHc5-0008BS-Ng; Thu, 01 Aug 2019 20:23:49 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHby-0008At-6A
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 20:23:44 +0000
X-Originating-IP: 86.202.164.175
Received: from localhost (lfbn-lyo-1-74-175.w86-202.abo.wanadoo.fr
 [86.202.164.175])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 214E1FF804;
 Thu,  1 Aug 2019 20:23:25 +0000 (UTC)
Date: Thu, 1 Aug 2019 22:23:25 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH v2] ARM: kirkwood: ts219: disable the SoC's RTC
Message-ID: <20190801202325.GA3237@piout.net>
References: <20190731223233.GA15900@taurus.defre.kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731223233.GA15900@taurus.defre.kleine-koenig.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_132342_389294_05CE009D 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Oliver Hartkopp <socketcan@hartkopp.net>,
 Gregory Clement <gregory.clement@bootlin.com>, tbm@cyrius.com,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/08/2019 00:32:33+0200, Uwe Kleine-K=F6nig wrote:
> The internal RTC doesn't work, loading the driver only yields
> =

> 	rtc-mv f1010300.rtc: internal RTC not ticking
> =

> . So disable it.
> =

> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
> Hello,
> =

> This patch is (one) result of a discussion on the rtc list. v1 was sent
> there only. This v2 is just a resend to the mvebu maintainers.
> =

> Alexandre Belloni said to v1: Seems good to me then.
> =

> This sounds a bit like an ack, but I didn't add it as it was not
> explicit.
> =

> Best regards
> Uwe
> =

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
> -- =

> 2.20.1



-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
