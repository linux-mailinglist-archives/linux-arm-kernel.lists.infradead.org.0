Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B59EE14DB12
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 13:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:In-Reply-To:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yyTm8bP32NvYN1OqLHRAhyrc3f4D7owLkovPjW/CoE0=; b=CU8cGkXHUh66bE7pMJXHZBo2p
	RNt7gkBZmS2aAREoTu0W6X2/kppFgpY4pguj1EzvAOocFraYxQ6rh0qs0U18I1st+XZyghSapC8Zu
	RgDew5dQRhyuVHjC7TbNJPiJq2Pw149FzJF7J37VgbUpCeKKet46Ck0dArZWH7/XGyUZXj+xA9vaj
	oYj11fYRkqugjDJmCUMh2KmH8/AmtG7Te7DYFIFbgyxjWqG1m7akdY3ujVGNzQXjXd9lz98hkdN5A
	RP2LA/T07akhhf/T7HEd+qSMQmzgVzo97B+o4o2rWOCrqq+zNZ+CXgRpmOqZGflxgY1z2NmZAzmzh
	K5FSuO96A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9MF-0001Ke-KX; Thu, 30 Jan 2020 12:55:43 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9M6-0001JX-Uy
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 12:55:36 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200130125530euoutp0169780944e2ca95ab1c117262332cfc34~uq1wB6Kut0749907499euoutp01t;
 Thu, 30 Jan 2020 12:55:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200130125530euoutp0169780944e2ca95ab1c117262332cfc34~uq1wB6Kut0749907499euoutp01t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1580388930;
 bh=FbzOWLJBcSv34oJT8B2hSKDVEoNugCLHrx4OSVScfl4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Bu/0Np8dJVJcNpemMf7EwO1cNtYXlBab5dnQxE/PjGHsDWmp3IBQ35t1C+0ov6ebq
 DCEYWjbqExnuxE04daFl51kO9bozNTecK8w5ktR0zk1svExYFfaKBS/45PfJSBok0S
 3X1RhxKwBh/2TCM/KUDSob0btcErtCt+beAB//IY=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200130125530eucas1p1e5ca5f154e51606f56c82c4ba65261b6~uq1v5Iwly0140001400eucas1p1r;
 Thu, 30 Jan 2020 12:55:30 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 80.C1.60679.242D23E5; Thu, 30
 Jan 2020 12:55:30 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200130125530eucas1p282d9749764c3a5c21c85c829d372b650~uq1vi_saz0591005910eucas1p2n;
 Thu, 30 Jan 2020 12:55:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200130125530eusmtrp15a2ba543f607c10570774f791f035d15~uq1viX7Ft3069330693eusmtrp1c;
 Thu, 30 Jan 2020 12:55:30 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-89-5e32d2425547
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C5.FE.07950.242D23E5; Thu, 30
 Jan 2020 12:55:30 +0000 (GMT)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200130125530eusmtip21958aa4041acd7cfb574c706c35fd45f~uq1vVIcN72233122331eusmtip23;
 Thu, 30 Jan 2020 12:55:30 +0000 (GMT)
From: =?utf-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [RFC PATCH 1/4] scripts/dtc: update fdtget.c to upstream
 version v1.4.7-57-gf267e674d145
Date: Thu, 30 Jan 2020 13:55:00 +0100
In-Reply-To: <20200130124722.GJ25745@shell.armlinux.org.uk> (Russell King's
 message of "Thu, 30 Jan 2020 12:47:22 +0000")
Message-ID: <874kwdayu3.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOKsWRmVeSWpSXmKPExsWy7djP87pOl4ziDI5f1bLY9Pgaq8XlXXPY
 LGac38dkcWjqXkYHFo/L1y4ye2xeUu/xeZNcAHMUl01Kak5mWWqRvl0CV8bbqS8ZC16LVNzb
 38bWwPhRsIuRk0NCwERiwsnJbF2MXBxCAisYJe4+fQrlfGGUaL+2E8r5zChx4OZMJpiWGwue
 QCWWM0osPbiWESQhJPCcUWLKZ1UQm03AXqL/yD6WLkYODhEBK4kLPRogYWaBHIlLH+eBlQsL
 pEvsu/qBCaSERUBVYmIXWJhToFpi0r8rYDavgLHEr/ddzCC2qIClxJYX99kh4oISJ2c+YYEY
 mSsx8/wbRpBzJATmsUusffMX6k4Xidd3bjJD2MISr45vYYewZSROT+4BO01CoF5i8iQziN4e
 Roltc36wQNRYS9w594sNwnaU2Nc4kw2ink/ixltBiL18EpO2TWeGCPNKdLQJQVSrSKzr3wM1
 RUqi99UKRgjbQ+Lx863MkFDrY5T4fOkH2wRGhVlI3pmF5J1ZQGOZBTQl1u/ShwhrSyxb+JoZ
 wraVWLfuPcsCRtZVjOKppcW56anFRnmp5XrFibnFpXnpesn5uZsYgUnm9L/jX3Yw7vqTdIhR
 gINRiYfX44xRnBBrYllxZe4hRhWgSY82rL7AKMWSl5+XqiTCK+pqGCfEm5JYWZValB9fVJqT
 WnyIUZqDRUmc13jRy1ghgfTEktTs1NSC1CKYLBMHp1QD46p1Hct7v0ibLV/CFJzKUTbFm2vK
 8h15++YWzVyhwThrW4pqyS3dcz4uxz5O+izW9i9IjvP9/93sXVP/3DhWcFZE79XEPYbyKdm/
 jAU4Enlq5muHbxR8vHmfz/SlWtEGiteNd3HanDVws02SdLsstnWR7AJu36dGn/tfv9vAsrWl
 +nXgyr35SkosxRmJhlrMRcWJAAy8aAw6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7pOl4ziDHo+C1psenyN1eLyrjls
 FjPO72OyODR1L6MDi8flaxeZPTYvqff4vEkugDlKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/I
 xFLP0Ng81srIVEnfziYlNSezLLVI3y5BL+Pt1JeMBa9FKu7tb2NrYPwo2MXIySEhYCJxY8ET
 NhBbSGApo8TmSd5djBxAcSmJlXPTIUqEJf5c6wIq4QIqecoocf/9H7B6NgF7if4j+1hA6kUE
 rCQu9GiAhJkFsiW2/VzECmILC6RKXF6wkh1ivJXE3zdbmEDKWQRUJSZ2MYKEOQWqJSb9uwJm
 8woYS/x638UMYosKWEpseXGfHSIuKHFy5hMWmPFfVz9nnsAoMAtJahaS1CygDcwCmhLrd+lD
 hLUlli18zQxh20qsW/eeZQEj6ypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzA+Nh27OeWHYxd
 74IPMQpwMCrx8HqcMYoTYk0sK67MPcSoAjTm0YbVFxilWPLy81KVRHhFXQ3jhHhTEiurUovy
 44tKc1KLDzGaAr05kVlKNDkfGNN5JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtS
 i2D6mDg4pRoY7TUOKLvuOzuhQND4juY/q3KpOoNi4QfNhal2140lmbpm3/beXNEtvP+SSeRV
 Y33u11e2cR1x3rA0Pczy/fTG9QfrFvCFhMVGC5Rp1fBZLF6idzb0sNyWZaw6ssmTdr999v7U
 tQ2Rxc9yM6Z8m5SXdK6n8vG7gExe3p2FHxu+JNSvYE2y9lFTYinOSDTUYi4qTgQAa+uTtbEC
 AAA=
X-CMS-MailID: 20200130125530eucas1p282d9749764c3a5c21c85c829d372b650
X-Msg-Generator: CA
X-RootMTR: 20200130125530eucas1p282d9749764c3a5c21c85c829d372b650
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200130125530eucas1p282d9749764c3a5c21c85c829d372b650
References: <20200130124722.GJ25745@shell.armlinux.org.uk>
 <CGME20200130125530eucas1p282d9749764c3a5c21c85c829d372b650@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_045535_202433_191CE87A 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0019817184407791949=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============0019817184407791949==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-01-30 czw 12:47>, when Russell King - ARM Linux admin wrote:
> On Thu, Jan 30, 2020 at 01:42:30PM +0100, =C5=81ukasz Stelmach wrote:
>> Build and fdtget and add fdtget.c to the list of update source files.
>>=20
>> Signed-off-by: =C5=81ukasz Stelmach <l.stelmach@samsung.com>
>> ---
>>  scripts/dtc/.gitignore           |   4 +
>>  scripts/dtc/Makefile             |   5 ++
>>  scripts/dtc/fdtget.c             | 125 ++++++++++++++++++-------------
>>  scripts/dtc/update-dtc-source.sh |   4 +-
>>  4 files changed, 82 insertions(+), 56 deletions(-)
>>=20

[...]

>> diff --git scripts/dtc/update-dtc-source.sh scripts/dtc/update-dtc-sourc=
e.sh
>> index 7dd29a0362b8..8db277546785 100755
>> --- scripts/dtc/update-dtc-source.sh
>> +++ scripts/dtc/update-dtc-source.sh
>> @@ -31,8 +31,8 @@ set -ev
>>  DTC_UPSTREAM_PATH=3D`pwd`/../dtc
>>  DTC_LINUX_PATH=3D`pwd`/scripts/dtc
>>=20=20
>> -DTC_SOURCE=3D"checks.c data.c dtc.c dtc.h flattree.c fstree.c livetree.=
c srcpos.c \
>> -		srcpos.h treesource.c util.c util.h version_gen.h yamltree.c Makefile=
.dtc \
>> +DTC_SOURCE=3D"checks.c data.c dtc.c dtc.h fdtget.c flattree.c fstree.c =
livetree.c
>> +		srcpos.c srcpos.h treesource.c util.c util.h version_gen.h Makefile.d=
tc \
>
> This looks like you're dropping yamltree.c.  Is that intentional?
>

Not it isn't. Thanks. Fixed.

>>  		dtc-lexer.l dtc-parser.y"
>>  LIBFDT_SOURCE=3D"Makefile.libfdt fdt.c fdt.h fdt_addresses.c fdt_empty_=
tree.c \
>>  		fdt_overlay.c fdt_ro.c fdt_rw.c fdt_strerror.c fdt_sw.c \
>> --=20
>> 2.20.1
>>=20
>>=20
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> https://protect2.fireeye.com/url?k=3Dc03cfed5-9df03751-c03d759a-0cc47aa8=
f5ba-45d60c6701b8fc7a&u=3Dhttp://lists.infradead.org/mailman/listinfo/linux=
-arm-kernel

=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl4y0iQACgkQsK4enJil
gBA9RQf/SNe+aQyxvKSVvcF48oJ+R39y5dG1jtl3Rkp+moKLHvcE4LjFbK7igxGz
3wf0i6ByANZcS2xZkxK7wQTRIk3wl9Tjug93SxckMKGKyUthZ+n7jdaivDmmnoO1
efkgfbxC12/Q37C+G1cAafgRctD0mb1cabPlVQAw90bG9GaPzzpDpR7FnSsThcba
H6Mw56FEwdKvo+Os5tw8ePwMUNtT4O1UJjsEeTw21DTwClKuZUdaaJ3ktPFGVYcY
x/Xt9cHvOLZjozJuJhgvmeu0TfMwp4BeUX9qYq2W3l7dSMJdBnomOLR8n6T1WAW5
85YBsvT6R9YZeAvmvYiG320HY0+Dgw==
=Kodj
-----END PGP SIGNATURE-----
--=-=-=--


--===============0019817184407791949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0019817184407791949==--

