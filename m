Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A713198EBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FEhAf5/OLoZqE9ySLpqlL4ktzqERN3l2C0fADASgydE=; b=px/QdG1UZsM8F2fnhL4Nx/eAW
	58QQLPrqdUQBnrg43ZJg2qgKkEvFA5/Bp/Hzqv5foyIJuJSMfE+68eQJIMOXKQqDYiLFtPLKTcfqU
	K10dueHGW6tXcWL3ze081EGcE3Ql7GB2cz61d54UkqrtAiAX+H7Z7ckhWhrS79O6wu4svHypdG6DN
	kiGzGFVaadGco0rmylUFVZET7lTaWB0pWaNetydAhAgn9Q7p3bkIqKF4pmVd/xNppSxslgWo/FoKK
	NdnR/wO31yi9poa/WBrukSH4fxd7h80ylW7PGT6cSx8Dpg4aweq5pcmLytwzal6TN1lYwBXL4roSA
	9Wxj+cqIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJCRs-0006CT-Ly; Tue, 31 Mar 2020 08:40:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJCRg-0006Av-JR
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 08:40:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id m17so24762744wrw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 01:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to;
 bh=Z+CuPkRKVZ7tXW2TEkC/gPbqUuvCiTo7Xi+BBGMFZqc=;
 b=UQLmh+SXl74Pc4nUiurpH+zT6Tjy4hhpYkLvUjqTErcH4YU3S2eGCnpjz0GMJ6IGrw
 axmN9L5qMBoKv9yaQlkYmOFe+daXZk/cwefGPTNesKBEMuyiP1seQ1mC/WS5uNmGU05z
 AMk2IVC6EDdozcfv+siuzB8r7vOF7T4c9drSOju00kFCeQSb25CWNFgQLV3/LOzmVXlJ
 NZUrLuh0KYQnNhd3DC+OzF5FOeJyye9c6yW66BuCs3gXZLaRD83zknjA3K1Tlj5til1t
 g5hogd7nF+RV500NPknEm72FsNFV218HAHWh2jgRQNX8qkUYX9csc3RvmQf9McXx+pc2
 BviA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to;
 bh=Z+CuPkRKVZ7tXW2TEkC/gPbqUuvCiTo7Xi+BBGMFZqc=;
 b=mIF0Vb37n3gJojqEW69TTn0eH116oOFQTL0wtollA/3casTUFlVQkxPXqEEHMMK9io
 D1WUGoTzDVehthXUZ62wsRjs95W9VQ6iqIBYhfEqk0zbRdmCRzI6xYnwPFyb75D9k9Ul
 yW1MHphJWerDt8iYbTVaQFIQe3fEJpToOhO/f9BV76TJ3qGbPA4wJ4MvsJtoz3+gEkcn
 hoxgOO6WSskwronY7yLNuWDtZVM56oRwnKE4dp1wZK8V9nVikN8dCm5MxDUiBkmP2bi8
 vZb4IsTswBOjffHqG2Lw3S6YR8K0odcLcqv4dz2W1kIULrG24p/41ukchis2mgORitBW
 Afhw==
X-Gm-Message-State: ANhLgQ2GHwBe4JDkpfNrJwIIHNnm1xJawRsyXcDbb+p9u6imoum57iRp
 cpjl2Gt0VLgwD6yDN2L2qi6qSg==
X-Google-Smtp-Source: ADFU+vtUMJku+tASP4viJHeLjxnEp27F8NMyUaWNWolbNSxhZm0/swXSv0jViU0/jGuXTCK3JgjZTA==
X-Received: by 2002:adf:a48d:: with SMTP id g13mr20357187wrb.38.1585644027208; 
 Tue, 31 Mar 2020 01:40:27 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2?
 ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id u204sm2877774wmg.40.2020.03.31.01.40.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 31 Mar 2020 01:40:26 -0700 (PDT)
Subject: Re: [PATCH v2 00/14] usb: dwc3: meson: add OTG support for GXL/GXM
To: Felipe Balbi <balbi@kernel.org>, kishon@ti.com, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
References: <20200326134507.4808-1-narmstrong@baylibre.com>
 <87v9mne9cj.fsf@kernel.org>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <351fa51d-9772-13a5-8b44-538a61a19c88@baylibre.com>
Date: Tue, 31 Mar 2020 10:40:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <87v9mne9cj.fsf@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_014028_658394_5F06A032 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5364368984732606768=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5364368984732606768==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="TThNyReAmkHP58i9ENNBdtf2VVvIpqMrA"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--TThNyReAmkHP58i9ENNBdtf2VVvIpqMrA
Content-Type: multipart/mixed; boundary="tmOsREy25oKgpUiW8lnALGejyda7lIbzP";
 protected-headers="v1"
From: Neil Armstrong <narmstrong@baylibre.com>
To: Felipe Balbi <balbi@kernel.org>, kishon@ti.com, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Message-ID: <351fa51d-9772-13a5-8b44-538a61a19c88@baylibre.com>
Subject: Re: [PATCH v2 00/14] usb: dwc3: meson: add OTG support for GXL/GXM
References: <20200326134507.4808-1-narmstrong@baylibre.com>
 <87v9mne9cj.fsf@kernel.org>
In-Reply-To: <87v9mne9cj.fsf@kernel.org>

--tmOsREy25oKgpUiW8lnALGejyda7lIbzP
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 29/03/2020 12:36, Felipe Balbi wrote:
>=20
> Hi,
>=20
> Neil Armstrong <narmstrong@baylibre.com> writes:
>> The USB support was initialy done with a set of PHYs and dwc3-of-simpl=
e
>> because the architecture of the USB complex was not understood correct=
ly
>> at the time (and proper documentation was missing...).
>>
>> But with the G12A family, the USB complex was correctly understood and=

>> implemented correctly.
>> But seems the G12A architecture was derived for the GXL USB architectu=
re,
>> with minor differences and looks we can share most of the USB DWC3 glu=
e
>> driver.
>>
>> This patchset refactors and adds callbacks to handle the architecture
>> difference while keeping the main code shared.
>>
>> The main difference is that on GXL/GXM the USB2 PHY control registers
>> are mixed with the PHY registers (we already handle correctly), and
>> the GLUE registers are allmost (99%) the same as G12A.
>>
>> But, the GXL/GXM HW is buggy, here are the quirks :
>> - for the DWC2 controller to reset correctly, the GLUE mux must be swi=
tched
>>   to peripheral when the DWC2 controller probes. For now it's handled =
by simply
>>   switching to device when probing the subnodes, but it may be not eno=
ugh
>> - when manually switching from Host to Device when the USB port is not=

>>   populated (should not happen with proper Micro-USB/USB-C OTG switch)=
, it
>>   makes the DWC3 to crash. The only way to avoid that is to use the Ho=
st
>>   Disconnect bit to disconnect the DWC3 controller from the port, but =
we can't
>>   recover the Host functionnality unless resetting the DWC3 controller=
=2E
>>   This bit is set when only manual switch is done, and a warning is pr=
inted
>>   on manual switching.
>>
>> The patches 1-9 should be applied first, then either waiting the next =
release
>> or if the usb maintainer can provide us a stable tag, we can use it to=
 merge
>> the DT and bindings.
>>
>> Changes since v1 at [1]:
>> - Fixed DT bindings to take in account usb2-phy2 on GXM
>> - Added comment in patch2
>> - Fixed patch 5 and moved fix out
>> - Collected tags
>> - Lower DT patch changes, switch p20x-q20x port B as OTG by default
>=20
> patches 1-6 are applied to my testing/next
>=20

Thanks !

Neil


--tmOsREy25oKgpUiW8lnALGejyda7lIbzP--

--TThNyReAmkHP58i9ENNBdtf2VVvIpqMrA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPVPGJshWBf4d9CyLd9zb2sjISdEFAl6DAfkACgkQd9zb2sjI
SdFjyw//RckrqEYSwol9EjScA0sqLvAE1qwaHsolDgF9Jm0ZwMzsU0S08cm7n6XA
AVFhiS5y12XVG7oPrOBhjQhssaH9+QxTsBWWR4E2pDVHU8F7Co90QWUpaoG9cQkX
2vpwLVxwj7lk/JhsW+STQySfBeeCltGZ/z7Wc4jYN4u55Ija0HgoOlSkFYWMWvqT
F7RDYafcZCQvk4HFNNcrBpibxAfvz8UAzF6eCVKrErt1efKR/uzhBYfr5o07fbPI
WMis8oAFWhKH2D19XHG2wpwPYdBbDtGhmUNp6NSko2aB4Q6p3YEv6JQKoH98TKQQ
cZBw+0in54LQIkkziDU9QyPI+Bqgk8xIO8IdznBW7E85UBf/N071LHcAl7vHvMpn
F4apG+yeV+SXgPlfsyLEZL43Ufm/z3dptos7CRqpuEo4xYGmgDNfofMJ4o2KFY/s
2Eu0Zz4lp09RkhNWXXUZH2LoS5z3djpdPJYoI/ilc3DDr0gzhyzEf7q3/oNyAZM0
PeCdu3V5gI2EOSzwCKQJtlO6Z5MjQ7A9iw/WQBQcDHz2xTopKBkc+2XreFfcJNqk
6HURsz/Df4k/cUy1ufwirDVaIdSfOlT87hYZlC6NN+6U3OGLv4bVkEUm0L8FqGcl
13H2rbqZVGX3r/atM6FpV/jV0Pe2RM+iwLI+g8cwYCOiKbyEppo=
=MKHU
-----END PGP SIGNATURE-----

--TThNyReAmkHP58i9ENNBdtf2VVvIpqMrA--


--===============5364368984732606768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5364368984732606768==--

