Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CA2100386
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:07:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rqVoDgCOEAmqVq3QmSXhPd5N9PUDzvYqSIS38Wie6Iw=; b=JUEn+IEhM4JuHiI4mPC8qo4MZ
	IYfJtrHwnCEgtqutLwgGDWcZrPX4Ek3Ibr0jjVRa+KfLwJraSccrvIPV4CgF70n4VBARoXee0IUHO
	yB4JzBhM46E+ENcdE2Hx00qbg70BNVdfVYpfhoUfZ2pBfLJEc8EKPQvQCPbOoBsED0Vl/YJ2JAHV9
	Jb0hj3dvaaCCkBVVDmb3r1yJYPzjVveZFfCKg2fEgYup+31d5l61LhRDdtQJ/IO1dTW96aFEQboCx
	zYS4QoR7Yu4P9+zWIQ2nr/8Tfe35LaNz8jAEVQFWCXRd3oOPS1ASmrqYGuWKSnxwJth124Js/he9S
	z34t7I+Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWerv-0002Pn-Su; Mon, 18 Nov 2019 11:06:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWerk-0002Ot-7Q
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:06:45 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E708C2071B;
 Mon, 18 Nov 2019 11:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574075203;
 bh=YoYaR1M+lDGoxsiTxlkwf8DP5q8rsGTY5JiNj2sqbTE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WvOTFqZH2Tm1IT+xFFdw4YD99+QWWIdABD05lu0lHbZBaBKCA/Ywwd570/CiD6Gst
 t/0k/2k9OU1IVNON0R9u22AYCXnxTTTY4vvIVhOBU/Rah0/yagTbbfE2PvBE3aUb3V
 QYibqUrEB0TinljLpUp9D0s8kmzVi/hnd/c/Whw4=
Date: Mon, 18 Nov 2019 12:06:40 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v6 1/8] dt-bindings: pwm: allwinner: Add H6 PWM description
Message-ID: <20191118110640.GE4345@gilmour.lan>
References: <20191118110034.19444-1-peron.clem@gmail.com>
 <20191118110034.19444-2-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191118110034.19444-2-peron.clem@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_030644_313447_1D3443C1 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2420304985732979249=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2420304985732979249==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YE4mVuFar47/lB0E"
Content-Disposition: inline


--YE4mVuFar47/lB0E
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Nov 18, 2019 at 12:00:27PM +0100, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
>
> H6 PWM block is basically the same as A20 PWM, except that it also has
> bus clock and reset line which needs to be handled accordingly.
>
> Expand Allwinner PWM binding with H6 PWM specifics.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pw=
m.yaml b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> index 0ac52f83a58c..1bae446febbb 100644
> --- a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> +++ b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> @@ -30,13 +30,51 @@ properties:
>        - items:
>            - const: allwinner,sun50i-h5-pwm
>            - const: allwinner,sun5i-a13-pwm
> +      - const: allwinner,sun50i-h6-pwm
>
>    reg:
>      maxItems: 1
>
>    clocks:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - description: Module Clock
> +      - description: Bus Clock
> +
> +  # Even though it only applies to subschemas under the conditionals,
> +  # not listing them here will trigger a warning because of the
> +  # additionalsProperties set to false.
> +  clock-names: true
> +
> +  resets:
>      maxItems: 1
>
> +  if:
> +    properties:
> +      compatible:
> +        contains:
> +          const: allwinner,sun50i-h6-pwm
> +
> +  then:
> +    properties:
> +      clocks:
> +        maxItems: 2
> +
> +      clock-names:
> +        items:
> +          - const: mod
> +          - const: bus
> +
> +    required:
> +      - clock-names
> +      - resets
> +
> +  else:
> +    properties:
> +      clocks:
> +        maxItems: 1
> +

Sorry for not noticing this earlier, but this should be at the topmost
level

Maxime

--YE4mVuFar47/lB0E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXdJ7QAAKCRDj7w1vZxhR
xUZpAQDf57xL+KiMJD5aQ0XQT0XHFOYAwW8cCUu/FgXYpgJmjwEAqJZh4AHN3JSQ
09PXO0+LTVk76RQKjiW46/vLtI+iIgo=
=u4lN
-----END PGP SIGNATURE-----

--YE4mVuFar47/lB0E--


--===============2420304985732979249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2420304985732979249==--

