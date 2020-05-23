Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4671DF6B9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 12:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xASe97PXv1GfNo4XY3FrK3W1dsNXt5/Jc/XemjtgBJY=; b=iB6Zo9liQhO8oD10dJl9BBzdm
	UFPujCyGAst7WyYVmhiRYJutwwm8p0G2mxx1+8+EExEBr1AurOAKn81LAvBon3FDY9KIYDCIhSJTd
	JDm+nfxOGMvrSZXLpBxtWbZW8Rct5vQfU6UhEa8jXaGCZ1b0jDVNMJeQANZpS/btcqz4zOSJDPrjx
	RcejZoCsOxPlrUeH8kC2yv+ki4C9P4SjDKE3aVzi16FE4BE3QTSVkJ2fO4WauK7a2d/MhJ7BhNYEc
	7mJ27TGQw8VvRttiz/I86ybs0diKSOtbPtKzbRNcxZXejjiFsCvT/pjDuLAr6QG9Hx58KeutqmUL8
	OOftxSAgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcRfq-00030D-RA; Sat, 23 May 2020 10:46:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcRfg-0002zb-C7
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 10:46:29 +0000
Received: from localhost (p5486c962.dip0.t-ipconnect.de [84.134.201.98])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4740E2071C;
 Sat, 23 May 2020 10:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590230788;
 bh=pbReTCTmAIHmTd4BJrQV3YAqM3Cg2azMISSPySR/VeE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dkhtftQ/UB2JXoW8P545devsy9L/piU0uizM9rj9bh9fsgUV27y1zesvuLCrCYqb4
 ex99CvspcJLpmfp36jRcZUNvzuJj2aH/KIqA2Z/lAWh3C3t7erD8w209kJPvzhrcrt
 JMWBvyOa/VKZvl4R9niA0/QJ2mgpf9oYRCZpAfFU=
Date: Sat, 23 May 2020 12:46:25 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Alain Volmat <alain.volmat@st.com>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>
Subject: Re: [PATCH 1/4] i2c: smbus: add core function handling SMBus
 host-notify
Message-ID: <20200523104624.GB3459@ninjato>
References: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
 <1588657871-14747-2-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1588657871-14747-2-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_034628_453791_2D565875 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5515597468249661434=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5515597468249661434==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WYTEVAkct0FjGQmd"
Content-Disposition: inline


--WYTEVAkct0FjGQmd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Adding Benjamin who mainly implemented this.

On Tue, May 05, 2020 at 07:51:08AM +0200, Alain Volmat wrote:
> SMBus Host-Notify protocol, from the adapter point of view
> consist of receiving a message from a client, including the
> client address and some other data.
>=20
> It can be simply handled by creating a new slave device
> and registering a callback performing the parsing of the
> message received from the client.
>=20
> This commit introduces two new core functions
>   * i2c_new_smbus_host_notify_device
>   * i2c_free_smbus_host_notify_device
> that take care of registration of the new slave device and
> callback and will call i2c_handle_smbus_host_notify once a
> Host-Notify event is received.

Yay, cool idea to use the slave interface. I like it a lot!

> +static int i2c_smbus_host_notify_cb(struct i2c_client *client,
> +				    enum i2c_slave_event event, u8 *val)
> +{
> +	struct i2c_smbus_host_notify_status *status =3D client->dev.platform_da=
ta;
> +	int ret;
> +
> +	switch (event) {
> +	case I2C_SLAVE_WRITE_REQUESTED:
> +		status->notify_start =3D true;
> +		break;
> +	case I2C_SLAVE_WRITE_RECEIVED:
> +		/* We only retrieve the first byte received (addr)
> +		 * since there is currently no way to retrieve the data
> +		 * parameter from the client.

Maybe s/no way/no support/ ? I still wonder if we couldn't add it
somehow. Once we find a device which needs this, of course.

> +		 */
> +		if (!status->notify_start)
> +			break;
> +		status->addr =3D *val;
> +		status->notify_start =3D false;
> +		break;
> +	case I2C_SLAVE_STOP:

What about setting 'notify_start' to false here as well? In the case of
an incomplete write?

> +		ret =3D i2c_handle_smbus_host_notify(client->adapter,
> +						   status->addr);
> +		if (ret < 0) {
> +			dev_warn(&client->adapter->dev, "failed to handle host_notify (%d)\n",
> +				ret);

I think we should rather add such error strings to the core if we think
they are needed. I am not convinced they are, though.

> +			return ret;
> +		}
> +		break;
> +	default:
> +		/* Only handle necessary events */
> +		break;
> +	}
> +
> +	return 0;
> +}
> +

Rest of the code looks good. Maybe we should compile all this only when
I2C_SLAVE is enabled?


--WYTEVAkct0FjGQmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7I/wAACgkQFA3kzBSg
KbbXgQ/+LcMC7QayI4s8Dvz6JvDUJwv5Hb0sbJhWY6hZjTukOGuxIPjrqZ/TqNGN
FAqr4fNEgfEH2wJw2zvuMUlqkVhAgfnw5/DtOOzDGhmogXa8eyP8VCBA35wNkLv7
glMCNfuaWYvQMZv0Ftr8atBoONlIofe0s7yIABC0KginLoUqTMLIGOzM4+JWAQ9o
l4n8aoWdmZL1/TksIOhN6UK0uxup3MPvL3KGCFh8YwFRxvRvEZOcvxbcXjZstQd3
5Rf0BYf85c0vVOxXY0V7tNUVSZtcgkKr0yyrFtRwpI0EaFwx6lR9zrclPeNZQd9p
xHwp/i3DSUL69SPOgCgeaOglKUEZqNk8i8RzBDcGBtiih5illJH+6gXuYcS9GfR2
XJgUybgtl9dQwIcr4KkZraayA4SNBiXwNcjOn1CqunS3Xv21Ep8dW3HTkv6opO1f
u1j43ZN/51NATCPp/I6OdSQqpfMhpds4BPjrAm96ZygEVYHWqAdOOs/IK2Rvdnw5
0yQBdpeqWP+oFpL/W0uUcS+u5pMjQSL8SA9hxav4FuitaECBsgeFU+k7O28Qsv4g
9w6QKh7X9oEbbiG22YLNJ+/pGbijqMSRASEyYsu6wh3GsJ/RqIC1WnsGztdNwDtR
8GXDv+ja9iaSIc28HjfMszo/vbXSlU2MJ7SwWOG1H2sFxQO3ZNw=
=EXgv
-----END PGP SIGNATURE-----

--WYTEVAkct0FjGQmd--


--===============5515597468249661434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5515597468249661434==--

