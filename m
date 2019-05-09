Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 773181956B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 00:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aULoxZHx5cGnb0kyih9lLIiYZfBdlCIV6jkIOC+muwU=; b=tr8ijwUyoPY8SNsNbkvdTto0J
	VjuAYVIQM7OlUp+yRYRstJufY4FUn4U/y0YMnkehIxAxBNIUXp/KrofXeucllaW1DPHnVIbi4kZV9
	WI9+iloh4VvHz7QV244lam4S4pt9XA2AYmmMSzm764iHPi9fA2bG2c0/kRd2+KnzCivKnyPXty5mX
	I2RdUDAUhUIf6jTTDoep/aX8isWYi6XxtuwCn98gtbsVUTvBYodGwzAbYGSupg8FsTdhVRQfmZw6C
	W05sjLqjX6epHcvuUNZ3F4s9GazdnFZMvH3roGdzKVnM84jAhG7w1VgtgjeKQcjTelvhHY/p23NqH
	zQ7M/NNug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOrqH-0007W4-Fy; Thu, 09 May 2019 22:48:45 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOrqA-0007VH-8a
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 22:48:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 58A1110A34BF;
 Thu,  9 May 2019 15:48:36 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id cbl6gorFW7wH; Thu,  9 May 2019 15:48:35 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 5649610A34B6;
 Thu,  9 May 2019 15:48:35 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id D7D482FE3AA9; Thu,  9 May 2019 15:48:34 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] clk: bcm: Make BCM2835 clock drivers selectable
In-Reply-To: <20190509202956.6320-2-f.fainelli@gmail.com>
References: <20190509202956.6320-1-f.fainelli@gmail.com>
 <20190509202956.6320-2-f.fainelli@gmail.com>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Thu, 09 May 2019 15:48:34 -0700
Message-ID: <87zhnvqm65.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_154838_336842_949BAACF 
X-CRM114-Status: GOOD (  10.13  )
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
Cc: stefan.wahren@i2se.com, Florian Fainelli <f.fainelli@gmail.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============6724065333899343770=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6724065333899343770==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Florian Fainelli <f.fainelli@gmail.com> writes:

> Make the BCM2835 clock driver selectable by other
> architectures/platforms. ARCH_BRCMSTB will be selecting that driver in
> the next commit since new chips like 7211 use the same CPRMAN clock
> controller that this driver supports.

These two are:

Reviewed-by: Eric Anholt <eric@anholt.net>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAlzUrkIACgkQtdYpNtH8
nuh7Zg//UNWYC5bsxmrRB4YpTfPJsmTMI2PN2Ax9N5pmQtBEesNnhvu9j/0rMDaZ
Y2r6pKD17+BdtFZwoAin8WuvpSBIUUx3h1VO2eYeHkpPxiKQDsErC/UJFkW0TPn7
jfNDq7ZWLScQOfNt2VP1RKwGGItx/eVwBhx+ogfWBgDNas/sc5HFB8LPrWFdgf3y
wbChlm+3CcJz0jSvl+Kl6eJzZEjWaEOms1V4jyG65rBQ5hyGcnVEUM5N/OFX0gGG
SDwLueGoCYZ/PSs7ThXHi9LU+1uGicj0MgQbkpm0O4XIRyW8akuPzAA4nFZwEnKr
SA7MnELFlYmRHaXsqgt1KKpyxvuDFhfTGSTlwX5kI2B5s2mjRczuYZm0OVkVKue/
uRXwpkXm5Fu0Qclx1abpx7I5Wg6nLhMT8+e664XK0mWi6mzKcHaVq//MzEdAtfeV
pTYeG/hPl1N4ZZYUVHxAekKEBpUiPqVqgzmtJT8dlznpQ0lblOeSO9MN3ORAhz4Z
Q2BduRuHTlbpyLTrNYNuKn9V6i3hpMlsvTQHck2QG4YFVwzmAMqtw4ItVSBrTm92
LOCQnxEtt0g863S/MhX9M2JGFxqe1AIfnOcXriTQlr9S0ddwvfvxUZ6W9NcJB0aC
4XFzWzPaUPYsvk72TKJaNPNv1PmhI47+xXR0MO3quhAJaOBpk5M=
=CcFF
-----END PGP SIGNATURE-----
--=-=-=--


--===============6724065333899343770==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6724065333899343770==--

