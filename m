Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296B9132F8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 20:32:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C2A8sgXUnLJYsDbUDkpzL8X9KKnvAn0FyQgpuq3TyPo=; b=B8I
	1Q1bzNUjiWATqCthSIhppg/uf0e/mH5VchdcOuWeUXY1YFZpTGrt/gxqRNVatDGvxST8jNjTTHUgk
	SaUXqV3cAVSJhK+rXsspzKzK2YKZnUbeTLO4y1o/boAZoYUJpeMzbMjnT6lczaNm9mieaLNg4wzGN
	7ocWCCp3/V7F/dHcQa+X804RkZ5auXfHlrLsBf4ueuEDSL89+QdFmYKqRlihREc/zqQNRBRj8gOsB
	s4bQa5w1cA3YZz9nb/aag2zkEIlLXCMyfE8Cr8I4KQrjfaND8lbF5joQApoAsoRSqtfpzWGPQLid8
	1XtGA128CFYIj60UqKQZuu0Ek5kQa0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iouaJ-0002si-49; Tue, 07 Jan 2020 19:32:11 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iouZz-0002oF-Io; Tue, 07 Jan 2020 19:31:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9853BAC4A;
 Tue,  7 Jan 2020 19:31:49 +0000 (UTC)
Message-ID: <a2f77f1a8bb3b981d3e2fccd3fcb56733b63946a.camel@suse.de>
Subject: [GIT PULL] bcm2835-dt-next-2020-01-07
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Date: Tue, 07 Jan 2020 20:31:48 +0100
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_113151_797555_7972D7B0 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Stefan Wahren <wahrenst@gmx.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5163319424918665808=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5163319424918665808==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-dPkd0/o+G6GVBoisjtIy"


--=-dPkd0/o+G6GVBoisjtIy
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Florian,

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a=
:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://github.com/vianpl/linux tags/bcm2835-dt-next-2020-01-07

for you to fetch changes up to 530735df62582d5d1f41faf0e0d1ca7d21dca571:

  ARM: dts: bcm2711: Enable HWRNG support (2020-01-07 20:11:51 +0100)

----------------------------------------------------------------
Stephen Brennan (2):
      ARM: dts: bcm2835: Move rng definition to common location
      ARM: dts: bcm2711: Enable HWRNG support

 arch/arm/boot/dts/bcm2711.dtsi        | 6 ++----
 arch/arm/boot/dts/bcm2835-common.dtsi | 6 ++++++
 arch/arm/boot/dts/bcm283x.dtsi        | 6 ------
 3 files changed, 8 insertions(+), 10 deletions(-)


--=-dPkd0/o+G6GVBoisjtIy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4U3KQACgkQlfZmHno8
x/65SAf+NmZ2tYuGVZ1tPFBGugW+TKZ4/sZc8XrBeX8tDg1ozDZp27WsDe9umGb6
ojqvPr7FUtSL1kG5PIBAqTIJl9upzCsmEECpLIp8ZES243ZcH7dWARjqM0SCBxVs
OomJMI2NEuRyteq7s/7ibmVDyJGHSianm06hafyiups++fvjz0q8TrcZ6wM31Cu8
eJ70koJNf+R/2xcMRKdqjAtu47NJ1c5ny7NxN6BGeRyuc99Owl7qyK+V8y0jnteK
Ua4cW+EFy1DWILtDUT6tZpG+LEqdhcSM0V1f6KFPi3BwSDqtLPuszVMCf4iHkPCF
LFgv6rKl1SrB/4es1gFccTV8lfV18w==
=Hz8W
-----END PGP SIGNATURE-----

--=-dPkd0/o+G6GVBoisjtIy--



--===============5163319424918665808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5163319424918665808==--


