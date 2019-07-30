Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C5D7AD31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 18:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Z2tNqdWFoj4vM3eKDiWovKAPCCKp19qw3SYvEzB0JE=; b=rD5wT1a9jVd1xD0f1EF+Gip/8
	JunYgIw7j5IOvXqoNc/NgKB1v2A4wf6F95vFgPHiJCDTvhXw56R484iNF5vagMzhFcMBAq2stwO0o
	8yGRyUrtn98jLh/9IctDUY4Q/eR0nR3xVqB4EVzpZh8zU5kISPzjMlRXpphN11FeJ2W39sezv4eKE
	frKAVvz6+7J2UhZjargMdnpEFthIYeNJKyXxmTXVPhTUQ/HzNBQKSRb1yqRHyGPMGxm+zjz5snvXF
	9DRsHRUbBaVZYCzePbH1/U7PwqwqkZ+AytllRbO1sqTWxgOXHZ6JILR77YBm4zujLkiPS06v/vuK6
	zk4XzhX9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsUco-0007AO-1i; Tue, 30 Jul 2019 16:05:18 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsUcW-0006rq-Rx
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 16:05:02 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 45yhGL5v2qz1rfcq;
 Tue, 30 Jul 2019 18:04:58 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 45yhGL51J8z1qqkM;
 Tue, 30 Jul 2019 18:04:58 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id sEBAZfL2s-uz; Tue, 30 Jul 2019 18:04:56 +0200 (CEST)
X-Auth-Info: NMGXziR/PhuMc/va7X2TT6X0tYpuv4qbHHDlc7BiilA=
Received: from jawa (85-222-111-42.dynamic.chello.pl [85.222.111.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 30 Jul 2019 18:04:56 +0200 (CEST)
Date: Tue, 30 Jul 2019 18:04:51 +0200
From: Lukasz Majewski <lukma@denx.de>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: DTS: vybrid: Update qspi node description for
 VF610 BK4 board
Message-ID: <20190730180451.38cad018@jawa>
In-Reply-To: <CAOMZO5AoSCDCMRKpkWQ=0PwiFG-O9doGaA31FRhDCGmNr7Xefg@mail.gmail.com>
References: <20190730150552.24927-1-lukma@denx.de>
 <CAOMZO5AxPHHobQQhq30fjLVeSroLdvdT0+GqCWi8it1ejhDONA@mail.gmail.com>
 <20190730175336.382d833c@jawa>
 <CAOMZO5AoSCDCMRKpkWQ=0PwiFG-O9doGaA31FRhDCGmNr7Xefg@mail.gmail.com>
Organization: denx.de
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_090501_050530_6FC9FD77 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Stefan Agner <stefan@agner.ch>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0615725103261934967=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============0615725103261934967==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/FFYaC=52dh2nz5Y2tmjEFGz"; protocol="application/pgp-signature"

--Sig_/FFYaC=52dh2nz5Y2tmjEFGz
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Fabio,

> Hi Lukasz,
>=20
> On Tue, Jul 30, 2019 at 12:53 PM Lukasz Majewski <lukma@denx.de>
> wrote:
>=20
> > Shall I refer to the original commit (which added this DTS)? Or the
> > original issue posted to linux-mtd [1] ? =20
>=20
> You can add a Fixes tag like this:
>=20
> Fixes: a67d2c52a82f ("ARM: dts: Add support for Liebherr's BK4 device
> (vf610 based)")

Yes, the above is correct (as indicated [1]), but I was not sure if I
should also refer to the original post to linux-mtd ML.

Now it is clear - thanks :-)

Note:

[1] -
https://www.kernel.org/doc/html/v4.12/process/submitting-patches.html#revie=
wer-s-statement-of-oversight

Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/FFYaC=52dh2nz5Y2tmjEFGz
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAl1AaqMACgkQAR8vZIA0
zr1ITwf+P4+TW29l+wXSF2r4SKuAIoARSdCU3NSfGUpLW7gBQbK3x4RXlNnYW2y5
pLsjYgE4yPWa6xv+Eo0oZz23EgmQdXCEmflVB85+CxRJpOPTfL0f1oRNmYXm0Nfq
uQBko26IzNP+LMzSHDqJnaViHdWqP8URYGpMKHxL4lEUbZRfMzpieYt1IgHbCcB0
/H0cx/EFFO3P+txZw7OQwaZSvYhSrwqO9hc645rXXIqqzO+nJ/RtWw5FAgVZHK6g
tGTZ8rMYvWfhh/RuZwZzM7QktcV5NPxlVBagXFLujay/OSs/ENNO7MyWSTjL4g9B
F0ZoHf+Mp8liTvpd9aet/8v1UMB3BQ==
=LT7H
-----END PGP SIGNATURE-----

--Sig_/FFYaC=52dh2nz5Y2tmjEFGz--


--===============0615725103261934967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0615725103261934967==--

