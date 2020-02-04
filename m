Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39821517AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 10:20:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WLhlUkmGZwarwuw52H/QUUKJjXw+mA4ngBC6NKYt/8Q=; b=DRw/W3AjjCZRGsqml8dGwhU1F
	c89+Gf4azIsBAqP/Uc2nCJH4NfJkp8rovGei8ItzTcfJKKV2KN7jLK9FNYpMmzOYl8CoVI3g571HG
	btYLqoYMvpiwQS9ARUOplegpZaUAEoC0ndXU7qUjNSmXFUpn3OG77mgPSGLwbecaLkzH66Aqd2cKX
	lkjC7mzHWp+s5jsWMRS4euS7cM1vlo4I7gKs9KybE5KEMWX/6kgpU07aDdUcbFeCZTuYgLEqQ0Gga
	gV3xLGvqkZbyMCW0ATdhel9rj8Dmd+cTzAnf5L0F8fIUB4HeK57gmdgm/pKKoHDSKQXficLvu93e8
	474wtjhIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyuNS-0007YG-Pg; Tue, 04 Feb 2020 09:20:14 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyuNK-0006GN-VW; Tue, 04 Feb 2020 09:20:08 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 59B186B76;
 Tue,  4 Feb 2020 04:19:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 04 Feb 2020 04:19:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=x4lyZnW5C94NfX9C1zEMyUaspjy
 lIhh7aPoztF74m5c=; b=muEMdnhDQ+bTk2YEyzZPghqhY3VJVq5qOVd8NnIvzo1
 1v0IUNwdPCmJrVxK4WqQ5vtpIrt1E9kZsULc+Zr+bOGEqUFmyAdV1hYxSWJjPaE3
 w1XHJ6foSS5FEMzJmvjcA976KdZgtrojUYwEaQFrcQFIOC4dcW80Lu0WxVDIWaXa
 iyI2pcKSVAOLniHLLXWpGlW+dYPaNa5qDhA4eSdH7E7flgJGhwgBfYJSAugnDqbx
 vIb7z0TpyEZf0hZsxMWWi4y6fOUHjyu2l1DhIg6xx0hZs8WTVQ9M0U//hlKqSN6S
 1TJqdYxlB4rm/UiOHJ/p4L2M9/peZfb2PNUhHNR/+Xg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=x4lyZn
 W5C94NfX9C1zEMyUaspjylIhh7aPoztF74m5c=; b=u5lJU7JhJcrZtKQRcmrAxA
 /UyFU3w5EzuqZMvB9hxipXPXzRfWzPS/r3Wi1tW1G5Z8YSZTw/KyLJYyf3ajPbN2
 EuR4QNVmD7/v2yMJQ3I6HjjmVCt1XC5kK/J648RTACqi+NJYa6AVPqJdwONP7QuK
 YPmnM0kfSO78B9wIXclXWCkFEfOBqGZufvg9tgpUyLQc/ozwUYAd1c/P7/d0Ayth
 LmUb4X3Bfqbv/TlNP+CH/89XT9goaFCXKWYPXUhS6jza57BwjoSc2lltzaeYzCDd
 ok3MQsvHEKLZsy5kyTh/8irPfU4HZXNTo8828fiz2YKcFp/pDXejgAWQdVZgykQQ
 ==
X-ME-Sender: <xms:PDc5Xq02AxCfAFgRtkb6tRwZf7wGEE4687_w6Jd0HIGFjgJ9JPV1Rw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeelgddtfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:PDc5XgBMh_8nOAw7B3cMzQtSqeGyhnSgBAW3H_IlmWPVBOOvNAto3w>
 <xmx:PDc5XnEn5YITSLPoIMnnYQCTJg4jAa9CnAqF8fGaU5I66PVuhevoIQ>
 <xmx:PDc5XpDU3Rb5S3xbjgDiZtaG4g53ogju3QEQ9-Ln-AjfyNTg-lR8sw>
 <xmx:Pjc5XiAaywj81i7AfV_Z1EYGEoOIiLSRyq4fC7xZQolWtPR-10Qsvw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 86DDC328005A;
 Tue,  4 Feb 2020 04:19:56 -0500 (EST)
Date: Tue, 4 Feb 2020 10:19:54 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 11/12] dt-bindings: arm: Document Broadcom SoCs
 'secondary-boot-reg'
Message-ID: <20200204091954.4zdxow4ijqnmvbdj@gilmour.lan>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
 <20200202211827.27682-12-f.fainelli@gmail.com>
 <20200203083403.6wmuduxqsv7quujp@gilmour.lan>
 <2744136e-a6e7-de19-4142-04f7edf0c6ea@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2744136e-a6e7-de19-4142-04f7edf0c6ea@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_012007_164178_E869B852 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Scott Branden <sbranden@broadcom.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Sugaya Taichi <sugaya.taichi@socionext.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@vger.kernel.org,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6459149938198624400=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6459149938198624400==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vg5cqlhr5mk6q6uh"
Content-Disposition: inline


--vg5cqlhr5mk6q6uh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 03, 2020 at 09:29:30PM -0800, Florian Fainelli wrote:
>
>
> On 2/3/2020 12:34 AM, Maxime Ripard wrote:
> > On Sun, Feb 02, 2020 at 01:18:26PM -0800, Florian Fainelli wrote:
> >> diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> >> index c23c24ff7575..6f56a623c1cd 100644
> >> --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> >> @@ -272,6 +272,22 @@ properties:
> >>        While optional, it is the preferred way to get access to
> >>        the cpu-core power-domains.
> >>
> >> +  secondary-boot-reg:
> >> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> >> +    description: |
> >> +      Required for systems that have an "enable-method" property value of
> >> +      "brcm,bcm11351-cpu-method", "brcm,bcm23550" or "brcm,bcm-nsp-smp".
> >> +
> >> +      This includes the following SoCs: |
> >> +      BCM11130, BCM11140, BCM11351, BCM28145, BCM28155, BCM21664, BCM23550
> >> +      BCM58522, BCM58525, BCM58535, BCM58622, BCM58623, BCM58625, BCM88312
> >> +
> >> +      The secondary-boot-reg property is a u32 value that specifies the
> >> +      physical address of the register used to request the ROM holding pen
> >> +      code release a secondary CPU. The value written to the register is
> >> +      formed by encoding the target CPU id into the low bits of the
> >> +      physical start address it should jump to.
> >> +
> >
> > You can make the requirement explicit (and enforced by the schemas) using:
> >
> > if:
> >   properties:
> >     enable-method:
> >       contains:
> >         enum:
> > 	  - brcm,bcm11351-cpu-method
> > 	  - brcm,bcm23550
> > 	  - brcm,bcm-nsp-smp
> >
> > then:
> >   required:
> >     - secondary-boot-reg
>
> Thanks! That was exactly what I was looking for, it seems to be matching
> a bit too greedily though:
>
>   DTC     arch/arm/boot/dts/bcm2836-rpi-2-b.dt.yaml
>   CHECK   arch/arm/boot/dts/bcm2836-rpi-2-b.dt.yaml
> /home/ff944844/dev/linux/arch/arm/boot/dts/bcm2836-rpi-2-b.dt.yaml:
> cpu@0: 'secondary-boot-reg' is a required property
> /home/ff944844/dev/linux/arch/arm/boot/dts/bcm2836-rpi-2-b.dt.yaml:
> cpu@1: 'secondary-boot-reg' is a required property
> /home/ff944844/dev/linux/arch/arm/boot/dts/bcm2836-rpi-2-b.dt.yaml:
> cpu@2: 'secondary-boot-reg' is a required property
> /home/ff944844/dev/linux/arch/arm/boot/dts/bcm2836-rpi-2-b.dt.yaml:
> cpu@3: 'secondary-boot-reg' is a required property
>   DTC     arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dt.yaml
>
> not sure why though as your example appears correct.

Yeah, sorry, that's on me :)

The nodes that are generating this error are the cpu@[0-3] ones, and
they don't have the enable-method property at all.

This is because if needs a schema, and will only try to validate the
schema under then if the one under if is valid.

The one under if contains a list of values for enable-method, but in
the case where enable-method is absent, the schema will be valid, and
thus the schema under then will be applied.

What we actually want to express is "if there's an enable-method
property, and that property contains those three values, then you need
to have a secondary-boot-reg property."

So you need:

if:
  # If the enable-method property contains one of those values
  properties:
    enable-method:
      contains:
        enum:
          - brcm,bcm11351-cpu-method
          - brcm,bcm23550
          - brcm,bcm-nsp-smp

  # and if enable method is present
  required:
    - enable-method

# Then we need secondary-boot-reg too
then:
  required:
    - secondary-boot-reg

Maxime

--vg5cqlhr5mk6q6uh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXjk3NQAKCRDj7w1vZxhR
xUJqAP9PY/enY2j1VQJ01XYs+KegUxo9BgTuq8dCybDPrips1QEArb4oFWY9TC8/
z/m1a1AkxlYIO28zaAO8oofwiueDjAQ=
=AiEU
-----END PGP SIGNATURE-----

--vg5cqlhr5mk6q6uh--


--===============6459149938198624400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6459149938198624400==--

