Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE551544B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:17:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:In-Reply-To:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JssfVtk+YgCo3KUpIBYInse8AlvAgdX25eqJ81XdZaY=; b=CLCohAfsyqQdNQ74mg40SlSMY
	wEgy5JrnFgjF+uT7o5pRrm0n+7+RYt4uYjTiGk2mJI2Y/qpqVphudwtXPqTbijAR0ZErGwJqDBX8s
	SexDSlK8YORvxMbTDk/lVQhIHvKEYM5ln1O1Ip/7WJ6gclS7Py/5JLBRcqt8BT4EIBJGnAG/gl96F
	JudX8WJCz9ficBPTvqV5NXmALlKPHSkbWnpubCpCOqJWnOp72MUXan/DKVFn4pWbAuyPhOUsOoaMu
	9Uk8T+PSDAK6xCKIMv0zeeNMZTDmhQiGvK7apbwO0WlVgAUpA4uIssJUAEytsaZrz0I3NJIzG2XP+
	MtnlCxFug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izh23-00082T-JD; Thu, 06 Feb 2020 13:17:23 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izh1w-00081m-Jr
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:17:18 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200206131713euoutp018e720a2666a96b292558abaf8edb1fed~w0ptElaM82902929029euoutp01I;
 Thu,  6 Feb 2020 13:17:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200206131713euoutp018e720a2666a96b292558abaf8edb1fed~w0ptElaM82902929029euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1580995033;
 bh=ltzkvw4+eIuCFDxNrkLVKaPy/upnbwDvOhh8CiLXsU4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nyKcDKUJloFKE5KvXUsvjTtTJ5vyI1JpR/3uXp3ESp6F9Z+9wPi2yaRNb4EM5WnhQ
 myy1gwr8DVl4wYm/OjlzTsnNX92xdeg7YmVGkdzoSkavYZ1o0oSlekuJNaFrKSwKow
 IvkxNUq/Ds366Ra2Cz1lUFKjVu5sCz7JSqzF4BKw=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200206131713eucas1p1fbe05100e6142d8e86375a77d8ee0c78~w0psspM9q0663706637eucas1p1O;
 Thu,  6 Feb 2020 13:17:13 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 40.98.61286.9D11C3E5; Thu,  6
 Feb 2020 13:17:13 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200206131712eucas1p15a5c38ac3dc6e05af318a9955a09e013~w0psb9I700662506625eucas1p13;
 Thu,  6 Feb 2020 13:17:12 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200206131712eusmtrp2cb7cc247483c189d12c47913d0e115f6~w0psbamAb0055300553eusmtrp2Y;
 Thu,  6 Feb 2020 13:17:12 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-31-5e3c11d95fab
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 47.8E.07950.8D11C3E5; Thu,  6
 Feb 2020 13:17:12 +0000 (GMT)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200206131712eusmtip235bcf9e1db923e8525efbe2951fcee5b~w0psQaRn-1059810598eusmtip2W;
 Thu,  6 Feb 2020 13:17:12 +0000 (GMT)
From: =?utf-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [RFC PATCH 1/4] scripts/dtc: update fdtget.c to upstream
 version v1.4.7-57-gf267e674d145
Date: Thu, 06 Feb 2020 14:17:06 +0100
In-Reply-To: <CAL_Jsq+Q8ekM8ty33fKAmffTMZ5aZDCbMUPpdup7j=UuggB9Pw@mail.gmail.com>
 (Rob Herring's message of "Thu, 30 Jan 2020 08:16:51 -0600")
Message-ID: <874kw3am99.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJKsWRmVeSWpSXmKPExsWy7djP87o3BW3iDB5MZ7HY9Pgaq8XlXXPY
 LGac38dk8X/PDnYHFo9NqzrZPDYvqff4vEkugDmKyyYlNSezLLVI3y6BK+PKnHdMBUekKv79
 aWJpYHwu2sXIwSEhYCIxawpLFyMXh5DACkaJqUt2sEE4Xxgl5jRehXI+M0pMntsIVMYJ1vHm
 1Q5miMRyRonmZRuZIJznjBKXZ74Gq2ITsJfoP7IPzBYRUJT43TaNFcRmBim6dCkYxBYWSJfY
 d/UDE4jNIqAqcePnElaQQZwCExglfk1YCZbgFTCWmHHtKRuILSpgKbHlxX12iLigxMmZT1gg
 huZKzDz/hhGkWUJgFbvEhZV7GSFudZFoOX6TCcIWlnh1fAs7hC0j8X/nfCZICNRLTJ5kBtHb
 wyixbc4PqD+tJe6c+8UGYTtK9N1sZYSo55O48VYQYi+fxKRt05khwrwSHW1CENUqEuv690BN
 kZLofbUCqtND4sc0dUhYLWGUWLxqMdMERoVZSL6ZheSbWUAtzAKaEut36UOEtSWWLXzNDGHb
 Sqxb955lASPrKkbx1NLi3PTUYsO81HK94sTc4tK8dL3k/NxNjMBEc/rf8U87GL9eSjrEKMDB
 qMTDa/DaKk6INbGsuDL3EKMK0KRHG1ZfYJRiycvPS1US4T2vbxknxJuSWFmVWpQfX1Sak1p8
 iFGag0VJnNd40ctYIYH0xJLU7NTUgtQimCwTB6dUA+P+phiz0nAr5ZOSuUp6F3ys2o/LVlrv
 qX3/TfHxDMaT2z50bo/KP1bUZ/ixd7pF1NZFlrfmHslaw/MjxLzo8QnJ1Uw3tSJt/2f+n+K0
 puHRkfNF7/ftt/99aIaBOqtql7zl3eWfem0eehUknmz4Y3XilsXJYHHBuz17vd0NYwLs9Eq5
 atMdw5RYijMSDbWYi4oTASeIqnM8AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsVy+t/xe7o3BG3iDDZv0rPY9Pgaq8XlXXPY
 LGac38dk8X/PDnYHFo9NqzrZPDYvqff4vEkugDlKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/I
 xFLP0Ng81srIVEnfziYlNSezLLVI3y5BL+PKnHdMBUekKv79aWJpYHwu2sXIySEhYCLx5tUO
 5i5GLg4hgaWMEg/u9rN0MXIAJaQkVs5Nh6gRlvhzrYsNouYpo0TLpAPMIAk2AXuJ/iP7WEBs
 EQFFid9t01hBipgFHjFKvPg/hx0kISyQKnF5wUowW0ggQOLGw+WMIDaLgKrEjZ9LwBo4BSYw
 SvyasJIJJMErYCwx49pTNhBbVMBSYsuL++wQcUGJkzOfgG1jFsiW+Lr6OfMERoFZSFKzkKRm
 AT3BLKApsX6XPkRYW2LZwtfMELatxLp171kWMLKuYhRJLS3OTc8tNtIrTswtLs1L10vOz93E
 CIyUbcd+btnB2PUu+BCjAAejEg+vwWurOCHWxLLiytxDjCogb25YfYFRiiUvPy9VSYT3vL5l
 nBBvSmJlVWpRfnxRaU5q8SFGU6BHJzJLiSbnA6M7ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQ
 QHpiSWp2ampBahFMHxMHp1QDo/VsVeNTet37v3CUGX7OLY0Jfsfpmfnbx8vw/vJy2a9Py3dI
 r44+J5btEyjLNuehqol/bap+emBIo8LEJalLY9YJPjDXbzS9/jKq0qVe5cXGv/5lz3zuamQ6
 1m9IK93z4NXPSbsdLzx9Ndt/g+qlJIaNfOu6I1w+bOJkOx0tuuhDojzX0SddSizFGYmGWsxF
 xYkAGQp7ELYCAAA=
X-CMS-MailID: 20200206131712eucas1p15a5c38ac3dc6e05af318a9955a09e013
X-Msg-Generator: CA
X-RootMTR: 20200206131712eucas1p15a5c38ac3dc6e05af318a9955a09e013
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200206131712eucas1p15a5c38ac3dc6e05af318a9955a09e013
References: <CAL_Jsq+Q8ekM8ty33fKAmffTMZ5aZDCbMUPpdup7j=UuggB9Pw@mail.gmail.com>
 <CGME20200206131712eucas1p15a5c38ac3dc6e05af318a9955a09e013@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_051716_859809_049E0F8B 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: , linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8456474445395701138=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8456474445395701138==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It was <2020-01-30 czw 08:16>, when Rob Herring wrote:
> On Thu, Jan 30, 2020 at 6:42 AM =C5=81ukasz Stelmach <l.stelmach@samsung.=
com> wrote:
>>
>> Build and fdtget and add fdtget.c to the list of update source files.
>
> Why does the kernel need fdtget and why not use the version from your
> distro?

get_console_base.pl introduced in one of later patches uses fdtget. The
script is required to build bootImage. So fdtget is required to build
the kernel the same way dtc is.

>> Signed-off-by: =C5=81ukasz Stelmach <l.stelmach@samsung.com>
>> ---
>>  scripts/dtc/.gitignore           |   4 +
>>  scripts/dtc/Makefile             |   5 ++
>>  scripts/dtc/fdtget.c             | 125 ++++++++++++++++++-------------
>>  scripts/dtc/update-dtc-source.sh |   4 +-
>
> Separate changes by updates to this script, running the script (to get
> fdtget.c), and updates to kernel files.

OK.

>>  4 files changed, 82 insertions(+), 56 deletions(-)
>>
>> diff --git scripts/dtc/.gitignore scripts/dtc/.gitignore
>> index 2e6e60d64ede..80f6b50fdf77 100644
>> --- scripts/dtc/.gitignore
>> +++ scripts/dtc/.gitignore
>> @@ -1 +1,5 @@
>>  dtc
>> +dtc-lexer.lex.c
>> +dtc-parser.tab.c
>> +dtc-parser.tab.h
>
> These are needed regardless. Probably a treewide rule for *.lex.c,
> *.tab.c, *.tab.h would be better.

Indeed, there are appropriate entris in the global .gitignore already.

>> +fdtget
>> diff --git scripts/dtc/Makefile scripts/dtc/Makefile
>> index b5a5b1c548c9..74322d8dac25 100644
>> --- scripts/dtc/Makefile
>> +++ scripts/dtc/Makefile
>> @@ -2,12 +2,15 @@
>>  # scripts/dtc makefile
>>
>>  hostprogs-$(CONFIG_DTC) :=3D dtc
>> +hostprogs-$(CONFIG_DTC) +=3D fdtget
>>  always         :=3D $(hostprogs-y)
>>
>>  dtc-objs       :=3D dtc.o flattree.o fstree.o data.o livetree.o treesou=
rce.o \
>>                    srcpos.o checks.o util.o
>>  dtc-objs       +=3D dtc-lexer.lex.o dtc-parser.tab.o
>>
>> +fdtget-objs     :=3D fdtget.o util.o
>> +
>>  # Source files need to get at the userspace version of libfdt_env.h to =
compile
>>  HOST_EXTRACFLAGS :=3D -I $(srctree)/$(src)/libfdt
>>
>> @@ -26,5 +29,7 @@ endif
>>  HOSTCFLAGS_dtc-lexer.lex.o :=3D -I $(srctree)/$(src)
>>  HOSTCFLAGS_dtc-parser.tab.o :=3D -I $(srctree)/$(src)
>>
>> +HOSTLDLIBS_fdtget :=3D -L$(obj)/libfdt -lfdt -Wl,-rpath=3D'$$ORIGIN/lib=
fdt'
>> +
>
> We never build libfdt as a library, so how does this work unless it
> pulls in the distro copy?

It is my mistake. I haven't included my scrpits/dtc/libfdt/Makefile in
the patch. I lost it when I was rebasing the patchset.

=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl48EdIACgkQsK4enJil
gBB5xAf8C4GFR8IKs8onuuEWjK96vN4HuxVsS/KmmCu6s31XfnBNeipB6lHUAsYy
O16OVGt4NNb6LNK1OgK4CwnMWEBFUg07Y5OkgzoeA87331FoGJFDrnXJy4i8BwOX
7ZfCTNUiBXxcpmd+npFMrnA1vhYy1vq+/+jjT9DU/7FWxdGhANTm2E0uAVJ3YRr1
LzfZK//UX/WhyMsM5oOxa/NPBItFH3MAb8AenS5e6TxFYHsnrSbAVNbfNs5nL+Bu
sOQPZZY1TVeuyJZrHCiEdfSTykNJNH3pR7BVweTg/Ox/qSZG1QbNP3V26/zbg5tn
bxF3V7K90LrpG6eaPRu1VdflO8S09A==
=oijN
-----END PGP SIGNATURE-----
--=-=-=--


--===============8456474445395701138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8456474445395701138==--

