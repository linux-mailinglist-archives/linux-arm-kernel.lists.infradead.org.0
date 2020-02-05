Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3578152732
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 08:49:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eMRAcb5u9QZepeiuiE0/V974+m5gT+aMdbi0cHxe6G8=; b=mwwcLEyYNuYGdplYOfNU79JE3
	4Sxu2pgbsT24RdeVR4LhPjLgphUQborCuPNLLn8Lvfa82rE+y4hW0YmjZR/FNse9U1AEisthWI/YU
	FQbD/ZMPy4P/C7h0PW40c3uKJUu87w4asPF+aCKKHrEh5vESipyPP18O9XTAA77x0om8Ha+lqRMpz
	3IziI89xAgp6FQRN9WG8xFHPCz+6DNWLcRXo3V/Gbgli1QXkEg7nG3OUH9F1vkliS4jIedritlckA
	s7KhY5PZD35L8T6foP4WmM3KNaw05xEPMqiKcUs5D7u5JEEzxQowkXhcIiHBZlytq6MM8OAb9z0s0
	94NOsHs7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izFR5-0006Ga-Pk; Wed, 05 Feb 2020 07:49:23 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izFQz-00064z-CQ; Wed, 05 Feb 2020 07:49:18 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 06AD66FE9;
 Wed,  5 Feb 2020 02:49:12 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 05 Feb 2020 02:49:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=klnBhs3icmG873ARFeW0I55GIqv
 Bct2WyDKkuastGyo=; b=jwf+Qbf1/dIOpQQPu6d5faHN3Z6Nv1tEzdcooIugMth
 1avbUSzp56VsATlVcfZS4dAfADLi8S4qu/j6jsF7Zb43cVOD/zjIJ3rKAaFIlmjB
 7yE7GKchPOAUw0QAFwXscVn+R8J2xLbSw7mplWO8w4ODugAY/eFEXTmjQSSJi4ir
 R9t3n1+ga5wKgN9dhZgGpA6b1V6S7sRBSRDrbcekZNERahh5kTneYXC1+53SrlBR
 CRlpAJyACUCokmEmQu0RB1gZMl0bdoaYrgIyGVYUP3rfWImjHA/PkRsPAy54uDag
 OSYkxhZNlFbdzy0ABW3VgifxRNK0MfSIkN7mbZQWoBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=klnBhs
 3icmG873ARFeW0I55GIqvBct2WyDKkuastGyo=; b=dJvD9bNDzk98V5EJjwjbLX
 z/jqP7Y8Z4SGado2htR38gfwWtfB9jHHAJyZUvdd0l0Dlaqa5LLY0f6iBDWHqqv2
 ZNZYOuzMod1M5vjBbNjUMnRFqDstAwnK2wROivOVgyeFNznPTGjfLQpOnHgMhnUS
 +OF/Tuv3B1coSez3a2FM5b3Cd4RpOwct9mAwc0vI/2j8N1LnPPGKP6tiZdnKH8ES
 Fn4sbCYM/59xrLrRM19pVhPfW0SNHTM98Qfsz1QrTlhXQUfi52jJEjMBmPtZ1liZ
 XY4yB1hJI/5z0WqqB8wXyh0fLFto0jqby/jBpmSn3AeQf1kjohNqzDOdKjZIf4AQ
 ==
X-ME-Sender: <xms:dnM6XpEULNBgxpV7IuDuGHtWsEwpv4vI8j1lg3kb7G6-VzY-QfuY1g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrhedtgdduudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:dnM6Xgt0evq26rLEpnUD07S8oq9BA9S2eDUWqQfmW-FOGo1hdY6UIQ>
 <xmx:dnM6XsmFFPc77gnLfW67-HeRJd-hfQfxPxgdwgEK943FmGAu-CUh8A>
 <xmx:dnM6XgyfuUHKvwyo9-Cc9FXCActuE6qPfkDXSLBnQUqpNXYS5VaHBA>
 <xmx:d3M6XvKw6IGTWtKFAkvMrL3VaXUa2KseZuISM1x1FzF4V0ahHgfzzQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3FBB33280059;
 Wed,  5 Feb 2020 02:49:10 -0500 (EST)
Date: Wed, 5 Feb 2020 08:49:08 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 11/12] dt-bindings: arm: Document Broadcom SoCs
 'secondary-boot-reg'
Message-ID: <20200205074908.kwtqadfcwo2mtefk@gilmour.lan>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
 <20200204235552.7466-12-f.fainelli@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200204235552.7466-12-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_234917_566634_E22C02FC 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, "james.tai" <james.tai@realtek.com>,
 Arnd Bergmann <arnd@arndb.de>, Scott Branden <sbranden@broadcom.com>,
 Sugaya Taichi <sugaya.taichi@socionext.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Joel Stanley <joel@jms.id.au>
Content-Type: multipart/mixed; boundary="===============9157287224146515691=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9157287224146515691==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wa2xbnbegqf4phpr"
Content-Disposition: inline


--wa2xbnbegqf4phpr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 04, 2020 at 03:55:51PM -0800, Florian Fainelli wrote:
> diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> index c23c24ff7575..d7b181a44789 100644
> --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> @@ -272,6 +272,39 @@ properties:
>        While optional, it is the preferred way to get access to
>        the cpu-core power-domains.
>
> +  secondary-boot-reg:
> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    description: |
> +      Required for systems that have an "enable-method" property value of
> +      "brcm,bcm11351-cpu-method", "brcm,bcm23550" or "brcm,bcm-nsp-smp".
> +
> +      This includes the following SoCs: |
> +      BCM11130, BCM11140, BCM11351, BCM28145, BCM28155, BCM21664, BCM23550
> +      BCM58522, BCM58525, BCM58535, BCM58622, BCM58623, BCM58625, BCM88312
> +
> +      The secondary-boot-reg property is a u32 value that specifies the
> +      physical address of the register used to request the ROM holding pen
> +      code release a secondary CPU. The value written to the register is
> +      formed by encoding the target CPU id into the low bits of the
> +      physical start address it should jump to.
> +
> +if:
> +  # If the enable-method property contains one of those values
> +  properties:
> +    enable-method:
> +      contains:
> +        enum:
> +          - brcm,bcm11351-cpu-method
> +          - brcm,bcm23550
> +          - brcm,bcm-nsp-smp
> +  # and if enable-method is present

Those comments were purely for the explanation, but you can keep them
I guess :)

Regardless on whether or not you keep them, for the whole series
Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--wa2xbnbegqf4phpr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXjpzdAAKCRDj7w1vZxhR
xUq2AQDV+M4Nkim7RmuY3y8QYuA2P6xeHBu487XApQ5G8aH+fwEAlmF1WVwn93es
CiiM9/4giVvGZGr3rNoZg/tgdu0GZQs=
=+UYd
-----END PGP SIGNATURE-----

--wa2xbnbegqf4phpr--


--===============9157287224146515691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9157287224146515691==--

