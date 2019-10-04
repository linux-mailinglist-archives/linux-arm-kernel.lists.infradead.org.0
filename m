Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA51DCB679
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 10:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KJzd/rwio2xMGxLJ2WCAgLwjHbkLIJ4x7AwMqXyrY4A=; b=bE3HOvv14Leebn/yVd569/YL/
	Vrh/5DMm1fVW04DzvT83axfv4IKm0HoCdvEdg8Sb6T8xMFSoTv4QxvVBqf+L5q8EAyoDqJ/P3n+p0
	d5qhvjPdNacSFzJcj5U9nKY5DJkBGB3IQ+s67H1gSY0Hz7J4DYHNaVxuoFLNc3bgkzHkiRt9BP5sM
	tLN57uBpwgdagurnsyRqjW43Gw3B4+5MtxgjtQAp10BMdWWCXXrhBP4GwZ8nJU84bnBrsCMPO11wg
	pGLmpgXeCDa8BTK9WFOe/EUWeBsRQOp2t7IGDy1v7pd04Y0mxkBxxRcj/XaCE1SDNXHj7Gs7k96vR
	YnkARUkYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJ4U-0008Io-KP; Fri, 04 Oct 2019 08:36:18 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJ4N-0008I3-EU
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 08:36:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AFBEAAC0C;
 Fri,  4 Oct 2019 08:36:09 +0000 (UTC)
Message-ID: <2303772588b9f98f186abf967efb2af58bcb8349.camel@suse.de>
Subject: Re: [PATCH] ARM: dt: check MPIDR on MP devices built without SMP
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
Date: Fri, 04 Oct 2019 10:36:08 +0200
In-Reply-To: <0be9b704-4cc6-7b23-4435-256372e90ffd@gmail.com>
References: <20191002114508.1089-1-nsaenzjulienne@suse.de>
 <17976e82-04da-d22d-5779-f50db63f98a2@gmail.com>
 <2af0a5ad604064d8fcf9febce72f0c23f1a1a1db.camel@suse.de>
 <0be9b704-4cc6-7b23-4435-256372e90ffd@gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_013611_775642_4773CA63 
X-CRM114-Status: GOOD (  25.11  )
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
Cc: "kernelci.org bot" <bot@kernelci.org>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============0863821712089411549=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0863821712089411549==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Ur3xg1tVzwpJPXsH9G28"


--=-Ur3xg1tVzwpJPXsH9G28
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-10-03 at 16:47 -0700, Florian Fainelli wrote:
> On 10/3/19 12:39 PM, Nicolas Saenz Julienne wrote:
> > On Thu, 2019-10-03 at 11:08 -0700, Florian Fainelli wrote:
> > > On 10/2/19 4:45 AM, Nicolas Saenz Julienne wrote:
> > > > Currently, in arm_dt_init_cpu_maps(), the hwid of the boot CPU is r=
ead
> > > > from MPIDR on SMP devices and set to 0 for non SMP. This value is t=
hen
> > > > matched with the DT cpu nodes' reg property in order to find the bo=
ot
> > > > CPU in DT.
> > >=20
> > > The code you change is about the "mpidr" variable, yet in your commit
> > > message you refer to "hwid", that is a tad confusing for the reader.
> >=20
> > Sorry, it's indeed pretty confusing. I'll send a new version with a fix=
ed
> > description if there is no major push back.
> >=20
> > > > On MP devices build without SMP the cpu DT node contains the expect=
ed
> > > > MPIDR yet the hwid is set to 0. With this the function fails to mat=
ch
> > > > the cpus and uses the default CPU logical map. Making it impossible=
 to
> > > > get the CPU's DT node further down the line. This causes issues wit=
h
> > > > cpufreq-dt, as it triggers warnings when not finding a suitable DT =
node
> > > > on CPU0.
> > > >=20
> > > > Change the way we choose whether to get MPIDR or not. Instead of
> > > > depending on SMP check the number of CPUs defined in DT. Anything >=
 1
> > > > means MPIDR will be available.
> > >=20
> > > Except if someone accidentally wrote their Device Tree such as to hav=
e >
> > > 1 CPU nodes, yet the CPU is not MP capable and reading the MPIDR
> > > register does return the expected value, but that is wrong anyway.
> >=20
> > An UP device will most likely not have a MPIDR. That said I'm not sure =
this
> > is
> > always true. As per ARM1176JZ's TRM[1], the RPi1 CPU, if one was to get=
 the
> > MPIDR it would raise an undefined exception.
> >=20
> > The way I see it's an acceptable outcome as the DT is clearly wrong.
>=20
> It is, although you probably want to use of_get_available_child_count()
> instead of of_get_child_count() since we could imagine that a boot
> loader or some other boot program mangling the DT could intentionally
> put a 'status =3D "disabled"' property on the non-boot CPU node for
> whatever reason.

Good point, I'll fix it on v2.


--=-Ur3xg1tVzwpJPXsH9G28
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2XBHgACgkQlfZmHno8
x/5YdQf9GN1rZ3KZuHx01XDB6XKFKmAytIseTr2ogtxDi05xhH5AnkT84tZ62fZb
yonXNXZPLUgCzaDuSQBorWu6gl7SnkLyAhNX9bF3kG9b0uQUOXAyBxt8ETXqQIq5
33l7g0QrY/BoR7sKP/ivdaRNmEtM6QpbCNubhlmB4We+06G1vzYZOGwE7kcLCGZp
HQokAmOqZ1J91s1y2AXVtTRgClhrqBa08SD0PqgNo0B9FW2m8c26gT8WI5K1+BuV
TFelueBrbPKz9RTUZw+VITZGqGAoG3iilnztkOwoXbpb/No123kGEbli50ajcEUQ
AoBRLomyXsPbW0AeVIzbl5ri+BLvqA==
=q3CM
-----END PGP SIGNATURE-----

--=-Ur3xg1tVzwpJPXsH9G28--



--===============0863821712089411549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0863821712089411549==--


