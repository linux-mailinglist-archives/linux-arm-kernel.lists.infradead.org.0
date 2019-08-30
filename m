Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E9CA378B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 15:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FE/P8Cyxm9t6OQIeXWBMdEsCgeLhIi3gWkQAzvMc2tE=; b=UJduxRPSVKAEf5Cj8JlFNA5+m
	wAbu6D7uUAb+eJAJAnbIXGqFhXZ0g0NJDOCQ+paUh1TlFlbaVbDSZOitDwz8MH1Siz+H7d21RYqES
	c8o5OMRa0VliRmmpgJaiH5rYp7Js7T/07Xj0y/dke1CXNZnlpeC9GZqC2yTPxKUw6JHP3A5HGauGo
	qQhBPfiNjziWyxfiMtvA+oWtwsQKoEdPMzifxZ5GvlBuWtuyfQuiMjG7YSfs2Y5zm89UIYVQHPEVq
	kS2siJFyNeED+efjL+obd842NA1BTK/XFRiw2AaAEvEDT0ZqBMBxz1sb2kys6tUcnVKsaRflp199F
	TmZ9/EUbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ge9-0003Eh-KL; Fri, 30 Aug 2019 13:08:57 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gdv-0003EL-EM; Fri, 30 Aug 2019 13:08:44 +0000
Received: from localhost (p54B335BE.dip0.t-ipconnect.de [84.179.53.190])
 by pokefinder.org (Postfix) with ESMTPSA id 9BEE22C0095;
 Fri, 30 Aug 2019 15:08:42 +0200 (CEST)
Date: Fri, 30 Aug 2019 15:08:42 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v2] i2c: mediatek: disable zero-length transfers for mt8183
Message-ID: <20190830130842.GG2870@ninjato>
References: <20190822094516.55130-1-hsinyi@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20190822094516.55130-1-hsinyi@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_060843_634040_64F2F84A 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-arm-kernel@lists.infradead.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 Alexandru M Stan <amstan@chromium.org>, Jun Gao <jun.gao@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>, Thomas Gleixner <tglx@linutronix.de>,
 Qii Wang <qii.wang@mediatek.com>
Content-Type: multipart/mixed; boundary="===============0475029047986836264=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0475029047986836264==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8S1fMsFYqgBC+BN/"
Content-Disposition: inline


--8S1fMsFYqgBC+BN/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2019 at 05:45:17PM +0800, Hsin-Yi Wang wrote:
> When doing i2cdetect quick write mode, we would get transfer
> error ENOMEM, and i2cdetect shows there's no device at the address.
> Quoting from mt8183 datasheet, the number of transfers to be
> transferred in one transaction should be set to bigger than 1,
> so we should forbid zero-length transfer and update functionality.
>=20
> Incorrect return:
> localhost ~ # i2cdetect -q -y 0
>      0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
> 00:          -- -- -- -- -- -- -- -- -- -- -- -- --
> 10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 70: -- -- -- -- -- -- -- --
>=20
> After this patch:
> localhost ~ #  i2cdetect -q -y 0
> Error: Can't use SMBus Quick Write command on this bus
>=20
> localhost ~ #  i2cdetect -y 0
> Warning: Can't use SMBus Quick Write command, will skip some addresses
>      0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
> 00:
> 10:
> 20:
> 30: -- -- -- -- -- -- -- --
> 40:
> 50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 60:
> 70:

Thanks for providing these test results. Much appreciated. To shorten
the commit log a little, I removed them before applying, though.

>=20
> Reported-by: Alexandru M Stan <amstan@chromium.org>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Applied to for-next, thanks!


--8S1fMsFYqgBC+BN/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1pH9YACgkQFA3kzBSg
KbbbRhAAlMzupxZHSJTI9Bu7BvMjyJ/TIq0NM6//hPM8wg5Xz3qzcDPVi+MAE5vM
9f+KrOU3DBE0YwP1q1x1/b+O/iM8nzxNWnkpB1Ipzmy9tc9W1LrFAAE7LLYePmQe
m0pLyeILNajlw39r+4DVX+5ChWU6gKUyFuDlie8gzwUgC7YoqZDBcsleuHWxPMUc
TuU+zUCJr9FFMCsHp0IyM3cRmeScXjMSjQ6GswnCeTsYbDZJu7zKKINEBMHh3fGC
TM8PfFZCz6RdPaSal3gIzc+c6itm6ZucZTGt4IYrIOUMVlPE9d0wS440jKEITRr7
WkMYJ12oiJEQkIKWMrndFXn7NU2IjhN9WFq/hjgJujxN79MWTwQmSp2+sRwWW1na
9YcjeiOVKNTdXw/BPAaOv8FyD/6MEbr/UXcHD0ttFd0tlIeXedM/0XnDjYkwFqc7
fuuOI4W5z0xqp54Y05+legEaio9FhyskgQHyxILwM5penDcF/+7o+qaY5UE3BZ5f
EFl0wWV+tJHzEzMXkmarFK/QvHuWaY/awbHtVX/YZE+Wzztm4a29b3OX+cjUf8Q1
eTONETlSj6sZXmiwmgdI3K2qhuYz2pNPp8ZEG7291y0FMi6o4Ejc/IegH5rDN4fb
eECFCJ1BQyGzvv41KEm4YyZMWE0wTi7BSzAC6QoLc1yzRtZwuCk=
=prhC
-----END PGP SIGNATURE-----

--8S1fMsFYqgBC+BN/--


--===============0475029047986836264==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0475029047986836264==--

