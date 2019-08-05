Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A96981196
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 07:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wXsegqvNv4N8+P7rkR8l11AayrhUB2TQIz4ydGEyQrU=; b=L+HtvcBqHwK/Op4zg5CDZivgb
	chy/nxS9/QTIAk7Iohn4LnF8rH09/c0BkyTGQviyHCEMPQb3ndpWSvHZ5TdkQm8dPFoOl0yb3gWWG
	6Q+00J2mgNn1Bmx9fOY+kLHmg+8iMO5PHvcDzALu3zCDFnv9fCpK6evIwMaVKmw5kn7pv201hBAEn
	+dpcQYTEF01Y9JaGOy6cj+h7gdv8AiWd2eGQLd4+qudgiLEFWuQf/Sqe83IaUOQkUnVJO82Hgk9dx
	fc2zmkXMF39rXCcwrwWRhMQ6/2aOi1+7dGhq6tYeW6MH/mJQO4YUBSt+JCXOWL3R4cF7E3sMZpl18
	TqOKexl+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huVWM-0002z3-78; Mon, 05 Aug 2019 05:26:58 +0000
Received: from mout.perfora.net ([74.208.4.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huVUJ-00008S-1o
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 05:24:53 +0000
Received: from [192.168.0.104] ([71.197.225.149]) by mrelay.perfora.net
 (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id 0MQ4iz-1hy47N0Iz5-005L9b; 
 Mon, 05 Aug 2019 07:24:42 +0200
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
To: Chen-Yu Tsai <wens@csie.org>
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
From: Sunil Mohan Adapa <sunil@medhas.org>
Openpgp: preference=signencrypt
Autocrypt: addr=sunil@medhas.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
Date: Sun, 4 Aug 2019 22:24:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
X-Provags-ID: V03:K1:aMEKiFu6cpjEJB8hSYADkby82P501U3RlvxGWnOu726ZePnW91B
 PdTxZRaJ2s6OWRwTNMo6zfeEVFcZyMP1od4D4GudZW10QOawmVrj2cURUe5vXlPpTYu+E3t
 d9/nkA8XaXZk2+mIVlaS34SfzAo4St//l57y/i5BBdoIJky4FE5hPNHQ0cXCcZkVoXcUPTl
 Ikd4nMCwLQKr+p4amuq3Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Lz+aV3vOCsc=:cjQyqPXs6Hoz8EEEyWksUH
 0eDWazRn1Xu0xK9seDRhWzhd3TWjWiaM+Y7Du6/vrbkXXoZ1VxlREN3GiLq4Xpfcq8WtvyYAG
 6V+jZhPyLQ8oZqhFGFRRtpIwC8twQwQbyY7lXKDXO86uMEYsctACnAYaxI/ziLSAesquB+Iv0
 jNPIqo6GCPQ2Zu/cC2CbAP2/DUO8VAiCbYyuFmq9QVbMLSrVm9ZBy2A7hbSWjeYkVGG4eB5RS
 Z96R5OjoCkSNg9UnATut0sYF1Dfs+gOZE0XAsDj8JaYXJxOzzIk1Vr8HLGHRzWxkC4RA9Hwyp
 rd9MDvapS7VZ4ZdrSU+HE7YbgkWL6/csXwKz/1ZZYjzJ4HlEOdzubNhKGO8cmnY56JGQenb2B
 /D8O90qtKupYc/Xu65oVPSvgPy7YoJu3ChLs/oUn+nGe7RAEzRQxCwc0Pboa78BqZ4TgGpPgh
 h6Fsq+IiZJ4kEWs2rkU/yhaGH7sC2eF919GDE9qPqpOE1hyZYTDOShI6sOTGmYEthHg11Jwmi
 V2hC83sDsc7u1yAAk/psX9abHX5ANNG5WlisPrOqLIVKj2oGLPWrQ72KIM7xaPYdarjTLRmdV
 3tDIGdsY0PEZpLNQpK9U2IN1F+6VD+21qn1564B2V9HmyFOz8PhLQXnVPI3+nNX3k8YWLMc7t
 K/BGXyjHxg3KazxcaJl/Sl2Aw+NY5ocbL0Ag6B5ZVL7Pu07QGI9XHnKsBtnitQtN29dR9bEf5
 8A8k/E5urXldne1pkfqaHgf/g6EhmqFq28wPug==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_222451_291423_FA03F7B2 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.197 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Martin Ayotte <martinayotte@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7455890717180377581=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7455890717180377581==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="SIgez1o2nlOGJn4IA59eS7gQi0kZ7wM6n"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--SIgez1o2nlOGJn4IA59eS7gQi0kZ7wM6n
Content-Type: multipart/mixed; boundary="6MSGZKbHBdyE5z2wMTyAVt3wayqDK9Hq3";
 protected-headers="v1"
From: Sunil Mohan Adapa <sunil@medhas.org>
To: Chen-Yu Tsai <wens@csie.org>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Martin Ayotte <martinayotte@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Message-ID: <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
In-Reply-To: <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>

--6MSGZKbHBdyE5z2wMTyAVt3wayqDK9Hq3
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 04/08/19 8:33 pm, Chen-Yu Tsai wrote:
> On Fri, Aug 2, 2019 at 2:47 AM Sunil Mohan Adapa <sunil@medhas.org> wro=
te:
>>
>> On 01/08/19 6:49 am, Martin Ayotte wrote:
>>> If my SOB could help here, I don't mind since I've done the commit
>>> more than a year ago for Armbian ...
>>>
>>> Signed-off-by: Martin Ayotte <martinayotte@gmai.com>
>>> Tested-by: Martin Ayotte <martinayotte@gmai.com>
>> gmai.com is likely a typo.
>>
>>> On Wed, Jul 31, 2019 at 10:42 PM Chen-Yu Tsai <wens@csie.org
>>>
>>>> Thanks. The patch looks good overall. The authorship is a little
>>>> confusing though. If it was initially done by Martin (CC-ed), then
>>>> he should be the author, and we should get his Signed-off-by if
>>>> possible.
>>
>> Martin is indeed the original author of the patch. Thank you for revie=
wing.
>=20
> I'd like to apply this patch with Martin as the author, if that's OK wi=
th you
> both?

That is completely okay with me.

Thanks,

--=20
Sunil


--6MSGZKbHBdyE5z2wMTyAVt3wayqDK9Hq3--

--SIgez1o2nlOGJn4IA59eS7gQi0kZ7wM6n
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE5xPDY9ZyWnWupXSBQ+oc/wqnxfIFAl1HvZMACgkQQ+oc/wqn
xfIaTBAAi1ki7wjCWdfbQ+zizNI2qPOJ4mq+9aJaInqeFZMkaaCeeEA4S7d5rJVP
/7fNYWHIr1Y+TwnyNwz+esYF69aBxI4xLBz9qVA9nW/IrjN628QglZzLG33v24tm
suOZzTiBkpIds54hTrcFKZfoCBJMNQj8CkxCqojiGJy03RQMeby598FBdg7fDU3p
hOmyr6D/PBpOE5VlKQwiRePhybiIdikjsUIpYkCU8Ipq0i06Dasxm1Yma8pAHigq
9C8pRh+ATakcZjZolQ+3p2s1tzB4p8RIOzPBJnmj0atM3SMlla93gGpRNo4cNIep
0342kL8+4L9wv/hq3VzD2d/IHYbXhHHMH7xoC8LJ4JknunRE9eviEo7XBrysqBkE
D38VMR2HoChtegW3sk7snVigjQW/4uK6i2Zve2fSVuqJWP3XQ4LWS4rsh4pIP0F6
QJdoWqtprmQVRURvahZIQh/WMg+KIBESuUv0A8ChTFVRIr6N8BTQ5xodLJ3ROcAD
rCHiZ3gPrReJ+F1+Sd+98hWho+sxnt9UEdJ4PoG9RESrqPU/JSbPgFZmoUmiglSF
QLqunKQmTb5iLPL4JhgiDZYuRwXc1O0o9zNuvPHBhSMaBMdZqs6F90K9NAeG+u9N
FLkk4zlZrHsr3Ah68EfPMQ7yj7Mz3mjdXaueXlFMUxSxKl9bm8M=
=dCEu
-----END PGP SIGNATURE-----

--SIgez1o2nlOGJn4IA59eS7gQi0kZ7wM6n--


--===============7455890717180377581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7455890717180377581==--

