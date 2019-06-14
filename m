Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AAF46BBD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 23:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=loKVKURin42G5t/B9KQ29KSL711QdvQQlMl2elmSqyE=; b=DD/oCWlMj/2I8Rn/N5YAFDXFG
	R+a+MDjXu3HxtBRoQ3sHv8v0bCgw5jpJGW6N2X0oSpoTXVcNQy/WN39jAc2LR8tQaWDhE2YVKWMNW
	GwD3HeGC0jQICYHe/KilLVso5kCsqjsW31igMPtD3laPn9LY/utVGnhKOQwPmZbagyo2U0eX7eQ4K
	4WUYKAjXfUKjGWhUe4AMqsmlcK2GAKtir+qptII0SJvidi9pm5jJ3Icwf9Hn8T4XgJhRQ0rAvy5lK
	m4IaLs6kFz00jR3Hnfh0rvhOgDG0r+JnhcdHswzRXDKIlaOZFfsYzfuH/25iL6lLaJsCyKYagd3IB
	Fbm2mVcZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbtaE-0001bC-No; Fri, 14 Jun 2019 21:18:02 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbtZk-0001Pc-Lb
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 21:17:34 +0000
Received: from localhost (p5486CF81.dip0.t-ipconnect.de [84.134.207.129])
 by pokefinder.org (Postfix) with ESMTPSA id C6D022CF690;
 Fri, 14 Jun 2019 23:17:31 +0200 (CEST)
Date: Fri, 14 Jun 2019 23:17:31 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 2/6] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190614211731.GI17899@ninjato>
References: <20190612142654.9639-1-lee.jones@linaro.org>
 <20190612142654.9639-3-lee.jones@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20190612142654.9639-3-lee.jones@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_141732_880554_F51E8857 
X-CRM114-Status: UNSURE (   6.40  )
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
Content-Type: multipart/mixed; boundary="===============0784065889712217493=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0784065889712217493==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PWfwoUCx3AFJRUBq"
Content-Disposition: inline


--PWfwoUCx3AFJRUBq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2019 at 03:26:50PM +0100, Lee Jones wrote:
> The Qualcomm Geni I2C driver currently probes silently which can be
> confusing when debugging potential issues.  Add a low level (INFO)
> print when each I2C controller is successfully initially set-up.
>=20
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Applied to for-next, thanks!

Alok, are you still there? Your ack is missed here...


--PWfwoUCx3AFJRUBq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0EDusACgkQFA3kzBSg
KbaF5A//eOUYXPdT2ti6Q1bKBj1UFPE+GDDgTGN5/r9/yp/CvXDI2rmQRzYZ4Hzw
gu+c+ZlfvgufyiS3nOri6r8RgiSRqWPRUCKK+PZNGdiYg7bjmHGSzYj3QwprXu6Y
vorDbXJ8AsnSr3/LAqO+vwzxwJIUdUNu51svi+IYKw0t+v7mbxfSKbl6vTCmrums
DepavKTDuQKnoLD6RX7E89ffTw/wvnR5kR/kGlIeAmcOHYCWyNZhdmrNLSqhZdmf
Ki1TTIq8D0dHoVKia0GdkcCBeegTHBpfwkiDzRl9ubpPaZen6T3ny5mrbyTWV2wF
Xn3H7nYSiT2jbY35k09RINb1G2YSc6zHClcgIAdx0OO9Zs1OXV4s5sdHvjzHR1ep
SbpBxZ+ndXOt+Eyo4aXSpK8In3noXs0RZiw+kf7DxUKQWOb465hHb7aX7cCwp2Fv
kjHYMgizH6agnT5ApVTa4GLF/NQ2uTj+EmWjgwhFmPWsnfjS1rCOrvWkizGx1dpn
55ROyQ1sS8fIRk4lhKJa0H54up9gg4ql07O0qMvkwRUkLvBnEedob5AapJp2jg2b
FKH9EhHky3pgSWkrlChUiNcRsBtF9IKORupVYGjhDfKGo+dQMvrEhgFIpcPINk2E
1zRvv6B2/eRrDN13n6Kztrfil3fRYOEYmbSn01W7loWGu51o2LE=
=OtA8
-----END PGP SIGNATURE-----

--PWfwoUCx3AFJRUBq--


--===============0784065889712217493==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0784065889712217493==--

