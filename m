Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4F8291D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 09:35:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZfJ9PlVKKGDYxJeLUho4kM4J6ODFAhCUpT/3cs96v1c=; b=j2Yf3v/roRKoe+Wv+dlKuvZ+4
	Q6MYDNH0gnZ3UJvEP+Z10spEVruW0jLOGqjjoVp/4pYInNhVhPIAOh3eQnDuKNZYFyHJzK4gD0JZd
	kxWmPtynXsaYXd3FS8f8/TIHr4gzxerQMQlUuseo9Lvq8WjFFo/ki8/q7PvAezHakkexTHBkBLr0Z
	0DnpCas2lQ5sEm7AC9eECuslXfVEQDvJwf76ogUN9Q0Ouxqf3YmUwiD2BD2r7qOzPd9OAqdZjt6iz
	DHPxDvnCCDyk5OK9Z/7EUz28dtGX/xchZ6CkeKnN6kP/bv+9Ccs/igXIU3JOBF+jRc9Hr3Gqqe7R+
	MhUIz3ElQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU4jV-0002HO-93; Fri, 24 May 2019 07:35:17 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4jO-0002AN-8j
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 07:35:11 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id EDB8E40011;
 Fri, 24 May 2019 07:34:55 +0000 (UTC)
Date: Fri, 24 May 2019 09:34:55 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH 6/8] dt-bindings: net: stmmac: Convert the binding to a
 schemas
Message-ID: <20190524073455.46auhvhwb5no6ebp@flea>
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <ba1a5d8ad34a8c9ab99f504c04fbe65bde42081b.1558605170.git-series.maxime.ripard@bootlin.com>
 <9094f39f-0e26-55dd-9b47-9a55089400da@st.com>
MIME-Version: 1.0
In-Reply-To: <9094f39f-0e26-55dd-9b47-9a55089400da@st.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_003510_460957_D02B0EB3 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7089398225916547238=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7089398225916547238==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="23ickihnik62sivg"
Content-Disposition: inline


--23ickihnik62sivg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alexandre,

On Thu, May 23, 2019 at 05:05:51PM +0200, Alexandre Torgue wrote:
> Hi Maxime
>
> On 5/23/19 11:56 AM, Maxime Ripard wrote:
> > Switch the STMMAC / Synopsys DesignWare MAC controller binding to a YAML
> > schema to enable the DT validation.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
>
> First, thanks a lot for this patch. Just one question:
> We could add ranges for some properties in order to avoid "bad value" for a
> property. If I understand correctly you do it only for snps,dwxgmac,
> snps,dwxgmac-2.10 and st,spear600-gmac. Why not do it for all supported IPs
> ? (Maybe it is something that we could add later)
>

We definitely can do that. It wasn't really obvious to me what the
limits were by reading the previous documentation, but if you can
provide them we can definitely add them.

> > +        snps,tso:
> > +          $ref: /schemas/types.yaml#definitions/flag
> > +          description:
> > +            Enables the TSO feature otherwise it will be managed by
> > +            MAC HW capability register. Only for GMAC4 and newer.
>
> TSO is also available for snps,dwmac-4.00 and snps,dwmac-4.10a

Ack, I'll change it.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--23ickihnik62sivg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOeenwAKCRDj7w1vZxhR
xeATAQCcQsgy7vfEdnFVRTUYXu4cQi7yVev/HZ6IHxvhXUxohQEAlunQSSosiD+q
hCssuxFFbw2++ejr0HSjYCaQvSZesQA=
=FrHP
-----END PGP SIGNATURE-----

--23ickihnik62sivg--


--===============7089398225916547238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7089398225916547238==--

