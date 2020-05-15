Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B14CC1D4C15
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=x26AfOFqXNzl+w90Ox+Zrajx7cTASs5471+362Tqab0=; b=YOWSXmVyMErP/k
	iL10dRBpATwtN6waoYazmR7nNz4l9mjLa/6G2BAGnNJdUgkEjHOVlg885UMtDW5HqYoMxE66ebJBo
	s1DwfrmT5ln4yxfM+d7HaRHW7rliAZFtpMsxSXpX0Sk2R/WPHGpQsob+OHjBiUpu0YWyFM7NP2VMp
	r5TChOVv2tN5/Xp9HkKfw6mJlC3cObXqLg+dy4MKNooHfLzeXZYE4Vtr5p6EuRM9cJ3x6j46IWrNe
	KJokKMG/tkLZNjR0Q8IaQOuIlEtwWizgSkc5mwr87ciL7VZElyPHSJNGlf3WK03LmlTF7FEg/emyG
	DtA/wxsuBWf1O2yfr99g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZY9K-0001Nj-Mo; Fri, 15 May 2020 11:05:06 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZY4U-0002hI-6Z
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:00:10 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200515110003euoutp027155537899dab3c0d17cfd16c405ca0d~PLpMqg6-w1429214292euoutp02J;
 Fri, 15 May 2020 11:00:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200515110003euoutp027155537899dab3c0d17cfd16c405ca0d~PLpMqg6-w1429214292euoutp02J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589540403;
 bh=u96tf/lf84rTvkxFVULsNIo4JxOyg98nNfFZ0ZqaRHY=;
 h=From:To:Cc:Subject:Date:References:From;
 b=VxKMdtB6ruuswNJT/KWPNOAm0h8POgMEbKOxF9rhqNUkjuCbCdjMqWTRl2RPhxz57
 Os2WKp1juIlwBFpNCfWcZ5qTBqX9Rya1IFb7qzwIE6m80BCglb8NQo3Sj2bsteHxjp
 lsyX4Rv2/wNkAYeW/e/c0a+lIYJ/cBpZPm96WzEQ=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200515110002eucas1p19dc80a5db02589f53d3a20ef60f387ca~PLpMSo7Mh3131731317eucas1p1W;
 Fri, 15 May 2020 11:00:02 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 33.89.60698.2367EBE5; Fri, 15
 May 2020 12:00:02 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200515110002eucas1p136759396d9b61f214d1f14856c009501~PLpL6haeA1854818548eucas1p13;
 Fri, 15 May 2020 11:00:02 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200515110002eusmtrp2ee4e473afee7499807c6dff0e0748c3c~PLpL5k6Ts1230812308eusmtrp2u;
 Fri, 15 May 2020 11:00:02 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-bc-5ebe7632ecf8
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 2C.C0.08375.2367EBE5; Fri, 15
 May 2020 12:00:02 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200515110002eusmtip13a2ee4ecca8d54da3c99d8dfc1d00a1a~PLpLvgV0e2724027240eusmtip1K;
 Fri, 15 May 2020 11:00:02 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: Stephan Mueller <smueller@chronox.de>
Subject: Re: [PATCH 1/2] hwrng: iproc-rng200 - Set the quality value
Date: Fri, 15 May 2020 12:59:45 +0200
Message-ID: <dleftjv9kx79b2.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SWUwTURTN6ywd0ZKxaHqDRmPVKBrBLfrEJZIQMzFx+dOYiFYZcWGKaQH3
 gBvYVlBrUBlFURQQpMVSi4BSbARElLpQ9QNtYnGhoNQ1iqJSpyb+nXvOPefde/MYQnmWjmQ2
 aVN5nVaTrKbDSEfTd/eU6en1CVPtmRNxv7lJjq+eslK4IqeRxG5DCYH73t+W4/1FVhqb/CPx
 EV83gd3uSjm2+Z5Q2Pviuww/rj1D41PuehkuPN5J4UJHLsKv8qto/L68E+G81goSN98xEAsj
 uB99ZsSJ3vs097G9XcbViM/lXJHNSXOOhvGcrcxAc86CK3Ku6mIGl2svQ1xuVyXirHYPye27
 m01xn2yjloevCpuXyCdvSud1MQvWhm00e2+RWxvY7fliI52JbiqMaBAD7EzwfvwiN6IwRsmW
 Ivga6KGk4jMCa9leUio+Iei/94H6Zzlw7GlIKEHQ7amTScUbBCWGLNqIGIZmo6GiYmXQMIyN
 Ak/2OTrYQ7BtFPw8/YgIChFsPDwyHZMFMcmOh9sBHwpiBTsbTOW//vLD2Tlgf+uVS/xQaMnv
 JIOYYAXId/egYCiw7Qw4C0RSGi8ebpmqaQlHgL/ZLpfwSPhdc04WHA7YDDhuniV5DyNwnPkW
 8s6Fjra+kDcOmqrbKak/HJ69Gyq9Gw5mx0lCohVwKEspdY8Dy5EboZRIyPGXIglz0N3yJnSs
 gwiKruWho2i0+N864n/riAOxxMC9rLUxEj0Zis93ExKeDxZLL1mIqDKk4tP0QhKvn6Hlt0Xr
 NYI+TZsUvT5FsKGBn9r6q/nLdVT/c50LsQxSD1FMzbuZoKQ06fodgguNG0h6WVn+AEWS2hQt
 rx6mWGqtS1AqEjU7dvK6lDW6tGRe70IjGFKtUsy40LVaySZpUvktPL+V1/1TZcygyExU2e+L
 Kn6sEvY9VMUleLZvjnDGioIpgH/HrO1ackdY3nEpLjsjs4UmFxurVlxLK73/Whjjik111rge
 pgcsBcuMs817L1yP2d3aZun84fP37rnR9dVbd7Bjg7txcrVoCkwakbUzcd2iE3G1Pt/gCbHz
 4nsKZqkacsZe7t3V4jH4P6tJ/UbNtEmETq/5A2h510axAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+XYum8vl5zT8GCE2NKho80xt3yKrP4wOhFEUYTdt6EFDt8k5
 m2V/VKRhalkalg5Fwy6ozdk08ZJzmrcysTIXXUxJpbKoKLLSijZH0H8Pz/N7X94XHgkhL6UU
 ksNGM8cb9RlKWkoO/RkYX6vJciZG3jgbgH+X9IvxrTI7hW3n+kg8kn+DwPMfe8U4p8ZO48LZ
 5fj81HsCj4w0irFjyk3hiVc/RXi0vYLGZSNOEa6+OE3h6pYigGfKm2j8sX4a4NIhG4kHBvOJ
 zUHswnwJYK0TwzT75ckTEdtmHRezNY4umm1xRbCOunya7aq8KWabrp5gi5rrAFv0rhGw9uYx
 kj11P49ivzpCdyzdp9rAmyxmLizNJJhjlfsZrFExOqzSROtUTJT24HpNjFK9cUMKl3E4i+PV
 Gw+p0komuslMFzxabu2jT4JOWQHwkyAYjXKLn5IFQCqRw2sAvbS1ggIg8QQKVFuZ6mOC0C93
 Ae1jZgA6/XyS9DI0VCGbLcHLBMNVaCyvapEhYDuFXhS6KW8QBOPQ48JikVfLIYM6F7pJryZh
 BOr9PAW8Wga1qLD+zyKzDOpQ89sJsc8PRPfKpxd5Aqajb/VviAsgwPpfZP0vsnpOIjx32NvV
 PnsNun7lPeHTsaih4RNZDag6EMxZBEOqQWBUgt4gWIypqmSTwQE8NWjp/9nUCh7f2tUDoAQo
 /WWRpZ2JckqfJWQbekC4Z83rxvqHQEEaTUZOGSzbbu9IlMtS9NnHON6UxFsyOKEHxHh+KyYU
 y5JNnoIZzUlMDKPFOkYbpY1ah5UhsjOw+4AcpurNXDrHZXL8vzmRxE9xElQNDCbowyyjqCOn
 xT+EyRX7P+/YUxuR65JOzQ1u6bhs3Dr8fVZ7ZLc7+nhzReylOF7qRKN3wrcNb74b6qxR971b
 oJLIZ2Od+9xu16sZ+MHv0e0U197c8DyncsXKedeHyXjFjyX3s+Gk1BD64LV2VpfJnw1Ma2ib
 uxKrjtfs3KQkhTQ9s5rgBf1fexr2PigDAAA=
X-CMS-MailID: 20200515110002eucas1p136759396d9b61f214d1f14856c009501
X-Msg-Generator: CA
X-RootMTR: 20200515110002eucas1p136759396d9b61f214d1f14856c009501
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200515110002eucas1p136759396d9b61f214d1f14856c009501
References: <3640422.T8yoyu11Ch@tauon.chronox.de>
 <CGME20200515110002eucas1p136759396d9b61f214d1f14856c009501@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_040006_718814_BE68132F 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: multipart/mixed; boundary="===============8858186013719015508=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8858186013719015508==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-05-15 pi=C4=85 11:10>, when Stephan Mueller wrote:
> As I mentioned, all that is or seems to be analyzed here is the
> quality of the cryptographic post-processing. Thus none of the data
> can be used for getting an idea of the entropy content.
>
> That said, the ent value indeed looks too low which seems to be an
> issue in the tool itself.
>
> Note, for an entropy assessment commonly at least 1 million traces
> from the raw noise source are needed.

I've got 1MiB from each source. Of course I used raw data from /dev/hwrng
for tpm, exynos and rng200.

| Source       | ea_iid -i | ea_iid -c (h') |      ent |
|--------------+-----------+----------------+----------|
| /dev/random  |  7.875064 |       0.998166 | 7.999801 |
| /dev/urandom |  7.879351 |       0.998373 | 7.999821 |
| tpm-rng      |  7.880012 |       0.998118 | 7.999828 |
| exynos-trng  |  7.435701 |       0.947574 | 7.991820 |
| rng200       |  7.883320 |       0.998592 | 7.999824 |

> See for examples on how such entropy assessments are conducted in the LRN=
G=20
> documentation [1] or the Linux /dev/random implementation in [2]

Thanks a lot, I am reading.

I will try to write somthing clever as soon as I parse and understand
these documents (and do other stuff too). Thank you very much for your help.

Kind regards,
=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl6+diIACgkQsK4enJil
gBC/FQgAl9V5sUO9+a2EU1F1GXcue3fCC/itZ51mkOzD/1FjoM/tCPmsd3cVlfm8
aiJxFzyQoZ8KqLSfZ+ccmg1XnMCrfc/MPUBqWznbtGeUKx/9esy9mx9PzU+1lZhm
9BCYRnHqyUh+6nJo3hkNYErHCfJRhqtsUcYgQ0oesY2pFaDNK2Bbp2owbsKywYlN
8S66mCKhuiFxPAQtEmdn3ftLO29WPdGD9tF+ADWRGEafXGQAG57oSJlWCydXV+9Q
krMWf5XwwUgJ7SYQcRgdM2df2hWloZ0xTa3lMPC0i6/8R0u4Jb7AsvLASwLxEGJe
8z+Fu9i/NvLcbuZjrsknq4XpbavSgQ==
=HWTY
-----END PGP SIGNATURE-----
--=-=-=--


--===============8858186013719015508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8858186013719015508==--

