Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DE685E18
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zTsVZVXDRW2vMOch1s3az8YNgdswP2Gi5RkJwrZfU2Y=; b=PXG7j/qBnJBJnY8fIPQaZFkTG
	ZAnCDVVKyN0tb8XTWJXRHE/FktEK4VtBqwetrrq3QXq17RqR9vngN6jPz9Lls5k3lPcMtUU+v4Q5p
	lUrpNTyYzwVOZd2r3XavfmQirDQZygBnwO23nBmTySTttZXKbYUM0Tx8+XwCKqaZKqYpEUMH73EDV
	sokDJp8cTsGMAwBsMDPMjMYEKIDLQvx+T1+rJmlSbRBnxAlb1QF+BxgzoTL/W1AWB5m/HhhukXCMi
	TWg22QbGEvcFp/uPAqbFLmCMj9MTlzgFtJ+ppaj9JVfD8GL6PsoAx653V3VOqxcKJwgIM/hnNfHtd
	4UGIpCIRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveag-00074a-DO; Thu, 08 Aug 2019 09:20:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveaQ-000746-M5
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:19:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id 31so94197140wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 02:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=reply-to:subject:to:cc:references:from:openpgp:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to;
 bh=boFL17g+r1DVnnh5UlPaoygW7yvD10knzZn4sJQmOy4=;
 b=cbUO6aHRKhLAAibtk5Zll49z1qNw2fpWRAFBovhBVhN1Zm37T4J87s9LTIH5zchwdd
 BslCpCTEhmbwB/OAiIg1ozt9ntx0g3mnfDIiR7aFuY6TNIsF9tj1A3IKbPRg87fiGcgS
 2RkgDDOO4zkOEXjEW7TMJviZJb3KMNbbGKtyNjM+CzFhYtgwik1Opnc8StYPjRQ9BVKH
 oASK8VeogsuBVk3R+/b4rn/x1HPYNHLspb/1Yrh78T2nf2JZHwJzp0lPbnqKkq/nf9J1
 brzTKpi5HuQwaEeEZQZ2lq1/9nsveyTU+/breIRNZJ1iWHIlM+N+WE1Y8XgTqVYospQD
 uS2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from:openpgp
 :autocrypt:message-id:date:user-agent:mime-version:in-reply-to;
 bh=boFL17g+r1DVnnh5UlPaoygW7yvD10knzZn4sJQmOy4=;
 b=EtrWh8LfjEbnTgfZD7RayFB87fYz1pRQbWXvybh99kAWWgE9R+M9eA42EBTS9hUjPa
 3YfmXrX+Y20OIGbeoex2/ALf7m53LrF+Zfiqabk2LhqCYhoLFiFsM5O877EDBzlITElG
 F1ZJdug3Su7GAioEI7hGI1coRrHws+qeggDTrgAoh8AdbKsf/Z1r/XxKcrzKFXBbeJHP
 U4Px66ql7PDHlYd8pOzTSP0kxP205+XmdeP9qIoJWjdsWTSkOfJ8dDI81rLHZpLjTIwA
 r+G7pHRhTAF6c1xqzwWv4eh+zv/84BA+F8jZqx9PmSibX7Dri41ujF6KX3EwerBS51vI
 QPSA==
X-Gm-Message-State: APjAAAUTIddl4qQxQzgjFto8AlnpSHrygDR1vVVzDKJYqnxePNqXnCks
 E4Qc2FvxX9KsXmJs0XdCxFWHcfxYCV9/lQ==
X-Google-Smtp-Source: APXvYqwp/Brb7iV2nE3ExNvKHLIKw/W8ZDiN78+c+hbnPjm85oEqyhH+IimN2bHfuZLceJ5Msx35oQ==
X-Received: by 2002:adf:9bcd:: with SMTP id e13mr15611808wrc.338.1565255993205; 
 Thu, 08 Aug 2019 02:19:53 -0700 (PDT)
Received: from [173.194.76.109] ([149.199.62.131])
 by smtp.gmail.com with ESMTPSA id v16sm90944999wrn.28.2019.08.08.02.19.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 02:19:52 -0700 (PDT)
Subject: Re: [PATCH 2/2] ARM: zynq: Use memcpy_toio instead of memcpy on smp
 bring-up
To: Luis Araneda <luaraneda@gmail.com>, Michal Simek <michal.simek@xilinx.com>
References: <20190806030718.29048-1-luaraneda@gmail.com>
 <20190806030718.29048-3-luaraneda@gmail.com>
 <194fe121-151d-0b64-b83e-e4d82c02efa7@xilinx.com>
 <CAHbBuxpM8YKxADGJv2PAPbyS-2FZ6xiwohJwGJ1DMPuGnDV-Jg@mail.gmail.com>
From: Michal Simek <monstr@monstr.eu>
Openpgp: preference=signencrypt
Autocrypt: addr=monstr@monstr.eu; prefer-encrypt=mutual; keydata=
 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
Message-ID: <d28323de-6751-0a11-4790-f814539f536f@monstr.eu>
Date: Thu, 8 Aug 2019 11:19:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAHbBuxpM8YKxADGJv2PAPbyS-2FZ6xiwohJwGJ1DMPuGnDV-Jg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_021954_729222_8B7A0B33 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: monstr@monstr.eu
Cc: Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7018317928664867187=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7018317928664867187==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="3VHn5xLLkhWU4W6I4NCgesZwfMtJ2CRpi"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--3VHn5xLLkhWU4W6I4NCgesZwfMtJ2CRpi
Content-Type: multipart/mixed; boundary="DGNIAlcoa3GStLL3YWKXJKhs2omylnh0X";
 protected-headers="v1"
From: Michal Simek <monstr@monstr.eu>
Reply-To: monstr@monstr.eu
To: Luis Araneda <luaraneda@gmail.com>, Michal Simek <michal.simek@xilinx.com>
Cc: Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel@vger.kernel.org
Message-ID: <d28323de-6751-0a11-4790-f814539f536f@monstr.eu>
Subject: Re: [PATCH 2/2] ARM: zynq: Use memcpy_toio instead of memcpy on smp
 bring-up
References: <20190806030718.29048-1-luaraneda@gmail.com>
 <20190806030718.29048-3-luaraneda@gmail.com>
 <194fe121-151d-0b64-b83e-e4d82c02efa7@xilinx.com>
 <CAHbBuxpM8YKxADGJv2PAPbyS-2FZ6xiwohJwGJ1DMPuGnDV-Jg@mail.gmail.com>
In-Reply-To: <CAHbBuxpM8YKxADGJv2PAPbyS-2FZ6xiwohJwGJ1DMPuGnDV-Jg@mail.gmail.com>

--DGNIAlcoa3GStLL3YWKXJKhs2omylnh0X
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 06. 08. 19 14:49, Luis Araneda wrote:
> Hi Michal,
>=20
> On Tue, Aug 6, 2019 at 2:42 AM Michal Simek <michal.simek@xilinx.com> w=
rote:
>> On 06. 08. 19 5:07, Luis Araneda wrote:
>>> This fixes a kernel panic (read overflow) on memcpy when
>>> FORTIFY_SOURCE is enabled.
>>>
>>> The computed size of memcpy args are:
>>> - p_size (dst): 4294967295 =3D (size_t) -1
>>> - q_size (src): 1
>>> - size (len): 8
>>>
>>> Additionally, the memory is marked as __iomem, so one of
>>> the memcpy_* functions should be used for read/write
>>>
>>> Signed-off-by: Luis Araneda <luaraneda@gmail.com>
> [...]
>> I would consider this one as stable material. Please also add there li=
nk
>> to the patch which this patch fixes.
>=20
> I'm dropping stable CC (for now), as I'm not sure I completely
> understood the process for inclusion in stable trees.
> Do I have to wait for the patch to be on Linus' tree before CCing stabl=
e?

just put Cc: to commit message and they will pick it up.

>=20
> As for the link which this patch fixes, you mean
> aa7eb2bb4e4a22e41bbe4612ff46e5885b13c33e (arm: zynq: Add smp support)?
> where you added SMP support for zynq.

yes but make sha1 only 12char long.

M

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs



--DGNIAlcoa3GStLL3YWKXJKhs2omylnh0X--

--3VHn5xLLkhWU4W6I4NCgesZwfMtJ2CRpi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQbPNTMvXmYlBPRwx7KSWXLKUoMIQUCXUvpMgAKCRDKSWXLKUoM
Ia//AJsEYKVSpaeGQaVCvUGxQNGTInvuEACbBEgCQ/p/qhgp4xjFk1G/x3Rhtek=
=+U0C
-----END PGP SIGNATURE-----

--3VHn5xLLkhWU4W6I4NCgesZwfMtJ2CRpi--


--===============7018317928664867187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7018317928664867187==--

