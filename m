Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEED1044FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 21:25:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kkzulb/ldgjSqZEFnL//czumX5Zx9JxgeGXArzh08to=; b=ud9jPcNlm+dZFp/gViwdPapr2
	1AGkD2qLmQK9pRTr6I/IgfpwYMfd0BhI4fXkhPJ2wMVuEJXKGB2300rt/t/D+l6jedtv7+hdf/GSq
	tO0MlEpiwzt9P5jE7KJstS5Hk3dbxUC3wJ35PhtDBdQP+Nzbf4ARHeloxevX8ZTrBUki7m1CMVshW
	3Zcu4Z+BB5rbCbXFW2dPvsJTTVcbT99/aHwHEIhw2EOz4yWFLZk0Qb8ADU1uqhL/cKu6KklEOv9sw
	emE0x9DD1Ocg4ByKU8W8kAFVBazNxlyfZX/gtKSvazZ0dM6wivu2yYgy/TJrUr2jo4vxoNJKiHx2x
	z/SyD81gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWXF-0001x3-0R; Wed, 20 Nov 2019 20:25:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWWw-0001wc-Cp; Wed, 20 Nov 2019 20:24:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F0DC4B206;
 Wed, 20 Nov 2019 20:24:48 +0000 (UTC)
Message-ID: <681665dee34a47f26f7832d2c3e0e68a85b69e3f.camel@suse.de>
Subject: Re: [PATCH v2 4/6] PCI: brcmstb: add Broadcom STB PCIe host
 controller driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jeremy Linton <jeremy.linton@arm.com>, Andrew Murray
 <andrew.murray@arm.com>
Date: Wed, 20 Nov 2019 21:24:47 +0100
In-Reply-To: <f2202c4d-c2b4-c06a-8864-432380d0181f@arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-5-nsaenzjulienne@suse.de>
 <20191119162502.GS43905@e119886-lin.cambridge.arm.com>
 <f2202c4d-c2b4-c06a-8864-432380d0181f@arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_122450_580563_A7686A0F 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, mbrugger@suse.com, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4455797270821202912=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4455797270821202912==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-OoRtF6MuxmmZ/WkBbsKp"


--=-OoRtF6MuxmmZ/WkBbsKp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeremy,

On Tue, 2019-11-19 at 12:20 -0600, Jeremy Linton wrote:
> Hi,
>=20
> On 11/19/19 10:25 AM, Andrew Murray wrote:
> > On Tue, Nov 12, 2019 at 04:59:23PM +0100, Nicolas Saenz Julienne wrote:
> > > From: Jim Quinlan <james.quinlan@broadcom.com>
> > >=20
> > > This commit adds the basic Broadcom STB PCIe controller.  Missing is =
the
> > > ability to process MSI. This functionality is added in a subsequent
> > > commit.
> > >=20
> > > The PCIe block contains an MDIO interface.  This is a local interface
> > > only accessible by the PCIe controller.  It cannot be used or shared
> > > by any other HW.  As such, the small amount of code for this
> > > controller is included in this driver as there is little upside to pu=
t
> > > it elsewhere.
> >=20
> > This commit message hasn't changed, despite earlier feedback.
> >=20
>=20
> Also, unless i'm mistaken this controller isn't I/O coherent on the rpi.

I'm not sure I get what you mean by I/O coherent.

Regards,
Nicolas


--=-OoRtF6MuxmmZ/WkBbsKp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3VoQ8ACgkQlfZmHno8
x/7CIQf+N1s97C0orm13r3hHzluqTXyvjXEFM7l6iozSh3owLfyySyUqoQMk4GuU
c9lMxac+7u+lhG6r4TuAQnolTAgLA1Ufzjk1ZpZZ5lBI+meoPyouMUxMh85wxALx
JObhQOg/NLBFb/pLdfZeWrUgSxicDkJlkU9Wm63FItku5yaQjW0jfCNmAm6WpTXK
91SvkHzg10I5r4jHMyQw7Rqcet+KuMn8vyCgxLX9VkputmAPdl1yzLoXjvdZBPpO
8PHcZNiomyFwTEz1AFjKxDbuNzlWkAC/zSMGZl/skIC4FJPpNx3SqVC1UDAonI7+
0i4lMZKzCutFxwH1yIXE93bHPpQnAw==
=Z4RA
-----END PGP SIGNATURE-----

--=-OoRtF6MuxmmZ/WkBbsKp--



--===============4455797270821202912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4455797270821202912==--


