Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C54166F31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 06:32:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=22BwkU7CR8hE/wJ9rzr496S7Orv6Kj/znakKu9Uqi0A=; b=rtWgy4M9Hh/bKmYL3dKmTtH5T
	BnErAjA1Gp5iHACaAdl+q0EAjch1otmLbayM5LbtT/glB/UBxGNnSMBrXlBvi9kI0BSfqvYJJGigK
	8vwBuzSgFxRMl4EVPJ6px6qDd1zNa0BOUKkmqj6b5eFqDr8Nn4qJimBF1whSm+bcAMv6f4RQOC+7k
	7wd4DMzLMW4AKyitdIalKTMoQWS/nr3sfVCkaBZf9TccRWDUvvWK/qDSUb2X1MVyakXbJNrVJjuHH
	XycF+Q92ACdkn2pB1P737Hqf1U8phBoYdRwCN5hjKk7yX+1y1h4d2XggrvOSF3krcL+W1DNRUGDwd
	eTNuYgGfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j50uv-0006g0-Ah; Fri, 21 Feb 2020 05:32:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j50un-0006fD-1m
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 05:31:54 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1j50uW-000319-W0; Fri, 21 Feb 2020 06:31:36 +0100
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1j50uW-0007fc-8s; Fri, 21 Feb 2020 06:31:36 +0100
Date: Fri, 21 Feb 2020 06:31:36 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] firmware: imx: scu: Ensure sequential TX
Message-ID: <20200221053136.xz7kdvt5ipnm5ng7@pengutronix.de>
References: <ae051784024f8fcc458437e278c27b4e79c6fe7d.1582214881.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
In-Reply-To: <ae051784024f8fcc458437e278c27b4e79c6fe7d.1582214881.git.leonard.crestez@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:22:39 up 97 days, 20:41, 110 users,  load average: 0.19, 0.08,
 0.02
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_213153_094938_1EC2A74E 
X-CRM114-Status: GOOD (  21.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5746491745139630390=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5746491745139630390==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gwuqhwi7e6i5wukh"
Content-Disposition: inline


--gwuqhwi7e6i5wukh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 20, 2020 at 06:10:01PM +0200, Leonard Crestez wrote:
> SCU requires that all messages words are written sequentially but linux MU
> driver implements multiple independent channels for each register so orde=
ring
> between different channels must be ensured by SCU API interface.
>=20
> Wait for tx_done before every send to ensure that no queueing happens at =
the
> mailbox channel level.
>=20
> Fixes: edbee095fafb ("firmware: imx: add SCU firmware driver support")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Cc: <stable@vger.kernel.org>

Did you measured performance regression with this change? It will be
good to have a note about it in the commit message.

Reviewed-by:: Oleksij Rempel <o.rempel@pengutronix.de>

> ---
>  drivers/firmware/imx/imx-scu.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>=20
> This manifests as "SCU timeout" message followed by system hang.
>=20
> This is not a very pretty fix but avoids inserting additional waits
> except in extremely rare circumstances.
>=20
> An alternative would be to implement a new type of mailbox channel which
> handles all 4 registers together. Exposing the MU as 4 independent
> channels is very awkward.
>=20
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-sc=
u.c
> index 03b43b7a6d1d..f71eaa5bf52d 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -27,10 +27,11 @@ struct imx_sc_chan {
>  	struct imx_sc_ipc *sc_ipc;
> =20
>  	struct mbox_client cl;
>  	struct mbox_chan *ch;
>  	int idx;
> +	struct completion tx_done;
>  };
> =20
>  struct imx_sc_ipc {
>  	/* SCU uses 4 Tx and 4 Rx channels */
>  	struct imx_sc_chan chans[SCU_MU_CHAN_NUM];
> @@ -98,10 +99,18 @@ int imx_scu_get_handle(struct imx_sc_ipc **ipc)
>  	*ipc =3D imx_sc_ipc_handle;
>  	return 0;
>  }
>  EXPORT_SYMBOL(imx_scu_get_handle);
> =20
> +/* Callback called when the word of a message is ack-ed, eg read by SCU =
*/
> +static void imx_scu_tx_done(struct mbox_client *cl, void *mssg, int r)
> +{
> +	struct imx_sc_chan *sc_chan =3D container_of(cl, struct imx_sc_chan, cl=
);
> +
> +	complete(&sc_chan->tx_done);
> +}
> +
>  static void imx_scu_rx_callback(struct mbox_client *c, void *msg)
>  {
>  	struct imx_sc_chan *sc_chan =3D container_of(c, struct imx_sc_chan, cl);
>  	struct imx_sc_ipc *sc_ipc =3D sc_chan->sc_ipc;
>  	struct imx_sc_rpc_msg *hdr;
> @@ -147,10 +156,23 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_=
ipc, void *msg)
>  	dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr->svc,
>  		hdr->func, hdr->size);
> =20
>  	for (i =3D 0; i < hdr->size; i++) {
>  		sc_chan =3D &sc_ipc->chans[i % 4];
> +
> +		/*
> +		 * SCU requires that all messages words are written
> +		 * sequentially but linux MU driver implements multiple
> +		 * independent channels for each register so ordering between
> +		 * different channels must be ensured by SCU API interface.
> +		 *
> +		 * Wait for tx_done before every send to ensure that no
> +		 * queueing happens at the mailbox channel level.
> +		 */
> +		wait_for_completion(&sc_chan->tx_done);
> +		reinit_completion(&sc_chan->tx_done);
> +
>  		ret =3D mbox_send_message(sc_chan->ch, &data[i]);
>  		if (ret < 0)
>  			return ret;
>  	}
> =20
> @@ -245,10 +267,15 @@ static int imx_scu_probe(struct platform_device *pd=
ev)
>  		cl->dev =3D dev;
>  		cl->tx_block =3D false;
>  		cl->knows_txdone =3D true;
>  		cl->rx_callback =3D imx_scu_rx_callback;
> =20
> +		/* Initial tx_done completion as "done" */
> +		cl->tx_done =3D imx_scu_tx_done;
> +		init_completion(&sc_chan->tx_done);
> +		complete(&sc_chan->tx_done);
> +
>  		sc_chan->sc_ipc =3D sc_ipc;
>  		sc_chan->idx =3D i % 4;
>  		sc_chan->ch =3D mbox_request_channel_byname(cl, chan_name);
>  		if (IS_ERR(sc_chan->ch)) {
>  			ret =3D PTR_ERR(sc_chan->ch);
> --=20
> 2.17.1
>=20
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--gwuqhwi7e6i5wukh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl5PazMACgkQ4omh9DUa
UbOiTBAAp+UFGGJHJs7Kyr8EEyO9SzmaD67LKLHTiY0bZt1nh6VgcbXNHT/9NDhQ
t5vK3gcmbIVBVFJUYwCH+FhUP+6MyBho4j3fLtfqvD38bbLYNlDT5B8Ve6Hmo9Pn
xsG8HCQ0KxVf89wPfhlxsM/u9LFwAzHRr4MRzXEQxAWVbGQuanIazXVW0urZOAeC
DNV6brjb91aOcjRTRHFbV31IsCbgxjkxzF21O1LIzh2Z1zOHBfH9WSXkFPeHlMCB
BEk/SuslE0YKFJJceazv7MTWk4GUyeI8fJxZ38PLWTVtGWjR1IQeSBykF3SPbgJC
cKvPQuArLQeSMGJR8UBqWgg+7UEhBPVM23bLxEE5gkbX7v33hNOmyrGpv2TZY1zF
mC5zpBD3o4DdQXZveHPyMh1ztL+5NaLpU3DtvrGW9OvL0Wa3egpkddFaQ3zoHq6d
0Ji563XIkIFW0VSaNQUUfKRmqEICsptCAOQRdT7hMFcoI81mt6W9Ey3F2kOr54Tc
Agy9te6xbSc/xOv5aqIHWFY7BUim0JypsEeQ70JDNr9yQeLDaoYGVqKkHxIunrBb
haoeTbSiOOSYb3WNmfL1vcv+H1ROSmGlBMVFRmrZN4OrxNGLVPwEzjTAfyyuJEqM
32CKiDO6SF+lPpSFYU3UrF9pMjlojI7WTyKvn6tT1EllZfArkRg=
=IUp7
-----END PGP SIGNATURE-----

--gwuqhwi7e6i5wukh--


--===============5746491745139630390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5746491745139630390==--

