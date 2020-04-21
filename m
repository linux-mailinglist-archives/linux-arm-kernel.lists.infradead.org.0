Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F9D1B2050
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 09:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tz4lNK/2twLdgDmMXUA7ZID8kAUvmHn4QqnAK/4NLrg=; b=qJlnRYCOloMWDjPtDQiwHhcBo
	czYKSxzC8OtaZ0RQS97N137CeYtdDvixuPNU9czlmhJklZ1rIVx9YhETOb6W0eZ4RUI1Mi6BD8s+J
	t2YWEHiSFEXHqxFm3GcmieX8VDMtioSwMqbuAzMnC4I7Nr7263P1qsv/LYhs9paissBPKjraQrSQp
	81s1JChyIttDbH80IpNDxqz9SSHv0z5+9ngyypay9FUBVSOcqeTuSJ0cYKHjMnBu4tNNq3LR9TwKE
	/pZn9YkQVn6xMnBwecn9prihNcaHetgny5Ss930EutdrF/yOZ61ft6h3V/RRVbYy52xzu/MnjJ9zK
	n5wDFr1QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQngS-0000rF-Mh; Tue, 21 Apr 2020 07:51:08 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQngF-0000pv-88
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 07:50:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id 188so2439414wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 00:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to;
 bh=YiceeYcWfp6dJ/RtflaMzhlWjjOPviw2ytlJMWOClhY=;
 b=O8z8ttwJR6dcJUhc+8LGb4hs/8vpWV5wPFNlwj3hX4sqjBlj9VCozgza7rmlmF0nyg
 sR9jdg0JlkqtNlqSxJN9MMyWEMQTSMQYd+y6HDqehioUuHLxxLvNUmzqAYqZtfYe7Nqo
 U9PVVibPNeDEdyQg8MLqcN4parA0PYSYGL1/vNbQKU+jCrLISFgcnKtUV8JZhuB/jfRn
 iujoqcl7KJCNIj/8ylAATrkXt7jsueUyKvryr8OmiVpc13WKbwslCYa9b/BbW0mexBzb
 gifbsGTI6kg1vPhkVFVdGt2P35dbyUhHFbVMxtQ6kSWlPs6pESfn4nx2MZtmYXlFKm9B
 eMmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=YiceeYcWfp6dJ/RtflaMzhlWjjOPviw2ytlJMWOClhY=;
 b=FlYcsYr6dAEYuu4OlShbnfQdjJe3Gj67RiD4pwHrcmEozqdZrViOriQb1to/Ajf12w
 0sTggMf/NyyED1ZhitcF7GulWlPeANeA82l17Al46gYvZdGEaWTAJ+rowKzT6j3oQ+oo
 Sovrx/2B/KFH+JHspSq/6WJAv/sza4A9UTp2RSnVwrSuHaNVdaqMfV8oHhqpd6AifEjg
 pCU0mpFPFR6MK5RGVTq49kEGX/qYy1jBi9emRtsS/C9bwDRfzQ9sozdwZF+nmOXBhceV
 x0OT8XncpTcpiFN+2MFJzFWNGMKglbuNNENvgOI4It0vnst7lgLX/9ruGBzlyrfQv1/L
 xcLQ==
X-Gm-Message-State: AGi0PuYRz91+HkM+bPQrpLjt6mfHbux3krXr0Qsd1ZgJA7KJOR2WJiRL
 LHLiI+ZIlEJQyGX8F01uPqRA/w==
X-Google-Smtp-Source: APiQypJntnQXyUB7m8ZlLuci0rbNEL+5xcVIFduLSjrsBtszf6elR7Ic+ICBST6g+lkfywlC4LA+bg==
X-Received: by 2002:a1c:a4c2:: with SMTP id n185mr3719961wme.104.1587455453826; 
 Tue, 21 Apr 2020 00:50:53 -0700 (PDT)
Received: from [173.194.76.109] ([149.199.62.131])
 by smtp.gmail.com with ESMTPSA id h10sm2698150wrq.33.2020.04.21.00.50.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 00:50:53 -0700 (PDT)
Subject: Re: [PATCH v2 0/4] drivers: clk: zynqmp: minor bux fixes for zynqmp
 clock driver
To: Jolly Shah <jolly.shah@xilinx.com>, olof@lixom.net,
 mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 arm@kernel.org, linux-clk@vger.kernel.org
References: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
From: Michal Simek <monstr@monstr.eu>
Autocrypt: addr=monstr@monstr.eu; keydata=
 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
 0Z1MQlmNcq2bhOMzTxuXX2NDzUZs4aqEyZQ=
Message-ID: <358c6672-d22c-d892-779e-37ad2e1f3f65@monstr.eu>
Date: Tue, 21 Apr 2020 09:50:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_005055_292507_5AAAF968 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6014196553907533353=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6014196553907533353==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="56uosgCqsMvUwIcVzBzSJ7DTyA1fGmT6t"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--56uosgCqsMvUwIcVzBzSJ7DTyA1fGmT6t
Content-Type: multipart/mixed; boundary="uUbcrPOqrtwycs3ZOPy1uZYhM6duFt3P3";
 protected-headers="v1"
From: Michal Simek <monstr@monstr.eu>
To: Jolly Shah <jolly.shah@xilinx.com>, olof@lixom.net,
 mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 arm@kernel.org, linux-clk@vger.kernel.org
Cc: rajanv@xilinx.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Message-ID: <358c6672-d22c-d892-779e-37ad2e1f3f65@monstr.eu>
Subject: Re: [PATCH v2 0/4] drivers: clk: zynqmp: minor bux fixes for zynqmp
 clock driver
References: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
In-Reply-To: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>

--uUbcrPOqrtwycs3ZOPy1uZYhM6duFt3P3
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Stephen,

On 02. 03. 20 22:50, Jolly Shah wrote:
> This patchset includes below fixes for clock driver
> 1> Fix Divider2 calculation
> 2> Memory leak in clock registration
> 3> Fix invalid name queries
> 4> Limit bestdiv with maxdiv
>=20
> v2:
>  - Updated subject for cover letter and patches=20
>    to add prefix
>=20
> Quanyang Wang (1):
>   drivers: clk: zynqmp: fix memory leak in zynqmp_register_clocks
>=20
> Rajan Vaja (2):
>   drivers: clk: zynqmp: Limit bestdiv with maxdiv
>   drivers: clk: zynqmp: Fix invalid clock name queries
>=20
> Tejas Patel (1):
>   drivers: clk: zynqmp: Fix divider2 calculation
>=20
>  drivers/clk/zynqmp/clkc.c    | 20 ++++++++++++++------
>  drivers/clk/zynqmp/divider.c | 19 ++++++++++++++-----
>  2 files changed, 28 insertions(+), 11 deletions(-)
>=20

Do you see any issue with this patchset? Or do you want me to take it
via my tree? I can't see any dependency that's why I think it shouldn't
be a problem to take it via your tree.

Thanks,
Michal

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs



--uUbcrPOqrtwycs3ZOPy1uZYhM6duFt3P3--

--56uosgCqsMvUwIcVzBzSJ7DTyA1fGmT6t
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQbPNTMvXmYlBPRwx7KSWXLKUoMIQUCXp6l0wAKCRDKSWXLKUoM
Ie8pAKCLJ9u1N02dTrwuXevPCS4f/00H9QCgmRblSZlAjRwa9lv60fA1pw1WYH0=
=35Mk
-----END PGP SIGNATURE-----

--56uosgCqsMvUwIcVzBzSJ7DTyA1fGmT6t--


--===============6014196553907533353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6014196553907533353==--

