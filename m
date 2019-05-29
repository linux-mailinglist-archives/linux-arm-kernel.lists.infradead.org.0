Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA702D33F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 03:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgZJ/yOZDFrJ1Vld+toTd7f91p1Z3NKAip8CdBYhNzA=; b=uxZQcvse2EURx9
	yQo1tZkRzoNDpnmla+9T4mBaO+8vyXZkhXFpLpCyf7CHUYoATqV1kd3kr3GI41rRa3SRGDBCdI9Zp
	OQr4Ix2MgToI+rZGa+8rYEqRv7J9iqtVwLa5z8rREx+8jHT7+A0wH2mTPeAOFbPOyjcjQtWk3AGhp
	FoPhe2UXKLsD74nf5EQBKcWT6P538XtiVkJukN6a70/ORaIkSPnxpeC0SL3cJaq80BH2I8ANdx/gc
	peENkW75uuLTbzChcDsRa+OPfhYMDW5jAGJf2RtPcr6ZnMvCChodBFTgDt91i6OMb9zhAXKXxnfsb
	oShGqXIEqBEFAMhuiRoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVnIt-0001RY-4v; Wed, 29 May 2019 01:22:55 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVnIl-0001Qd-Ua
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 01:22:49 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 084352203E;
 Tue, 28 May 2019 21:22:39 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Tue, 28 May 2019 21:22:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=O3Xkv3EI6y00AB2M6iUlJwWyBdvRoMi
 nM2rnAHW1aYg=; b=hOV871nmAdvpcLrcayvkgFn0OV342CHDmf9kRVh6YDNmapN
 fJb/O6F+9R4mH5T2vUaw/G/lAjwe1k35zu/KVu376BtR7EMzdjcWH9srREK6cmwe
 mPrU+UuN9nSCLzEJr5KwObQEP8qgH+qWdsIZR6O1ksL5VoRb/APcKCGZyciXMzAg
 0bK5svhKSY/ZUx7jCipcmflg+MfIxXSDVXKcMeEJ2S9T2O2EB/WV+vrFDtTZeniQ
 9uocJZZ2+5sX1XfbDZ6pcoVIaL+v3nfWlbRrfT4MzCd05XZKk7rAdvwqJ3NqcUC3
 cjPOVgfq29rA/oq50mMHOJvpVP8ev72bcJDVCmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=O3Xkv3
 EI6y00AB2M6iUlJwWyBdvRoMinM2rnAHW1aYg=; b=nYZSZa2jMoyk0fHbHbePYC
 GFW/9W5yQC4kMgPoLN7SlHkfxWroFiLVNRyPRcoktMVkSYZyKyIzP5oBKRJTHBcu
 X3Tg4xxvy0eKxst8OKBpCV6NXhuN+E33sZrKPK5EhTd6z0OY3K4JYsbXhn0MOjv5
 TxK6JQMn/5/pfeOiyEMFoy/aud+7JIoqWVCKROVlJypkLRvbdxnaaOwnk7bWlb5Z
 2LrABS+yVXintxlj6vOBljfKpnsaLgscHaCtgTTnT6fkfMVIvfJOUDnC8aoZTQuV
 jHATHUB5AGUFHD8qsSFFA/FYZ+tx8uogNEBWUOvWZRUJXgRTNskpf3R/Wk4Szy/Q
 ==
X-ME-Sender: <xms:3d7tXKQ_mHmvNk8LYkpIljRURpmhytPa06O4NBRV1egLyXIuEyolqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddruddviedggeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:3d7tXFQHu7jR7Vh8F975N4hdkfE8Jvw6GtZjT_KasakbDHkvaP8hsw>
 <xmx:3d7tXG5opnSsYQh9XuURjuUhGMxzAXlIFfjMNM_ddsDKtU5zNJEtyw>
 <xmx:3d7tXKVYrp-nVot3T4GLSTfXXoqv8Scjl8fGLSdSu2wmvFXXYIETBA>
 <xmx:3t7tXL14R3RvaZCn_gnQ2MRGOzKNMaHfplYh8XlawYvBZGEjy61q4A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 42D6FE00A2; Tue, 28 May 2019 21:22:37 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-555-g49357e1-fmstable-20190528v2
Mime-Version: 1.0
Message-Id: <c0e01b11-5ea2-42d1-be67-2998809e310c@www.fastmail.com>
In-Reply-To: <20190527112753.1681-1-a.filippov@yadro.com>
References: <20190527112753.1681-1-a.filippov@yadro.com>
Date: Wed, 29 May 2019 10:52:36 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Alexander A. Filippov" <a.filippov@yadro.com>,
 linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH] ARM: dts: aspeed: g4: add video engine support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_182248_124499_0B847727 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 27 May 2019, at 20:58, Alexander Filippov wrote:
> Add a node to describe the video engine and VGA scratch registers on
> AST2400.
> 
> These changes were copied from aspeed-g5.dtsi
> 
> Signed-off-by: Alexander Filippov <a.filippov@yadro.com>

Ugh, I should really sort out the bmc-misc stuff, I don't like to see it propagate
in its current form. That's not your problem though, and I hope to address it in
the near future.

For the OpenBMC kernel tree:

Acked-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  arch/arm/boot/dts/aspeed-g4.dtsi | 62 ++++++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
> index 6011692df15a..adc1804918df 100644
> --- a/arch/arm/boot/dts/aspeed-g4.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g4.dtsi
> @@ -168,6 +168,10 @@
>  					compatible = "aspeed,g4-pinctrl";
>  				};
>  
> +				vga_scratch: scratch {
> +					compatible = "aspeed,bmc-misc";
> +				};
> +
>  				p2a: p2a-control {
>  					compatible = "aspeed,ast2400-p2a-ctrl";
>  					status = "disabled";
> @@ -195,6 +199,16 @@
>  				reg = <0x1e720000 0x8000>;	// 32K
>  			};
>  
> +			video: video@1e700000 {
> +				compatible = "aspeed,ast2400-video-engine";
> +				reg = <0x1e700000 0x1000>;
> +				clocks = <&syscon ASPEED_CLK_GATE_VCLK>,
> +					 <&syscon ASPEED_CLK_GATE_ECLK>;
> +				clock-names = "vclk", "eclk";
> +				interrupts = <7>;
> +				status = "disabled";
> +			};
> +
>  			gpio: gpio@1e780000 {
>  				#gpio-cells = <2>;
>  				gpio-controller;
> @@ -1408,6 +1422,54 @@
>  	};
>  };
>  
> +&vga_scratch {
> +	dac_mux {
> +		offset = <0x2c>;
> +		bit-mask = <0x3>;
> +		bit-shift = <16>;
> +	};
> +	vga0 {
> +		offset = <0x50>;
> +		bit-mask = <0xffffffff>;
> +		bit-shift = <0>;
> +	};
> +	vga1 {
> +		offset = <0x54>;
> +		bit-mask = <0xffffffff>;
> +		bit-shift = <0>;
> +	};
> +	vga2 {
> +		offset = <0x58>;
> +		bit-mask = <0xffffffff>;
> +		bit-shift = <0>;
> +	};
> +	vga3 {
> +		offset = <0x5c>;
> +		bit-mask = <0xffffffff>;
> +		bit-shift = <0>;
> +	};
> +	vga4 {
> +		offset = <0x60>;
> +		bit-mask = <0xffffffff>;
> +		bit-shift = <0>;
> +	};
> +	vga5 {
> +		offset = <0x64>;
> +		bit-mask = <0xffffffff>;
> +		bit-shift = <0>;
> +	};
> +	vga6 {
> +		offset = <0x68>;
> +		bit-mask = <0xffffffff>;
> +		bit-shift = <0>;
> +	};
> +	vga7 {
> +		offset = <0x6c>;
> +		bit-mask = <0xffffffff>;
> +		bit-shift = <0>;
> +	};
> +};
> +
>  &sio_regs {
>  	sio_2b {
>  		offset = <0xf0>;
> -- 
> 2.20.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
