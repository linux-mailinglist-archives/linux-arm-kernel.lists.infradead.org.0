Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46818F44D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 11:42:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lot5e3ylbIXtg/2R2OV4xazSef7vzfIUBlfxVUqHEuc=; b=gnofj+K+HKer1hWES5BEY3gBf
	Fyu/5gPUqcAFtCWBDCn7BqTuDUmIWo8XfyX6vy4WAJNCEJr5QBYizYoZWF6EcP6Y7e2rOTErVZ/mK
	GxboETzFfpHsgf3Eble2nUgxTHiZgkmXCkchk5tWKJhSdn/0trs5lfsiGdZx0Se1myX1zIHj1JyVu
	q3WIkU7EPz/0/MVLHayiyDEO6y/y5OKToNIXZcp9X8WBsy8sSpW+J/yTfcoGWRvyvvtSo+I6W0OF9
	QqIZ3oHACyNsB0ESbgeG5mBdK71QDThx9TarmNrRJbOFXn9P2eokdNMXIjQZRPCJkyduRd2RQczI1
	gia7PCRmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1j9-0006lQ-Da; Fri, 08 Nov 2019 10:42:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1it-0006hm-5B
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:42:36 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3AD162178F;
 Fri,  8 Nov 2019 10:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573209754;
 bh=Tpjnf2GWTDvkR6aqCvBySs7nsoGgpKOv1/rmGC0yfaI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UptJ0S7oZTBv0d9I0RlV9aZeyCEKwOa/K/FY8IxrQu6u+AVWXByUglJFW4o/QdfZa
 nW5/cdTO9pZ4iLMlmWCLSXMP+RO3IwZk7aqhE2wUAuJMM8ixJcBNDnHM3eT4Ds9mTo
 Ah6/7qFO+bNIBK/SZ6Nrb03LlxJVz0bZ7J/OREu8=
Date: Fri, 8 Nov 2019 11:42:31 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Christophe Roullier <christophe.roullier@st.com>
Subject: Re: [PATCH  1/2] dt-bindings: net: dwmac: increase 'maxItems' for
 'clocks', 'clock-names' properties
Message-ID: <20191108104231.GE4345@gilmour.lan>
References: <20191108103526.22254-1-christophe.roullier@st.com>
 <20191108103526.22254-2-christophe.roullier@st.com>
MIME-Version: 1.0
In-Reply-To: <20191108103526.22254-2-christophe.roullier@st.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_024235_538006_2F44138D 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 narmstrong@baylibre.com, martin.blumenstingl@googlemail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, alexandru.ardelean@analog.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0384278720665653861=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0384278720665653861==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="SWTRyWv/ijrBap1m"
Content-Disposition: inline


--SWTRyWv/ijrBap1m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Nov 08, 2019 at 11:35:25AM +0100, Christophe Roullier wrote:
> This change is needed for some soc based on snps,dwmac, which have
> more than 3 clocks.
>
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> ---
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> index 4845e29411e4..376a531062c2 100644
> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> @@ -27,6 +27,7 @@ select:
>            - snps,dwmac-3.710
>            - snps,dwmac-4.00
>            - snps,dwmac-4.10a
> +          - snps,dwmac-4.20a
>            - snps,dwxgmac
>            - snps,dwxgmac-2.10
>
> @@ -62,6 +63,7 @@ properties:
>          - snps,dwmac-3.710
>          - snps,dwmac-4.00
>          - snps,dwmac-4.10a
> +        - snps,dwmac-4.20a
>          - snps,dwxgmac
>          - snps,dwxgmac-2.10
>
> @@ -87,7 +89,8 @@ properties:
>
>    clocks:
>      minItems: 1
> -    maxItems: 3
> +    maxItems: 5
> +    additionalItems: true

Those additional clocks should be documented

Maxime
--SWTRyWv/ijrBap1m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcVGlwAKCRDj7w1vZxhR
xbqKAQDvkfzfxpAJ6TR82T/DMy/J2ehuCMos4R9wkjU53VpciQEAmWKEhrULTnu0
xg9rU8jTzA5wsosJo34XQ8gcdH7JPgA=
=vzrR
-----END PGP SIGNATURE-----

--SWTRyWv/ijrBap1m--


--===============0384278720665653861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0384278720665653861==--

