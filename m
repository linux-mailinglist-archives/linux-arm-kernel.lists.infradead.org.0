Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D6E1530E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 19:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oCON9Nnl8KVqPAc58aPBhWykGeQquBxiwp5YUUHIoss=; b=CRRjZbtox2j+CmLS9yLi8xTTD
	gyow1U6ER2xYOocxeqtel6EqyUPEdECH5QDoa9aWXDUCkAG/GocgGytiUIB+uxllO/D+gAyulqhlX
	UmGx2apPzka35ZK9zisUFk9fLSwJK1PuJJULoq3qlWIvvThcbMHTExBgglbVVOibM9KnHLurwzULE
	I606TBZktcGr/VYSweeyktBSTlgebKQssXNqneLXKbFAizccq3Tj9xlPFrrD23ZDflxcXZv3L3zoL
	3nlvDZA0WqZyRahGFGKarCq/nxhGvzsj1ws5bGcdTgkng2fVbf+JlZCqKsfEdxafAQZ9dkzwy8vjU
	Rb/Rkazng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhjf-0006lK-6l; Mon, 06 May 2019 17:49:07 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhjW-0006kV-Rv
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 17:49:01 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 3E6AD80179; Mon,  6 May 2019 19:48:35 +0200 (CEST)
Date: Mon, 6 May 2019 19:48:46 +0200
From: Pavel Machek <pavel@denx.de>
To: wen.yang99@zte.com.cn
Subject: Re: [PATCH 4.19 46/72] net: xilinx: fix possible object referenceleak
Message-ID: <20190506174846.GA13326@amd>
References: <20190503100816.GD5834@amd>
 <201905051417486865228@zte.com.cn>
MIME-Version: 1.0
In-Reply-To: <201905051417486865228@zte.com.cn>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_104859_201663_ABACAC7B 
X-CRM114-Status: GOOD (  26.21  )
X-Spam-Score: -2.2 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: sashal@kernel.org, michal.simek@xilinx.com, pavel@denx.de,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, davem@davemloft.net,
 netdev@vger.kernel.org, anirudh@xilinx.com, gregkh@linuxfoundation.org,
 John.Linn@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3860526148423131022=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3860526148423131022==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!
> > > [ Upstream commit fa3a419d2f674b431d38748cb58fb7da17ee8949 ]
> > >
> > > The call to of_parse_phandle returns a node pointer with refcount
> > > incremented thus it must be explicitly decremented after the last
> > > usage.
> > >
> > > Detected by coccinelle with the following warnings:
> > > ./drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1624:1-7: ERROR: =
missing of_node_put; acquired a node pointer with refcount incremented on l=
ine 1569, but without a corresponding object release within this function.
> >=20
> > Bug is real, but fix is horrible. This already uses gotos for error
> > handling, so use them....
> >=20
> > This fixes it up.
> >=20
> > Plus... I do not think these "of_node_put" fixes belong in
> > stable. They are theoretical bugs; so we hold reference to device tree
> > structure. a) it is small, b) it stays in memory, anyway. This does
> > not fix any real problem.
> >=20
>=20
> Thank you very much for your comments.
> We developed the following coccinelle SmPL to look for places where
> there is an of_node_put on some path but not on others.

I agree that the fix is good. Thanks for doing coccinelle work.

> We use it to detect drivers/net/ethernet/xilinx/xilinx_axienet_main.c and=
 found the following issue:
>=20
> static int axienet_probe(struct platform_device *pdev)
> {
> ...
>         struct device_node *np;
> ...
>         if (ret) {
>                 dev_err(&pdev->dev, "unable to get DMA resource\n");
>                 goto free_netdev;  ---> leaked here
>         }
> ...
>         if (IS_ERR(lp->dma_regs)) {
>                 dev_err(&pdev->dev, "could not map DMA regs\n");
>                 ret =3D PTR_ERR(lp->dma_regs);
>                 goto free_netdev; ---> leaked here
>         }
> ...
>          of_node_put(np);   --->    released here
> ...
> free_netdev:
>         free_netdev(ndev);
>=20
>         return ret;
> }
>=20
> If we insmod/rmmod xilinx_emaclite.ko multiple times,=20
> axienet_probe() may be called multiple times, then a resource leak
> may occur.

Yeah, well. I agree the bug is real. But how much memory will it leak
during each insmod? Kilobyte? (Is it actually anything at all? I'd
expect just reference counter to be increaed.) How often do you
usually insmod?

> At the same time, we also checked the code for handling resource leaks in=
 the current kernel
> and found that the regular of_node_put mode is commonly used in
> addition to the goto target mode.

Ok, so this uglyness happens elsewhere. But I'd really prefer to use
goto if it is already used in the function.

Thanks,

								Pavel
--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--VS++wcV0S1rZb1Fb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzQc34ACgkQMOfwapXb+vKjLQCfR30gJwbflpVIZMeXq9XtoP1X
bpMAn0gYdpIGkf2vx98ZqTyzLuMecomn
=Ekqr
-----END PGP SIGNATURE-----

--VS++wcV0S1rZb1Fb--


--===============3860526148423131022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3860526148423131022==--

