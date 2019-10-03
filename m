Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A540CAF65
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 21:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e08micogu1NDGgQPF9M0yad1O8Hm6N1IEFkogh6BIBU=; b=h5VeQcttO3Mr+voYuDZZI6Uof
	aHQoUAqsRWt64hExJMLsApPQDeVRKqyyFnx7NCmqWjccpbYHU5+zMs2FUjtu5Xc0SRO8e4mWGB/4T
	LlN5CXJSFrWR2SM80UHWb5iF3U9740GbGopTwqOAcPbxqevkHj7+nu2NbdcjRdcNNb+52LoTtdUpS
	mwDOdWf0XpO0PNz2ekuWEvppmQ6o99RIEIBs7QbqDFmNGrgPNm41K8GXriOm13vs5/N1VauekjaJg
	vqvpURJTW0Mo9D6JAMhDxF2NPHlc2q/kFFIeQVzRJKPu+mONlCyv73JFWT1YdnmcL/eHMhGjVaxvX
	/eq2J/aIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6x4-0001jn-QP; Thu, 03 Oct 2019 19:39:50 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6wy-0001im-1i
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 19:39:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2C164AFA9;
 Thu,  3 Oct 2019 19:39:40 +0000 (UTC)
Message-ID: <2af0a5ad604064d8fcf9febce72f0c23f1a1a1db.camel@suse.de>
Subject: Re: [PATCH] ARM: dt: check MPIDR on MP devices built without SMP
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
Date: Thu, 03 Oct 2019 21:39:38 +0200
In-Reply-To: <17976e82-04da-d22d-5779-f50db63f98a2@gmail.com>
References: <20191002114508.1089-1-nsaenzjulienne@suse.de>
 <17976e82-04da-d22d-5779-f50db63f98a2@gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_123944_237388_1C89E660 
X-CRM114-Status: GOOD (  17.82  )
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
Content-Type: multipart/mixed; boundary="===============1060089182193224932=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1060089182193224932==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-wn5QOuBuM4PXmz8oEO2H"


--=-wn5QOuBuM4PXmz8oEO2H
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-10-03 at 11:08 -0700, Florian Fainelli wrote:
> On 10/2/19 4:45 AM, Nicolas Saenz Julienne wrote:
> > Currently, in arm_dt_init_cpu_maps(), the hwid of the boot CPU is read
> > from MPIDR on SMP devices and set to 0 for non SMP. This value is then
> > matched with the DT cpu nodes' reg property in order to find the boot
> > CPU in DT.
>=20
> The code you change is about the "mpidr" variable, yet in your commit
> message you refer to "hwid", that is a tad confusing for the reader.

Sorry, it's indeed pretty confusing. I'll send a new version with a fixed
description if there is no major push back.

> > On MP devices build without SMP the cpu DT node contains the expected
> > MPIDR yet the hwid is set to 0. With this the function fails to match
> > the cpus and uses the default CPU logical map. Making it impossible to
> > get the CPU's DT node further down the line. This causes issues with
> > cpufreq-dt, as it triggers warnings when not finding a suitable DT node
> > on CPU0.
> >=20
> > Change the way we choose whether to get MPIDR or not. Instead of
> > depending on SMP check the number of CPUs defined in DT. Anything > 1
> > means MPIDR will be available.
>=20
> Except if someone accidentally wrote their Device Tree such as to have >
> 1 CPU nodes, yet the CPU is not MP capable and reading the MPIDR
> register does return the expected value, but that is wrong anyway.

An UP device will most likely not have a MPIDR. That said I'm not sure this=
 is
always true. As per ARM1176JZ's TRM[1], the RPi1 CPU, if one was to get the
MPIDR it would raise an undefined exception.

The way I see it's an acceptable outcome as the DT is clearly wrong.

Regarda,
Nicolas

[1] See 3.1.10 Use of the system control coprocessor in
http://infocenter.arm.com/help/topic/com.arm.doc.ddi0333h/DDI0333H_arm1176j=
zs_r0p7_trm.pdf:

	"Attempting to read from a nonreadable register, or to write to a
	nonwriteable register causes Undefined exceptions."


--=-wn5QOuBuM4PXmz8oEO2H
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2WTnoACgkQlfZmHno8
x/4bvAgAtyk/Bgiw8yUW6YI6IH0WAjg+Xb0H7sklA8m+ex4biH6o0mDe3SCvFsVn
uN0bSzNeoJxGsAdv5SM9bRMv0nlQSmwEWNTEgsiXKihrhrLOY/makXv9youT7egg
nwaEQ+3W7T9xPjKXyYj/2GjdLVIrmno0eRdSJMht6vFBTZcrWDJQLbu5UwWwDfYP
oYSQjPnMYwB5h1jlS7OYvggAoatV+6eMK7fseHVPf1GGWtk4TKus2JSudUlzMDN4
xsa3PiRyZCudDgmEO7ZIwbRRj0sZPoePrTrVVRFuSbY2HnMCnZgN4LLs5egCt0lJ
YD/FPhJPvHjSGKhBg7veHxguuSRpfQ==
=sLCN
-----END PGP SIGNATURE-----

--=-wn5QOuBuM4PXmz8oEO2H--



--===============1060089182193224932==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1060089182193224932==--


