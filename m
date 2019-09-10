Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470F6AEFBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 18:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1GU0rW9mTdbgVQwSFVq2r0kDteMmWD/NzSOAtBnFhyg=; b=EiNTnXpYdRi+SFUmQdLwXDAzK
	nSdbmcCXopum2hXaFFN1Sga0HiL9QlO39pvGO5n+7KsQB+qnrQthu6FuTsu4vV5SF1fbx572ECzZM
	PWNpDCOaqkT17Idpkh96FbvBtnbggCYMKYqG+e9orYhIqODWoWX+I18aX0HqqrT+SAjcnVVyK9QES
	+w9eAx4iALMRUJv7oP5+un6ji462qxUehCgTGxD6n0SeHDn4AKay8/HwJqFsK3dMALJ2WPZ7U9mzT
	DZbBV/kYLcM8PwEwWXJTWRDsJdsxFz655kV4/16lxe3EuXl9b8F4LA6DQfsHsAgT6ODu1GFoCU7E/
	oLurQ/+QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7jAp-0007n1-N1; Tue, 10 Sep 2019 16:39:23 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7jAe-0007m1-QD
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 16:39:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id p13so322758wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 09:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9rKDGY0MFRZdaZnKSd/lS4UFdLIc/jP8nB7azl11tUI=;
 b=HEbLn3aBGyeecdNNQoeWj1L/XGqtVDfOU6G40udwnVXtfE77N+9FiOx6GFPmrarF23
 uG86Bu6HC3lbUTmj4o4UzYM/gWF6OPUKCeVbpknYQRGnl2pjf8f43WR3X4kP2eLfaZDo
 +poowPimf25Itf9lw/jXbWbDJKrNNKdyJ6iJOuueCCB/TYFEgxn2ujlTosLmOxJ7EPt2
 pkv3r98dWM4mDIg/RYxK0b+eBReztnhW/MH9vPLmp6sADnOxlCAovYJQBFZJM3uSO+8Z
 8wntJURcOMWawG2co7C3/v2WiW/CFH5PRvEfAYj1/Q1VNYxYv0jzRpbhnArMv1RauHSN
 cGhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9rKDGY0MFRZdaZnKSd/lS4UFdLIc/jP8nB7azl11tUI=;
 b=MhyveEWhqPJn2/m27Z6MI04GYPaYusRlDkNivWQN7Xw1QhAyerKcAWVzOh4cDUJevF
 KyivTxBEm5U9pMfsb2NNJWWpjUwgd77OvsCDyySJxyMGmP2U0xwUxb4LePAwuc7XVVmQ
 LjToY/fgFzOD2kwM2qSXH6wGzHKPHaXSDLtlWGmjGwNNlmNccbaqbVKhcc8I8QpRideD
 tJWynexi0qgFeOq6CfG12ullplvYmJDrydzh7onNPpU8UqZ0LQUoN5dGCl+yqYzFhgEW
 gDJw4jZNHNK77o8/5nVsQfTFe0Zfhq3wSyJWx3vg5uT7s3tpsKiWXLqtjGPsMTXzUJXK
 vk9w==
X-Gm-Message-State: APjAAAVxqSNjrhz5xJ50Krz4ttdOQea6MLeyETuNaIR5lTkpAG80W4g9
 41KzPPCKzxnZzzVZyOoS1N4=
X-Google-Smtp-Source: APXvYqw8ebDZH4F2c2uP5ThFXATEfOpH3jYOedzlB19JXj1slg+OSeGXmoaNfo72UIw0B5JqjcJGZg==
X-Received: by 2002:a7b:c447:: with SMTP id l7mr306535wmi.33.1568133548709;
 Tue, 10 Sep 2019 09:39:08 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id r65sm293647wmr.9.2019.09.10.09.39.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Sep 2019 09:39:07 -0700 (PDT)
Date: Tue, 10 Sep 2019 18:39:06 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
Message-ID: <20190910163906.ypyeaido6h4nurvv@pali>
References: <20190828150037.2640-1-aford173@gmail.com>
 <20190905230443.GA52127@atomide.com>
 <CAHCN7xL0fbr=Sv+b=0AuGB1PPhAAFdAFLEd_iBM+ZMTkUw5sHQ@mail.gmail.com>
 <CAHCN7xL-Gfxe0qF5w7BUsHnyhcNNpmCnchdKErnmiqggXfsLWw@mail.gmail.com>
 <20190909134033.s26eiurpat3iekse@pali>
 <20190909163543.GQ52127@atomide.com>
 <CAHCN7x+t-OVRE7pVM4V87_YMWpgO+_Vashfn1s5msoqC5eiwTg@mail.gmail.com>
 <CAHCN7xLaGQMM67VC-2_G8XC7UuG4c+TbbYb4z=ibJwZsQF4YVw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHCN7xLaGQMM67VC-2_G8XC7UuG4c+TbbYb4z=ibJwZsQF4YVw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_093912_854473_233C968B 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pali.rohar[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1793124943157460829=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1793124943157460829==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="v7pe77r44rvnt7o5"
Content-Disposition: inline


--v7pe77r44rvnt7o5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tuesday 10 September 2019 11:21:34 Adam Ford wrote:
> According to a note in omap_hwmod_3xxx_data.c,
>=20
> /*
>  * Apparently the SHA/MD5 and AES accelerator IP blocks are
>  * only present on some AM35xx chips, and no one knows which
>  * ones.  See
>  * http://www.spinics.net/lists/arm-kernel/msg215466.html So
>  * if you need these IP blocks on an AM35xx, try uncommenting
>  * the following lines.
>  */
>=20
> I decided to uncomment the hwmod entries, and I got the following:
>=20
> [    0.263222] omap_hwmod: sham: _wait_target_ready failed: -16
> [    0.263248] omap_hwmod: sham: cannot be enabled for reset (3)
> [    0.265837] omap_hwmod: aes: _wait_target_ready failed: -16
> [    0.265851] omap_hwmod: aes: cannot be enabled for reset (3)
> [    6.208866] omap_hwmod: sham: _wait_target_ready failed: -16
> [    6.287732] omap_hwmod: aes: _wait_target_ready failed: -16

Hi! Same errors I got in qemu-n900, but not on real N900. So I guess
those errors means that IP blocks are not present.

> Based on this, I wonder if the sham and aes modules are not present.
> If this is the case, it might explain why I cannot use the rng either.

Probably this is the reason, you do not have crypto/rng HW engine.

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--v7pe77r44rvnt7o5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS4VrIQdKium2krgIWL8Mk9A+RDUgUCXXfRqAAKCRCL8Mk9A+RD
UvMwAKC5PytcObjM5hlbkUO3+dfjWZwPBQCffPh8UWUkmuzDbXQs1ybxGZqap80=
=Gd7N
-----END PGP SIGNATURE-----

--v7pe77r44rvnt7o5--


--===============1793124943157460829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1793124943157460829==--

