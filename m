Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB3B24EBD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 14:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gee79I8ZuEJaP8sq6dpT8VD6rlJoSAI1IBA2itw9zO8=; b=N9Ny6bHB7IBy9BMseOmLKuXvF
	Vzqrn65dVxn2Ts5h9AUYEeo0zPSVrbKZl5FOLMrjtFK58Y2BZuYhvXM6N5KwhrChj64i7/9KUFMpq
	JsIUwgbYZGvUzCAjMdDe78JLX7K4m8v8x5L8MYRgvKViSL8EWHhlaVs332bQ79jJiIwEg5ngMztRt
	dRqfya3YH6pCjoXOTbaQVt2CThftn5X2vvD+MiOMHdyT0xLahMp2V3JMiGGCOM00dc8CZPMj2s3bb
	jXwHSBZK3/nqgzw0hwTqFGHiYIFKgqggORx9rwK3aYKFTzZWWzIHD1QSnVtIeavh2FHaDtWW3cJIN
	PEHaN/7ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT3fu-0001WB-4A; Tue, 21 May 2019 12:15:22 +0000
Received: from smtp2.provo.novell.com ([137.65.250.81])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT3fn-0001V9-H4; Tue, 21 May 2019 12:15:17 +0000
Received: from ezekiel.suse.cz (prva10-snat226-2.provo.novell.com
 [137.65.226.36])
 by smtp2.provo.novell.com with ESMTP (TLS encrypted);
 Tue, 21 May 2019 06:15:04 -0600
Date: Tue, 21 May 2019 14:14:56 +0200
From: Petr Tesarik <ptesarik@suse.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [RFC v2 3/5] clk: bcm2835: use firmware interface to update pllb
Message-ID: <20190521141456.46f6d4a7@ezekiel.suse.cz>
In-Reply-To: <46004f242c2618a185445630580116c772455613.camel@suse.de>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-4-nsaenzjulienne@suse.de>
 <1558356237.12672.3.camel@suse.com>
 <46004f242c2618a185445630580116c772455613.camel@suse.de>
Organization: SUSE Linux
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_051515_619275_47C4E10B 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [137.65.250.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 linux-pm@vger.kernel.org, sboyd@kernel.org, Ray Jui <rjui@broadcom.com>,
 mturquette@baylibre.com, Oliver Neukum <oneukum@suse.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 viresh.kumar@linaro.org, linux-clk@vger.kernel.org, mbrugger@suse.de,
 ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============0930731777838980654=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============0930731777838980654==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/v4zFxgx_udbNpFsK480f9ms"; protocol="application/pgp-signature"

--Sig_/v4zFxgx_udbNpFsK480f9ms
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 21 May 2019 13:39:31 +0200
Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:

> Hi Oliver, thanks for the review.
>=20
> On Mon, 2019-05-20 at 14:43 +0200, Oliver Neukum wrote:
> > On Mo, 2019-05-20 at 12:47 +0200, Nicolas Saenz Julienne wrote: =20
> > > + * For more information on the firmware interface check:
> > > + * https://github.com/raspberrypi/firmware/wiki/Mailbox-property-int=
erface
> > > + */
> > > +struct bcm2835_firmware_prop {
> > > +       u32 id;
> > > +       u32 val;
> > > +       u32 disable_turbo;
> > > +} __packed; =20
> >=20
> > Hi,
> >=20
> > technically we are not in arch and those fields have a defined
> > endianness.
> >  =20
>=20
> Well I set it as packed since it's 'sent' through a memory mapped firmware
> interface. Hence the need for the structure format to be fixed. So I gues=
sed
> we're safer with it, as I'm not 100% sure what the different compilers are
> going to do with it (although it's very likely it'll stay the same). BTW =
this
> will be built both for arm & arm64.

I believe that's not the point Oliver was trying to make. You should
use __le32 instead of u32.

That's because u32 means "host byte order" and this code is not located
under arch/, so host endianness is unknown, but the mailbox interface
requires little-endian.

It's nit-picking, and that's why Oliver writes 'technically'; there is
probably no way this firmware interface could be used on a big-endian
CPU...

Petr T

--Sig_/v4zFxgx_udbNpFsK480f9ms
Content-Type: application/pgp-signature
Content-Description: Digitální podpis OpenPGP

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHl2YIZkIo5VO2MxYqlA7ya4PR6cFAlzj68AACgkQqlA7ya4P
R6f62AgAz0n5U8DxFLjG8+/3CYeQR5ZyeBY4k4i59x0CtEHzdc/KpzHUMeMk4UY4
CX0BTMxH8rszNyr01dpGqYDlRUJTZg+WCs+V9N8ZWDafcI9+ZFoZPTOAZumw4o5g
q7Y4Gpip+ygMHVSrds+uFQkJtinN7eiyr16GR8TLsb55TjYwiaodn4iNRiR3o+Od
qhUwScebGj4vjjru+U0XyYUGUaL22vuKXx8j15aSEO+FB7qYCxs6QbhF33wLvP9T
V7BUmamRLwoNqL1YPgj9RSC73PHPQpWKSCvwi2HcK4eUdwC3GNtfLwId+0ocxqwg
pFEsVHZTqhV18UWpMD/Pnb5Z39zFRQ==
=z3QT
-----END PGP SIGNATURE-----

--Sig_/v4zFxgx_udbNpFsK480f9ms--


--===============0930731777838980654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0930731777838980654==--

