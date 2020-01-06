Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E79891313C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 15:36:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/5BgANPYC8WcB56TqU2rnIR7LqjhWEWnbNHXMNiF8ho=; b=heopklMC942eq8rojg4EGzZL4
	MLMIiXeXZVkiyFQwI7HkLvcoxET0wT6nsCsBT8sDBQ8S2NBbbRoKW5Fg1ou5P4+N3yTaoLsZL2xT4
	tHhRDj95gJ4TLNk7PskamxwzPOLDiI3UwJDRibKYqzHVXDXDQu5at9YH1bZ06e7Ap6FFp1IoAqOmk
	vgoMw3YDleXqUcblyizrPCxaURa1IKcSFNJxA85Xuqun6iS9/9dl12hA8wZUIf939XrjVCQxst7bN
	kJxLuG2Hjnz4XrXyGJgUSFa6z0U0VuUZaqWQW31m7bAxPJI9W5/8gog1/QP0c05G5TG3tmzIPLw30
	QyUqXz50w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioTUI-0006Gd-67; Mon, 06 Jan 2020 14:36:10 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioTTo-0005zn-10
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 14:35:42 +0000
Received: from localhost (p54B338AC.dip0.t-ipconnect.de [84.179.56.172])
 by pokefinder.org (Postfix) with ESMTPSA id 576212C0686;
 Mon,  6 Jan 2020 15:35:39 +0100 (CET)
Date: Mon, 6 Jan 2020 15:35:39 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: i2c: at91: cosmetic formatting of
 compatible list
Message-ID: <20200106143538.GG1290@ninjato>
References: <1575886763-19089-1-git-send-email-eugen.hristev@microchip.com>
 <20191218213716.GA30887@bogus>
MIME-Version: 1.0
In-Reply-To: <20191218213716.GA30887@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_063540_246940_DB5C83CF 
X-CRM114-Status: UNSURE (   7.99  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org,
 Eugen.Hristev@microchip.com, Codrin.Ciubotariu@microchip.com, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5567679202116714795=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5567679202116714795==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G44BJl3Aq1QbV/QL"
Content-Disposition: inline


--G44BJl3Aq1QbV/QL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 18, 2019 at 03:37:16PM -0600, Rob Herring wrote:
> On Mon, 9 Dec 2019 10:19:59 +0000, <Eugen.Hristev@microchip.com> wrote:
> >=20
> > From: Eugen Hristev <eugen.hristev@microchip.com>
> >=20
> > Format the list of compatibles with one compatible per line.
> >=20
> > Suggested-by: Peter Rosin <peda@axentia.se>
> > Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> > Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Applied to for-next, thanks!


--G44BJl3Aq1QbV/QL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4TRboACgkQFA3kzBSg
KbbclRAAm2+DMARlhfiRHkwpy6DngebAhoTyl6NBSUEMGtj+HDYSWSH9qlskh54q
B8xb/31ICwgLWNN8oszpO2ctFyL+yYWfseLcSBw4FmiMXJ8YYe2j96VHHvyNsx2t
We+lehY+p1K5e3o5PJhoNTrAuv4ZYMd4qAioLr39nqUcxQ5RcTLALvbKkbu6Dsf5
Bw3I/SiuVkFOFEKHpBt2eqPDyuva5ntJ7TSSQaEftGUOyFWED0mh207w0wp9hfOf
+YmAa714rEKAcXqhzXw8qANmRB3MsGwaWlap9bC8Zj3gmwfszrhkD7MIkatkv2rJ
0VlTdk2YAQ+FJqBJGLF5tl9cL40/Sarb0W0Dt/mPRjgwRXKnAUoVEuyC4AD2NouP
4F8TQi+wPxNi/YZ04NuOdOx0aqSIomHjAJMIXMt8RaoYwQ2m8F8II/kbjqQ7LVO0
dWOC/1XRRGboxZLUjz5LQ2w6psvYf8JoOeBT/J3UqTt6sZTI3MpDYsUpvb+Fqiu3
3FRmzRYOEH4obZvDoO2BBqs1RE5hcw582KLO9J+Zqy3LZRJ3oNeCoNR7T3csRywm
q8frEUJyV0Mu5vel2teDPDrPLfgqfi45rL1ogJv/s2NnxXd74jzDl3aF9k29jcF/
Tg0fZCfRkyWA8XLVuAqSfppcEKjF5WcsG480+ubEqSqD15e+cAo=
=mR/+
-----END PGP SIGNATURE-----

--G44BJl3Aq1QbV/QL--


--===============5567679202116714795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5567679202116714795==--

