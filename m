Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B8546BBC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 23:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p90nAYuLFTIAxXLz9gev6OMuLke8FGbHOtjIYVnfjMc=; b=QUClg1DS94qjK5eOqageMMzAT
	i+OcZNGh3U6NCp18Ps/SRwje3KfX1ktRONF3kC0UtIWG5m07wvStX1hQP/JG8P+2YnMqJx/s5WRBw
	xeZU47IH1vxPOmxoB3+jbZVBtCtrYpuUMaib+vMHePaIss/H6hRYwQNPxsHi7LNfqweWVMSOiVI4i
	v/F9iSYmFwrKaEtzoqGTP6zYzZHCJZ4TC+6siLNFaNytwR91stTuNhLVhLCh+ZGVOWM0veoVNBPxX
	AGyAw4CnNs3NOtMXXgI5ZVPRFVFi9Lwj/9DlwL1trr3H7MaOkRP/LoQoaZiqyuDEncB9itB4bccxL
	4hYdaUwlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbtZy-0001QD-Aq; Fri, 14 Jun 2019 21:17:46 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbtZT-0001Ay-CV
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 21:17:17 +0000
Received: from localhost (p5486CF81.dip0.t-ipconnect.de [84.134.207.129])
 by pokefinder.org (Postfix) with ESMTPSA id 620092CF690;
 Fri, 14 Jun 2019 23:17:14 +0200 (CEST)
Date: Fri, 14 Jun 2019 23:17:14 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 1/6] i2c: i2c-qcom-geni: Provide support for ACPI
Message-ID: <20190614211713.GH17899@ninjato>
References: <20190612142654.9639-1-lee.jones@linaro.org>
 <20190612142654.9639-2-lee.jones@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20190612142654.9639-2-lee.jones@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_141715_784784_2BDA9073 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: balbi@kernel.org, linux-kernel@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linux-gpio@vger.kernel.org, ard.biesheuvel@linaro.org, agross@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.or
Content-Type: multipart/mixed; boundary="===============4550410327232673969=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4550410327232673969==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k+G3HLlWI7eRTl+h"
Content-Disposition: inline


--k+G3HLlWI7eRTl+h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2019 at 03:26:49PM +0100, Lee Jones wrote:
> Add a match table to allow automatic probing of ACPI device
> QCOM0220.  Ignore clock attainment errors.  Set default clock
> frequency value.
>=20
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Applied to for-next, thanks!

Alok, are you still there? Your ack is missed here...


--k+G3HLlWI7eRTl+h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0EDtkACgkQFA3kzBSg
KbYERA//fln0PxCO8MCvKtu91PRMaykG6c6IGBWT1XinpcUskkxv2dlJL5qb4I+s
LTRaz0L8MqIxk2vkdTYe0unh38Horq/07c26+SjP/NSqj7PAzSFXLOjtd2f6xRDd
T6cbUsRpQN4+qRWqR3hfKRIGmNwZmbUNLTtAVJ4S+Vx+PGOlvX2RweicbI65gRLJ
+3oZ0iQI+mNA7TGv8Dn32SMkevbGYyXBQW4+ff2hR4lUGYRyG/sGB/izNhmqLyni
Pt5MYDHtZo2JnLfennHKAX5r4nhdDLic+EHjr6sKym1TR+IHwwpApExsRuwsRB2p
Mvp3zi5+3QGqq4LaDdsgtYtE9HaKNSbklaIwolEHNqbk2vECz/Dyrq0gZK2OjSzN
/bCiuUNlbQprEnXJ06Z0/1sS/Rm1hiuYrr9Foqk8q/e7rT5ghbud+IyFf3k0ZKBK
D3y5T+2v/qSU5LOFDXpIG+t+pVL8OActa3Rp5W8mE3t3fJWcjXYVQ06TJv77iSPk
ErpEL3zpZ7CE5VaHOVwKEgULEgDJTEdYBW1OKA2hPmwWpQdEwaTMjDmfSpnwkMQ6
oN+MQRNWaFHKjjLANO9iU00j0KnmX48ZdNifcHXKsDtHQbXmKq/s8P556rV/Pysv
sjLOU5HNDvGLDFt6sMRKKEMFKKZP+jqZqkjQSaoQQ638v1n18ng=
=BNzG
-----END PGP SIGNATURE-----

--k+G3HLlWI7eRTl+h--


--===============4550410327232673969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4550410327232673969==--

