Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611531A9B9D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=18kpaF41EA8WUTVh43JXyo7Bf5R6Pr9ZxcLQ1Mby0ys=; b=dlNj9cOB8pq9VllVR8GEOsOix
	MqoTUX686YjwDpoBYCf6fo4mryTQFYryZ6vAstmt8pXwNNV9DqkWuYkol/hROKeCYSmyDtMdvMaft
	GDRlb/FLUQxGO/90Dwa+KwhblzUWUN12ULb50wGixRDBp++6hQy2fLiJNQz23XeJEJ1dc9i63Ijlg
	oirYbckm199tP6AORm+Ml7gFrOpcs9k4yebQZCzYmlGlOLIiNbAu647FXIjv1u9xRsZfe+O2XoTQ5
	wOedKFSmM2vKmbF44vfUXU1eg77fjLE/N2RMwmLEo3uoaVejgcVVow6cS7MiCzR2ZxNHzT5Xxkw+f
	tRIt//rYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfnm-0007NC-Ux; Wed, 15 Apr 2020 11:01:54 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfne-0007Mf-IQ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:01:47 +0000
Received: from localhost (p54B33507.dip0.t-ipconnect.de [84.179.53.7])
 by pokefinder.org (Postfix) with ESMTPSA id DB0512C1FF1;
 Wed, 15 Apr 2020 13:01:45 +0200 (CEST)
Date: Wed, 15 Apr 2020 13:01:45 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH] i2c: stm32: don't print an error on probe deferral
Message-ID: <20200415110145.GN1141@ninjato>
References: <1584642136-15418-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1584642136-15418-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_040146_752733_E72AE9FF 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7490824325247425711=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7490824325247425711==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ggdAeHltlv4tpqCr"
Content-Disposition: inline


--ggdAeHltlv4tpqCr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

>  	if (IS_ERR(dma->chan_tx)) {
> -		dev_dbg(dev, "can't request DMA tx channel\n");
>  		ret =3D PTR_ERR(dma->chan_tx);
> +		if (ret !=3D -EPROBE_DEFER)
> +			dev_dbg(dev, "can't request DMA tx channel\n");

dev_dbg for tx...

>  		goto fail_al;
>  	}
> =20
> @@ -44,8 +45,10 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct dev=
ice *dev,
>  	/* Request and configure I2C RX dma channel */
>  	dma->chan_rx =3D dma_request_chan(dev, "rx");
>  	if (IS_ERR(dma->chan_rx)) {
> -		dev_err(dev, "can't request DMA rx channel\n");
>  		ret =3D PTR_ERR(dma->chan_rx);
> +		if (ret !=3D -EPROBE_DEFER)
> +			dev_err(dev, "can't request DMA rx channel\n");

=2E.. and dev_err for rx? Intentional?


--ggdAeHltlv4tpqCr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6W6ZkACgkQFA3kzBSg
KbaJ5g//Z4m5gD84GPP6vg6sSjL/LyJ6CZd/w08+hP95Uk1K82LELeWPmlaK1ibg
vSJRO8GeZLYFOYY8LgLc7rzQkHpkvB9xN2TW1wzZlAycvsjBvQtg5Ka1hHfASRuW
vR90ZA8G9eV5x8mpjEzNLEshHh4vkQlQjzgoO80v/r9ssHKHLDCwn0LAVr0hUEtR
ewHUTG8UwBsUguxGbnOwmiSdICGw/F46P2i+9LHLgp/2r6QYnjA7f31dWZ8hTOsR
HExpW9MoEmA9Kz4WeiNrSof/YXKh8I2z1ONzyeRDk+0IuBpHdF9MmY/Lb3wuQB2t
k9Vx4MF+2uBYS8R/Tv2ivxjxFmh74Zo2tCMXAj1P/AXhXlMtABXTCWNnmREyz4pe
lgskBVxJtwgybB+2r9RjWBE1uysnlG6GEJe82JP+yhPZfA8huDIGSG63+t5KVE5Y
LpcWFfEtXiPio2dvsOYCif4kHaCM0eARpY+83NwAokleUbIsovR2jDvvX3IJMtRt
SZWbMsW99eClAhSfLpxxA24OpgJoXRyhrhKqLPPil9/NucxWNgU1SbRqdmaA4LK2
inY4gaMa7Nixi1+4efMZYKl+Jqm6z2ayVhjZqONCu57lpoHFx9/wzQtLoOihyBT/
kObtfYnDh30/N8/6Btj9vpb5pA3NBMLuOKacj9sKZXdA5ipEGNQ=
=mwAo
-----END PGP SIGNATURE-----

--ggdAeHltlv4tpqCr--


--===============7490824325247425711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7490824325247425711==--

