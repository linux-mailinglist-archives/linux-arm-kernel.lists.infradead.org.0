Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8436D425
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 20:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Id1AFbM6N0Gr5scsSlejWq9+Q6629NslA+tHhPqV4I=; b=EwIj+R0jwWRW4cXEjwhNzOK7m
	0MpWIMwXcKkE+FhJrfE7LYGHUNjPd6ZAAxXFstzs1kSgWfMgJdIZTu3G+vrJJ3Go9C4x+Sj+BxUNt
	WVwg7IM3uAKjDll9qLE4YzXi2rTYS5jXghSbw1ExuzJ+XOJlih53k9Dr0tUq2EjZyB24sTbpbLqcQ
	+bonhTvngTa3iG1UfmFDb1C1UhgU47ycqD7DTrCUwYatwGuNatcWD783lA3CTmIAhFyVE6tRKak4L
	hwZklOzyK+TeRqKdnGg/aaP+EjX88dgbM1CC83pH3ZWWAPVb5WszfKc5iozWaqRCQno5SUTnC6hBO
	4YC8PxSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoBP4-00042x-Fo; Thu, 18 Jul 2019 18:45:18 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoBOq-0003dT-QG; Thu, 18 Jul 2019 18:45:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id EA80710A34E5;
 Thu, 18 Jul 2019 11:45:03 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id VJxnEHBTTwGh; Thu, 18 Jul 2019 11:45:01 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id DBDB010A1AE9;
 Thu, 18 Jul 2019 11:45:01 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 03B782FE2547; Thu, 18 Jul 2019 11:45:03 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH RFC 00/18] ARM: Add minimal Raspberry Pi 4 support
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Thu, 18 Jul 2019 11:45:02 -0700
Message-ID: <877e8fgp1t.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_114504_896717_EDE0561A 
X-CRM114-Status: GOOD (  16.97  )
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============0045168248185277525=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============0045168248185277525==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Stefan Wahren <wahrenst@gmx.net> writes:

> This series adds minimal support for the new Raspberry Pi 4, so we are able
> to login via debug UART.
>
> Patch 1-5:   Prepare platform and DTS for the new SoC BMC2838
> Patch 6-9:   Enable support for emmc2 on BCM2838
> Patch 10-14: Enable pinctrl for BCM2838
> Patch 15:    Enable SPI support for BCM2838
> Patch 16-18: Add Raspberry Pi 4 DTS support
>
> Unfortunately the Raspberry Pi Foundation didn't released a
> peripheral documentation for the new SoC yet. So we only have a preliminary
> datasheet [1] and reduced schematics [2].
>
> This series is marked as RFC because some parts (e.g. pinctrl) are still
> work in progress.
>
> [1] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2711/rpi_DATA_2711_1p0_preliminary.pdf
> [2] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_4b_4p0_reduced.pdf
>
> Discussible things:
> - SoC compatible BCM2711 (as on the SoC label) vs BCM2838 (existing naming scheme)
> - ARCH membership ARCH_BCM2835 vs ARCH_BCMSTB

Thanks for taking this on!

I would love to see us drop this silly upstream/downstream compatible
string naming scheme and just use 2711 (or 7211 for modules shared with
7211 that were enabled there first).  However, I don't feel that
strongly about it when I'm not the one doing the work.

Other than the SPI shared interrupt change that looks dodgy, and a
preference for the clock change being data-driven instead, I would be
willing to ack the whole thing.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAl0wvi4ACgkQtdYpNtH8
nuiZRBAAljJpthQvWXCClvxeRHJYGp0vPGv1je6Rn2HvKTfNezTxpRWlVbfr0hj6
jOOCNheqif3GOEz0ExfQM4Fwvdv1W/bt4594sEm9RoXGjxuQioMYsf5rSs0fYN+l
hMEGfJ0lOLU1qeeeyFMJRu4O+LM7ZY8UPa2BQo3btYBHfuG/W1lgTTLl1YWe90fQ
dBXJTxoKfdpa0kOhsw1LbkMsgbm32+zG97tMdzNAOVP4NeDfnmrr+LVWTq09N8af
0PSkmf3GHmwXAkZ21y2g0MsviJgFBZIOPWv4YVZUknz4uyflxjnInVTp4Q8i7VC8
iS20wEgmzcuIOZq7iyTCIUQXHbite6kzAbNT11VxBiesRg+YW4CWcMvFasZ6AzcD
plLuHXgIzKBOfN+xeQB36Zo9cEcHHe+2uH8uZNvgLVcWLJuzs0EWCFdJLQSCDkX9
pVaIEXtRl7Cbux7sdVmWFyFuHwgHjZ4fnmykDBSNubS/+OjjvSL05Pn+hzelxJam
XzMY/v38TY5xRCZQlWrc7Lyhij686M9rrCU9h/n4AxQb9uZ6REE3JLh3dHzWbSD9
FXEAAQU24Rzix4iBHu/6NyXU/xFp9WuZ2uMqeNLQuDQXbxqp6KOq71Ti//aTtQwN
wDDt0T904SpZrjJRCUSjMqRECziHcCp6lnNg+V+Dj+fGKO8rOdc=
=Zs2Q
-----END PGP SIGNATURE-----
--=-=-=--


--===============0045168248185277525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0045168248185277525==--

