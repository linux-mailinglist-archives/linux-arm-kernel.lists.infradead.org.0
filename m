Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9108719574
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 00:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LCcOOhJLTXjO2CLRaPNPqInh8wCQnei7+phfFfCHdgQ=; b=r8JMMYye5JrA8SwR3JyeRqsvo
	TdinIgScyK4JO9G0CEwIJnGdyWbjK/8gk0tWtpgiZRp6lonOhMr7Cu4nNuiGwbL6JFazfdZISg20Q
	0s7aVugYXMfbVZZOX5eYLf9tAFKqItUDb6oPT4freO6WDkLu2E5vJbzOFperqhppOol+lsS+J/baX
	aT3z33tm9N0W+u6Wya464PbygF8sbSH4nEgMbw4aP5jKrZSTd4eKeAeB56vDQSf11tA9xUBFgBgDe
	eJnD6+USjzZolIJ0cuKAwcKjNoAAVdsWcemFZGfGYIcVm1V0AbsazqRuWOqMSePXGrXudiXW5kIep
	cnq0wCyOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOrvA-0000s8-6L; Thu, 09 May 2019 22:53:48 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOrv2-0000rD-LU; Thu, 09 May 2019 22:53:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id C42CF10A34BF;
 Thu,  9 May 2019 15:53:38 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id KaayIk_7wkA7; Thu,  9 May 2019 15:53:37 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id A64FC10A34BC;
 Thu,  9 May 2019 15:53:37 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 27EFC2FE3AA9; Thu,  9 May 2019 15:53:37 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/3] pinctrl: bcm: Allow PINCTRL_BCM2835 for ARCH_BRCMSTB
In-Reply-To: <20190509205955.27842-1-f.fainelli@gmail.com>
References: <20190509205955.27842-1-f.fainelli@gmail.com>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Thu, 09 May 2019 15:53:36 -0700
Message-ID: <87woizqlxr.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_155340_730608_F1DC2EE6 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.246.234.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Matheus Castello <matheus@castello.eng.br>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>, Al Cooper <alcooperx@gmail.com>,
 Lukas Wunner <lukas@wunner.de>, open list <linux-kernel@vger.kernel.org>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>, "open
 list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, "moderated list:BROADCOM BCM2835 ARM
 ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
 =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>,
 Doug Berger <opendmb@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: multipart/mixed; boundary="===============3880728320411015568=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3880728320411015568==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Florian Fainelli <f.fainelli@gmail.com> writes:

> Hi Linus,
>
> This patch series allows making use of the pinctrl-bcm2835 driver on
> ARCH_BRCMSTB where it is also used. Binding document is updated, and
> then the Kconfig language is updated to allow selecting this driver with
> ARCH_BRCMSTB, finally, Al updates the logic to account for the
> additional registers that were added on 7211.

As far as platform maintainer goes, patch 1-2 are:

Reviewed-by: Eric Anholt <eric@anholt.net>

and patch 3 is:

Acked-by: Eric Anholt <eric@anholt.net>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAlzUr3AACgkQtdYpNtH8
nuhpHQ//dM7jTyPUB9eHCYdZerTKDtr+6aY7wKi3KTY3eTJVErru/9skG0qyV1Es
ccQf6Zkj20wnXjucSP9f0zEHCaeybXgx3OKLALE063nuglnvfKhEzDGvzWUb2Xv6
BBlCBf5o9xM5nIhdw1i2bITSNvUXYZy+JFRTVZH59x5h6OBYfaxLFwon7hxFajpQ
1VxFDUEIpltkJuJNp7dXNvC+iIEAv7zWNS5JR05S8h5R7H23c4odUPfWEGkMTFdH
w2+kPoNVT6aZ3u4DT+EFH/SGfhAWwkCX06KBa5/J8G026R/x6VG6lmsohe7sGyrh
HRoozBamxxCixfHI2imHsjwkLWLlEijZeh+HV8iHmTlQcdZnLY6hQ0KxAsVr9dqW
r03BFJ1uHKhFg86kPsVraAVlOhr8riqQnzsrmh/LkmG0eF6WppgLQ1Q2txFvA4/R
WxFXNu0vRRd4X4ICCcllge77E50HM3bhxwmbdp/oouQfyJVMxwVJUzbbDGEKWQ5u
JDYndEouNcbB8+vnRzli8bqu+tkif/wODaqp8THHB4IvpteGcgk2+yCBh0CrYV6f
/WGNhOZFqWHshFL1uVYwPvnlW4VkJPTJ7O8w490kobjnU8CwCTn0rUoe2n45f8Oi
iecWgOgVSl9mjzEL3d81+PmuomYdSwz9vz2LhOkD4oiATkGSbK4=
=HgWt
-----END PGP SIGNATURE-----
--=-=-=--


--===============3880728320411015568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3880728320411015568==--

