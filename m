Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5479635504
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 03:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vh0XElEv6yrzqQ3+mJ42jJ138/aVefDD3wjYJE1Nxcc=; b=s3be69iG5AYrCL
	N7mhmlubZJRGBpRoA2nEqKspUyb7VDCHOFnvn3NSVYMGI4aR09PFOeXztAJm10KYel6wQQhukSm6W
	zUKKg5F8N5c4wdw4Mivhk2GVOTytb2PU09O5CVDepnxaZ13USYNNFaWXKtdV6l5gUu9UAonOUVDYJ
	+r2bY8zcvfAMKfAf29ieNyo26HLibCX1PxJ03GQMcKJYf78f5pxRjWWAGqvxw+ucA/FAfAdrF3rCG
	DPWCGHQkZWzQXiRaBQyaYndlyENkw4anQ1pBBJN6cKP8xd0epDYL3raWvJWRzoPaZqH8Go9zeJ8YD
	Tyykk1wdEYTlzH9kDfcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYKmI-0000xm-D2; Wed, 05 Jun 2019 01:31:46 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYKm8-0000uQ-2c
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 01:31:37 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 42D9B2210C;
 Tue,  4 Jun 2019 21:31:35 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Tue, 04 Jun 2019 21:31:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=/EWPTD+qPhbo26yslb0jEUCcDXDMMu1
 NnNiOXIfrmYs=; b=boT0MTedmWfzg2/ZwHtHcIzKC88eMJIH1TBFvYMWGGyp2k7
 LWPB/f+rs4b64hobSCMp0hEKoxurYgVnn2tDiBoAyDx0lGX3k3ifyBjmw83Sjc7H
 XC69+6x+vNq0sAWcOjiITwhfJmD07+oM7uktT6iKtt1Edbi6H3/vuzwFL8KqsZIB
 EoBUuEnKzQelyDOy+QTQQyWju7pG3xnnfGgifn+sWohI820PQnO7e8A0AuFKIiz8
 gkxrOCAzxj1C+U9ZPF4Gug29Vdsn/TWj5s+Esv1LZ7AtC96omHcFiMkI3+EVt4kc
 Ef+CzW4BlVYoeHjTZZSupK1yUEXPD06O55eSqOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/EWPTD
 +qPhbo26yslb0jEUCcDXDMMu1NnNiOXIfrmYs=; b=nHnOcozcPFEf9vG5q6SnWj
 YZSn4aKnrJxEFBYwWWSoegyN1r1P0tSrIBxpNXo28A8B2AvD3sMQKNjlBHvXE0vF
 0yaM+RaFdqp2a9GFDOrgjQe629+RihqbMQhPdZA+fzjooUgBKicz64A3wa1S4MHE
 2cWzsyZXOxbsJV4AV4kh4qlDQTLweAQOxQ/q4U225hek9hQcSFHGvhiUafzwQz1a
 Lgvvlx4OxyEavLvDnh5YGHHD8s8BIQSkHcW+cwhC1+1RDCPMDDz1SVVzaKgA6QpR
 vHuwgWmrvnjiVbI0iGw0QVTBuhUiz1V0tgvD94kL7OpBQrH00Y4FCSlbZjbI/n0w
 ==
X-ME-Sender: <xms:dxv3XLLTDJYG3VKEMWs3peYBBm4nBR81-bZeQS_uXgUtFJ5tXL6luA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudeguddggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:dxv3XLxaXCrBaekgEdwOU76V4Zn0iJNmAf4JDTx1ZRCtYPhAFHRJNg>
 <xmx:dxv3XKHvR1RCQT7lVHvqiwUW6YHZLrIf0WzfTZ-shuF0ga7uLRfzYQ>
 <xmx:dxv3XORD5ecn5hP5-2ugGVLfahXiDZNTKxvLFGAeW2jIj2661VTP2g>
 <xmx:dxv3XFsOw_IZvKkPJO-NMnMhaSk6iYiiGCLnzzVNGu1TiWFxg70lOg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id EDB92E00A1; Tue,  4 Jun 2019 21:31:34 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-650-g74f8db0-fmstable-20190604v3
Mime-Version: 1.0
Message-Id: <b899d98e-6f13-4728-9a62-3228ae7a2021@www.fastmail.com>
In-Reply-To: <1559684524-15583-1-git-send-email-hongweiz@ami.com>
References: <1559684524-15583-1-git-send-email-hongweiz@ami.com>
Date: Wed, 05 Jun 2019 11:01:34 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Hongwei Zhang" <hongweiz@ami.com>, "Rob Herring" <robh+dt@kernel.org>,
 "Mark Rutland" <mark.rutland@arm.com>, "Joel Stanley" <joel@jms.id.au>,
 "Linus Walleij" <linus.walleij@linaro.org>
Subject: =?UTF-8?Q?Re:_[PATCH_1/3_linux_dev-5.1_arm/soc_v2]_ARM:_dts:_aspeed:_Add?=
 =?UTF-8?Q?_SGPM_pinmux?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_183136_262511_CA80D093 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 5 Jun 2019, at 07:12, Hongwei Zhang wrote:
> Add SGPM pinmux to ast2500-pinctrl function and group, to prepare for
> supporting SGPIO in AST2500 SoC.
> 
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  arch/arm/boot/dts/aspeed-g5.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
> index 85ed9db..8d30818 100644
> --- a/arch/arm/boot/dts/aspeed-g5.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g5.dtsi
> @@ -1321,6 +1321,11 @@
>  		groups = "SDA2";
>  	};
>  
> +	pinctrl_sgpm_default: sgpm_default {
> +		function = "SGPM";
> +		groups = "SGPM";
> +	};
> +
>  	pinctrl_sgps1_default: sgps1_default {
>  		function = "SGPS1";
>  		groups = "SGPS1";
> -- 
> 2.7.4
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
