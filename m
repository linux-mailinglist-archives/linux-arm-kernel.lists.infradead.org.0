Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9151EB51E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 07:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wG0VtM1ZHLtOr9PFISMPVCACASt2Ttwu9Lc6D3rGjy4=; b=YZ0gcnZEQ58z9oG56LEoS+dBe
	OjFvOWBQcPYVAOVeZ5tfesne46XlI9Mttu78KUj/ufPF4XMo/1LrEGc1jujvB0bP6QA1Bpf8w78/M
	ulg79LhCpomFnkoDzAW5bK/AEQYD4vjH7HcoPVii2uR8KpmwMbe28hvFFRie0xpU290LzcfebvQ7T
	waEMfKxHYnSkbq9VuKbxw1u2a+D6n2PS9xPLFJPslvXhwlVlWB/cXF9bnpMtyksnYVpYpMUGcXVFY
	+GxWdi05YFQFtnbKP5YGEchpWdU2AKTSYldHq1AhwBGjVqJ2Qo1aB5IlwclQbJXFZ9uR04/CcNupy
	6f/RmmOfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfzQN-00021O-AK; Tue, 02 Jun 2020 05:25:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfzQ1-00020T-Ge
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 05:24:59 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jfzPu-0002KI-09; Tue, 02 Jun 2020 07:24:50 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jfzPs-0002Lz-VZ; Tue, 02 Jun 2020 07:24:48 +0200
Date: Tue, 2 Jun 2020 07:24:48 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: peng.fan@nxp.com
Subject: Re: [PATCH V3 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M
Message-ID: <20200602052448.fxepmwltc4465q4i@pengutronix.de>
References: <1590999602-29482-1-git-send-email-peng.fan@nxp.com>
 <1590999602-29482-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1590999602-29482-2-git-send-email-peng.fan@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:18:57 up 199 days, 20:37, 185 users,  load average: 0.07, 0.08,
 0.05
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_222457_553107_7F474782 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 daniel.baluta@nxp.com, linux-kernel@vger.kernel.org, linux@rempel-privat.de,
 jaswinder.singh@linaro.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com, leonard.crestez@nxp.com,
 shawnguo@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: multipart/mixed; boundary="===============0979483200989401376=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0979483200989401376==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="c2h6m5xrkl3f4s3k"
Content-Disposition: inline


--c2h6m5xrkl3f4s3k
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 01, 2020 at 04:20:00PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
>=20
> Add i.MX8MQ/M/N/P compatible string to support i.MX8M SoCs
>=20
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt b/Docum=
entation/devicetree/bindings/mailbox/fsl,mu.txt
> index 26b7a88c2fea..906377acf2cd 100644
> --- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> +++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> @@ -18,7 +18,8 @@ Messaging Unit Device Node:
>  Required properties:
>  -------------------
>  - compatible :	should be "fsl,<chip>-mu", the supported chips include
> -		imx6sx, imx7s, imx8qxp, imx8qm.
> +		imx6sx, imx7s, imx8qxp, imx8qm, imx8mq, imx8mm, imx8mn,
> +		imx8mp.
>  		The "fsl,imx6sx-mu" compatible is seen as generic and should
>  		be included together with SoC specific compatible.
>  		There is a version 1.0 MU on imx7ulp, use "fsl,imx7ulp-mu"
> --=20
> 2.16.4
>=20
>=20

Hi Peng,

The fsl,mu.yaml was already taken by Rob, so one or other patch will
break by merge. I assume you should drop this change.


Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--c2h6m5xrkl3f4s3k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl7V4pgACgkQ4omh9DUa
UbObbg//WhWLqmjlyeR0A0GCaFvcBoDzS1TBdruVqmmFsGcgHhnHeH3c3STzS8ig
cvnCfziAkNQLbRiqqPZO9J2n39SIX/Nps2JujTRTUldgKYK4/OTge15skrNTXQDD
R/J3a6HaqgFPDTjEMzgjOe/1MvMtJrao1Ej4sJ08BSkQICy/GOPzVGy7/VeSFF1g
3X6Z8lzHsU2BdS5IzTwQGEWVZ2JkEnK8qmyTHFL7HFjpNgh7CWwv34u2GAaeaC8/
HnpfPA1JI2WEHbv+fVxMZjx04cmbHXFclp2qPu8skAgcEJMB1+UelVUPuXDgvqlj
0kE2SgPeVtgX+IWWqaUbZh5f3baAUXu/I+miACCeLCV3SBcDJMDI7G5N4KV8mMu4
QzXzHXVSEshTKSNx8rj6v04TSycrD/F5zArIfy04dnkoWd9ZZuwDR2BzQziHQqUa
STPlogKn80dqho1oScRU0UtVTJtnk/SH8AgNatL+vJZbD4x4eW5ntE1LiU5oUfUR
VvbsdhCPduN2QvTv+cENBC6BzqONJMDumHgY/8RirvqvfL2zSFxKwtAu9q5ay56r
0Lkv2AQhn8d49EbEebxIPSM++gdUEw5usf/pbRT0J+YHPAviTZkhovjCAuPlli9D
VKZHRW2V7rsbv4BArG8SpKGFDuHLgFNDZvaI+aM0HqiGYrS/hbM=
=YyCu
-----END PGP SIGNATURE-----

--c2h6m5xrkl3f4s3k--


--===============0979483200989401376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0979483200989401376==--

