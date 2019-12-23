Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EB012922B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 08:18:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dwh07ojIeMeAaLh7Olkhr3AxE8iclutbvYFbxPWJ79A=; b=sPBeAol+5fh58C
	+zU+SvzxflFrTrVU+Q+2A30+4nluF5loQ60ADAVdJtC1dj6JTZ2rG5CWy8q+VNMkFDNWasLgog5He
	i51tKVvS/2q8i6h+NlabukxS4BLSDSnOZFNPObN4s+COr1QPWiyruvzBr7GKy0+Mj/pFQF7cefC0f
	8ldK7iZAS11zW0qszObgEDkHUX/kHtPRuwttW7C3SNZ7JT53MVzqaLv03t9HygMq6Doi9GEsA8455
	QJSLhMhS5P44s4YC2qVNzAnMFwEBPxaZmbHys0VmUbllIXYXfehKAS9SepJT8W7iIJk5gWeGZF5ib
	WRPJ9MjGzWIFNe0vEaTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHzC-0002M6-FQ; Mon, 23 Dec 2019 07:18:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHz3-0002LL-4M
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 07:18:30 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B42F206B7;
 Mon, 23 Dec 2019 07:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577085508;
 bh=+xZCTXHEyRCDiG9GABKQf4z73/JeJ/82+LVQggHUV4Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NO7thX31ekyQ86+u0f0xQWbM16nK8c6pi9PpYNibBKFHJIcPkv4M9Sn8Gb0O/uRBn
 NgfY/xCASxjNaTxG0Wdl8/peWyKvIMYSU8m/BuYobLWssYsWugMTf3D21TtmTG++dB
 PGNRVlb/DtbVX4700KGjyGjrEiRQU3mWz1QDglN8=
Date: Mon, 23 Dec 2019 15:18:06 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH] arm64: dts: imx8mq-librem5-devkit: add accelerometer and
 gyro sensor
Message-ID: <20191223071805.GR11523@dragon>
References: <20191203130336.18763-1-martin.kepplinger@puri.sm>
 <f8b4710b-4430-a42f-d29a-8f2f4d22b46e@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f8b4710b-4430-a42f-d29a-8f2f4d22b46e@puri.sm>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_231829_196060_0DD194DE 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, robh@kernel.org, kernel@puri.sm,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 10:32:15AM +0100, Martin Kepplinger wrote:
> On 03.12.19 14:03, Martin Kepplinger wrote:
> > Now that there is driver support, describe the accel and gyro sensor parts
> > of the LSM9DS1 IMU.
> > 
> > Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> > index 683a11035643..7a92704c53ec 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> > @@ -415,6 +415,13 @@
> >  	pinctrl-0 = <&pinctrl_i2c3>;
> >  	status = "okay";
> >  
> > +	accel_gyro@6a {

We prefer to use hyphen than underscore in node name.  Also nodes with
unit-address should be sorted in the address.

Shawn

> > +		compatible = "st,lsm9ds1-imu";
> > +		reg = <0x6a>;
> > +		vdd-supply = <&reg_3v3_p>;
> > +		vddio-supply = <&reg_3v3_p>;
> > +	};
> > +
> >  	magnetometer@1e	{
> >  		compatible = "st,lsm9ds1-magn";
> >  		reg = <0x1e>;
> > 
> 
> (adding / fixing people in CC)
> 
> Are there any questions about this addition or the followup fix?
> 
> thanks a lot,
> 
>                                martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
