Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDC11518D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 11:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t/rtA0rDa1UCShQoz1DUpgA/R0AlvRgRI3PygiJBsRE=; b=dlfIXhQ8oclDJ/LnvBIAGTGGf
	0o5DaYATx22jOr33nAHhzOZupdARNmUxERMgtgMTj06ViBFumWnF96mAqlWTuEcsnqR9voTYfSDsQ
	pm0Q8RLpRnPvjujv340itHLpUEq7cCqZkaV7tEwpnrX4tQCMXSKp62O/H6YBYt+kbSnAsYavA6aSi
	RhJRFk5K5JnwSavNOBgFKSsYH0HAWlknHxfI/CyN8v65e6XxIRgNBKMxsMhstr1fNMv1cfo/4cYGo
	Mw9vki7xLuiL1Stho3edd6f+k+RpXYF3NCBWtsrig+B+Q0gIarhcWTv3MDdT1fCwfFpf2SKtDVWPe
	07J93fUiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvUR-0008VM-JL; Tue, 04 Feb 2020 10:31:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvUI-0008TM-N2
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 10:31:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so22300336wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 02:31:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to;
 bh=yrtra2ee+KLVOttd4bXZYdK9YXYtwBJf0l2O9Xpk63w=;
 b=T3LmiWCzexeHLHNbYatPJHQ1Jzu/Dfe6b91IWZnWDttMbj7NlluOZ4VbcqwqVz7//x
 LG9uDNGgWBZWg6kdJcgRrp/tWhBSC7AtLVjAG38MV1e2YuhzfYkHbTb8bESg5pYUn2g6
 mTBy8LOv0U8zO988akhwj5miebzX2id3YKATYKcicNb+fmzgXCtiFtRUBsbnZ+4qqtyq
 NphLTD94p3e2yfpafymvvbenC5CBwsTGmjNOQovWOOBASmREc66RhowyuOpGicGWWVAa
 iXSNU7q8H8k/8FTuBEfHRg+VPRJWUTbCZa1jwb6Cepv2+g5QlBqWa2XjyOicuaFnEHHV
 Lo7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to;
 bh=yrtra2ee+KLVOttd4bXZYdK9YXYtwBJf0l2O9Xpk63w=;
 b=e1hQ6NS5DioqdZRLpkdluKAEGw4U+P9Cip4rwc+WG+AXgb1h611gtqfxNPaozLHFqx
 Ma8CYxA1oU+vTsS0Cm5139iZATiGXw0ktviKw9hhvwEz8K/gZ1AnCjLcrKDecwAYALJn
 aPCeHzPxSQsG/YdTQykxarOFc/v8X1skBQkFD3joODGnxW62XG5iTZawXGRd82XGvXT2
 bq21rzpgejHuiPrEV5kOhL6yiN4ejQv34MZnXxTJR6u8MG27JIj6rM6JRdoLeBrBgCb0
 sjE+DgxuJLTnFb2pB0PWresWWwq22CMJhqiQUpbWZkqbbBkcnSwiBHuJe1c5P/E1vP26
 oBVQ==
X-Gm-Message-State: APjAAAWeA34/8O7RithswznzDG3/df9V8PrNhiRRXr7kCGh/lB27whdD
 9ZvJWW6UggThsUc6TO8H55S7dw==
X-Google-Smtp-Source: APXvYqzbzEy2S2mIksTlB/Be+HGMhTUe5EtNkl2cNi6/3J3nu2RvrRvZ8lWYtbHpC136cTDN5i5+Ig==
X-Received: by 2002:adf:ea8a:: with SMTP id s10mr20395994wrm.278.1580812278888; 
 Tue, 04 Feb 2020 02:31:18 -0800 (PST)
Received: from [173.194.76.109] ([149.199.62.130])
 by smtp.gmail.com with ESMTPSA id r5sm29620132wrt.43.2020.02.04.02.31.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Feb 2020 02:31:17 -0800 (PST)
Subject: Re: [PATCH v2 0/2] microblaze: Enable CMA
To: Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, git@xilinx.com, Christoph Hellwig <hch@lst.de>
References: <cover.1579248206.git.michal.simek@xilinx.com>
From: Michal Simek <monstr@monstr.eu>
Autocrypt: addr=monstr@monstr.eu; keydata=
 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
 0Z1MQlmNcq2bhOMzTxuXX2NDzUZs4aqEyZQ=
Message-ID: <5706978d-4c9a-1123-c34b-e19e2b8aa37f@monstr.eu>
Date: Tue, 4 Feb 2020 11:30:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <cover.1579248206.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_023122_783254_0059CBD3 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Max Filippov <jcmvbkbc@gmail.com>,
 Guo Ren <guoren@kernel.org>, Deepa Dinamani <deepa.kernel@gmail.com>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Paul Burton <paulburton@kernel.org>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Waiman Long <longman@redhat.com>,
 Guo Ren <ren_guo@c-sky.com>, Wesley Terpstra <wesley@sifive.com>,
 James Hogan <jhogan@kernel.org>, Manish Narani <manish.narani@xilinx.com>,
 linux-xtensa@linux-xtensa.org, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>, Chris Zankel <chris@zankel.net>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Manjukumar Matha <manjukumar.harthikote-matha@xilinx.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: multipart/mixed; boundary="===============7676219103764247621=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7676219103764247621==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="pBOm8rNjCoJTkwKyfl4Ed8HeJH77Ps32T"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--pBOm8rNjCoJTkwKyfl4Ed8HeJH77Ps32T
Content-Type: multipart/mixed; boundary="BbuWsr0XsV2TagfAoYrRnS0Lcvh9jdEaZ";
 protected-headers="v1"
From: Michal Simek <monstr@monstr.eu>
To: Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, git@xilinx.com, Christoph Hellwig <hch@lst.de>
Cc: Paul Burton <paulburton@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Manjukumar Matha <manjukumar.harthikote-matha@xilinx.com>,
 Borislav Petkov <bp@alien8.de>, Linus Walleij <linus.walleij@linaro.org>,
 linux-mips@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-riscv@lists.infradead.org,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, x86@kernel.org,
 Guo Ren <guoren@kernel.org>, Kate Stewart <kstewart@linuxfoundation.org>,
 Wesley Terpstra <wesley@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Andrew Morton <akpm@linux-foundation.org>,
 Max Filippov <jcmvbkbc@gmail.com>, linux-xtensa@linux-xtensa.org,
 "H. Peter Anvin" <hpa@zytor.com>,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Will Deacon <will@kernel.org>, Christian Borntraeger
 <borntraeger@de.ibm.com>, Deepa Dinamani <deepa.kernel@gmail.com>,
 Chris Zankel <chris@zankel.net>, Manish Narani <manish.narani@xilinx.com>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, James Hogan <jhogan@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Guo Ren <ren_guo@c-sky.com>
Message-ID: <5706978d-4c9a-1123-c34b-e19e2b8aa37f@monstr.eu>
Subject: Re: [PATCH v2 0/2] microblaze: Enable CMA
References: <cover.1579248206.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1579248206.git.michal.simek@xilinx.com>

--BbuWsr0XsV2TagfAoYrRnS0Lcvh9jdEaZ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 17. 01. 20 9:03, Michal Simek wrote:
> Hi,
>=20
> the patchset enable CMA on Microblaze. Based on Christoph request I hav=
e
> created the first patch which makes dma-continugous.h mandatory for all=

> archs before Microblaze wiring.
>=20
> Thanks,
> Michal
>=20
> Changes in v2:
> - New patch suggested by Christoph
> - Align commit message
> - Remove adding dma-contigous.h via Kbuild because it is done by previo=
us
>   patch
>=20
> Michal Simek (2):
>   asm-generic: Make dma-contiguous.h a mandatory include/asm header
>   microblaze: Wire CMA allocator
>=20
>  arch/arm64/include/asm/Kbuild         | 1 -
>  arch/csky/include/asm/Kbuild          | 1 -
>  arch/microblaze/Kconfig               | 1 +
>  arch/microblaze/configs/mmu_defconfig | 2 ++
>  arch/microblaze/mm/init.c             | 4 ++++
>  arch/mips/include/asm/Kbuild          | 1 -
>  arch/riscv/include/asm/Kbuild         | 1 -
>  arch/s390/include/asm/Kbuild          | 1 -
>  arch/x86/include/asm/Kbuild           | 1 -
>  arch/xtensa/include/asm/Kbuild        | 1 -
>  include/asm-generic/Kbuild            | 1 +
>  11 files changed, 8 insertions(+), 7 deletions(-)
>=20

Applied.

Thanks,
Michal
--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs



--BbuWsr0XsV2TagfAoYrRnS0Lcvh9jdEaZ--

--pBOm8rNjCoJTkwKyfl4Ed8HeJH77Ps32T
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQQbPNTMvXmYlBPRwx7KSWXLKUoMIQUCXjlH4AAKCRDKSWXLKUoM
IXg5AJ9J98El4wJeR5l37eVkp19mJ5smqwCdGPO/rvmeDwYSeGZMMaNPcnZNHRA=
=bdA8
-----END PGP SIGNATURE-----

--pBOm8rNjCoJTkwKyfl4Ed8HeJH77Ps32T--


--===============7676219103764247621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7676219103764247621==--

