Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0801139A60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 20:55:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=10OO6dNO4kjX6lZ1WkSvEsXFx7Axs+knq/zqdYSM8VY=; b=kGkO3VWzjR0fW9U1KBBRUooUt
	/ueXsBTk0nRIYsx51y7s4X9QhSPxScoT6iHtu45VOT1N2/0DIwV5cbj0pAU5RjUUMRDLTGLjd1CYj
	fHV22q8lwOMo5W37+chsgKkPkH38GlRnlR23eMbXGZ9f/TS7lqOACU24Uc35kg5O9ZgPzR0s05MLS
	5c2FSZgvRNcSi34gyg7L+b9f51hQi2mIGLKNYi3AU2mpk+xciZziaaD5t00pvkpiq/K/65N9kH6MD
	GDHEcUBqGD1KUYO8PRGQyqhebQ3tRsv0CmtcvcXVh2zIv8NmBXKRDqnopL+D23gpfIvTHTU4g90NN
	0h6yGU0fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir5nZ-000529-7g; Mon, 13 Jan 2020 19:54:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir5nP-00051Y-69
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 19:54:44 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5FFCAACAE;
 Mon, 13 Jan 2020 19:54:38 +0000 (UTC)
Message-ID: <9a69ed8892ad7ba8bb38cc96bb781432e8218d1a.camel@suse.de>
Subject: Re: [PATCH V5 0/4] ARM: Enable thermal support for Raspberry Pi 4
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Stefan Wahren
 <stefan.wahren@i2se.com>, Zhang Rui <rui.zhang@intel.com>, Amit Kucheria
 <amit.kucheria@verdurent.com>, Rob Herring <robh+dt@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Date: Mon, 13 Jan 2020 20:54:36 +0100
In-Reply-To: <fee791c9-afdc-fd3e-2ab9-d5e45e23f7f0@linaro.org>
References: <1578941778-23321-1-git-send-email-stefan.wahren@i2se.com>
 <250b15ef-636f-d964-3eba-0067c07e5a9c@linaro.org>
 <4a2b7974-db0f-bd0d-21f5-ccdc0ad2bc30@i2se.com>
 <fee791c9-afdc-fd3e-2ab9-d5e45e23f7f0@linaro.org>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_115443_374150_0EB66862 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3167543412350384281=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3167543412350384281==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-FDWcctfo8Ek2gLiRNQ/T"


--=-FDWcctfo8Ek2gLiRNQ/T
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-01-13 at 20:24 +0100, Daniel Lezcano wrote:
> On 13/01/2020 20:20, Stefan Wahren wrote:
> > Hi Daniel,
> >=20
> > Am 13.01.20 um 20:10 schrieb Daniel Lezcano:
> > > Hi Stefan,
> > >=20
> > > how do you want the series merged?
> >=20
> > i'm not BCM2835 maintainer anymore, so the final decision is up to
> > Nicolas or Florian.
> >=20
> > But if i can make a wish, it would be nice to take as much as possible
> > via the thermal tree, because Nicolas already sent the pull requests fo=
r
> > 5.6.
>=20
> Ok, I can take the series if it is fine for everyone else.

Sounds good to me. Thanks!

Nicolas


--=-FDWcctfo8Ek2gLiRNQ/T
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4cyvwACgkQlfZmHno8
x/5MsQf9FaeEislffa+3ktu4lfHtF7FI7qha+TqSexWbULp/KR+FqxLUwGgYtMxk
8eWvp3HnWKM0Zu84LODrnkElT7llhS7ZuaCXi8kEqFPQRer6lKlO6L+qcVvwm0F+
7dluGuHS3LfByHXO0XWAGI1ySijeZz5T6eQwiJQNOx49e86yEli/KJUDImrNHqIV
sZZ5f3XsBSAjwV/V0LD1BzXgoNlijVueLOeMgdsHRrexIpGzJl5EcRpTvrQ493nR
QwVhvyrRuC9YhbqIzTYNL/yBzbMOs9RRi9xyMG23qJ8ui29Lbnotk1MTn1XZEAH/
BXo1OWkWzrkuWOv0mHHYxkd59Qu3DA==
=/pF3
-----END PGP SIGNATURE-----

--=-FDWcctfo8Ek2gLiRNQ/T--



--===============3167543412350384281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3167543412350384281==--


