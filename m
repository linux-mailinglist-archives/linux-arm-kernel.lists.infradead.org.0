Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF5870812
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 20:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HFH43GMGprBiWy8wgFBPzUI7F/qfQjmQgZJPF8c5f7o=; b=ho8H7o+zxgfN/Qkzym68QA330
	c64HkpeXoKL4UEeNrpWK4gqPMcZ8+NUrH9PR+r+EI9wOfkxbK9pHSglKX903Bv3V7mV29z70B8XFj
	MwTlFZ4nnYCH/i2r0Bt1ziUanezeW9TfwgDuosajxGYoHLb5I88h0m5XOEBxd1u27SvrUTInf65FR
	eiuiU2o1cM+SqtYm6HYHH9zR+VwbsL4qNNrtBgvgtZPa+eXursjSXcucSMkdZVLkRE7t/Vs6izizO
	qaPz0oEs8aVpGMGX8R/diDvyaW00TkHCgWeccrjkxuHkQPu1Ln3YGH2qeey06owDjUTjwYIeO6447
	doyx8wndg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpccq-0000is-UG; Mon, 22 Jul 2019 18:01:29 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpccY-0000i9-DM; Mon, 22 Jul 2019 18:01:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id AE02B10A2890;
 Mon, 22 Jul 2019 11:01:09 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id W4DVnCITH2Nh; Mon, 22 Jul 2019 11:01:08 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 4A65510A13E4;
 Mon, 22 Jul 2019 11:01:08 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id CB4E12FE2547; Mon, 22 Jul 2019 11:01:10 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH 00/18] ARM: Add minimal Raspberry Pi 4 support
In-Reply-To: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Mon, 22 Jul 2019 11:01:10 -0700
Message-ID: <87a7d6eyop.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_110110_546322_66915585 
X-CRM114-Status: GOOD (  16.91  )
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============7091143106109168187=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7091143106109168187==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Stefan Wahren <wahrenst@gmx.net> writes:

> This series adds minimal support for the new Raspberry Pi 4, so we are able
> to login via debug UART.
>
> Patch 1-5:   Prepare platform and DTS for the new SoC BMC2711
> Patch 6-10:  Enable support for emmc2 on BCM2711
> Patch 11-12: Enable pinctrl for BCM2711
> Patch 13-17: Add Raspberry Pi 4 DTS support
> Patch 18:    Update MAINTAINERS
>
> Unfortunately the Raspberry Pi Foundation didn't released a
> peripheral documentation for the new SoC yet. So we only have a preliminary
> datasheet [1] and reduced schematics [2].
>
> Changes since RFC:
> - change BCM2838 -> BCM2711 as discussed in RFC
> - update MAINTAINERS accordingly
> - drop "spi: bcm2835: enable shared interrupt support" from series
> - squash all pinctrl-bcm2835 changes into one patch
> - introduce SoC specific clock registration as suggested by Florian
> - fix watchdog probing for Raspberry Pi 4
> - convert brcm,bcm2835.txt to json-schema
> - move VC4 node to bcm2835-common.dtsi
> - fallback to legacy pull config for Raspberry Pi 4
> - revert unintended change of mailbox in bcm283x.dtsi
> - add reference for arm64


I gave some comments on the bcm2835-common patch, but I think this is a
good start and would be worth merging to start bringing the board up,
even without a respin.

Series is:

Acked-by: Eric Anholt <eric@anholt.net>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAl01+eYACgkQtdYpNtH8
nuhCnhAAgBRNPAZ35O+bC/XiTCvTUwVxyNmNbtrkztXtBUlmBKrifmsuKEkCbjZb
yMAmwOIMZtwC8HzeH4h4/bTd/l0djswGTPjb5hoko3u0CFfRnZnMgBwyFenfdThc
SCI8/+zNSl8JFnmGKKdARYW2gvm2LySsBYS69YC33IhBCPquSHcBupZ7Y/GJYzt0
KYOGnRglYuUQmJdwBzK/3x9qi4wBaC2wh6X1WRErBrFoY6neodUNT5BAVko4hVXO
aS5Ej5u0Yx+1VNgNx64DfT8S5WRfpy2wmhwujYn04MWt4PcryHKY8HU7T+UW+/tg
PVw+yVnsyC+1ctvmW7qXEDY+41msPKcxUIYMEOskftCKGnM7criZrEp6W8m5dVag
VmlnK/r8JESbAzgBCKE6G0opua0OCGzuOU8GmdFA2eXd6wwwG+uW+SBArjZi7UxF
p2q7YB52eyzNenqn4pYMrmgRFiO2I3Ai4+zHnPM0tWt2pysfW1uG6wqaJlCPiSJj
WbIN9dmcauHFKsiiJs3TUIDkWhEcSA0v95wL3k6ormEn+FtKYFbf90R36lRmK49S
2G70Bd8yGl/kEYAL3+Kb5lBTaqhO8B0uV+M4nN5a73K/LXwQ2kZ/RWsgaQzLPMFa
3C/xv0Ld6qx/gNSWR2bRcV/DydAP1UjfJaidCUE2tnpWJFmQo7U=
=dYeO
-----END PGP SIGNATURE-----
--=-=-=--


--===============7091143106109168187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7091143106109168187==--

