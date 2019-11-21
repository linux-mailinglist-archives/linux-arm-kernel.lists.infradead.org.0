Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97703104E36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 09:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VPZ3oJRUjX3ssyKDmjTysQQ6Fd/K+tRDaot+Uw/B0tY=; b=h1eIZqHvXGPT6dwFb4IO7vWQZ
	REMYkkDNwySBBv4CWITnSb4GjwLPc/DIiTowCV5wYoCzq18bnAaYuxiGNjZPizDTaX2OoMPJ+fGr7
	CBfjTgP9lD8zN2N1ZHhyrZWZGrDmXqckQM2iyiX1t2KPPNQytRezuU2aZrkZSRBWIvBVJ39uZVevG
	0Ri11Ox7XcDGHhBSZfKp+K7QJLiDC1/EpMlzMCyln0vTJolVGkoAXO5lpbU6O6DksZcgtRmIXTCs6
	wIZvqG4zX2xxp0Ir8QQNljPT5+h8WK8JEepTb/G9zbg9ubQRGS2MgbaUJs+mJJqIavQoLPD4RA2Ko
	tO/SwQ65A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXi1K-0006jZ-Ln; Thu, 21 Nov 2019 08:40:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXi14-0006gt-Be
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 08:40:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id a15so3263932wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 00:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to;
 bh=dmzgyGyJBsv+FiIjz6xKse5E3FYB5toNY8Ml4QJq0Cs=;
 b=oC/Kk4URzShCREA7XOlJqpTFtSFD4q/4U6EhWi1qPYleiOONeIGXECMvCsnrwmU/i7
 dEpTgcvSy02RItVzfwSE+zTgV8T55PnIqLoUbbcoABTaQl4gLCJzE0QcEM738hA8RHPC
 dgLaVYUGO0NFzoJ6JJETXsgdT1Q5uMjLRvBVT3sVFrFQtdpixuHzNBgwQkptn+CldnaP
 9hUSa8WzjkCuFYNBJ5pI3Zy45kBteSYuQ0AFt/9/aWIGUuGk+kMx5zvW6vNG4zZ2ae7E
 X7qbVqqppdLAtJtT0n3hKvvQNxZItxcJP9nARQkkqGElCavfYd14BH3D4VfA6iZ2NJwa
 2aBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=dmzgyGyJBsv+FiIjz6xKse5E3FYB5toNY8Ml4QJq0Cs=;
 b=KrVkG0LDuhMtBUU93DVgLkxlUrVQhqViIRQ+3I7pYOv12roikT4IHKhsRATjq2W25U
 /JoJV1zosHVxB01eJXlCrxtuw+p+7hFajjoRE75mu7+6DJBl9PWQXifqYUMETwdqNpxR
 J00URltnBqbT9ikNkt5RsTd3U7SiV8uaRzVAk+6Toez7tecuiDLv4cRvwvH6NOc1zkp0
 v4bufsEetL6aNN3Z1dd9n+uFQ85ANGGohCzK47CD3sK81MaXr8mD4y4ogqQy//dzQe/B
 zxas+tusIrmQXW7d/dw+mQmrZW8tAMs/8GWw43Lf/X0eFI8kiTD5t0NSA7sEC1UXdjAj
 BbOw==
X-Gm-Message-State: APjAAAUjmuyDRoA3zd6ceAGo9UjKwNWJto7TPet6OnjDaQcu/H7lqB6t
 KKl8hclTKQjA77r6z/T86aLmdQ==
X-Google-Smtp-Source: APXvYqxNL0UjlqYYh/b+yLlEqYduwv8KSN1furp8RArBk3vTPdMDKAOA9vVTDVhB7KQfaGqRhQhXfA==
X-Received: by 2002:adf:f489:: with SMTP id l9mr8597409wro.337.1574325641096; 
 Thu, 21 Nov 2019 00:40:41 -0800 (PST)
Received: from [173.194.76.108] ([149.199.62.129])
 by smtp.gmail.com with ESMTPSA id d9sm2395141wrj.10.2019.11.21.00.40.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 21 Nov 2019 00:40:40 -0800 (PST)
Subject: Re: [PATCH v3] arm64: zynqmp: Add ZynqMP SDHCI compatible string
From: Michal Simek <monstr@monstr.eu>
To: Manish Narani <manish.narani@xilinx.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, arnd@arndb.de,
 horms+renesas@verge.net.au, khilman@baylibre.com
References: <1571297331-99924-1-git-send-email-manish.narani@xilinx.com>
 <a0033b99-c58e-deb1-9313-f079c74775ae@monstr.eu>
Openpgp: preference=signencrypt
Autocrypt: addr=monstr@monstr.eu; keydata=
 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
Message-ID: <8c6936aa-0760-2f35-3996-4992651f4ed7@monstr.eu>
Date: Thu, 21 Nov 2019 09:40:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a0033b99-c58e-deb1-9313-f079c74775ae@monstr.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_004042_410860_091F9AD1 
X-CRM114-Status: GOOD (  16.99  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Type: multipart/mixed; boundary="===============7499235076218535478=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7499235076218535478==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="9wGfnAsabiQwA6vNDjsBlojUs5CAFpGAS"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--9wGfnAsabiQwA6vNDjsBlojUs5CAFpGAS
Content-Type: multipart/mixed; boundary="83PUAtFV3z9CmBe3ARDehnDuY7tVwU02f";
 protected-headers="v1"
From: Michal Simek <monstr@monstr.eu>
To: Manish Narani <manish.narani@xilinx.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, arnd@arndb.de,
 horms+renesas@verge.net.au, khilman@baylibre.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Message-ID: <8c6936aa-0760-2f35-3996-4992651f4ed7@monstr.eu>
Subject: Re: [PATCH v3] arm64: zynqmp: Add ZynqMP SDHCI compatible string
References: <1571297331-99924-1-git-send-email-manish.narani@xilinx.com>
 <a0033b99-c58e-deb1-9313-f079c74775ae@monstr.eu>
In-Reply-To: <a0033b99-c58e-deb1-9313-f079c74775ae@monstr.eu>

--83PUAtFV3z9CmBe3ARDehnDuY7tVwU02f
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 21. 11. 19 9:34, Michal Simek wrote:
> On 17. 10. 19 9:28, Manish Narani wrote:
>> Add the new compatible string for ZynqMP SD Host Controller for its us=
e
>> in the Arasan SDHCI driver for some of the ZynqMP specific operations.=

>> Add required properties for the same.
>>
>> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
>> ---
>> This patch depends on the below series of patches:
>> https://lkml.org/lkml/2019/10/17/37
>>
>> Changes in v2:
>> 	- Added clock-names for SD card clocks for getting clocks in the driv=
er
>>
>> Changes in v3:
>> 	- Reverted "Added clock-names for SD card clocks for getting clocks i=
n the driver"
>> ---
>>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/=
dts/xilinx/zynqmp.dtsi
>> index 9aa67340a4d8..c7b8c3c28aa7 100644
>> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
>> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
>> @@ -494,20 +494,26 @@
>> =20
>>  		sdhci0: mmc@ff160000 {
>>  			compatible =3D "arasan,sdhci-8.9a";
>> +			compatible =3D "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
>>  			status =3D "disabled";
>>  			interrupt-parent =3D <&gic>;
>>  			interrupts =3D <0 48 4>;
>>  			reg =3D <0x0 0xff160000 0x0 0x1000>;
>>  			clock-names =3D "clk_xin", "clk_ahb";
>> +			#clock-cells =3D <1>;
>> +			clock-output-names =3D "clk_out_sd0", "clk_in_sd0";
>>  		};
>> =20
>>  		sdhci1: mmc@ff170000 {
>>  			compatible =3D "arasan,sdhci-8.9a";
>> +			compatible =3D "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
>>  			status =3D "disabled";
>>  			interrupt-parent =3D <&gic>;
>>  			interrupts =3D <0 49 4>;
>>  			reg =3D <0x0 0xff170000 0x0 0x1000>;
>>  			clock-names =3D "clk_xin", "clk_ahb";
>> +			#clock-cells =3D <1>;
>> +			clock-output-names =3D "clk_out_sd1", "clk_in_sd1";
>>  		};
>> =20
>>  		smmu: smmu@fd800000 {
>>
>=20
> Patches have been applied
> https://lkml.org/lkml/2019/11/20/366
>=20
> That's why I have applied this one to my tree.

Sorry for confusion. I removed this patch. There are two lines with
compatible property which is wrong. Please send v4.

Thanks,
Michal



--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs



--83PUAtFV3z9CmBe3ARDehnDuY7tVwU02f--

--9wGfnAsabiQwA6vNDjsBlojUs5CAFpGAS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQbPNTMvXmYlBPRwx7KSWXLKUoMIQUCXdZNfgAKCRDKSWXLKUoM
IdCvAJ9yiPEpy8IXdcyvoEBl6JZ/XrSZAACgiVCqXvO6nZ7neFjKgmcxFIyiVDY=
=f5Et
-----END PGP SIGNATURE-----

--9wGfnAsabiQwA6vNDjsBlojUs5CAFpGAS--


--===============7499235076218535478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7499235076218535478==--

