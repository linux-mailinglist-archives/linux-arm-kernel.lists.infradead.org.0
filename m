Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F0874094
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 23:05:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AxwEQoOPF7bU8vcB/YQEh0jLlGxh6AuSz8gVeNoQRUY=; b=s9BUjIlk/7g7h0rixmyf1+L6G
	tYkIkW2XPn4+9auGF5JvmyS+TDijfCMXhtwhYzDBectKyQtNSM+YIbnPPuS0DprvltPWCPciLbYvt
	FWcJF22VSnTIboaCGG1uUwU2vyyOTWFmQraToOm9LnTgfOZrxiQFwdNAq8XAG5/R5eeO7yOD+6zAd
	wOO/cWlPDUHo2q61JP6NCv+0CaDEM+g2APNiNmiZt7NgaKDw+8Ujt766CCZPk0J8iLQi3GlSaz0Ow
	mIyx9vuL64dyzQlw6mWblySGjdHAhHRp4ve6CW9amupxwEyCTJOACN8Ss9NNJhubvRQy6PmTAmcQm
	HNW4DqXIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqORW-0003Uk-OI; Wed, 24 Jul 2019 21:04:58 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqORK-0003U0-M1
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 21:04:48 +0000
Received: from localhost (p54B334B5.dip0.t-ipconnect.de [84.179.52.181])
 by pokefinder.org (Postfix) with ESMTPSA id 13DF14A1209;
 Wed, 24 Jul 2019 23:04:42 +0200 (CEST)
Date: Wed, 24 Jul 2019 23:04:41 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Simon Horman <horms@verge.net.au>
Subject: Re: [PATCH/RFC repost] arm64: dts: renesas: ebisu, draak: Limit
 EtherAVB to 100Mbps
Message-ID: <20190724210441.GA1559@kunai>
References: <20190717125739.21450-1-horms+renesas@verge.net.au>
 <20190717132607.GA1458@kunai>
 <20190724105203.thykr2staw22gdj3@verge.net.au>
MIME-Version: 1.0
In-Reply-To: <20190724105203.thykr2staw22gdj3@verge.net.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_140446_864328_CB54F319 
X-CRM114-Status: UNSURE (   7.69  )
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
Cc: linux-renesas-soc@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: multipart/mixed; boundary="===============4252155188213384223=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4252155188213384223==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > What about adding a short comment explaining the situation?
>=20
> Do you mean in the DT itself?

Yes, so we don't forget why it is there. Or do you think this is not
needed? I'd think it is useful but won't insist.


--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl04x+UACgkQFA3kzBSg
KbZXxhAAnTXukP1XYbvqYoGHXWNhsw+WJyaM0aOfz5mmCSfBRan7+YIQ2i7Qq8DH
xbwk2l3Qt2o+TEI4+LMvZ5sI81l2HNaZQi5Zsicf7c/xhHecwuiIvVhqoF2W5k2N
FcmIVCLvrgNlMaRSgFNcYG5vicRPJeLnWNBstw95ltKs3/8M636qYl8qDDIHh6Vp
S87NniVc2wX7Yu77ybU+lsBwDzoLtpq0H2ajxKqnxDg5suix5+I7IqYZkRuHTlO8
jaO1353cXCBzd/m8xrDNmO92NWyxuOEC71Yv+qkcUgJn5xEN7DaSxMY4wTYoTZ5W
XxfuzyBZCNkNGeMlLnWcb7CRzY6gc99YyywWKnzRHA7dAI0tdtuEZlA1EZtWOlhd
TZ6x0sUAqkACQarS0yBE3Tlu3cDRltegOg1pGfXmJWGiaI/UnPIXobMtc6/IW1Sn
44zR6O2/J8x3Covg/827XH/n++7pZb98hXyDO808d5UQ0iDn+1/E93hj+kh1kze2
CdLxay9NeeDhULpdUw+ClkSDVITS6uggDhX2WNOnhotsyg2G88qdTwaTE2KD9t7u
cAqwuwF7IhjTnzVTp47U0DvL3YCIvEJ+4cr9kn64k8NUk36z9CLwJCd1Zmr1hjYp
qYDslGwTMSmnknS+sGBoUnFAPCRRbZ/7vANxv4328sXVYOP3NcA=
=o6hC
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--


--===============4252155188213384223==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4252155188213384223==--

