Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C71451823C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 22:23:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zKywelIDhmEZlsfvzZp/lRf+034tJbPdPnEmpPV0Lbw=; b=RaJCWPGt0r+1fI8+Eb43lp02O
	eKGmQx1O7avY+HoqkR1qi6OkCKp4V9uKuE4jYgF/ue7h8cWVNASn/i7i144wGaTxa5F/MCsuMD07e
	jyCdIhG3C47A06CLop0rxm1o+y6l3eN04UsT0jwxwp5QCAgoBfn1mUuilBc5KleCZBrCVeCXmyNYQ
	7HveIpiLMyBriQAQsMora1WegR8RbspvBKDm2WzNaHAb+QHIw9wCZ9e0uS7jFJwvWNXRIw4FbJgQ6
	uhkfo8f0JMqdTCfXjRiIF8tV/tng5oPNmqm9bAiGRLgQfFEjikO8MoONhA1l/8bbb4aMcJ0EDCpwb
	iGlij64sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC8pB-0007ew-HY; Wed, 11 Mar 2020 21:23:33 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC8oz-0007dm-2K; Wed, 11 Mar 2020 21:23:22 +0000
Received: by mail-ed1-x544.google.com with SMTP id n18so4694375edw.9;
 Wed, 11 Mar 2020 14:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to;
 bh=x0vMnUWbA/pguPmLGYbrnPPB2rzwjNFeXGV8tDl8EHc=;
 b=Fc2K0QU+I9cvFeaqMSKIwlPM7MTIB/2ZcQHTNH1MDPDKjaJq0LzVJ9DE7tST1QYC3J
 WVtNPu6J/WRMUcOx0hy0eDMOGB+d/fGguiWGHSBc74XdVMK8hyBq5Vx7H9lWKPzL1SFw
 +ALXVPGDjcsSNyg+DR3qJ/NWUxK+WfYzLphHccF0fSM4zDOXplV5XaUzqnMRhRReNlt1
 lRNVdC2bIYwWraFEbLJA8b2UF8wr2LsXihqfUuNJjtcAvjVqRywoGqifEDh/WFlpV8Cb
 TCWmnWDYAqgwGy/5pfCHFBwGBkfsNUMIF9ofYM2CYnwMkE4EbYFt+f7FombJmPlp39XS
 IVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=x0vMnUWbA/pguPmLGYbrnPPB2rzwjNFeXGV8tDl8EHc=;
 b=G+HmURUQKrcIYaDy4NkY7kfgXPgMzCnEYT7fE4lofcoFvSOTCMFlSCjZowuzx2e9No
 idvqkC6goWqpDsx1ULhDtZWUL8Ey6/VgzZP3GcqbKHrb1c/kiCqp9OILCY0uS7sn6LQl
 6+xFUl+QHR/fxiw16ahwvXyClum/myF72OyIPIfIyyWoAVSG0iooh4c5jsIexxSQf25D
 6dThsv6y9phO8nrCaKflvk7YRsQ8tQTXBSmPBOPZaiIjTPfqACLkEcgLIYYRPFE2UfiX
 /Bt+Olu1QNEJltLqhXWPK5FPOjFB3pVe6PwLhCV6L7nxuu2qRgsRuMFv2kw3jx1lrpBA
 Q2JA==
X-Gm-Message-State: ANhLgQ2fG25mOeEhDlCpQckl4xYBNwK1klNLfG4HunznaRG+cxkExnm1
 yYZFzHaCX9j42tf3IKODpDLbChwM
X-Google-Smtp-Source: ADFU+vuJwFXpnrBzv40dCBP3h+AX7zZ6Xl7yJkaBDJ7f6M6ixhK3UtiQ4A5ThmtGhgkApLre6QpR/g==
X-Received: by 2002:a17:906:a3c8:: with SMTP id
 ca8mr4167665ejb.370.1583961799405; 
 Wed, 11 Mar 2020 14:23:19 -0700 (PDT)
Received: from [10.67.48.239] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id n9sm3162981ejz.87.2020.03.11.14.23.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 14:23:18 -0700 (PDT)
Subject: Re: [GIT PULL RESEND 2/2] bcm2835-defconfig-next-2020-03-09
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>
References: <91044910d494a12d06e7098561fe1be86a61f033.camel@suse.de>
 <5cff48d9bb0f774c3668811165435bf3d5ef1152.camel@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <31937f8d-191c-c84d-44ac-f80918aee7d0@gmail.com>
Date: Wed, 11 Mar 2020 14:23:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <5cff48d9bb0f774c3668811165435bf3d5ef1152.camel@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_142321_129114_EFFF1F33 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7117286308614606679=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7117286308614606679==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="x7jeA01qgjUrUOZD6ALI15JNjSiGPwynv"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--x7jeA01qgjUrUOZD6ALI15JNjSiGPwynv
Content-Type: multipart/mixed; boundary="3MlRvItvxhqPWB8ZmjhzPHiW3PG41BohJ"

--3MlRvItvxhqPWB8ZmjhzPHiW3PG41BohJ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 3/10/20 5:29 AM, Nicolas Saenz Julienne wrote:
> Hi Florian,
>=20
> The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea098=
62b9:
>=20
> Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
>=20
> are available in the Git repository at:
>=20
> git://git.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi.git tags=
/bcm2835- defconfig-next-2020-03-09
>=20
> for you to fetch changes up to 93d3ae352bb5cda928570cfa2247d9c529605bef=
:
>=20
> ARM: bcm2835_defconfig: add support for Raspberry Pi4 (2020-03-09 20:36=
:30 +0100)
>=20
> ----------------------------------------------------------------
> This tag introduces configuration options in bcm2835_defconfig for basi=
c RPi4 support.
>=20
> ----------------------------------------------------------------

Merged into defconfig/next, thanks Nicolas!
--=20
Florian


--3MlRvItvxhqPWB8ZmjhzPHiW3PG41BohJ--

--x7jeA01qgjUrUOZD6ALI15JNjSiGPwynv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEm+Rq3+YGJdiR9yuFh9CWnEQHBwQFAl5pVr8ACgkQh9CWnEQH
BwS6VxAAif4Jo3QQq8ynwUrFyW5zmx0ZywTumC/T9a6DRAkGbmFar0AQYDxHJAvu
CMxkEz5BuhQYnQ6rrh1jbs+U9bCFMO3H73zAGE+1itevsQYtvQQAxKkkInLT6QT8
tu21zy7FgHrOnHWyghvfmH+j6ywKHYOudBbTE/s2AM2T1K8gftIpDUGwpn0jTuHA
In9hCxlnr343B1FZ1VFhoX/COGF+TI2bBAv/P1gzekbAvNYDkbPilMoBKCeDkREV
mPnt5Zlr8two1oDfrzojF4TAT17JNAPWxqnUxVzV8nMHLUWAIGenQoHc0IkmkURJ
Gmh1nrg2zM14ruaLjUOAKj80DyfVDEaf6RRKo4+uFRrQP32yadPaZh19tLtlpRGu
lEcKCsmhsoAQ+HPspRAhmfVE5JCFVJ+bdqo5If3LHwsIMz/GyN5oS2OW4qbHf2wj
It94SK1dPic19ycfQsmFGmHbSJOeC00Jj2VbzznVIbeS+YosD0ELyifDE0A9MEsx
u4mpc2bt/qTDcgA2HXoZpxalv9aHErIu2CL2Rq2DmOYO1r/BADn02gJWlU5m21Tl
urUZ/1IvQN6gb5v2nzasF5jjAAZA+hSF2ZNDE0cR0kpBGiRz5HnOYa243YM+lyU6
76es5k3iGpYMfqEMOsZWn/v7v4ZtPWmVg6uhQ+Wr9UJ2ERHlqqg=
=/nvc
-----END PGP SIGNATURE-----

--x7jeA01qgjUrUOZD6ALI15JNjSiGPwynv--


--===============7117286308614606679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7117286308614606679==--

