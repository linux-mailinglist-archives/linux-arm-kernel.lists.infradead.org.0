Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AC9FE644
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 21:14:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3gFH8T5nuMhHF6OGcBcMBfBxQPHLLmKUxPpIpu8bfg=; b=Cqyp07S+nRmUhb
	T90cbNLbG8IcqD3naiwbDIl4Ay8d6nM8s5fVgQ9ZiTIkM/H6F1+5gYXHNp+e8RnKETBsh1F0W7E97
	Un0wTQn+78445hJoI4b9RlgGYAqHhQlX+h7c3tit/1KVtOAo4edYyZefBghVNheIGoDgQmYMLrXJM
	CYG6yTLxN4doW3UDAiwhb8EFyTbz/SQGWwcofhAfAkAtp/5+XiEnpzXXVBQ2KfpeHsxzmQeopaJwI
	4Fj/3MDQMj5zrhj/1VrHrOv+HRetjFBNWUBYXQQ+NOxCY2peKWYM1Mm0oxEq2xv/4gKJQgeE2lX7c
	7lkwkLiuQd/gkX/QAA5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVhz7-0004A7-IV; Fri, 15 Nov 2019 20:14:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVhyy-00049U-A9
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 20:14:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iVhys-0000VS-Rp; Fri, 15 Nov 2019 21:14:10 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iVhyr-0000NS-RY; Fri, 15 Nov 2019 21:14:09 +0100
Date: Fri, 15 Nov 2019 21:14:09 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Subject: Re: [PATCH v2] ARM: dts: imx25: fix usbhost1 node
Message-ID: <20191115201409.5ztt7vrhf2btpoed@pengutronix.de>
References: <20191111114655.9583-1-m.grzeschik@pengutronix.de>
 <20191115083415.28976-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115083415.28976-1-m.grzeschik@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_121416_352603_A1D55C90 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Michael,

On Fri, Nov 15, 2019 at 09:34:15AM +0100, Michael Grzeschik wrote:
> The usb port represented by &usbhost1 uses an USB phy internal to the
> SoC. We add the phy_type to the base dtsi so the board dts only have to
> overwrite it if they use a different configuration. While at it we also
> pin the usbhost port to host mode and limit the speed of the phy to
> full-speed only, which it is only capable of.

The subject line suggests this is a fix but the commit log and the
actual change don't support this. Maybe better:

	ARM: dts: imx25: consolidate properties of usbhost1 in dtsi file

? =


> diff --git a/arch/arm/boot/dts/imx25.dtsi b/arch/arm/boot/dts/imx25.dtsi
> index 9a097ef014af5..40b95a290bd6b 100644
> --- a/arch/arm/boot/dts/imx25.dtsi
> +++ b/arch/arm/boot/dts/imx25.dtsi
> @@ -570,6 +570,9 @@
>  				clock-names =3D "ipg", "ahb", "per";
>  				fsl,usbmisc =3D <&usbmisc 1>;
>  				fsl,usbphy =3D <&usbphy1>;
> +				maximum-speed =3D "full-speed";
> +				phy_type =3D "serial";
> +				dr_mode =3D "host";

Would it make sense to split this patch in two? One that moves phy_type
and dr_mode from the dts files using imx25.dtsi (which has no effects on
the resulting dtb files). And another that adds maximum-speed.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
