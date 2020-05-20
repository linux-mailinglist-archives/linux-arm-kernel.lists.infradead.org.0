Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A49FC1DB07B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 12:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:Date:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=esb00XWseJ2Oftt86LJNFNwtbWgVa6b2nX75nEbD0hA=; b=k+lt/HVZsffGlsrnliOMYKeGN
	SSHa8izjOZRx+vW6GAQRnblHv/YhdxqdEqWsdWUngcriDwHZDbPc4sAM6G/bXea6Y04QyTOXR8rZB
	jbK7d6mYIB8k2HmzhCZ9aq7yxhsmJoHRrIBA4wybEXXUxI8FRT4772uTiAH3LJdpoIEWU4ll8VsiS
	b3+rwLdFLGbzp+GVRepj5cb+WcS28yh9S5/MpnMdXM4GPwAlYcUnUcb4pDmilvu5EgQ0mb0+sILgd
	Pwlu9iZUV9IzVGx8DgsxSZZM6Hk79NGNhTHm6KySCByqVa8c9/W1KeKmuiinj2AsnHBUfiDcAtBYs
	7NmzRvpPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMDq-0005t7-Oc; Wed, 20 May 2020 10:45:14 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMDV-0005s6-3n
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 10:44:55 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200520104449euoutp015d4f975969ddb3980840e7e9323d320c~QtqVaNobS2434624346euoutp01H;
 Wed, 20 May 2020 10:44:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200520104449euoutp015d4f975969ddb3980840e7e9323d320c~QtqVaNobS2434624346euoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589971489;
 bh=6CPRq4ULqK4ssuhc8hx4tHsC9pvXqnG/nhCQu807Mtk=;
 h=From:To:Cc:Subject:In-Reply-To:Date:References:From;
 b=lT0Mu8TQU3QCwLx2oV5ASGQJ3uKAscQvHrBQSsj0MR4yRsBXvPJbfWuX43I87MgBk
 m+sNlwdWS7YwHp+PLLu0XX4l7Te3dJvJAYDwAkgzIfrWT5a9H04jKLQFJkFL/OdiQC
 QkSn31bItydkK67cFhQmVASPbWJWhjaEqQQ3HTxY=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200520104449eucas1p1f58225b60dd7909e0c145619450697ae~QtqVABDTY1237912379eucas1p19;
 Wed, 20 May 2020 10:44:49 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 95.24.60698.12A05CE5; Wed, 20
 May 2020 11:44:49 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200520104448eucas1p122e9a8ed84d5276a1b796e10ef5e1964~QtqUjLTwx2400824008eucas1p19;
 Wed, 20 May 2020 10:44:48 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200520104448eusmtrp288e8ca9495b3f2c380cd4d434cf8a5f3~QtqUiYFfW3067630676eusmtrp2T;
 Wed, 20 May 2020 10:44:48 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-86-5ec50a2171d9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D7.F9.08375.02A05CE5; Wed, 20
 May 2020 11:44:48 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200520104448eusmtip17a58f4a9cc7f66dd304079cdd8c37cee~QtqUYUA4n2150821508eusmtip1I;
 Wed, 20 May 2020 10:44:48 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Stephan Mueller <smueller@chronox.de>
Subject: Re: [PATCH v2 1/2] hwrng: iproc-rng200 - Set the quality value
In-Reply-To: <15745285.MnsZKaK4VV@tauon.chronox.de> (Stephan Mueller's
 message of "Wed, 20 May 2020 11:18:32 +0200")
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
Date: Wed, 20 May 2020 12:44:33 +0200
Message-ID: <dleftjh7wa3my6.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SaUwTURDH87rb7dJYshTUERW1AY0aQcXoMx7RaHSJmEjCBzSxUnUDBFqg
 BTwTDyKHCGLxoqJUMJSU07VWMF7BAy9Y5DB4olijtIp4JYp4tF1M+PabN/Of+c/k0YSyggqk
 E3RpnF6nSVJRctJ+56cwa4r8tnr2icxR+LfxjgyfP1knxTX5t0ks5FoIPNh/S4Yzy+sonOec
 gA+/cRFYEOplmH/zWIp7Xv6U4I7LJRQ+KVyTYHORQ4rN9gKE3xZfoHB/lQPhYw9qSNx8N5dY
 5s/+GjQi1tTTQrFfOjslbKPphYwt569TrP1GCMtbcyn2+ulqGXvh3B62wGZFbEFfPWLrbF0k
 u/9+tpT9yget890gX7yVS0rI4PRhS2Pl8VVl7SjFFbT90vmUvej1uIPIhwZmHvSbh6iDSE4r
 mUoEfe1HSDH4huDcq4Hh4CuC7C4j+i9pK+GRmLAg4J2CRAzeIcgTPrklNE0xoVBTE+MRBDDT
 oSu71DuDYFqlMHSqnfAk/JnVcLa7gvSwD5MBQ88+eHk0sxBs73tkHiaZEHj7ZMDLCmYBPBUc
 EpH94F6xw1tPMFooFj54HQHjoMGa1Ut4TACzEu51Bomu/cHZbJOJPAH+NpZKxJI9UGScL0oP
 IbCX/CDFmkXwvHWQEmuWwztBLaIvdH/0E6f6gtF+YniQAnKylKIwGGoPXxluEgj5zsrhs7HQ
 97jFa0DJZCH4XplaiCabRuxiGrGLyd2VcB+u7nKY+DwTKs66CJGXQG3tJ9KMpFY0lks3aOM4
 Q7iO2xZq0GgN6bq40C3JWh65f+yDP83fG9C1oc1NiKGRapSiu/GmWinVZBh2aJtQsLtTb31V
 Gwokdck6ThWgKHzfpFYqtmp27OT0yZv06UmcoQmNp0nVWEV4Wd9GJROnSeMSOS6F0//PSmif
 wL0IzEfuN+RUJ7jYdsuuSWPW9qyLy4ox2Q6Ydn9OSosK57tuqZ2tUyIS5047Gp8zvtq1bL11
 TkzRltqo55acxNi2A8URl2Ijj/MKv/U/stOjLzZ2tKWuebhw36Or0asjQqpWqKc6LZoA5/a5
 YRPTolc1TB/IPbNrZWT5itgbeeN8yZbMBSrSEK+ZM4PQGzT/AH+j0Fi5AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02SW0iTYRjHe/cdNq3F25z1tkpkWFTWp99M9xoaQURfF0mHG8m0hn5o6DbZ
 t83qotIubNN0GUEuLcvU0nQ6RcsO5kxnJ2ZmkoVZHig1LIwusuPmCLr78fz/z5//A4+EkF2m
 FJLDOiNv0GmylHQg+eS3e3hjaGB3SmTXUCT+VdIjxk0XHBSuP9NNYo+lhsBzMw/F+FSlg8YF
 Uytx8dg0gT2eRjF2jg1SeOTtdxF+0V5G4wue+yJccW6cwhWtRQBPlDbTeKZuHODzT+pJ7O61
 EFuDuB9zJYCzjzyjudmBARF32z4s5iqdHTTX+mA156y10FxH+U0x13ztBFfUUgu4oslGwDla
 XpJc3uN8ivvqDNm9eD8TZ9CbjHxohl4wxiuTWKxi2FjMqDbFMmyUOnmzKloZsSUujc86bOYN
 EVsOMRl1V/tB9nTIkbam7JPg/XIrCJAguAn1lTmBFQRKZLAKoJs/u2krkHgFBbpRnu73BKGf
 g1baxzI4AZDbbfJZaMig+vpE31gO16GX+ZdpXwwB2yn0pmCQ8glBcAe68qqa9HEANCPL0zGR
 P0eF8q7bgI+DYSxq+Tgi9jEJV6OJoS/zLIVq9NozLvLzEvSodHw+h4CZ6FvdB8IGoP0/yf6f
 ZPfWI7ydHO0R/nE4qr4yTfg5HjU0fCYrAFUL5LxJ0KZrBZYRNFrBpEtnUvVaJ/A+RGvP9+Zb
 oL9pnwtACVAukkbe7UqRURqzcFTrAmHemNHGuj6gIHV6Ha+US20fXSkyaZrm6DHeoD9oMGXx
 ggtEe+85SyiCU/XeV9MZD7LRrBrHsuoodVQMVi6TnoadB2QwXWPkM3k+mzf82xNJAhQnwaqm
 uP6uXSZX2ackOVMaP6UgckpSy8y1l17ERe99vnTBtsUxk1mf9zRutazLkZOuDQNtaxZ+yVix
 PeF4SEt7+EUn3HeiN4bdeel64WxebrG5YdrdE1M42xtlW6vMdSQasneJCn91zP3prAm7d27F
 +VzHHRVIqAoZLep7Z3QkF5aHKkkhQ8OuJwyC5i8OYmq8MgMAAA==
X-CMS-MailID: 20200520104448eucas1p122e9a8ed84d5276a1b796e10ef5e1964
X-Msg-Generator: CA
X-RootMTR: 20200520104448eucas1p122e9a8ed84d5276a1b796e10ef5e1964
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200520104448eucas1p122e9a8ed84d5276a1b796e10ef5e1964
References: <15745285.MnsZKaK4VV@tauon.chronox.de>
 <CGME20200520104448eucas1p122e9a8ed84d5276a1b796e10ef5e1964@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_034453_360899_63F246A1 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Stefan Wahren <wahrenst@gmx.net>, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Markus Elfring <elfring@users.sourceforge.net>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2732219845815996210=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2732219845815996210==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-05-20 =C5=9Bro 11:18>, when Stephan Mueller wrote:
> Am Mittwoch, 20. Mai 2020, 11:10:32 CEST schrieb Lukasz Stelmach:
>> It was <2020-05-20 =C5=9Bro 08:23>, when Stephan Mueller wrote:
>>> Am Dienstag, 19. Mai 2020, 23:25:51 CEST schrieb =C5=81ukasz Stelmach:
>>>> The value was estimaded with ea_iid[1] using on 10485760 bytes read
>>>> from the RNG via /dev/hwrng. The min-entropy value calculated using
>>>> the most common value estimate (NIST SP 800-90P[2], section 6.3.1)
>>>> was 7.964464.
>>>=20
>>> I am sorry, but I think I did not make myself clear: testing random
>>> numbers post-processing with the statistical tools does NOT give any
>>> idea about the entropy rate. Thus, all that was calculated is the
>>> proper implementation of the post-processing operation and not the
>>> actual noise source.
>>>=20
>>> What needs to happen is that we need access to raw, unconditioned
>>> data from the noise source that is analyzed with the statistical
>>> methods.
>>=20
>> I did understand you and I assure you the data I tested were obtained
>> directly from RNGs. As I pointed before[1], that is how /dev/hwrng
>> works[2].
>
> I understand that /dev/hwrng pulls the data straight from the
> hardware. But the data from the hardware usually is not obtained
> straight from the noise source.
>
> Typically you have a noise source (e.g. a ring oscillator) whose data
> is digitized then fed into a compression function like an LFSR or a
> hash. Then a cryptographic operation like a CBC-MAC, hash or even a
> DRBG is applied to that data when the caller wants to have random
> numbers.

I do understand your point (but not entirely, see below). [opinion]
However, I am really not sure that this is a "typical" setting for a HW
RNG, at least not among RNGs supported by Linux. Otherwise there would
be no hw_random framework and no rngd(8) which are suppsed to
post-process imperfectly random data from HW. [/opinion]

> In order to estimate entropy, we need the raw unconditioned data from
> the, say, ring oscillator and not from the (cryptographic) output
> operation.

Can you tell, why it matters in this case? If I understand correctly,
the quality field describes not the randomness created by the noise
generator but the one delivered by the driver to other software
components.

> That said, the illustrated example is typical for hardware RNGs. Yet
> it is never guaranteed to work that way. Thus, if you can point to
> architecture documentation of your specific hardware RNGs showing that
> the data read from the hardware is pure unconditioned noise data, then
> I have no objections to the patch.

I can tell for sure that this is the case for exynos-trng[1]. There is a
post-processor which I have forgotten about since writing the driver,
because from the very beginning I didn't intend to use it. I knew there
is the software framework for post-processing and simply didn't bother.

With regards to iproc-rng200 I cannot be sure.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/drivers/char/hw_random/exynos-trng.c?h=3Dv5.6#n100

Kind regards,
=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl7FChEACgkQsK4enJil
gBCsvQgAhq2NdaCOe4RS5Cfyu6s7rYJIijngIdzcEg3V+VmN2vniWJYNobIUL8S6
et4cCzQKSbxw/FgDCmZKpffRz7Md+98M4hpkWCfuhqhXj8kXV8e5Oa7QAyMo6H+s
kpATmCe9Jkbx8K4ufD5bDnON6kv8dP1iJMOdkoiIN7F/HvTbuIgW33XoP+n8IU7o
QRuNwK+C8IhgOppNU6fPYLUcBVtIvW4wplMc5mEZQNNIsRSPH7pNgK8X6BihA3eR
j2BsGU3dv7tfVvVTV7EZ/k1lmFWwd3lusLirmrHly9Hodsfj4AWmLRorgnCBCM7D
gGwIZrzGXyx9M54bg+LoADhurlMakQ==
=CU9M
-----END PGP SIGNATURE-----
--=-=-=--


--===============2732219845815996210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2732219845815996210==--

