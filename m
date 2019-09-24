Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141E9BC5EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 12:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SQeS+m9xG/+9CAaDNCECQdLVmUkA7uFtgSk+9C1ktxc=; b=UKA1tgViPkAirpLM+Cbttdsft
	99MtqbGr//gP87RSJPnu4FpnSA5euP+2UmUaQhyGMIbE5n9xZNu8a/h1gYrp2sUqRQQzLZnyb0UcP
	Qy4HWfSrOf4qNn/UqmMV4dM56GZWwmwks2oloJzZxiCRvjV0J86rpQlgmeeKRi8L7qo8lk7NT8l6Q
	huULbGLkIhwblNg8IsHnxUqtRay32/aTg6IJY3zTHVN6sP5pqKJ9zFD6NI8D5A7vq1C8wQx85yiXT
	Llr1sZQ63K3jG+VNGqx4tRzUi4YDf/QutRGdc2X9hnGdF9549mYxKf+eSLN//sFqd+hWAhZ9VbMZu
	Ia27HGt6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCiSO-0002mO-RN; Tue, 24 Sep 2019 10:54:08 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCiSD-0002ld-Q8
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 10:53:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id h7so1393455wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 03:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1+EqrCiTrKmAw8pToU7Xi1QmQXGYCJ1mSEa20bO7ELE=;
 b=H870yVUYr4Zt3m9GjpSUUlJ9EZ0JqKl1z2SIJbaQNSkgKoQ4zSF4b0+k7gSnpdHZQZ
 KbdHXJWUyEzHTg6S8C8YTaEQrT8WLKNK3BzaY/SJmZFmCJ9+lJuAs0uYuqO9kkwlyEZS
 rE5JaFZVM6W7FCaK6Wlh8Ort1x7ptMjrlcPKYuYEe9cfRkuyIM2jZyOODY0Cy+aiyd5T
 5B16XpEevpDrYuGxMDsx+CDgTWovf3B4j9tNlTtsfJ6mS3lQMAbLTviINnmDfWyQp379
 9YZFjl8vJr784oObcboVQL41hA1WAcI9eRrAzeIna80Gmh3No1olecuTJ2WqaDMOCQiE
 uNJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1+EqrCiTrKmAw8pToU7Xi1QmQXGYCJ1mSEa20bO7ELE=;
 b=NWu2DtMNcgeUEHztfMvsJ+0TVPcexROsRX5cs3WKhXFiR4MG2tphyuG4elg0TuuBB1
 RgWXILGmIX380B+Q4Mq3fAI4n7TQbjlr5/+hEsUx7xF4V2gNjRxI1Q+CR+OKCkx5fC6g
 rVLxDb4BvB5CSTVBzcuC5676uOKSLu+NTvBZsrOhT/juA/6odeGp8c1fIW8ofhBvUO2R
 HpsFMjFVWNbXpPPwjuhcMWr0gNgSBbRww+dPxsHAV6JYoK1VCnQtto3uDxDRUV4Reg5a
 qVooaPqEy/AfOAmf765BRr0R3GqA9F5GA6MuYOzGvYrB+mfE66htIjzbXSbh4n+3WK5k
 DkQw==
X-Gm-Message-State: APjAAAVbBaLcM/9QGK1sHrp0a0pfDDG/GuA14v9tsOPORtLqk2Sp78Vv
 g799Yqn+jWQEIlejvL8eFsA=
X-Google-Smtp-Source: APXvYqwyRBmVYqBKfUPWCMI19pROSaXLJfExo7KtwkswM60Jw52Pk3rvvueLxvuR7lP1c5q/05a9BQ==
X-Received: by 2002:a5d:4689:: with SMTP id u9mr1810687wrq.78.1569322436235;
 Tue, 24 Sep 2019 03:53:56 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id s10sm2871320wmf.48.2019.09.24.03.53.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 03:53:54 -0700 (PDT)
Date: Tue, 24 Sep 2019 12:53:53 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/2] pwm: pwm-mxs: Use 'dev' instead of dereferencing it
 repeatedly
Message-ID: <20190924105353.GE14924@ulmo>
References: <1569318169-12327-1-git-send-email-Anson.Huang@nxp.com>
 <1569318169-12327-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1569318169-12327-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_035357_846971_5E1795C1 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0832267067697913552=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0832267067697913552==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="47eKBCiAZYFK5l32"
Content-Disposition: inline


--47eKBCiAZYFK5l32
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 24, 2019 at 05:42:49PM +0800, Anson Huang wrote:
> Add helper variable dev =3D &pdev->dev to simply the code.
>=20
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/pwm/pwm-mxs.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)

Again, lots of churn, no gain.

Thierry

--47eKBCiAZYFK5l32
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2J9cEACgkQ3SOs138+
s6HR/A/9EUNTBnpBHITA0Kq/pZ+Bcn6+e4ivi2Lm7ml4+7UKBAFfUBkk8NR8ojWK
lg6nL1r2WlJBAzDa4uP+f5zrXZzoNIelQel6ORgDtziZbGEFeKGtb37ng+C+pKWD
AvSfhBnikiAYWHAZ4J8soZTeyQvN4obwpWDGpBYxI5OlO5oVep49N0r+4qF8DDeV
kbcFZ/5lL0KIOi//ykRD373y2f4N4mnhExY/0fKbDLe14fUGfGUf74XVn0kqwKKT
FlVLWYQU7J4pSyDMElfHZqeaEcHa7qva+gokf608yXhv7OREseYi8zXeZw7xq0Z7
35PDelZGh9tPepS2WJGjqQxZufouuBkkB6ULGaHFWEAl3C8HRC9phgw9Ws7zXGYQ
1HLKNAwNC53oovl5V942aunlWAYWLAvqCRugb2nGN4kCuiEEsyrc2w/hI836UdFt
XIHbpyR/nvVkZ/SVilLP4ZsWuuAnjhxQdPJixp+MPOl++MkjO/enrSglr90kClYv
shw78UZdLUnJ5eJ/q3kSwCmEn6pBSXLAxzbPyVu1nbB7jivmSO/vleoqNKu2eqOr
odUFJB0wcmg7jAsM8S7ZNFEiQEJr6gfO3oOcuIfIrBdZAnMxoQ7/cEeGsKWsxpFm
6tHrJvdNFw8r//AKR0l6lIY4tYFNCLP8a7sHdMUmDV0Pg1QEDgI=
=UomL
-----END PGP SIGNATURE-----

--47eKBCiAZYFK5l32--


--===============0832267067697913552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0832267067697913552==--

