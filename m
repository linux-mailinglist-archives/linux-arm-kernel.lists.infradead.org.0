Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B836685AA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:Subject:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aJ+PhtLmzj2PQkYnxfWxu3/oHBmoXJmBZmrFcuwfheE=; b=MQzrkMt252cA5xO1po8LaknYZ
	xLsBgUMLLyU08Tm25CCzK/QSE9RPTMy63kqjDaNl5v9Q4sDaH2nDbu4s+FYqOBp/tcjHPOyfJjlld
	fJ4Gyo7GTGoK9Rq1B7lmn57283XeQLDFbyN09pjy8B/slCxpMTUgJdujuQAV7meewj51q7syPo/uf
	z9isV+2z8rgG7F8fZg4dKnLpS3C3wxL6T652/7Jx36yfzZAjZzIXy2WT9llXLPRpiRfJEL6Wm55Bk
	xv8zs4HSL299ByUWYnsCywoC04TKYqdHBnqLQZfOWxdWAj/AoeWbMpjHim7bW94BgzcZezPjKtrOR
	WD4pyPr0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvbs6-0000JH-9w; Thu, 08 Aug 2019 06:25:58 +0000
Received: from mout.perfora.net ([74.208.4.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvbrn-0000Iq-GV
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 06:25:41 +0000
Received: from [192.168.0.105] ([71.197.225.149]) by mrelay.perfora.net
 (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id 1N5VsU-1iNVwy2ZEQ-016tr8; 
 Thu, 08 Aug 2019 08:25:26 +0200
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
 <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
 <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
 <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
 <20190807120104.ssj5cvx4hwicufrv@flea>
 <CAGb2v66vcQxjoi-0hhCOesT59Loo7Bw5M9fX8eCBWv-wM1CnoA@mail.gmail.com>
 <20190807144533.bbgtmkva34su7c5v@flea>
 <CAGb2v66EjQ-_QNsJ+xR0LcR983whU-hF9SZ2dSX_i5v7qcEyww@mail.gmail.com>
From: Sunil Mohan Adapa <sunil@medhas.org>
Openpgp: preference=signencrypt
Autocrypt: addr=sunil@medhas.org; prefer-encrypt=mutual; keydata=
 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
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
Message-ID: <70322b1b-2ee2-89c7-96f9-0d2dba4e0d64@medhas.org>
Date: Wed, 7 Aug 2019 23:25:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAGb2v66EjQ-_QNsJ+xR0LcR983whU-hF9SZ2dSX_i5v7qcEyww@mail.gmail.com>
X-Provags-ID: V03:K1:6IOOY/IyU75/G6YipPBjM2Ygy6icnVQBANADqjZdlnlEwBOzBBE
 rWMV/RPAh27vqVcqDeQ68PEylnKuAblS+nSdMxR9+FKGHcKfegE/EnyEMWwpm3Fkny4oO0w
 nhyVQqhGftEJK9gjmlDyZlj9cwE6htC6fyVJ0JjCKL5uNRMQtuGldZQP2rtSeoC6wwAUUFK
 GGLnG0B9C2deJK2Z0QyrA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xCiW9zExm6Y=:bNVOMwnsVcP2xy+ETCsDNo
 q5q8nqviiow/pJg3gDzoYixVKZBw8GmmebLy608Eg1lTmSc43mLUijJWuPJIQ9vmw0hd0NQZx
 pSVQ70ROuZ/qnmajlKhd791lW+GMvCn3LciDnLuBar2eAx8KZ0NL5xY1SuFmn8w/wNJ68FvdY
 JHnjuMHePmsh4fcom/iIJsk7lCUr74kxJjoNYgN3cyim6wigPchuZZ5S92naTTQ1Xy1pK1L7a
 vx+qZpTFSyL1mAS3hl4sDwR3fugEWtl+MOum78nVOSAoSOiaKhcHfFbzUiooQVZSzRpZctDBd
 8iu+QhYh37DcpNVpK4ys82zhgCc4/ftSfmb/3QaDVI8gVwtqvIOd9struK7owwlSFX9l3PP0+
 fQEV/BG1/W3xDpKEEf3Wh5oHkipdsyp75Hco0tNwDCDdSyf0WuI433XbjBmHcnAx3r5+D2yew
 +xUJ5rAzLoSbgl9ZTnarpvJioDnjTCEKzR2EL4zhQCSQu7hLrzfoXFb4nMs6QYUx0bHTtAs2c
 e8aHEVeY3C/o6snXswLuw98CfN7xw+cv4JSZWnUnz081ek5d5Mv67ytz+w7z4yeJhcNY6rnSY
 JWj0GJyF0UVtHGbYmcjVKv93yGAxRm4SOVwB7Gtp4R8iGtiyEySxwDOFcNxMIfCQCaNPHvO6d
 XN9mKNFO0ELHh7Pb84bV+TOM8k8D7q7sH3EbVJGfQkRz4Vv4rrfllWrzVu8AFGn1K93kP+JI3
 Q1EGU8PmZkVOUnwzFfdi6DUxbbJL/Nz08M2MPA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_232539_634935_E45B0EB1 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.194 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Martin Ayotte <martinayotte@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4582220333452092554=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4582220333452092554==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="l0W2RWQOlWKrprhxDE0SOR9OWjGbAJSRS"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--l0W2RWQOlWKrprhxDE0SOR9OWjGbAJSRS
Content-Type: multipart/mixed; boundary="CN8cvDI24KuDzx2gAlveLvkX7PGuY4B79";
 protected-headers="v1"
From: Sunil Mohan Adapa <sunil@medhas.org>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Martin Ayotte <martinayotte@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Message-ID: <70322b1b-2ee2-89c7-96f9-0d2dba4e0d64@medhas.org>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
 <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
 <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
 <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
 <20190807120104.ssj5cvx4hwicufrv@flea>
 <CAGb2v66vcQxjoi-0hhCOesT59Loo7Bw5M9fX8eCBWv-wM1CnoA@mail.gmail.com>
 <20190807144533.bbgtmkva34su7c5v@flea>
 <CAGb2v66EjQ-_QNsJ+xR0LcR983whU-hF9SZ2dSX_i5v7qcEyww@mail.gmail.com>
In-Reply-To: <CAGb2v66EjQ-_QNsJ+xR0LcR983whU-hF9SZ2dSX_i5v7qcEyww@mail.gmail.com>

--CN8cvDI24KuDzx2gAlveLvkX7PGuY4B79
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 07/08/19 10:12 pm, Chen-Yu Tsai wrote:
> On Wed, Aug 7, 2019 at 10:45 PM Maxime Ripard <maxime.ripard@bootlin.co=
m> wrote:
>>
>> Hi,
>>
>> On Wed, Aug 07, 2019 at 08:09:19PM +0800, Chen-Yu Tsai wrote:
>>> On Wed, Aug 7, 2019 at 8:01 PM Maxime Ripard <maxime.ripard@bootlin.c=
om> wrote:
>>>>
>>>> On Tue, Aug 06, 2019 at 02:25:17PM +0800, Chen-Yu Tsai wrote:
>>>>> On Mon, Aug 5, 2019 at 8:58 PM Martin Ayotte <martinayotte@gmail.co=
m> wrote:
>>>>>>
>>>>>> Fine for me too.
>>>>>>
>>>>>> Thanks .
>>>>>>
>>>>>> -----Message d'origine-----
>>>>>> De : Sunil Mohan Adapa [mailto:sunil@medhas.org]
>>>>>> Envoy=C3=A9 : Monday, August 05, 2019 1:25 AM
>>>>>> =C4=84 : Chen-Yu Tsai
>>>>>> Cc : Maxime Ripard; Martin Ayotte; linux-arm-kernel
>>>>>> Objet : Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
>>>>>> A64-OLinuXino
>>>>>>
>>>>>> On 04/08/19 8:33 pm, Chen-Yu Tsai wrote:
>>>>>>> On Fri, Aug 2, 2019 at 2:47 AM Sunil Mohan Adapa <sunil@medhas.or=
g> wrote:
>>>>>>>>
>>>>>>>> On 01/08/19 6:49 am, Martin Ayotte wrote:
>>>>>>>>> If my SOB could help here, I don't mind since I've done the com=
mit
>>>>>>>>> more than a year ago for Armbian ...
>>>>>>>>>
>>>>>>>>> Signed-off-by: Martin Ayotte <martinayotte@gmai.com>
>>>>>>>>> Tested-by: Martin Ayotte <martinayotte@gmai.com>
>>>>>>>> gmai.com is likely a typo.
>>>>>>>>
>>>>>>>>> On Wed, Jul 31, 2019 at 10:42 PM Chen-Yu Tsai <wens@csie.org
>>>>>>>>>
>>>>>>>>>> Thanks. The patch looks good overall. The authorship is a litt=
le
>>>>>>>>>> confusing though. If it was initially done by Martin (CC-ed), =
then
>>>>>>>>>> he should be the author, and we should get his Signed-off-by i=
f
>>>>>>>>>> possible.
>>>>>>>>
>>>>>>>> Martin is indeed the original author of the patch. Thank you for=

>>>>>> reviewing.
>>>>>>>
>>>>>>> I'd like to apply this patch with Martin as the author, if that's=
 OK with
>>>>>> you
>>>>>>> both?
>>>>>>
>>>>>> That is completely okay with me.
>>>>>
>>>>> Applied for 5.4.
>>>>>
>>>>> I reordered the tags so they make more sense:
>>>>>
>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git/com=
mit/?h=3Dsunxi/dt-for-5.4&id=3D0834887732df5af41b59b2e4d530fc1f5478965f
>>>>
>>>> Sorry for being late on this, but it looks like the eMMC, NAND and S=
PI
>>>> pins are conflicting on the A64-Olinuxino design.
>>>>
>>>> There's no configuration with a NAND, so we don't really need to wor=
ry
>>>> about that, but if we merge this in the main DT, we'll prevent anyon=
e
>>>> from using that DT on an olinuxino with a SPI flash.
>>>>
>>>> I think we should just create emmc and SPI-flash variants of that DT=
=2E
>>>
>>> Actually they aren't. Olimex specifically uses eMMC modules that don'=
t
>>> use the data strobe line, so SPI can be used together.
>>
>> Ah, right.
>>
>> Still, this creates a precedent that I'm not really comfortable
>> with. Three actually.
>>
>> Merging this in the main DT means three things:
>>   - We're not consistent anymore, including within the olinuxino
>>     boards only. A20 Olinuxino is pretty much in the same situation,
>>     yet we dealt with it differently.
>>   - This means that this will create a spurious device and report
>>     errors in the kernel message and whenever someone will try to
>>     access the device on boards that don't have it wired. This
>>     shouldn't happen and we really shouldn't expose devices that just
>>     aren't there, just like you don't have all the devices that are
>>     not connected on your USB connector.
>>   - Finally, this means that in order to keep it somewhat consistent,
>>     we would have to merge the SPI flash in the main DT too. This will=

>>     prevent people without a SPI flash to use the SPI signals on the
>>     UEXT connector for something else, which again goes against the
>>     policy we've had for basically any other board.
>=20
> OK. Shall we back it out and figure out something else?

I can try to help with alternate implementation with some guidance. I
can also test any patches on an A64-OLinuXino model with eMMC. So, do we
create a new -emmc.dts like in case of A20 OLinuXino?

BTW, a basic question: how does u-boot know which variant of dtb (with
-emmc or without) it has load before booting Linux? Does this need to be
hardcoded now into the boot script? Currently, in Debian the DTB name is
chosen by u-boot and not present in the boot script.

Thanks,

--=20
Sunil


--CN8cvDI24KuDzx2gAlveLvkX7PGuY4B79--

--l0W2RWQOlWKrprhxDE0SOR9OWjGbAJSRS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE5xPDY9ZyWnWupXSBQ+oc/wqnxfIFAl1LwFAACgkQQ+oc/wqn
xfLTIQ//XfA1HRmcmD+Sw5r+IOOo+ulnuKD4nTveLzksBat9G+ejFhUYICPsodab
9dFZhDuWdEVgLS/rwdRR5bdNnXhNir4D6fdey2XN4qmIs/ElQFW34cVE0BRlUTUx
BlqNvLn2VCUfkpA7QtQ0lY3qPYfSDf7niEWYee+gPKO0ala2AseifQoK7GfEeTxH
kvXoryk8zz9rfi2cZnRkWqHRwN7PixB8jysgeNQ1f6UP18waggJCs4F+mgcPFAvj
DB3Lz62RDPRu/pgfDHVDTii+h1hRd6WqeK1kDE4krRqiGcxIxdY3AgJ19L3y8kj4
ko7lRYPoPGw/V3aqOeRaTOlsb7dh9nBUwfUo9mi67ud+VQWAy9GMcG3N8YAaXb0Q
y3CIzwD5HffqgUxPcISyy37vH7wj1ZMPNoVFPctll7kfAr+fd/pPxmeup3i+q10b
7UDPsjca2ACBgo8MZqfPYJ63B9/pFgv83OWxI2FYyr22Nh0wyr7l0Ntgq6sAmYLu
/efdNgEGnSRseNqrpAshkkmgefFn6d/9qYinQEEuBaF29XLG9uvJOWPpPB0Xps8d
wpM/OoULrmF39kRFNlsMG3zGgzevNXZ4cAmL0+YKGgYcl+dB68C7TAtu0KrJPIFT
vjGJu8BJjWqxlOut5eYqsIgvocxka3uqLfUj0Oh37iVm/vMUflM=
=60tZ
-----END PGP SIGNATURE-----

--l0W2RWQOlWKrprhxDE0SOR9OWjGbAJSRS--


--===============4582220333452092554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4582220333452092554==--

