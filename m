Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B85A4151024
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 20:10:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IuqUcI4/GBwiCkfCvzjw95+UDXakjay+DP+QFl4rNLU=; b=GpetUOKUfjpWv9CbhLNEVqD1Q
	SmbZSFag18PsrsoPoAzUH2BVFfgavtWC+N9xJ85UVcsny3QDuGRsLxty9V3U/iMVceHIpxPQrBcng
	Qn/DSnYYhXwUAIqIWXyzMf/dQnlb7WUt1exzWTGxUejVKDGXq2YyD2hIRIQSF5T+C+ToY//ukXEHX
	JurT+sC/wuYj1U4zyDSsKCp6wh1DNBhEI8U31hyK/6nwSebEN7bZZ8nMPIyuvLVxwtVStjFgEThEL
	IUfmH7pe5aFp7rrh84enXMLArkIp7QFe+wgKdcJzpnEepUYLmWyAgYwTF46yDkrFMSFfZhea4kUOc
	4lISVttCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyh79-0007Cq-8U; Mon, 03 Feb 2020 19:10:31 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyh72-0007CQ-Sj; Mon, 03 Feb 2020 19:10:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 056FFB061;
 Mon,  3 Feb 2020 19:10:23 +0000 (UTC)
Message-ID: <dfbe2c94dd52a31826be751f8dd9afc4ed08ec6d.camel@suse.de>
Subject: Re: [PATCH] serial: 8250_early: Add earlycon for BCM2835 aux uart
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Lukas Wunner <lukas@wunner.de>
Date: Mon, 03 Feb 2020 20:10:21 +0100
In-Reply-To: <20200131152414.73tgwsfhzgu4apkx@wunner.de>
References: <20200128141958.vwbxoqglt5gw4xj5@wunner.de>
 <C099APQHQAHB.3Q9UVYJYT98TN@linux-9qgx>
 <20200131152414.73tgwsfhzgu4apkx@wunner.de>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_111025_218303_575A024D 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Matthias Brugger <mbrugger@suse.com>, Scott Branden <sbranden@broadcom.com>,
 gregkh@linuxfoundation.org, jslaby@suse.com, linux-kernel@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Stephen Boyd <swboyd@chromium.org>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 matthias.bgg@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2536807104901709037=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2536807104901709037==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-rxZ/SqVaphyyjrFeqQty"


--=-rxZ/SqVaphyyjrFeqQty
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-01-31 at 16:24 +0100, Lukas Wunner wrote:
> On Thu, Jan 30, 2020 at 05:11:55PM +0100, Nicolas Saenz Julienne wrote:
> > BTW did you had the oportunity to have a go at the patch?
>=20
> I've just performed a quick test and it doesn't work for me.
> If I add stdout-path =3D "serial1:115200n8"; to the chosen node,
> I only get a regular console with this patch, not an earlycon.

That's surprising, you're using u-boot isn't it? and the upstream device tr=
ee?

> > > The problem is that in mainline, bcm2835_defconfig contains:
> > > CONFIG_CPU_FREQ_DEFAULT_GOV_CONSERVATIVE=3Dy
> > >=20
> > > Likewise in the Foundation's downstream tree, bcmrpi_defconfig as wel=
l
> > > as bcm2711_defconfig and bcm2709_defconfig contain:
> > > CONFIG_CPU_FREQ_DEFAULT_GOV_POWERSAVE=3Dy
> > >=20
> > > In contrast to this, we set the following on Revolution Pi devices:
> > > CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE=3Dy
> > >=20
> > > Downclocking influences not only the uart1 baud rate but also the
> > > spi0 clock. We attach Ethernet chips to spi0, throughput was
> > > significantly worse with the ondemand governor (which is what we
> > > used previously). We felt that maximum Ethernet performance
> > > outweighs the relatively small powersaving gains.
> >=20
> > In that regard I suggest you use the upstream cpufreq driver which
> > behaves properly in that regard. It disables GPU freq scaling, so as to
> > change CPU frequencies without SPI/I2C/UART issues.
>=20
> Okay, I'll take a look.  But the uart1 baudrate will still be wrong
> if the firmware downclocks because of overheating, right?

You're right, it might happen. The way I understand it you're bound to leav=
e
the GPU at it's lower frequency if you want to use those peripherals and fo=
r
them to be reliable. You could technically try to empirically fine tune the=
 CPU
thermal trip point so as to make sure the upstream kernel cpufreq downclock
always kicks in before videocore's one. I'd actually like to see someone tr=
y
that. However short of using an RT kernel It think you'll never be 100% sur=
e it
can never happen.

Regards,
Nicolas


--=-rxZ/SqVaphyyjrFeqQty
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl44cB0ACgkQlfZmHno8
x/4OKwf+KvsKB8pRgfFS6tQGkcjn5+7rl7qXYEndk80sawqCUn4/ZHkxPdoqD5cO
bU8iTyaNfFQQb9uq8RoWcJrFMKQJhxGe8sjDNkZNqvbTUr3oM8ltCrjVWX7D5wfG
eDSxB7hZqwE+BkdJaK3G5kicCfPl21opnQwZUn7R/0e0bYIuzMu/hq1xk7XiRaLU
hL30AwUY3DLZtOVEeNIeVW9TVuVdnbu219TXZjtwuD+iZ9u2xbkh83fne8s0nW7O
79/Gejgu/e5PDH3CTnbheLNpl9Fws8fGiERnwXNbAD2XSj2kOfTitCVVNK2Efup5
txMswkwfPEC1JsGHkHgANzz5Z5UOVQ==
=AW10
-----END PGP SIGNATURE-----

--=-rxZ/SqVaphyyjrFeqQty--



--===============2536807104901709037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2536807104901709037==--


