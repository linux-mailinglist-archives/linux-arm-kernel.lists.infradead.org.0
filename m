Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF97956B3B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fGj5unVUbDpNsN2gPki6kBcoVkzqdFiFp/5fDTF/LAY=; b=gY7qLeZT4lBqvazkX4JRwCSgl
	9pvIl++8OIngjWwkqngk9Sm3KsDIsWebmLIwqZcmgWetIDKF4eqJSd+IbXVsZ4qoDr1j4NB0memvB
	ck6eOM1nk8jNU2D94neE2132y1S83RRU/XRz9WNQJVscZtUl3tnhkR5xV+by0oRsgFlMs55PZnGON
	yDfrlvD3APMm+snG5aJREDcfGMX1Nvd/Tg6+QV0EFY/LeDsFC72hGfbxcBllSOcWbnbALnCRRRRQ+
	xaDJZc4nWWqIuYskeliSsQp0TSxx+KqYIU7F3WuSwSCMZLpCH4WpSAlNrLGcYEa2xH+nVZciwvMFk
	59gEJaVTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8Jz-0004Z9-ID; Wed, 26 Jun 2019 13:50:48 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8Ji-0004YI-Qb
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:50:32 +0000
Received: from localhost (p54B330AF.dip0.t-ipconnect.de [84.179.48.175])
 by pokefinder.org (Postfix) with ESMTPSA id 213A42C0114;
 Wed, 26 Jun 2019 15:50:30 +0200 (CEST)
Date: Wed, 26 Jun 2019 15:50:29 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] dt-bindings: i2c-stm32: document optional dmas
Message-ID: <20190626135029.GO801@ninjato>
References: <1559655253-27008-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
In-Reply-To: <1559655253-27008-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_065031_016265_CF556E39 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7570071833530662287=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7570071833530662287==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="keoAwTxaagou87Dg"
Content-Disposition: inline


--keoAwTxaagou87Dg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 04, 2019 at 03:34:13PM +0200, Fabrice Gasnier wrote:
> Add missing documentation for "dmas" and "dma-names" properties that can =
be
> used on i2c-stm32.
>=20
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Maintainers?

> ---
>  Documentation/devicetree/bindings/i2c/i2c-stm32.txt | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-stm32.txt b/Docume=
ntation/devicetree/bindings/i2c/i2c-stm32.txt
> index f334738..ce3df2ff 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-stm32.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-stm32.txt
> @@ -21,6 +21,8 @@ Optional properties:
>    100000 and 400000.
>    For STM32F7, STM32H7 and STM32MP1 SoCs, Standard-mode, Fast-mode and F=
ast-mode
>    Plus are supported, possible values are 100000, 400000 and 1000000.
> +- dmas: List of phandles to rx and tx DMA channels. Refer to stm32-dma.t=
xt.
> +- dma-names: List of dma names. Valid names are: "rx" and "tx".
>  - i2c-scl-rising-time-ns: I2C SCL Rising time for the board (default: 25)
>    For STM32F7, STM32H7 and STM32MP1 only.
>  - i2c-scl-falling-time-ns: I2C SCL Falling time for the board (default: =
10)
> --=20
> 2.7.4
>=20

--keoAwTxaagou87Dg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0TeCUACgkQFA3kzBSg
KbYAzRAApZytjukntjxaFMm+so69LjERp5Yg3pQwCd5U0L3E3OjLo5dsPhuffoi8
je+cHGsEMB7A8KV48HJ581rmyC/elLIsJ+rr39tLbiyUMvWrabTLB4BvFPq1FKRR
ZTavWSA01Z+q6BTcrEynX6woY/SYD3WeES+sC+fILuqp1sY6t/RtSLPfT7Y657+g
PU0AlBy/Z3reWy9pQVUWe93UHuEI4KP3MJXuEiRylCUq7FSip2BdMnVyEY7QIrCJ
z9o1MeJ4BJD402tJI++NTPX4uxbkqCsIq1OaQkxn/lWcirCy8oL23oN7YAOzPMSw
5akc4UgfiBeE5lxSyapgnUe2Bd4zPI1epSbiQpPCt5mWTRac3MhUko4YcjCTq6Lm
i2RgCsQre1/B4ZBUOeD1A9atsqVsJvYj+X9sJW+9C/AWRT0VrIYlc0OVHZpIJO1L
M2o0LQFeQdaSfcH/2xmVFAXilcUQYHi8AWb7X0awvBY65XeDA+Khl7cvQQ3lA+kL
oJyQy0W52P6piSns80Ho+F77uGqJvKwca9GxFmNs6kM+21Ipfxux8NXaMeCWUEjR
O1BUWFFumbh7VS4BN5pGsFJ6VWt9vrQe4ko37UkkLGkzNXvq2X6+OSAwQqLkiYTv
MmykLVk1yMcVJAKSny8k/bjJKE5ushPTIINoUA6LiGxgBby4+TQ=
=uE1/
-----END PGP SIGNATURE-----

--keoAwTxaagou87Dg--


--===============7570071833530662287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7570071833530662287==--

