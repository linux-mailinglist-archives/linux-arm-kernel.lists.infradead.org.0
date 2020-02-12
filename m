Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453F115A982
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VwQT6WyjER50xFWuu2G/LLaD0TiB2fspPwpZhLzXeu0=; b=p5FYY6uWKPpe0ZGk6Ij89XvM5
	Bj7yMp5SBg2mxrtfSlFeFPb9VCxVWREw5D+H5oE1W8xODcmXt9Ky5DyzwzA1lSVM3aJjlW+UZJWv4
	IfX9jgE3rueyBRrEtKWnbX8lqG37v01+GmJNSBr0ZdMm+FurU0DkAe34eMhGVxBWGRBuigoL6/Nre
	pKupoJUpt1AhdJ59R2HBsQoZDajnZEC88RPzMwp8iQC58J9QH7zUjvf3/paJuDfz0UJoBoFFH9Kad
	4WFYLRA1auM2f8nqw54gffnSECRty8QYFJjqhuaRAwjF0RYeesLx+dN0+h1TO+rLrNMPEPJxfeFxO
	YbKQWBESg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1rYN-0006Ed-Re; Wed, 12 Feb 2020 12:55:43 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1rYE-0006Dd-71; Wed, 12 Feb 2020 12:55:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A3944AEA8;
 Wed, 12 Feb 2020 12:55:28 +0000 (UTC)
Message-ID: <99f7237895054dd55ac8a9c8dab24bf36c9cb035.camel@suse.de>
Subject: Re: [PATCH v2] irqchip/bcm2835: Quiesce IRQs left enabled by
 bootloader
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Lukas Wunner <lukas@wunner.de>, Marc Zyngier <maz@kernel.org>, Florian
 Fainelli <f.fainelli@gmail.com>
Date: Wed, 12 Feb 2020 13:55:23 +0100
In-Reply-To: <20200212123651.apio6kno2cqhcskb@wunner.de>
References: <20200212123651.apio6kno2cqhcskb@wunner.de>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_045534_547476_62BCAB6D 
X-CRM114-Status: GOOD (  32.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Stefan Wahren <wahrenst@gmx.net>, Jason Cooper <jason@lakedaemon.net>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Serge Schneider <serge@raspberrypi.org>, linux-kernel@vger.kernel.org,
 Phil Elwell <phil@raspberrypi.org>, Matthias Brugger <mbrugger@suse.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Martin Sperl <kernel@martin.sperl.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Kristina Brooks <notstina@gmail.com>
Content-Type: multipart/mixed; boundary="===============8187908518028566655=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8187908518028566655==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-4pyIkNRgC0DyWCZW7hzB"


--=-4pyIkNRgC0DyWCZW7hzB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-02-12 at 13:36 +0100, Lukas Wunner wrote:
> On Tue, Feb 11, 2020 at 08:47:05PM -0800, Florian Fainelli wrote:
> > The commit message is a bit long and starts
> > going into details that I am not sure add anything
>=20
> I adhere to the school of thought which holds that commit messages
> shall provide complete context, including numbers to back up claims,
> user-visible impact, affected versions, genesis of the fix and so on.
> By that logic there's no such a thing as a too long commit message.
>=20
> Nevertheless please find a shortened version below, complete with
> the Fixes tag you requested as well as your R-b.
>=20
>=20
> On Wed, Feb 12, 2020 at 08:13:29AM +0000, Marc Zyngier wrote:
> > It otherwise looks good. You can either resend it with a fixed commit
> > message,
> > or provide me with a commit message that I can stick there while applyi=
ng
> > it.
>=20
> The below also contains the patch itself, so can be applied directly
> with git am --scissors.  Feel free to tweak as you see fit.
> Shout if I've missed anything.  Thanks.
>=20
> -- >8 --
> From: Lukas Wunner <lukas@wunner.de>
> Subject: [PATCH] irqchip/bcm2835: Quiesce IRQs left enabled by bootloader
>=20
> Per the spec, the BCM2835's IRQs are all disabled when coming out of
> power-on reset.  Its IRQ driver assumes that's still the case when the
> kernel boots and does not perform any initialization of the registers.
> However the Raspberry Pi Foundation's bootloader leaves the USB
> interrupt enabled when handing over control to the kernel.
>=20
> Quiesce IRQs and the FIQ if they were left enabled and log a message to
> let users know that they should update the bootloader once a fixed
> version is released.
>=20
> If the USB interrupt is not quiesced and the USB driver later on claims
> the FIQ (as it does on the Raspberry Pi Foundation's downstream kernel),
> interrupt latency for all other peripherals increases and occasional
> lockups occur.  That's because both the FIQ and the normal USB interrupt
> fire simultaneously.
>=20
> On a multicore Raspberry Pi, if normal interrupts are routed to CPU 0
> and the FIQ to CPU 1 (hardcoded in the Foundation's kernel), then a USB
> interrupt causes CPU 0 to spin in bcm2836_chained_handle_irq() until the
> FIQ on CPU 1 has cleared it.  Other peripherals' interrupts are starved
> as long.  I've seen CPU 0 blocked for up to 2.9 msec.  eMMC throughput
> on a Compute Module 3 irregularly dips to 23.0 MB/s without this commit
> but remains relatively constant at 23.5 MB/s with this commit.
>=20
> The lockups occur when CPU 0 receives a USB interrupt while holding a
> lock which CPU 1 is trying to acquire while the FIQ is temporarily
> disabled on CPU 1.  At best users get RCU CPU stall warnings, but most
> of the time the system just freezes.
>=20
> Fixes: 89214f009c1d ("ARM: bcm2835: add interrupt controller driver")
> Signed-off-by: Lukas Wunner <lukas@wunner.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> Cc: stable@vger.kernel.org # v3.7+
> Cc: Serge Schneider <serge@raspberrypi.org>
> Cc: Kristina Brooks <notstina@gmail.com>

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!

> ---
>  drivers/irqchip/irq-bcm2835.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/drivers/irqchip/irq-bcm2835.c b/drivers/irqchip/irq-bcm2835.=
c
> index 418245d..eca9ac7 100644
> --- a/drivers/irqchip/irq-bcm2835.c
> +++ b/drivers/irqchip/irq-bcm2835.c
> @@ -135,6 +135,7 @@ static int __init armctrl_of_init(struct device_node
> *node,
>  {
>  	void __iomem *base;
>  	int irq, b, i;
> +	u32 reg;
> =20
>  	base =3D of_iomap(node, 0);
>  	if (!base)
> @@ -157,6 +158,19 @@ static int __init armctrl_of_init(struct device_node
> *node,
>  				handle_level_irq);
>  			irq_set_probe(irq);
>  		}
> +
> +		reg =3D readl_relaxed(intc.enable[b]);
> +		if (reg) {
> +			writel_relaxed(reg, intc.disable[b]);
> +			pr_err(FW_BUG "Bootloader left irq enabled: "
> +			       "bank %d irq %*pbl\n", b, IRQS_PER_BANK, &reg);
> +		}
> +	}
> +
> +	reg =3D readl_relaxed(base + REG_FIQ_CONTROL);
> +	if (reg & REG_FIQ_ENABLE) {
> +		writel_relaxed(0, base + REG_FIQ_CONTROL);
> +		pr_err(FW_BUG "Bootloader left fiq enabled\n");
>  	}
> =20
>  	if (is_2836) {


--=-4pyIkNRgC0DyWCZW7hzB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5D9bsACgkQlfZmHno8
x/6JvwgAjF0lgwGkDLzNHbL6ctrZ6WikqYyRPEJ5WcwqCtqiGQtvs4QRF/FSoSOy
NHX/FJkM5uUDUytjusv5njqeKxzZVRmwFRdA+KRIiHRsi86bewGOluXG65xYl4G2
tA93LYAEL9C/7tmgeJhNOXjYhhM6aEkEe2ou8zUnMVeJT3z0dmur04L2imqDjSM1
Mg/sigcZdt+Pzdlj3AnI/eXwzT+3WuIA6BVd0MhKs9lGU8xKGTR4dgDSmAWO+FHi
rrishM5LJ3eEuAXlUWqIKgCvnIvdQELDb1bq+6+M/U1k8j5w0QOeu9yHBZhFkEXv
rfXZ3IlEk/vxRajBVaVzkkvB0KhufA==
=Mq7O
-----END PGP SIGNATURE-----

--=-4pyIkNRgC0DyWCZW7hzB--



--===============8187908518028566655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8187908518028566655==--


