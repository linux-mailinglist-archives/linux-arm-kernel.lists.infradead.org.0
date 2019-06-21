Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBD84F13E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 01:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hRElXJbPiTFP4QeSFnBg8KSVAcMHiheiLmvOnsWE3uc=; b=FwnSVdows2nqGZoqukmjdyAf9
	x/JWHIRBZP55KoeY+cSCcrWYctqECwJK0bTcvThT1eX/jcbjrVfnXNm74zJzqdH3U+FeHojoCiAl/
	8yac9D4wCjuPLtEvekaGoXi3x/aR6PMI9t85VABdmNJL94EZ31xEXkh5Fm24UUGWOZjVb6HoilUTJ
	YdM6TpCJnTPL/IxumQvQLqdQZROvJwgZc9g/dvfbeI23QZ/XEFxJaDRF2DDnyZAg9n1Ht3EhYL//f
	Kvma3vbKN9FHozGrnRQN/IGOFGDQJwxn0v2TuK6Ciyv01/6nD6ysKYujgB0CfIANUq8hvMIMqF0x4
	5QXUaAJ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heTBZ-0000Am-H2; Fri, 21 Jun 2019 23:43:13 +0000
Received: from cyberdimension.org ([2001:910:1314:ffff::1]
 helo=gnutoo.cyberdimension.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heTBM-00009s-V6
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 23:43:03 +0000
Received: from gnutoo.cyberdimension.org (localhost [127.0.0.1])
 by cyberdimension.org (OpenSMTPD) with ESMTP id 01ace5aa;
 Fri, 21 Jun 2019 23:39:23 +0000 (UTC)
Received: from primarylaptop.localdomain (localhost.localdomain [IPv6:::1])
 by gnutoo.cyberdimension.org (OpenSMTPD) with ESMTP id 6876e6f0;
 Fri, 21 Jun 2019 23:39:23 +0000 (UTC)
Date: Sat, 22 Jun 2019 01:42:38 +0200
From: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH] security: do not enable CONFIG_GCC_PLUGINS by default
Message-ID: <20190622014238.3231cdb4@primarylaptop.localdomain>
In-Reply-To: <deb847beb643d43e6617f52eae7b15ee368d7ff8.camel@bootlin.com>
References: <20190614145755.10926-1-GNUtoo@cyberdimension.org>
 <CAG48ez30+VOj78rCiWMKtm0tHdVR67CcrHVCV-FFCfK-nRQTOw@mail.gmail.com>
 <20190614162811.o33yeq65ythjumrh@shell.armlinux.org.uk>
 <20190614201434.3fa4bb6d@primarylaptop.localdomain>
 <deb847beb643d43e6617f52eae7b15ee368d7ff8.camel@bootlin.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_164301_311238_FC46E721 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kees Cook <keescook@chromium.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Jann Horn <jannh@google.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Emese Revfy <re.emese@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3614344539244402172=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3614344539244402172==
Content-Type: multipart/signed; boundary="Sig_/baAzChRUeHGRyp_LOgfIZZh";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/baAzChRUeHGRyp_LOgfIZZh
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Sat, 15 Jun 2019 12:13:15 +0200
Paul Kocialkowski <paul.kocialkowski@bootlin.com> wrote:

> Hi,
Hi,

> Other than that, we can probably manage keeping a tree around (at the
> Replicant project) with mainline and this patch (enabled through a
> dedicated config option). As long as it's not horrible to rebase, it
> can work well enough for us.
I've managed to buy a new Galaxy SIII 4G (I9305) and I've tried u-boot
on it, and it works flawlessly without any patches and it does also
work with CONFIG_STACKPROTECTOR_PER_TASK=3Dy.

Merely rebasing that arm decompressor patch over time should not be an
issue. However I really want to find a way to avoid having to look
again and again over time for commits that incidentally broke booting,
because, the bootloader doesn't do what it's supposed to do.

> Maybe we could also consider having a shim that is executed before the
> kernel in order to sanitize things and allow booting a mainline
> kernel, which would be less invasive than a full U-Boot port.
If I understand correctly, that isn't a solution either as it
would also be affected by the issues mentioned by Russell King.

More specifically I would need to do more research to find if the
bootloader(s) shipped on such smartphones properly cleans and
invalidates the caches before jumping to the first instruction.

Doing that research probably requires decompiling the bootloader,
which in turn would require me to get legal advise to understand if it's
possible to do it, and if so how to do it while respecting the laws
involved, and still being able to work on free and open
source bootloaders without creating issues for the projects.

Another alternative to that would be to make users use u-boot but
this is not possible either because:
- The bootloader is signed. So the bootrom checks the signature of the
  first bootloader (BL1), which in turn checks the second bootloader
  (S-Boot) in which the MMU setup probably happens. So I can't merely
  replace S-Boot like that.
- Fortunately for that system on a chip, there is at least one BL1 that
  is signed but that doesn't check subsequent signatures[1]. The issue
  is that it's not redistributable[2].

If that BL1 had not been published I would always need to use additional
patches to test the patch I send, which is very problematic in many
ways:
- The additional patches would need to be mentioned in most or all of
  the commits I send upstream.
- If not, the maintainers and readers of the patch would be unaware
  that it would require another patch on top to work.

So thanks to that, I'm at least able to test the patches I send in
Linux without requiring additional patches on top, but I'm still not
able to ship something usable to end users.

This means that the work to complete the support for the affected devices w=
ill
be way less useful, as there would be no guarantee of users still being
able to use the device with newer Linux kernels.=20

Are there other (Android) smartphones affected by similar bootloader
issues? If so is it even possible to replace part of the bootloader?
Did some people found a way to deal with that kind of bootloader issue?

References:
-----------
[1]https://wiki.odroid.com/_media/en/boot.tar.gz
[2]https://github.com/hardkernel/u-boot_firmware/issues/1

Denis.

--Sig_/baAzChRUeHGRyp_LOgfIZZh
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEeC+d2+Nrp/PU3kkGX138wUF34mMFAl0Na24ACgkQX138wUF3
4mO/txAArsD2q2FAWFThDVdZHvrdCMCkerJMFX6mBxHmoGRdbbQabzLqzf1vJbiY
AgtLLT8F/VomizEuxXQhG4e3iIvafVz15Ft7jh9chgktXVK4PIHz7Kadq/MMErt6
ic+hDT15hF26i91ViLlKN42pRRxDFb7DBb+rW8MsK9dGcKSeQadHMmp7hsZozYyn
JNH26wPkcvAqam225FyP/ERuBsRwVMK41Z++XY82bfuqrlpGe+Ejupqd0XhxJh+J
qLBfuJvtIDOKT8Xh1NPFDH3yCs+MfiHPhciIIeAQMMSUsIsPsCET5drR9KShhx3j
ejSJVDvOFnGMR/JmFdJJYGHS57YPvl20c+sLLnUtNSq4/8KQwl0UcgwdjCTH/sh+
/sIHIkP48sKMNcyBh5sJOuNeI0B5RG0/zCDMGa9vIB4851vSRfPmRuTUrxSHDdBF
DAhDi5Pvbcl1kC6YIZt2V/QjwhcqqElg9cGd+8aaiC1diOG1bmkaOU21BsL4C74I
rK3MwAFNHFeGYApLPuaLstmI3URmAPJfDGDOgdb+uHfPs/b1h5d/nLR98IwAopLL
2IlOtoo/aVLnQ5z25rAxQAUOxMzyLVtmBHjtDvxrAdGuqgmSD4iRP2/FUFaSTfjX
hmmrSITJwaHoz8xxg4EZwQcDXfVGN7pW39vkhPlR8AtAcb/PsEM=
=92L2
-----END PGP SIGNATURE-----

--Sig_/baAzChRUeHGRyp_LOgfIZZh--


--===============3614344539244402172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3614344539244402172==--

