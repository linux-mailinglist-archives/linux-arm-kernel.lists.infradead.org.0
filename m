Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA75F3E0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 03:21:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=adADMoo96Qsl04nxF65MbcAaiALFa1T0rTNUD9t0nRs=; b=fhRDPf1dKtlXzBu+XQvcdimPl
	scjlU4sSEo5+E4r1yKeD+BgDb7LIaHy2QNTXoXO8FQMM7B4qXYV97w6wWZ/MXmO2R/azv7GhLeyqi
	Ddd9vN0xYlVR7byzej3dTHD8+ZhwrZYEjSdJV7VbFL9FBAfjed73AAMH26DUb3eQZJaR8GFcqwqqB
	H2mUB5HpHvxdrj+4LK0xuQIRID7fMwpjba7aPV8+51zjIThy1PrYKtdwR/C+OUFOwxD2fST3B/jWE
	HXubqx+KobPrBvhXIoKITEadskWOOoP+mHW3dhMyksbOcxTe2fF6hUzjCXHKvCQ9KrR80YXZmXkon
	O4ioczw+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSttS-0004vi-0a; Fri, 08 Nov 2019 02:20:58 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSttE-0004sd-OC; Fri, 08 Nov 2019 02:20:46 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 478PBS3PfSz9sPV;
 Fri,  8 Nov 2019 13:20:31 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1573179640;
 bh=S6Hvp/X50jZ7EFZZYb6XjoD8DIp7pBL6EOxbI/Y+OmY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=U4rtQaWysYr5ul3hUzj3tXyGWA+dGyTSnc3y2qfDAh4w887T0Hzfb8DdEqQP21j78
 bLKePda8G55isteH/DTvpPd03ZK9+vFIP2iUGpxiv+3xIK9OuZtjmN/RAIpP15dfdj
 0Ld5faxNX3hXehfbb36CbglNc4LqiXGpHLudhhFf9471GTQ/nh4M9Ia5iSSIjnNJxu
 63CUKpyBsz0dhmHgaL3lh9b0hx4Rx9HV9YWgOC91UBjeJRdrNX18Qn75Ld9VMLlUVV
 mTc9cTLqYFj2lbrszxLu+sBzbYPOLWb8hL6IZrY3G9dxk9CJ02Ie/8JWe6/omQo4Sy
 vyjmwU0AmsEPQ==
Date: Fri, 8 Nov 2019 13:20:00 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: generic-iomap tree for linux-next
Message-ID: <20191108132000.3e7bd5b8@canb.auug.org.au>
In-Reply-To: <20191107204743.GA22863@lst.de>
References: <20191029064834.23438-1-hch@lst.de> <20191107204743.GA22863@lst.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_182045_027033_4126968A 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: multipart/mixed; boundary="===============7988207743234354487=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7988207743234354487==
Content-Type: multipart/signed; boundary="Sig_/cPVZY9JpGW.gARWJr=rYvJb";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/cPVZY9JpGW.gARWJr=rYvJb
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Christoph,

On Thu, 7 Nov 2019 21:47:43 +0100 Christoph Hellwig <hch@lst.de> wrote:
>
> can you add the generic-ioremap tree:
>=20
>    git://git.infradead.org/users/hch/ioremap.git
>=20
> to linux-next?=20

I assume you mean the for-next branch?
--=20
Cheers,
Stephen Rothwell

--Sig_/cPVZY9JpGW.gARWJr=rYvJb
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl3E0NAACgkQAVBC80lX
0GwJFAgAgWvXVOBZdx5Do4eCmZ0ZSFyBsTuUtYHPbtNtwQy/iB3LV9BkCAPS767N
fkEYwRYkqSzUXOA/WIHUXJad89wLVEs1LjxmjeEqJQ2TvsUFGO8vjnTPyXDrfB3W
VTmeqX0QVqJIwGn29lL9S3UqJ1r1FZVLCcSFLOZQzyRCWmgT+sF9Hofg/5Lwv6xV
2c+V3LdCr0cTLB+ZHFOz0toYCQMeXlRJM82WAUPhV+jYc53MqEM2VxmJ2G51xIJm
YEIGyjw5cgDkdJhgj0f+iXPoG7BZ7OM6KPpEVZHEv6pdVP2bcuz37swC+XmbpMAX
PVoofTbgfmgGmqZ8GiRY+i/KHc43fg==
=dI/j
-----END PGP SIGNATURE-----

--Sig_/cPVZY9JpGW.gARWJr=rYvJb--


--===============7988207743234354487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7988207743234354487==--

