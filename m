Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6737970E46
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 02:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KK2CznRdhxSUA2dCEIQAYSaN2+TaNRCRqT14fVmDN7E=; b=FoUFl49grs2z5+
	BrWq09Ei2ZN3pm7aLq1j/Kl+PGMGBVOGRx3+GCFeSGIOZC6X/ddCV0EaEDtSr7sVB9PxgLySIu9oO
	2SNGnat8zZZ676CFBmhVyzbL4E5U8GEF3pxqHu3FvCDZwE/+rHxSE3fA9UKA7k1/zVDm6Oa+A+Glp
	1jFYRWQ++tuW9pe7h8EVw4FbPKMqKyqZ3ShTuZEDAH9fZfAj90f2Y9Wmr/AuU3xXAK6WKluYVcbZm
	71b3ykxnnMoCRusxeJOWQFm4bGSUwKY0E5oCLz3W++hxN+aawERXVGmW9kdmejm7W5EoOFmcfIzWL
	PPcmKj4vPdqsLflywMuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpiro-0008Ve-Le; Tue, 23 Jul 2019 00:41:22 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpirP-0008VE-HF
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 00:40:57 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id E858321ADD;
 Mon, 22 Jul 2019 20:40:53 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 22 Jul 2019 20:40:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=ea1eXoWpqlHrh4PNFoOkJoobCbGJqdR
 95gve43bppWY=; b=DjNggeZhNCdlUyyXFp/MmWpcb5mpCX+fqULx2XOFp6E93B2
 Ltob4RpUXyYQPuJ7JaThvGuSymQMqZlXhDuUSW6BdVJbWBEbFYNXOifRdowWfF0v
 JEznR2696Gy3jLhH4DAVxmJZUnPjbCiSTu6c49Mc7q7mGlXPXh0iYsnG7A1JyZpB
 nVLytB6ltwXLHnPO+HgjY7sdlD6n/Z9xS8vyIv2CHBFSQJUM72na7mckeAXdaBt1
 hbmyMhJl5dcM5csC77iC4Pp1oSHq8hh89DqMTCPyMgeDmOXRKFl2j50mJbMpL8Dy
 eR5wHd3AOr17y3RP8fqqklB35uoIekvXXphKJWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=ea1eXo
 WpqlHrh4PNFoOkJoobCbGJqdR95gve43bppWY=; b=V7D/POwfWqx3e195N9nylY
 bJGvoMjjjR5Nf1ouybjiuQMsoTNVdPtxsy7rC2rCUjsZdLxUiUYFCBcRigMu8vM1
 K0gRp6acAUPCre71uUbdGTHAgmNs7w+gkFC53nQqN/1xreRfTmGL8pyYuDHWq3V5
 poR9pOYPcDr5od64qCtYJT3FJrM9/L5S227Dbo/9aM8w+bcWR+o3A3evYjeMuvm1
 z+EnIKQGgUTn8pOItTSHHXJ0SXPbVJlo6Q9JoPmD6xhiLGpEPQSqWdMzM5KJwi6W
 JEMAJIOQgIkPfI54dTt3g+x/007BklffUU4cdfMNP2fvEK4rqITrWMYGVeTU8Tqw
 ==
X-ME-Sender: <xms:lFc2XeNDnMeJr4rp5MVqPG6mIg4Zs6FZXXLNv8X0jSM_irSPMfnpMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrjeehgdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:lFc2XZEkqdx5hDVDbeupnTb98R46EHs38zSO0lGb2RK1vNNPa9fUSA>
 <xmx:lFc2Xejz3xuRF1XqrEHhBUBIpP_4eTJYS8NHfR7KSJBjVKBohv109w>
 <xmx:lFc2XdyuQHF1IV7_N0c5UtkPbJeJ3JjUMizDxbWC7vq97se4LVjSOA>
 <xmx:lVc2Xa2wwkaO0XYuvZUn2EcOcqHUPuaRIaeFvHitgdI9V0FV297XMg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 4C3ADE074B; Mon, 22 Jul 2019 20:40:52 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-736-gdfb8e44-fmstable-20190718v2
Mime-Version: 1.0
Message-Id: <a0a8162e-c21b-4b3d-b096-1676c5cc9758@www.fastmail.com>
In-Reply-To: <20190723003216.2910042-1-vijaykhemka@fb.com>
References: <20190723003216.2910042-1-vijaykhemka@fb.com>
Date: Tue, 23 Jul 2019 10:11:05 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Vijay Khemka" <vijaykhemka@fb.com>, "Rob Herring" <robh+dt@kernel.org>,
 "Mark Rutland" <mark.rutland@arm.com>, "Joel Stanley" <joel@jms.id.au>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ARM: dts: aspeed: tiogapass: Add VR devices
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_174055_713553_B78EAC44 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
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



On Tue, 23 Jul 2019, at 10:04, Vijay Khemka wrote:
> Adds voltage regulators Infineon pxe1610 devices to Facebook
> tiogapass platform.
> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>

Acked-by: Andrew Jeffery <andrew@aj.id.au>

> ---
> In v2: Renamed vr to regulator and fixed some typo in commit message.
> 
>  .../dts/aspeed-bmc-facebook-tiogapass.dts     | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts 
> b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> index c4521eda787c..e722e9aef907 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
> @@ -144,6 +144,42 @@
>  &i2c5 {
>  	status = "okay";
>  	// CPU Voltage regulators
> +	regulator@48 {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x48>;
> +	};
> +	regulator@4a {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x4a>;
> +	};
> +	regulator@50 {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x50>;
> +	};
> +	regulator@52 {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x52>;
> +	};
> +	regulator@58 {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x58>;
> +	};
> +	regulator@5a {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x5a>;
> +	};
> +	regulator@68 {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x68>;
> +	};
> +	regulator@70 {
> +		compatible = "infineon,pxe1610";
> +		reg = <0x70>;
> +	};
> +	regulator@72 {
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
