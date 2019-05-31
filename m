Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCBA30B90
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 11:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wlxpZwx2rr4FL16fYzsucWd35v+fZLzcQU8+ojdI5uE=; b=tu4fwFC7s7QeL5qsxrpZ+MR2Y
	PzWrjXHX80BLUfeu7sfwnZLJRLNi7IQObHctTCNqU8p8srCb32AC4hFslNmNd2/0/Q2wM+J7V7c48
	gNPdJu5/1LMON79lBIU4TITbI6keBD9TMVMHxuE22UGnJLUgUaFW9TK2AQZrYoQLspNXY6pZ38qdv
	4pQ1QUufPLL+ZuWF4+xuL+7j8JyaIH6AsbO8g6rmQxF+dJcWqXNkKttWJiRlOsVStm4voIyUluQ0C
	bL7ZcxDdmIzRHip6ucJ067zi1NDhvhZ8zPa7uPD9p4dMElj86MnZ9rSRrpNxkJ1GfCcf2nr8/gC/m
	xWUzsw7ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdsT-0008FS-4l; Fri, 31 May 2019 09:31:09 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdsL-0008EQ-Va
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 09:31:03 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 3CE6F80225; Fri, 31 May 2019 11:30:43 +0200 (CEST)
Date: Fri, 31 May 2019 11:30:52 +0200
From: Pavel Machek <pavel@denx.de>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH] media: stm32-dcmi: fix irq = 0 case
Message-ID: <20190531093052.GA23111@amd>
References: <1559294295-20573-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
In-Reply-To: <1559294295-20573-1-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_023102_165461_B36CE9EA 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 Pavel Machek <pavel@denx.de>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Hugues Fruchet <hugues.fruchet@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1266222202797761500=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1266222202797761500==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline


--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri 2019-05-31 11:18:15, Fabien Dessenne wrote:
> Manage the irq =3D 0 case, where we shall return an error.
>=20
> Fixes: b5b5a27bee58 ("media: stm32-dcmi: return appropriate error codes d=
uring probe")
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>

Acked-by: Pavel Machek <pavel@ucw.cz>
Reported-by: Pavel Machek <pavel@ucw.cz>

:-).
								Pavel

> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
> @@ -1702,7 +1702,7 @@ static int dcmi_probe(struct platform_device *pdev)
>  	if (irq <=3D 0) {
>  		if (irq !=3D -EPROBE_DEFER)
>  			dev_err(&pdev->dev, "Could not get irq\n");
> -		return irq;
> +		return irq ? irq : -ENXIO;
>  	}
> =20
>  	dcmi->res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);

--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--ZGiS0Q5IWpPtfppv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzw9EwACgkQMOfwapXb+vI91gCgrymhw+fLQG9ycygMMLdOh9Mv
Ao8AoKLSVLOH71CRZXNcxqg8QDUQpczh
=7mwO
-----END PGP SIGNATURE-----

--ZGiS0Q5IWpPtfppv--


--===============1266222202797761500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1266222202797761500==--

