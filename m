Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47F9309C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 10:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBExaFYtrRELXUXKRG5Y6if90cUkHhiLFWpOcSgwyRs=; b=Te78NdWg4sjAaW
	JAqaMCZUhazJ3hDdLugdv42NIARX781KeVfrs5Qz3TihEHgLflh7fwcEwzyigtD9f86cpSRbcM846
	Cloz4PeWme8DsDHohYZHF11TA5Kz7lZQ1b5EU8St4EjFx7NgVcEByE6EGIAKyUBtA6jUsG3Z1Dohw
	fjfWOzGRu5pMlRkdIAs9aN7cyv6obCkQnjIJwFgAVOIPOZChj1wnEC37GTe9pTWx1s+h6hUzUrxyI
	DpjR4aeU2ix5wT1t9gy+vKk6Lsx9I6Gn+SgqCKzXe/ibA1JgSgKr/VS1W3qaWgaG3CDB8cL/ebZkz
	ebHYTLJkTlweVCsyawqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcSS-0005zR-7B; Fri, 31 May 2019 08:00:12 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcSJ-0005Ag-U7
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 08:00:05 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id A7DFD21E90;
 Fri, 31 May 2019 04:00:00 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Fri, 31 May 2019 04:00:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=Vt88uEygPIcGWjDilRhdbj1DAz7EhM7
 E+LtWenHZ1O0=; b=ZZYrGWUUAz2vapErJCAJ4ZmletpYCqHknQtpEUb+h1fc026
 G5nvCaCk8jLoLeFNJreiXFtg84DxRbcdHgdkkraHqAwBZyqm9paXl9YSDuiWsD8v
 JdCdZezsjdhATbCXsp0MY2Q6qjp9ox/XaS2tFKl/9CqXGB4pQ2jO+HMEttwjJCxC
 1SY4kZ6xAKU8rMHxLz9ExAevcwdIGBVfuRdq4xjz7qilVyMjwoqWkJToGC8FlBbr
 hV1ey7bjOdayPsVJLhFgCk+W4YZrqrIcSvy1haZuOqk4Uuu/4j1t/GOOnELcoGnA
 GrrSZkOTOXcOM6aF3PG+lNz8PPLrAEte1slsQWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Vt88uE
 ygPIcGWjDilRhdbj1DAz7EhM7E+LtWenHZ1O0=; b=Ve1EEkjJpwz8q1Iz8lT+Mc
 VucTu7d03lo5+5+xgcOu6iKgdtdd46Qgw5PeDLSHihSYZXfj/y51wRtIQit5GjJV
 rScXa40dShDcp8IJxvQctEVpflI/tJSlxJNu8s9RXcU0FWQ0WRaO7g1A6N4RPi+3
 SpnjneAKmt87yVvgKwZ58jPQhlOPE1OP+bodaEQvi+OGuB+oM0PdOkR/4nwfzXO2
 W72mRaKz+FQXBszHoMnr98CMOQHMuH7gh9hEXP4OWrXHfaUjMJE1dfTzbNDOMx95
 mhIaOj0AQHBmtrhxtgsg8GfoiQiutTn3PDJziWguT+oe3RKsqPgVKVoRKYgcKNVA
 ==
X-ME-Sender: <xms:_t7wXI4mJrbZtDPpUcAO99yNhOrs8BgfuPiQZkzPI31h5RjEgtvgKw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudeftddguddvkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehn
 ughrvgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrg
 hrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushht
 vghrufhiiigvpedt
X-ME-Proxy: <xmx:_t7wXOLz7iSkzy0OmvZjy7v5Or6mbBRqYAGF6gKSBFztJBNA6q_0jQ>
 <xmx:_t7wXCfQ3fqbeejk0d8YbBdxC2L9PM4nGHCmJteRuTM9NHl_x6f0_w>
 <xmx:_t7wXBe0Z94-Nax48W4uyERu_iT9ddofTJYWC8oxirvIIW2aSqCN7g>
 <xmx:AN_wXDrdEg5grihZAGO7MhqlPB682nuhUMwj8qSe3NO3DhBRnpZiLw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 7CD0FE00A2; Fri, 31 May 2019 03:59:58 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-555-g49357e1-fmstable-20190528v2
Mime-Version: 1.0
Message-Id: <af088bbb-d55f-4477-a564-ef9fcc306433@www.fastmail.com>
In-Reply-To: <20190530093544.12215-1-a.filippov@yadro.com>
References: <20190530093544.12215-1-a.filippov@yadro.com>
Date: Fri, 31 May 2019 17:29:58 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Alexander A. Filippov" <a.filippov@yadro.com>,
 linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH v2] ARM: dts: aspeed: g4: add video engine support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_010004_275876_411DAA58 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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



On Thu, 30 May 2019, at 19:06, Alexander Filippov wrote:
> Add a node to describe the video engine on AST2400.
> 
> These changes were copied from aspeed-g5.dtsi
> 
> Signed-off-by: Alexander Filippov <a.filippov@yadro.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  arch/arm/boot/dts/aspeed-g4.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
> index 6011692df15a..5a9e3f684359 100644
> --- a/arch/arm/boot/dts/aspeed-g4.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g4.dtsi
> @@ -195,6 +195,16 @@
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
> -- 
> 2.20.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
