Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 450A6A97A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 02:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6wklXBAa/UirEcatoUO8ql5dVRF4IpXAsJlUI5NZ38=; b=UQ5iE3/TIZRqus
	JJQHI1Pd9ek8xYIU/m2ITyy3UJI31GthF4orgsVmWK7BKxNitQogC9ViNeAQRJmmMGCCsraE3YEzC
	w7rb1fqnOnxc2l2YpanevzpoeSjz8JsGqA4IVkl2ZkkkHTzTSQzAbsh1uhOGplrnSVbjz9VLeyusb
	AVAuo6rxN99iNa+XvCXYAkiFhl+KPGGKwO50+B81aH5PU1pBlRO+SyqsjwtCOm4277RqOrBGFiBvG
	wetLrkKXxc/I1N1zwbVDkEJGrGVMMHjDWHIptgWZCTtx9h/y7Ub84KyqsHdN/Ixz8OhtmVx3TV1G2
	5mebdlwWUlGEY2U58R8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5fiJ-0006nu-TM; Thu, 05 Sep 2019 00:33:28 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5fiC-0006nR-Q1
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 00:33:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id DE04921BA9;
 Wed,  4 Sep 2019 20:33:16 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 04 Sep 2019 20:33:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=XSxZnokuYXM7ODTOOBr7x1A5EQDJpxm
 e9YnqDCAPDPo=; b=Td0wmrCX2mUUrZ2ohnntJBMz6ksQbjS0QpA989K1SkQGWE4
 DiVxX5LEG/1zor/aKbqFmc5wRNneB59OXBziBCpwaGfyITin2NS+JVcMAmpUK3eA
 csnEWWkW3xuZaUDgcJDG2DjIzappwzUbbgEglvZjueu/V6deechchipUB56kXpeZ
 zBB2h7nB/XrC38jPZlQODQ49D3EUpyZvSzRyflLrIRTLpcGFmL9mFXQ5J+Hm7gFV
 0X2pONFNeUhWJxC2skNKP1NPzNbI0A2CevTdCbQR3cj7fFMjwQTN7j93jmjo3RQD
 tBEvYKBVboW0a5lDf7Lbd6zqP9p5MFBMdPU+VgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=XSxZno
 kuYXM7ODTOOBr7x1A5EQDJpxme9YnqDCAPDPo=; b=SzV44kPnrkpwwcYEprOpYi
 7iS1Xk8q9l+H4peB49xMB++eD49ypVHV+AcpmLC8MklaZ7OHvnzTzVYHY7a8daa9
 A2OTxaEsj6yTEdQd7EIkkZmkV6O/jFDH5gCVUaH6wDIANm+RtCG34o9mr04YLVIr
 ix0paIDMhcr8+lLAACzs1tzt82M6er1EGaBUOiofysAFKZS/daSGZDE8hNKNWSj6
 w0XiibS873McHZpsNBppormZIZjeEoR9eG+QHhinDVQsqcE2OtqzgKQ1ZYxJLv2p
 gulmwSfge64ER+ypiJ7lxwgdCPfZsyewyZ7CXRX/oKsdt/I6KVLcjdKsdxZhCuXw
 ==
X-ME-Sender: <xms:zFdwXYt-B_3GunEpimOoNFkn86zxiPzbjLrWe6oU5iJwvAWkv7-3SA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejiedgfeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:zFdwXftgQWSrmroUQmN24Z9jl86JEYLnOnfagaIje9qkzAxdC2L5rQ>
 <xmx:zFdwXVibXWuvfgi97BioQve0H6w9VsUnFdMvgvZXt2GTgtZ_gFGQdQ>
 <xmx:zFdwXfx5skCdwTWIAMJXGH02bD4CwyNE49GMPhuqt45rIrVj_K6iIg>
 <xmx:zFdwXZaeBvcUJmJOZbytt9DUUsqA8AA8Nzs4ID6EaRdb8tnzx6x9HQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id EB5C1E00A3; Wed,  4 Sep 2019 20:33:15 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-186-gf4cb3c3-fmstable-20190904v1
Mime-Version: 1.0
Message-Id: <d9805fa2-db79-457b-a166-7c84e1608128@www.fastmail.com>
In-Reply-To: <20190905000221.31445-1-joel@jms.id.au>
References: <20190905000221.31445-1-joel@jms.id.au>
Date: Thu, 05 Sep 2019 10:03:33 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>,
 =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>
Subject: Re: [PATCH] ARM: dts: aspeed-g4: Add all flash chips
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_173321_170872_5303B248 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 5 Sep 2019, at 09:32, Joel Stanley wrote:
> The FMC supports five chip selects, so describe the five possible flash
> chips.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  arch/arm/boot/dts/aspeed-g4.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
> index e465cda40fe7..dffb595d30e4 100644
> --- a/arch/arm/boot/dts/aspeed-g4.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g4.dtsi
> @@ -67,6 +67,26 @@
>  				compatible = "jedec,spi-nor";
>  				status = "disabled";
>  			};
> +			flash@1 {
> +				reg = < 1 >;
> +				compatible = "jedec,spi-nor";
> +				status = "disabled";
> +			};
> +			flash@2 {
> +				reg = < 2 >;
> +				compatible = "jedec,spi-nor";
> +				status = "disabled";
> +			};
> +			flash@3 {
> +				reg = < 3 >;
> +				compatible = "jedec,spi-nor";
> +				status = "disabled";
> +			};
> +			flash@4 {
> +				reg = < 4 >;
> +				compatible = "jedec,spi-nor";
> +				status = "disabled";
> +			};

The FMC supports parallel NOR and NAND interfaces too, but so far no-one has
cared for these options, so if they ever do we'll fix it then.

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
