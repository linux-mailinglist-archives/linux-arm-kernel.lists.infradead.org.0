Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0695E143AAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:18:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gPXLDlq/jEk/DcxOAI+nA2zat+dHiADEFC2yhqeED5w=; b=WumtWHxPqGxuNjOaD0xFUxoZT
	RnMXWgGDrx7gbeXaqYGC9ospQwVwk3vkW09CweW4bHndmIfmOKnxNvSk3AIxT1MJWGGMUeEXwoR89
	BhkQ7qxXDRSvGsYqXSeARC7jVSobAAZIykgBM99y5GqxA5k5koziJ6vaISjEe5KhsUSO/RnoDU3Yn
	UoH/ox3zdjHA1l2AhfH0AXqe/nq0L7M54lo4UY8TaW4pV3eIndX/speCblhua2VCh1DEK0YV3/r2Z
	cauEbJRFZFGf6Q+/LfMscKSdEnLX8FMQlTcKqmp8oPf05mDLSbTZsTK+0BJXfWPr5nveQjDEwvXjo
	BMSA/PnQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqbh-00080i-Tz; Tue, 21 Jan 2020 10:18:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqbN-00080I-DI
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:17:44 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so2477019wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 02:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to;
 bh=8pRKFPawYH5ty+I4DWZ8iaiZJY3HzH1swkVJtfRbm1A=;
 b=ZsxrJWMewl0bmOVMhiFcKyHsX9y0SdyMJsiE+YcCq/OlKUcS3TetoWHRhilcMpJqAI
 lV1bQf8kpEug5N2zc37U0Q4fU8cekWuw0z0T2jezj6suk1przVTYFDInNKPJ8SmSDApD
 L2dp0fr4Q32if77fvegPdJJGIRMjp1AKyus/xVc/LGIMxWGW66QUk6sJs1u1PweJQazs
 yh8A+6QOvsbv6Jz3jb5J5p2qfzK7YZgvbQ36OfLUTkGgjMLi5JgSwQWdAhJWQ4vJd5qb
 I3hgdYlMk3kwd/zMazRGpwJ6YN9TJOFsNOf6yX9zzY6Y7TFd0gqvVbeQmYwyBE1tMoaC
 7Qrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=8pRKFPawYH5ty+I4DWZ8iaiZJY3HzH1swkVJtfRbm1A=;
 b=rrE3flZpau+Te6olr6+CM8IhyIOnBQ1ePUarbig+OXO9KWJChmV7WnqD7csBrt7KYN
 XTus2sCZbaR6qqK8h+IOGOT74uKLehaDsevoezFJ9GoaUt9/RE8szwRORrSvfTxShNqG
 heCguM0aUoCFU/nr6RbuaOcgByOSnODLwH3K0KBnpFMp5G5SxqJexD650l190DeD6wVs
 sLKv+0z+PSGZGvhJjypmWwxpvVPwEJN37R3LHQVfatuqMo4tZNHBA9h/7up7QdtbYym4
 3f6FUAYim31Cu7GIrSpo/kAeGwKXOcvbfV81ruYvvejmnmzGeLZx/Yj8w5WjbcvZvzdh
 /O1g==
X-Gm-Message-State: APjAAAVHsLB9fPi6v9C/P5ET905dR+qLrrVT/7Jr3SgnI1jVKJi2/mAF
 DGpj7Ni1G4E9aSnp15Zk56HrZfLAPfMH/g==
X-Google-Smtp-Source: APXvYqx1OBjuRXCfsHpl8WD+P0GIzmJ4Yf9O+Uwsoue16p3hvGUH41Mi/xSU/GuNe533lvOWN+GQDw==
X-Received: by 2002:adf:f80c:: with SMTP id s12mr4396055wrp.1.1579601860043;
 Tue, 21 Jan 2020 02:17:40 -0800 (PST)
Received: from [74.125.140.109] ([149.199.62.130])
 by smtp.gmail.com with ESMTPSA id u22sm54397013wru.30.2020.01.21.02.17.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 02:17:39 -0800 (PST)
Subject: Re: [GIT PULL] ARM: dts: Xilinx DT changes for v5.6
From: Michal Simek <monstr@monstr.eu>
To: arm-soc <arm@kernel.org>, soc@kernel.org
References: <245bca0b-78ee-2665-16d6-2a7f8395cda0@monstr.eu>
Autocrypt: addr=monstr@monstr.eu; keydata=
 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
 0Z1MQlmNcq2bhOMzTxuXX2NDzUZs4aqEyZQ=
Message-ID: <026fc331-4f17-23a4-89ee-5f7a41357948@monstr.eu>
Date: Tue, 21 Jan 2020 11:17:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <245bca0b-78ee-2665-16d6-2a7f8395cda0@monstr.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_021741_457132_B56909D1 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: git <git@xilinx.com>, linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2928327878003693342=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2928327878003693342==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="6iwzGeoljBDiDOHTdvqe2hFnvFdG6k5Sr"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--6iwzGeoljBDiDOHTdvqe2hFnvFdG6k5Sr
Content-Type: multipart/mixed; boundary="TeH9tx0uVWqctTBoSqzq0Y62wbe8qYfSd";
 protected-headers="v1"
From: Michal Simek <monstr@monstr.eu>
To: arm-soc <arm@kernel.org>, soc@kernel.org
Cc: linux-arm <linux-arm-kernel@lists.infradead.org>, git <git@xilinx.com>
Message-ID: <026fc331-4f17-23a4-89ee-5f7a41357948@monstr.eu>
Subject: Re: [GIT PULL] ARM: dts: Xilinx DT changes for v5.6
References: <245bca0b-78ee-2665-16d6-2a7f8395cda0@monstr.eu>
In-Reply-To: <245bca0b-78ee-2665-16d6-2a7f8395cda0@monstr.eu>

--TeH9tx0uVWqctTBoSqzq0Y62wbe8qYfSd
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 21. 01. 20 11:16, Michal Simek wrote:
> Hi,
>=20
> please pull this coresight enabling patch to your tree.
>=20
> Thanks,
> Michal
>=20
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1=
c35a:
>=20
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
>=20
> are available in the Git repository at:
>=20
>   https://github.com/Xilinx/linux-xlnx.git tags/zynq-dt-for-v5.6
>=20
> for you to fetch changes up to 02a93929e3e45686c0b547389c50a4dfa903daf5=
:
>=20
>   ARM: dts: zynq: enablement of coresight topology (2019-12-18 15:31:21=

> +0100)
>=20
> ----------------------------------------------------------------
> ARM: dts: zynq: DT changes for v5.6
>=20
> - Enable coresight topology for Zynq
>=20
> ----------------------------------------------------------------
> Zumeng Chen (1):
>       ARM: dts: zynq: enablement of coresight topology
>=20
>  arch/arm/boot/dts/zynq-7000.dtsi | 135
> +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 135 insertions(+)
>=20

oops. This is wrong one - please ignore. I will send v2.

M


--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs



--TeH9tx0uVWqctTBoSqzq0Y62wbe8qYfSd--

--6iwzGeoljBDiDOHTdvqe2hFnvFdG6k5Sr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQbPNTMvXmYlBPRwx7KSWXLKUoMIQUCXibPvgAKCRDKSWXLKUoM
IbJMAJwO0BOn8zyO2uhD6c1OwD/AOQLFEgCfWt5RKwQpw9CzcTkccVPXbcV4obY=
=nZys
-----END PGP SIGNATURE-----

--6iwzGeoljBDiDOHTdvqe2hFnvFdG6k5Sr--


--===============2928327878003693342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2928327878003693342==--

