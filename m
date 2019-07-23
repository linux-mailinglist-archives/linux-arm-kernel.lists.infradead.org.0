Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B4970DF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 02:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0IcMTK5QyMohdyXOgfpQXpsXdd8hlaPmzBHdY1yXc8=; b=QdBRJ/IiGbeGmi
	QrWKhqfeVmsUamex5dd+kEXM4KfvXyfZw760QOQR7LnerLfruPwFzfnZIgNYvkBKEeNOLAQdms2vF
	ci6BZ89yY2v1eYEkeVFnTIpAjpTdc/tA2tH0lSiH07Le0CtcHLHWLmzKfxaZ0RkKkogwbnu/8U84D
	CWfwRCdtS7CDweMjpExGVCn3L5tvUY/b+gsp9l83kJMC0RFmsxhjSqPxh1jgNTWp+wsNaWc+vZBNP
	JQ/w0Kpa3yDbkca6L/40IbaS132v1NlZDDSQjjA1dRql4zYFDUTcjxTSRhd+CTMCZy0uPEfkKJ+PH
	E/mIoEuPrkfihC3dreOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpiPO-0006E6-9E; Tue, 23 Jul 2019 00:11:58 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpiP9-0006DZ-3W
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 00:11:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id F064A18C;
 Mon, 22 Jul 2019 20:11:39 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 22 Jul 2019 20:11:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=OhbCTTG60O0DLmCkPQcpm3oAs+SHxL2
 0Bi+NL3pjrFY=; b=gfz4EdWCw5geR3T0Nv6uC10gwLgbXdG1NmooZZRWtJlPHLu
 Oi/TEL1TjlJo0WXQxv/btzpXRnf13/i+eSQSffupe/Pc5uHLoLqqlghOPolNBBHc
 TsbG7KmQWwR7QjGiHvI9qZHA5gRpQFrFOh1XJq+/aujstUMdsakglnn4fkBm8+UO
 h2ISpYcxPHA58X1JBZwjP7qgDY1LM/Sa2JW1Bv35gKZ/YXyPbTS1nro8D2qAr+dN
 C14UhQZ7f8QGHFu/8w1cXKEwkleStkKgqDbI4m5gr0g50JF8V1t4QL1GbIPqK/An
 LpiRKgXMkWtkDLBLzbnkLGk9BIY4NQ1/cYYCAIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=OhbCTT
 G60O0DLmCkPQcpm3oAs+SHxL20Bi+NL3pjrFY=; b=yoOf7DGoRHotgDYBTTP/cE
 lnt03girjOtYtIuzMVM0RUB1zc49s3isN/xtLSINjtXtz0Cr1h4EUwqVxv+g5VAK
 S7jWf8w1qSXTWnHPZ5j3QXx275irrMjPl1GpIw52xMefLv0Jfmql+mHRbnvoy1E5
 JHEY/N5pA++41W0UsvEMmOc3CaBq7Q3f0nRn6YyWdU7kqg6Y2I6x14bCgEpKEvQN
 2V7AH/nBGNbtRmSuZGTR6y3xkRAyMNRvg9j/SFdiS/NRoqB8e929h47l9/FK5hw0
 dgKMO4b2w4dx+iS/SBk0MrOmEYjw3jGkcF61APuzm4uT/YtFZUGQn0CfjsAiuhmw
 ==
X-ME-Sender: <xms:uFA2Xdgv_ebNr7axUGjj1Sc48Nz5QsKlWi7EZcxD1oL89exJRIe67w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrjeehgdeftdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:uFA2XWRkDt-5HVxSikoh3EpqPJuAmCG-uTyerkaxsLXD4aUWc7MUug>
 <xmx:uFA2XYGDLe31OEgb3YUOdMua9jBcyIV5RA08FD5fUzEvu4L3zPjFMw>
 <xmx:uFA2XWntcQiSELRGzKyoqvilqtSyfImHWBVjuOjvRHr_0_cRjHb1Bw>
 <xmx:u1A2XeuF8Tq_FVjkjJTffj90tr-oZFL8N_CVcSST6GovERNF3d1Igg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 4A9EAE07B2; Mon, 22 Jul 2019 20:11:36 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-736-gdfb8e44-fmstable-20190718v2
Mime-Version: 1.0
Message-Id: <802c5419-08ec-4a0e-8a50-ad4a1bbf7f3a@www.fastmail.com>
In-Reply-To: <20190722192451.1947348-1-vijaykhemka@fb.com>
References: <20190722192451.1947348-1-vijaykhemka@fb.com>
Date: Tue, 23 Jul 2019 09:41:20 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Vijay Khemka" <vijaykhemka@fb.com>, "Jean Delvare" <jdelvare@suse.com>,
 "Guenter Roeck" <linux@roeck-us.net>, "Rob Herring" <robh+dt@kernel.org>,
 "Mark Rutland" <mark.rutland@arm.com>, "Joel Stanley" <joel@jms.id.au>,
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH 1/2] ARM: dts: aspeed: tiogapass: Add VR devices
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_171143_462498_2E8E67EA 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "openbmc @ lists . ozlabs . org" <openbmc@lists.ozlabs.org>,
 Sai Dasari <sdasari@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vijay,

A few nitpicks.

On Tue, 23 Jul 2019, at 05:10, Vijay Khemka wrote:
> Addes

Typo: Adds

> Voltage

Unnecessary capitalisation.

> regulators Infineon pxe1610 devices to Facebook
> tiogapass platform.
> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
> ---
>  .../dts/aspeed-bmc-facebook-tiogapass.dts     | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts 
> b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> index c4521eda787c..b7783833a58c 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> @@ -144,6 +144,42 @@
>  &i2c5 {
>  	status = "okay";
>  	// CPU Voltage regulators
> +	vr@48 {

The recommended generic name is 'regulator', so e.g. regulator@48

> +		compatible = "infineon,pxe1610";
> +		reg = <0x48>;
> +	};
> +	vr@4a {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x4a>;
> +	};
> +	vr@50 {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x50>;
> +	};
> +	vr@52 {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x52>;
> +	};
> +	vr@58 {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x58>;
> +	};
> +	vr@5a {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x5a>;
> +	};
> +	vr@68 {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x68>;
> +	};
> +	vr@70 {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x70>;
> +	};
> +	vr@72 {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x72>;
> +	};
>  };
>  
>  &i2c6 {
> -- 
> 2.17.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
