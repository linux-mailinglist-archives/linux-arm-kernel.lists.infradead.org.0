Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D82C9DB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tL+aYEurMgbV9pkemNhpkUHoFOQVH1WKYCM6Wd4YrYY=; b=J12cmAhHmgYIYcmwTPqs17MLH
	Q75K11CsQg+vLXbXC3poJwGxhgJ++p7THfPcFR5VgVCGJQ00yjrMptzDx42NdDOW4A2MpJMooNrJg
	hNEHh+4S2vcT/bvC+tYte/EWAxJl/co+jkotECDEyyV/JeQyNPcECZFv6LdpUDksIebn068QE8Ir3
	rG+fV4Avtq2pbl7D+b8keVjD56MttEb4w062OGqGQxgOoa9I2oaCU0rB5R1voqmdep4vGrYbQ+hEL
	2/pgM+q95jB4p6sOEtmJWC1JGP/DPbIZOdGUJr45dfgd5oTtyr9S+uK37+HCRCFnuYijP+cf89tsT
	LRduUZ6fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFzaC-0006BR-Rc; Thu, 03 Oct 2019 11:47:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFza3-0006B6-Sl
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:47:37 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15A932070B;
 Thu,  3 Oct 2019 11:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570103255;
 bh=4nbskvtMte6G8Dn16qGwpWvD7usNNHZVowY6nzQ2Cx8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O20g3VXN3/cg4aktrTVEe1GoW8i3ThoeeCN1k/JWU6mjTRj16XPoBKKQyzKDaXwN2
 4lZpEHI+x/6TtmfN5YS8Gy5rtabyI3lmUdMvHUjqCRr2kyrMwRtkphLHWmIzPJAv5u
 qo1v5dHZgQ3uBbnCCPnNR81iVgTFACMX8U0wxo0I=
Date: Thu, 3 Oct 2019 13:47:33 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v11 4/7] dt-bindings: sun6i-dsi: Add VCC-DSI supply
 property
Message-ID: <20191003114733.56mlar666l76uoyb@gilmour>
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
 <20191003064527.15128-5-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191003064527.15128-5-jagan@amarulasolutions.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_044735_951680_D1DB5C02 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============6412061817336445194=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6412061817336445194==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="abhaj7rlytqkllsn"
Content-Disposition: inline


--abhaj7rlytqkllsn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 03, 2019 at 12:15:24PM +0530, Jagan Teki wrote:
> Allwinner MIPI DSI controllers are supplied with SoC DSI
> power rails via VCC-DSI pin.
>
> Some board still work without supplying this but give more
> faith on datasheet and hardware schematics and document this
> supply property in required property list.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml         | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> index 47950fced28d..9d4c25b104f6 100644
> --- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> +++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> @@ -36,6 +36,9 @@ properties:
>    resets:
>      maxItems: 1
>
> +  vcc-dsi-supply:
> +    description: VCC-DSI power supply of the DSI encoder
> +

The driver treats it as mandatory, so I've added it to the binding, as
suggested by the commit log.

Maxime

--abhaj7rlytqkllsn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZXf1QAKCRDj7w1vZxhR
xQpxAP98mYp2+COHS85N0R4A/9rdJqX3YHaZ0XyYCj2Ihb0iVQD/QWC0ZaUcuku4
nKva2ZQhgqqxhRK3v8jH9MrfregJmAE=
=CYoo
-----END PGP SIGNATURE-----

--abhaj7rlytqkllsn--


--===============6412061817336445194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6412061817336445194==--

