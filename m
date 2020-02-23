Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBFD16958E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 04:27:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gM9rI8fL7JST7B/Ks4CdyuedaMVTRFfGCEb3ozZ4qOM=; b=dxCNeevHNgs/QJ
	r7O+VD+mKoQUTkGESkQns7ZMrkx4LKn58MJjB9/nWg7Zb97VeVR5xVp8s1joXwJvhe/knwcSrk8yW
	I0Lzmet4kvmNf2cNMnhKUdbyvd8ASUhIKUH8zv+NLq0/0GovywcNMdv1+t3pBaFYEScMqKHs2feke
	6Q/APt9YVsDCWZ3fDp2Iy9E+RetM2Geola2H0mIisEGTZUhUA8wgZeaJTF68XRczeY1cgARvdGKNN
	uEwZBYQO1OujUI8O3ymSUzJx/h3cdDf/KBvg8QWP69G9J4BGo8ZslW5mJYeAxKJqeqpXL8VKZuLCY
	+VAjHateiCp30VyJhY+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5hv1-0002z6-MJ; Sun, 23 Feb 2020 03:26:59 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5huo-0002q8-2U
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 03:26:47 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 1A122218C1;
 Sat, 22 Feb 2020 22:26:32 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 22 Feb 2020 22:26:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm2; bh=F
 q5Pvne5G6qnjZTjneNRiu68lwry5vZNmNqyfbQkjQw=; b=WrBCbsyrPncJazhGd
 RFrLkBgpnZme+BBLjPPxZnmwb6gkKDFTPRbjKCFgDWDKSq/8Dp8MH15qTOq1xA2v
 7WK40fZZJsfXO+8RjGCaTIW/AjTta277InhLQSW2UJ6uAYGps+NX+tz3yxfN2V+N
 OnoYYt7sPmWYCZYFsV705QR4P8y2wpWOI/X7Pp7iLK1g0vPxKK6T/oa2ZTwmdkW1
 Gbq+Dnc0LUw2EhMSQsdI7LS0IL34/BLldhFhEcYoe8aKP++cCKUjMeWBRYySi4T1
 gkfU7n1bPDyQdjq5vDOkLBKpCN08X6J/kHRsudP2wBN6DTLjd1EYERKYzpJXsh21
 ZxesQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=Fq5Pvne5G6qnjZTjneNRiu68lwry5vZNmNqyfbQkj
 Qw=; b=MxDbz8MtvjBLZkouhiXHV0VhDLj+qXp9f9f3QaqRLsNtD7/9RBUHLXFCE
 PwwM/muhJ7nnWsXZlT3D6yevyRolrnnHpRYllWTtGhELiyBbyHrKb6GtG9yoeB45
 ZRYlSB9MSYJNioKXpFYke9aHlAceTmlnYZRuQgqqosbASagu29wPP6zEoOsk00hD
 Kqvgpk2q2tdE/FRy371s4xQgm2XgxcowsvLgMxIV9OzWJMQwdGoqJQEIykHJOfNR
 QU2osY8N5JmnppDG1mFfxQrjmbImF78xjIDOkth16T2gTI0BjhHDYf+dGS3HzczC
 v7OIJw1yprP+MqJupcq4GAWTfVF0A==
X-ME-Sender: <xms:5_BRXnY4iB3lHEO-NYIBXxVc6VOviTaU6HdPyqCCSoZuRw-azHySEA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkeejgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:5_BRXim6JjmIQXBUvawqqipBFfS3Fa7opxNXzPzB13LO_wXOA28nhw>
 <xmx:5_BRXhGAWlH8mhWT3Tycr_xkjzUTDd0MkRBj1bPfsCt1oe9122fjeQ>
 <xmx:5_BRXpMvz66UiGqpTz7F9SdUCkX0KXDvrWpOCnxaovCM2kMA9ycRgA>
 <xmx:6PBRXie4gW5iu5GhKuQMgadwWf_ebG3_uzh2GEtPTXb0Ab6wRfeXWQ>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 123BE328005A;
 Sat, 22 Feb 2020 22:26:31 -0500 (EST)
Subject: Re: [linux-sunxi] [PATCH] arm64: dts: sun50i-h5-orange-pi-pc2: Add
 CPUX voltage regulator
To: megous@megous.com, linux-sunxi@googlegroups.com
References: <20200222214541.210318-1-megous@megous.com>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <92a2b808-8280-7ad4-cfb4-8ff9488c02c8@sholland.org>
Date: Sat, 22 Feb 2020 21:26:30 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200222214541.210318-1-megous@megous.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_192646_269527_9C1661CD 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ondrej,

On 2/22/20 3:45 PM, Ondrej Jirman wrote:
> Orange Pi PC2 features sy8106a regulator just like Orange Pi PC.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  .../dts/allwinner/sun50i-h5-orangepi-pc2.dts  | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
> index 70b5f09984218..5feedde95b5fc 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
> @@ -85,6 +85,10 @@ reg_usb0_vbus: usb0-vbus {
>  	};
>  };
>  
> +&cpu0 {
> +	cpu-supply = <&reg_vdd_cpux>;
> +};
> +

This should go alphabetically after "codec".

>  &codec {
>  	allwinner,audio-routing =
>  		"Line Out", "LINEOUT",
> @@ -180,6 +184,31 @@ flash@0 {
>  	};
>  };
>  
> +&r_i2c {

This should go alphabetically before "spi0".

> +	status = "okay";
> +
> +	reg_vdd_cpux: regulator@65 {
> +		compatible = "silergy,sy8106a";
> +		reg = <0x65>;
> +		regulator-name = "vdd-cpux";
> +		silergy,fixed-microvolt = <1200000>;

The resistors in the datasheet (10k/11.8k) make this 1.1V.

> +		/*
> +		 * The datasheet uses 1.1V as the minimum value of VDD-CPUX,
> +		 * however both the Armbian DVFS table and the official one
> +		 * have operating points with voltage under 1.1V, and both
> +		 * DVFS table are known to work properly at the lowest
> +		 * operating point.
> +		 *
> +		 * Use 1.0V as the minimum voltage instead.
> +		 */

The datasheet I have for H5 has "TBD" for the VDD-CPUX volatage range. I think
this comment only applies to H3 and is not necessary here.

> +		regulator-min-microvolt = <1000000>;
> +		regulator-max-microvolt = <1400000>;
> +		regulator-ramp-delay = <200>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +};
> +
>  &uart0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart0_pa_pins>;
> 

Otherwise,
Reviewed-by: Samuel Holland <samuel@sholland.org>

Regards,
Samuel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
