Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9BF24E0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 13:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JPBQpFaY1sAU+NyWro1BBeDhIaoTBAOqoN12rYfMp2I=; b=vAV2zurRPruS2IfkeRB8PPm3m
	8L2OjLDQbyTiP6EbycsjTrVLMluJDoVKPk1VqYoe6XvAuwHxoYfIgT/UV7bbsd9fsG64mMvGXOEvc
	HSsbu9nxMaKL+h1OV8RORxAck4/cF4cx/8RBfqHci/LgyBjHod4YDpTMhPnmhAOhTEjCrPiBpO8Qe
	IotMVxNMCuHVpa9163gItwPXp4ZLMDr2l14VL0udANvL3/wXEbngXfBpHe0DyW5N3Te1NC54f/tYA
	l82csz+HwG8pxEnmsh5sAUlk5nfBsT3SMS4bto+WTRa362iY4wTEucd+t08T0woNYcYT24mZyzGi9
	Pn9OBuL+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT37U-0003Qn-E7; Tue, 21 May 2019 11:39:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT37N-0003PX-HD; Tue, 21 May 2019 11:39:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F1FFEADFA;
 Tue, 21 May 2019 11:39:33 +0000 (UTC)
Message-ID: <46004f242c2618a185445630580116c772455613.camel@suse.de>
Subject: Re: [RFC v2 3/5] clk: bcm2835: use firmware interface to update pllb
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Oliver Neukum <oneukum@suse.com>, stefan.wahren@i2se.com, Florian
 Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, Scott Branden
 <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com, Eric Anholt
 <eric@anholt.net>
Date: Tue, 21 May 2019 13:39:31 +0200
In-Reply-To: <1558356237.12672.3.camel@suse.com>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-4-nsaenzjulienne@suse.de>
 <1558356237.12672.3.camel@suse.com>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_043941_717955_CEF4CE6B 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============2915462475067118832=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2915462475067118832==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-cEa8KPU0g/Abd6RRg7/R"


--=-cEa8KPU0g/Abd6RRg7/R
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Oliver, thanks for the review.

On Mon, 2019-05-20 at 14:43 +0200, Oliver Neukum wrote:
> On Mo, 2019-05-20 at 12:47 +0200, Nicolas Saenz Julienne wrote:
> > + * For more information on the firmware interface check:
> > + * https://github.com/raspberrypi/firmware/wiki/Mailbox-property-inter=
face
> > + */
> > +struct bcm2835_firmware_prop {
> > +       u32 id;
> > +       u32 val;
> > +       u32 disable_turbo;
> > +} __packed;
>=20
> Hi,
>=20
> technically we are not in arch and those fields have a defined
> endianness.
>=20

Well I set it as packed since it's 'sent' through a memory mapped firmware
interface. Hence the need for the structure format to be fixed. So I guesse=
d
we're safer with it, as I'm not 100% sure what the different compilers are
going to do with it (although it's very likely it'll stay the same). BTW th=
is
will be built both for arm & arm64.

Regards,
Nicolas


--=-cEa8KPU0g/Abd6RRg7/R
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlzj43MACgkQlfZmHno8
x/4swQf/ZO31nuk1cd9h0edi7kTrZyY6O60vgTBA1GZt/PM8nP82e0m7LYXaDdY2
UIDyPklgdDR2Lhy0rvroVAGIL8tFgkTRTJ6zbUxUcItWSawQraXQNIcQlpDupxpd
WCy25NhYQhAuC3sn7djLogWr4ECLJMQcOHHNhh+rUr9Li0Mp5aRP/+QV1vh3sdN4
5AG5GMwl33WdNBjS52R8+XpqvpRDQjIz30eu2o2D3qdNZx4Q8yH15Rn8V2B0ggmV
DHZp731xIkZv68U3NXFRmyiwFelo26lSt4bGON4G2HBTXbsw7wqQ42euR/k0vmAo
qKqRuMJidrvdLD5ABg3jPne3CI3Xpg==
=Eo7y
-----END PGP SIGNATURE-----

--=-cEa8KPU0g/Abd6RRg7/R--



--===============2915462475067118832==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2915462475067118832==--


