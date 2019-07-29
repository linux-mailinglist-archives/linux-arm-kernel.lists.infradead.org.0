Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB27789D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 12:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6Vz0IgKY/niboSr9RndNM3MG53nFjP5eHl71akImDao=; b=Yio+I8T4iyp1cn9X5d1+aKC9A
	82i4QFJ/ZdzxNitbx1F46eJuej84ccPp/DAEidrgXQ0o+pd3h0m1yNp3ALSjYCPQ3HRmutLQSCFrC
	ekrS6zJB34SHnOmpHTR5mg9TlisyuuTMnMjVDUzMVPrpHp9ru9ehMeIm7yOlS0VX9Vpa6IudQwMyw
	BTeQ6AuwY6j6Ksnvu2S+cqe/Qqk0uzPLs47pZ1l3gc2QAnlx2RYfieyo+icXbgQqkf3yyBnpgRzCt
	R+VGrSr4czzHyP+BcH3Y/WzUywUIGEt4DzH8kFA7BmD6bUCTS8qkA91v80uO6SjLHkOm0eo/1fwGO
	BH3zqDhwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3Fm-0007zH-CO; Mon, 29 Jul 2019 10:51:42 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3Fe-0007yg-1c
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 10:51:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fp98NvsVQHW4OteUr6DoqjsManneTqzSgEmj4Sv6NWQ=; b=TlrwPKA0cPSJXmi/CZ25ALugV
 fwE4t4puANsJwlT545pg2qTFU4B+9F6GQ/3Vul5hbHisbMVARhBjcbRa24Zv2oXN2VB6YsUcDLK7Y
 dOD+aHReKKAGSf3i1gXHw5qn1blH1XnwlHIny424vFxgYHzeNuB35PUh3wafro2dQtaC8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hs3FW-00048A-Dm; Mon, 29 Jul 2019 10:51:26 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 641832742B59; Mon, 29 Jul 2019 11:51:25 +0100 (BST)
Date: Mon, 29 Jul 2019 11:51:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [RFC PATCH] spi: tle620x: remove stale driver
Message-ID: <20190729105125.GA4787@sirena.org.uk>
References: <20190728161304.32022-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
In-Reply-To: <20190728161304.32022-1-yamada.masahiro@socionext.com>
X-Cookie: A man's house is his hassle.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_035134_089679_7ED5432D 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Ben Dooks <ben.dooks@codethink.co.uk>,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3885012877779522238=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3885012877779522238==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zhXaljGHf11kAtnf"
Content-Disposition: inline


--zhXaljGHf11kAtnf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 29, 2019 at 01:13:04AM +0900, Masahiro Yamada wrote:
> This driver seems obsolte because this driver needs platform data
> but no one in upstream passes it.

I've not noticed this driver getting in the way of anything?

--zhXaljGHf11kAtnf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0+z6wACgkQJNaLcl1U
h9A8iQf/WUaWbus2/y56hSB5wgIdbmnLdlQKFIbOiLlLCvTHg1+B16u4ggqtmNNy
i/LxhIXJHljhPSB5UqNvqGbUUfJPqlC6EjP/VH9Se25srhYgCzNetng4TSJgUhf6
mPx38/UCRMss9iggUIlCcZlwum4olpdkChGQCKbRpJYiJEmAT4/iiNdRbOhNVGor
w75RTowSMbKKwzSw/vcrpZiyH+XV2xoRGiDRAR2yltKK84yEEvRd8LsiZnYtKm/f
oEVeTbr2aM5P0EmyoTUN6waKMEHyUKDfiYI8fPqh+YIqEUM1cGor0tRyQUFah9G/
+M/W7SX1YG7bE4+hsWQjfNpfkAxf4Q==
=+NF+
-----END PGP SIGNATURE-----

--zhXaljGHf11kAtnf--


--===============3885012877779522238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3885012877779522238==--

