Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3030100AB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 18:46:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L6nYdlfBEkmrzUE7aPHVmGFvjJImqqVP9l+rK04A+F8=; b=h3TlacPIO1NceCKJEEhuJmyOG
	2KQtzE/PZhdgiobg0bqYYGdyAkMQpuHscKBS2n6APyc/h+2mZSn+ohcmKlC6vgGk5kcuUi3WLgUww
	W8xGYIC8zsHePQnmHPJ3GFG1+DGnXmOB+iKitt0eQxWuLtFEUHRVP/vE+1wh5At599CATu4f3+O0Q
	yMSKBDViqchg+PaxgGTh2Uo5AsbytO2G7vkjm0CrUZFiWWUYMjn2KX5Mmp89qSXT3tFVveMXo2fNB
	RBpEZ8SQuW5qto6uU1lQrGeTgc4vf1Xkt1Q7HUM/hcdWi/AuKl4yRanc5rrb+XtDbS7ua9c6SLKBo
	zgjJGKC1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWl6F-0001xg-Pa; Mon, 18 Nov 2019 17:46:07 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWl68-0001wS-5X
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 17:46:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B9B64AF22;
 Mon, 18 Nov 2019 17:45:56 +0000 (UTC)
Message-ID: <061822b6ad80094a52d27f27f3e37594adb313c2.camel@suse.de>
Subject: Re: [PATCH v2] ARM: dt: check MPIDR on MP devices built without SMP
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Date: Mon, 18 Nov 2019 18:45:55 +0100
In-Reply-To: <20191118125540.GW25745@shell.armlinux.org.uk>
References: <20191004155232.17209-1-nsaenzjulienne@suse.de>
 <5abdcb0e0e1043a101f579ea65d07a1f6b91f896.camel@suse.de>
 <20191118125540.GW25745@shell.armlinux.org.uk>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_094600_355551_F631AED3 
X-CRM114-Status: GOOD (  16.79  )
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 linux-kernel@vger.kernel.org, "kernelci.org bot" <bot@kernelci.org>,
 wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============0618266338620696635=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0618266338620696635==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-+YvWotUDyLir6gMkee5u"


--=-+YvWotUDyLir6gMkee5u
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Russell, thanks for the review.

On Mon, 2019-11-18 at 12:55 +0000, Russell King - ARM Linux admin wrote:
> On Mon, Nov 18, 2019 at 12:49:04PM +0100, Nicolas Saenz Julienne wrote:
> > On Fri, 2019-10-04 at 17:52 +0200, Nicolas Saenz Julienne wrote:
> > > On SMP builds, in order to properly link CPU devices with their
> > > respective DT nodes we start by matching the boot CPU. This is achiev=
ed
> > > by comparing the 'reg' property on each of the CPU DT nodes with the
> > > MPIDR. The association is necessary as to validate the whole CPU logi=
cal
> > > map, which ultimately links CPU devices and their DT nodes.
>=20
> No, that is not the primary purpose of the CPU logical map.  The CPU=20
> logical map is there to map the CPU logical number to a hardware number,
> necessary for programming hardware.

Noted.

> > > On setups built without SMP, no MPIDR read is performed. The only thi=
ng
> > > expected is for the 'reg' property in the CPU DT node to contain the
> > > value 0x0.
> > >=20
> > > This causes problems on MP setups built without SMP. As their boot CP=
U
> > > DT node contains the relevant MPIDR as opposed to 0x0. No match is th=
en
> > > possible. This causes troubles further down the line as drivers are
> > > unable to get the CPU's DT node.
>=20
> So the DT is incorrect for the platform - it is not describing the
> hardware.  Why can't the DT be fixed?  Clearly, it would have never
> worked with the mainline kernel today.

Sorry but I don't see any incorrect DT here. From the ARM CPU bindings I ga=
ther
that (at least since ARMv7) every CPU node should contain its corresponding
MPIDR. It transpires that ARM's DT cpu map init code should take that into
account regardles of whether the kernel supports SMP, isn't it?

Regards,
Nicolas


--=-+YvWotUDyLir6gMkee5u
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3S2NMACgkQlfZmHno8
x/4D7gf/XdwPq75qRoHvHJjo1VIzJp33WcYC4bhmll+p0iM/2O4t/b7f8jOyNWVG
YlxA+fal6q1N6nyrjbXydq76hDgZK8bxHy0nQWZhJKuQaTfB0YcoMniZV+sDjF/N
NC/MvPupcRLkTbRbnW8Af0f345b62bu3r6zL7DL/AbAyVptOD3+yCGnbI4d8hVcU
dolO9kU7i4aKrZ9aF/u/mQQbqt/rZpPL5cFNOA5F920ryW6sWLlEfqrigBxq8Oy3
JB5+ZZXHTqJ593gIecn4dy+iRpU8ttTN0gdHEdy0TnFbmlh5xF4GbXzjwhKHpm7x
7D+Qbqp96Qpf6ZsVySaavz/svIiLJg==
=fulJ
-----END PGP SIGNATURE-----

--=-+YvWotUDyLir6gMkee5u--



--===============0618266338620696635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0618266338620696635==--


