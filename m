Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8E71958BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 15:15:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8tAIAndp0kdBf501ohh2n3CyO9527IWhWlmMvKxum/I=; b=Z5xXebiwOuwKO/oyD72tIg+em
	VdhMzeQ6MClZ6HplZyvsYiPyqAMc/7qyMGcRh/VBYfFnwjh3IrrBEUlzLUe/aiAft2YWlAlQZ9sky
	MIafKi089B64CeLCeJhtEsVFcRJ9V2kZ/wwHSu5UHYp8gmTFTh63/bkBG0Hw82mKVdpc1fQoot3Yn
	WlH0x1HfChg7r5PYrazwJx6PaTTyyYtFasRtBT2hrgmjyjmER5xU1xLdtKEIiIAnwxT7KMGYO0b9z
	+et0XHd9IZggG4eB7LGZ5MCRxrMy+X5QWYl5KLqHmDKTz3gWlAc6sESlOJImHUvrSs8wwFTJyGgaf
	Dw6h3VBbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHplS-0004h0-JJ; Fri, 27 Mar 2020 14:15:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHpl8-0004cV-Or
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 14:14:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id c187so11595724wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 07:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to;
 bh=2aF5zFMHD3GkY2vg/07HtE84HJHOz/RqfVb2vatIE48=;
 b=rw9tQyh9Kxo8Jk/pzkzWry6HTd4i+De2ywZi9PE98DCijUENWlr/enJchw8mpKt5IH
 QPZPEqI2KXbn482dxk2pCGR+FPSYny5FlYElguOeQuUgn5J+DAXKWWgdMJjs38GhNctm
 t96wVJ88rgxNY2NF5ZxxBdXGM3OVOBNvpUt+2Efv18KO9InrO8CQHcNjg9eQSoz+2bUW
 Oszq+nVUFh4oIVbCqQHx1kmFQF2lH3x1VPJVXgyOssBiAMLF7ldVI5MoABbWFaSAFtzK
 C4VoBcPONxwc59FfGM5zEskqY3vU6EBvLuvYyliwkengf9/DYbK8gBNtMQqUzgclCWkh
 rabA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to;
 bh=2aF5zFMHD3GkY2vg/07HtE84HJHOz/RqfVb2vatIE48=;
 b=WoNYvOYovjk4Wor8hLYKI6CzbsL4vnAw6ysjHCXqNEAUkwKDy/432GS+W8YEwhcc1F
 gRR+XpAFHu+txtPkq0A4NUK18QliJ3Ey3Fh6ze2hqQUYHWTowI5kcBHmMFFDIas2a/Is
 c4LVtK9zqSoJlgo5c3yomMtWnU+W7gTCGYEdI/EyMsQvPcDlRDM0R+5wZBvcl33fp2+n
 GMUTBW4GoF0YyZ5fm6NQmob68vmMuOMfeZJt6nYvxfU2tjiMP02loSPajGC6tPei/6+W
 ma/vz5guWsyfekBOT4m9cJc6rFuYzXXvesk/jJ+ekSw9X1+x7TVrAkzs1kDcrumvKPtW
 XtTw==
X-Gm-Message-State: ANhLgQ3g1ScgMJS8Nyx3IpsYA2z8b+fI7Ro69ZkBn/+N4zIiSVqPw3zQ
 2hhCT7nk2InAUU/qOZdKV8odJVz2Yq41pQ==
X-Google-Smtp-Source: ADFU+vs4lH3SLc7SJRqdbuB6wuP7vam48hkKuxe1wlqfKGSv+VKrDDd6cI8vDa2OB4yvkbvlqRYvvQ==
X-Received: by 2002:a7b:cbcf:: with SMTP id n15mr5911186wmi.13.1585318490577; 
 Fri, 27 Mar 2020 07:14:50 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:25f2:833f:2a30:1344?
 ([2a01:e35:2ec0:82b0:25f2:833f:2a30:1344])
 by smtp.gmail.com with ESMTPSA id c7sm8736800wrn.49.2020.03.27.07.14.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Mar 2020 07:14:49 -0700 (PDT)
Subject: Re: [PATCH v4 7/8] drm/fourcc: amlogic: Add modifier definitions for
 the Scatter layout
To: Pekka Paalanen <ppaalanen@gmail.com>
References: <20200325085025.30631-1-narmstrong@baylibre.com>
 <20200325085025.30631-8-narmstrong@baylibre.com>
 <JgBZ7eZYMgXRNu_-E4ItS1bud9mEe15xptZEX_XhsM_h8_iIZTOmPokEVxPJYwX0wP0pmb5p-ymubyyZP3kVbcfuDNdmM0__L8wBR5IykfE=@emersion.fr>
 <b1386ef5-c3e3-c07b-5982-e3f02441b431@baylibre.com>
 <20200325154921.2a87930c@eldfell.localdomain>
 <a385e2f6-52fa-e195-15e0-2132befc9f35@baylibre.com>
 <20200326113632.6585cf7b@eldfell.localdomain>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <7acc751d-161f-af9c-d896-b4e43fb9b0ac@baylibre.com>
Date: Fri, 27 Mar 2020 15:14:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200326113632.6585cf7b@eldfell.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_071454_810930_9D85F377 
X-CRM114-Status: GOOD (  25.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mjourdan@baylibre.com" <mjourdan@baylibre.com>,
 Simon Ser <contact@emersion.fr>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6071398369142295511=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6071398369142295511==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="BYrHRhxTswtFM11DaiETVKnyXbIYkGEjl"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--BYrHRhxTswtFM11DaiETVKnyXbIYkGEjl
Content-Type: multipart/mixed; boundary="zagWkvd3HFoto2c61KMX4deIDLdd83GBR";
 protected-headers="v1"
From: Neil Armstrong <narmstrong@baylibre.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
Cc: Simon Ser <contact@emersion.fr>,
 "mjourdan@baylibre.com" <mjourdan@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Message-ID: <7acc751d-161f-af9c-d896-b4e43fb9b0ac@baylibre.com>
Subject: Re: [PATCH v4 7/8] drm/fourcc: amlogic: Add modifier definitions for
 the Scatter layout
References: <20200325085025.30631-1-narmstrong@baylibre.com>
 <20200325085025.30631-8-narmstrong@baylibre.com>
 <JgBZ7eZYMgXRNu_-E4ItS1bud9mEe15xptZEX_XhsM_h8_iIZTOmPokEVxPJYwX0wP0pmb5p-ymubyyZP3kVbcfuDNdmM0__L8wBR5IykfE=@emersion.fr>
 <b1386ef5-c3e3-c07b-5982-e3f02441b431@baylibre.com>
 <20200325154921.2a87930c@eldfell.localdomain>
 <a385e2f6-52fa-e195-15e0-2132befc9f35@baylibre.com>
 <20200326113632.6585cf7b@eldfell.localdomain>
In-Reply-To: <20200326113632.6585cf7b@eldfell.localdomain>

--zagWkvd3HFoto2c61KMX4deIDLdd83GBR
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

On 26/03/2020 10:36, Pekka Paalanen wrote:
> On Wed, 25 Mar 2020 17:18:15 +0100
> Neil Armstrong <narmstrong@baylibre.com> wrote:
>=20
>> Hi,
>>
>> On 25/03/2020 14:49, Pekka Paalanen wrote:
>>> On Wed, 25 Mar 2020 11:24:15 +0100
>>> Neil Armstrong <narmstrong@baylibre.com> wrote:
>>>  =20
>>>> Hi,
>>>>
>>>> On 25/03/2020 10:04, Simon Ser wrote: =20
>>>>> On Wednesday, March 25, 2020 9:50 AM, Neil Armstrong <narmstrong@ba=
ylibre.com> wrote:
>>>>>    =20
>>>>>> Amlogic uses a proprietary lossless image compression protocol and=
 format
>>>>>> for their hardware video codec accelerators, either video decoders=
 or
>>>>>> video input encoders.
>>>>>>
>>>>>> This introduces the Scatter Memory layout, means the header contai=
ns IOMMU
>>>>>> references to the compressed frames content to optimize memory acc=
ess
>>>>>> and layout.
>>>>>>
>>>>>> In this mode, only the header memory address is needed, thus the c=
ontent
>>>>>> memory organization is tied to the current producer execution and =
cannot
>>>>>> be saved/dumped neither transferrable between Amlogic SoCs support=
ing this
>>>>>> modifier.   =20
>>>>>
>>>>> I don't think this is suitable for modifiers. User-space relies on
>>>>> being able to copy a buffer from one machine to another over the
>>>>> network. It would be pretty annoying for user-space to have a black=
list
>>>>> of modifiers that don't work this way.
>>>>>
>>>>> Example of such user-space:
>>>>> https://gitlab.freedesktop.org/mstoeckl/waypipe/
>>>>>    =20
>>>>
>>>> I really understand your point, but this is one of the use-cases we =
need solve.
>>>> This is why I split the fourcc patch and added an explicit comment.
>>>>
>>>> Please point me a way to display such buffer, the HW exists, works l=
ike that and
>>>> it's a fact and can't change.
>>>>
>>>> It will be the same for secure zero-copy buffers we can't map from u=
serspace, but
>>>> only the HW decoder can read/write and HW display can read. =20
>>>
>>> The comparison to secure buffers is a good one.
>>>
>>> Are buffers with the DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_SCATTER modifi=
er
>>> meaningfully mmappable to CPU always / sometimes / never /
>>> varies-and-cannot-know? =20
>>
>> mmappable, yes in our WIP V4L2 driver in non-secure path, meaningful, =
absolutely never.
>>
>> So yeah, these should not be mmappable since not meaningful.
>=20
> Ok. So we have a modifier that means there is no point in even trying t=
o
> mmap the buffer.
>=20
> Not being able to mmap automatically makes things like waypipe not be
> able to work on the buffer, so the buffer cannot be replicated over a
> network, hence there is no compatibility issue. However, it still
> leaves the problem that, since waypipe is "just" a message relay that
> does not participate in the protocol really, the two end points might
> still negotiate to use a modifier that waypipe cannot handle.

Not mmapable won't be limited to this kind of buffer, or secure, any DMA-=
BUF
provider can decide to disable mmaping, so waypipe should work with this
whatever this discussion goes to.

>=20
> Secure buffers have the same problem: by definition, one must not be
> able to replicate the buffer elsewhere.
>=20
> To me it seems there needs to be a way to identify buffers that cannot
> be mmapped. mmap() failing is obvious, but in waypipe's case it is too
> late - the end points have already negotiated the formats and modifiers=

> and they cannot handle failures afterwards.

The AFAIK last open question was on this thread:
https://lore.kernel.org/dri-devel/d6f8092d-9f90-d5ff-2ab3-b1867f8f5700@ti=
=2Ecom/
But it was more like, how the consumer driver knows the buffer is secure.=


Daniel, is there something new ?

>=20
>>>
>>> Maybe this type should be handled similar to secure buffers, with the=

>>> exception that they are not actually secured but only mostly
>>> inaccessible. Then again, I haven't looked at any of the secure buffe=
r
>>> proposals. =20
>>
>> Actually, the Amlogic platforms offers secure video path using these e=
xact
>> modifiers, AFAIK it doesn't support the NV12 dual-write output in secu=
re.
>>
>> AFAIK last submission is from AMD, and it doesn't talk at all about mm=
apability
>> of the secure BOs.
>=20
> To me, a secure buffer concept automatically implies that there cannot
> be CPU access to it. The CPU is not trusted, right? Not even the kernel=
=2E
> I would assume secure implies no mmap. So I wonder, how does the secure=

> buffers proposal manage userspace like waypipe?

None, as I said, waypipe whould handle non mmapable buffers, by asking
for a different modifier set, or sending a gray buffer with a llama
instead.

>=20
> Or, is the secure buffer proposal allowing mmap, but the content is
> indecipherable? Maybe they shouldn't allow mmap?

Definitely, you'll have an HW bus error if you access a secure buffer,
otherwise the security is weak. A bus firewall is the common way to handl=
e
such secure buffers.

>=20
> I think much of the criticism against this modifier should also be
> presented to a secure buffers proposal and see how that turns out. If
> they have the same problem, maybe you could use their solution?

Sure, but seems there is no consensus for the compositor side.

Neil

>=20
>=20
> Thanks,
> pq
>=20



--zagWkvd3HFoto2c61KMX4deIDLdd83GBR--

--BYrHRhxTswtFM11DaiETVKnyXbIYkGEjl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPVPGJshWBf4d9CyLd9zb2sjISdEFAl5+ClYACgkQd9zb2sjI
SdF4sA/+PM2G5i1X6O0M+OTr7KZnq/yRYEj3oZHweoM7rHfxqL/LKk7g+hTRhyb6
O0RXPmcIap0wIxKhuSE65lzqUYA4tVMA/0gIDp8jRvwB740CsfRlamJea7JS3l3Q
TXyP+nowxsLHBSUKnpae08z5TGOCHOzgzYFds64cK5wkik5QlNF+3rZnroA3x8n/
PMWX9LZ42XlXY0IyqBj2E/lGO75p5rFxURlhvli8Q/dHj4KG4Oy2tliha22thyxO
4UECt+39JrJ8HFvGElAVVmILAIczNGHOjxJhKyjcZdIKjKoIjGq/3nOAweYx3bC+
S2pTE+f4xsOwi0iPcTGz0oJga1IT/VWKoebTOkVIUpioiJ8DcJ0IeCaNVXoT3wcB
c58n6tQTB/di+8aSX+MTRaby8MTLO5CmTJjiyEx0zRjvjmLRH2FibQft2tDPL12t
r3RAQ8mLJc9XGrtrxtsh5gc9klSvfZosdoyKAbAhp61o0YWwNABSoibQYV7nRSE2
e9gUXp0t2knjEIoXuQgonpp2ssC99Ec1TfPYuPRetdlsGEJLIW0A0C1CPKVBP5m3
ADRyqv118t8kYVOC6DE3llexfaeo9xIR4swD5bAwNnp0+SD0ou2TmzIWIwKhagzR
8J/jyPoU/McMqRHkUwrmBYZRAZvNAuSNN76t+0gLkLwy3Aaci9g=
=TA8X
-----END PGP SIGNATURE-----

--BYrHRhxTswtFM11DaiETVKnyXbIYkGEjl--


--===============6071398369142295511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6071398369142295511==--

