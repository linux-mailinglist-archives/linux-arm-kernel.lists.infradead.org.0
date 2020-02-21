Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941DF168485
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:11:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dm6aFE045BZFzBBM7pUvmGYj3HKmFOr1EOoulzXdzUo=; b=IBL9nXtlEHLktizmofUbNgGoF
	J5O8VuCLfvPx0HuI9zzrtkG6Ab+VfXnBPuyilI161XcgVc3Pyg7vvgH9EgfqEtnWELBo8q/ccVrUT
	qN8fDcjx3vnibGfhGmUKRN6S1MBFZ/tf35TUjIayMaLsBgfGREhf47QAdV9oppgf/+XyafnCmmdxk
	dhud2MFJk1fHBQ6efZ97breqA3W6A65zSoNuDSxJ2B7YMWt+RMyghm8t69rg+zsX6tnF1+SXcFWMO
	097qPLDnD/E4Bp5IGpz9xDr0O+lmxoH1z1DvxUesfFPE4zNJy8VWt8q3WVLPgqe1n0sJzgqTPDU0x
	Djw6/o8xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Bq1-0000Mc-SC; Fri, 21 Feb 2020 17:11:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Bpq-0000M5-AN
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:11:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52BA730E;
 Fri, 21 Feb 2020 09:11:29 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BCA313F68F;
 Fri, 21 Feb 2020 09:11:28 -0800 (PST)
Date: Fri, 21 Feb 2020 17:11:27 +0000
From: Mark Brown <broonie@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 1/2] PCI: brcmstb: Add regulator support
Message-ID: <20200221171127.GH5546@sirena.org.uk>
References: <20200221033640.55163-1-jaedon.shin@gmail.com>
 <20200221033640.55163-2-jaedon.shin@gmail.com>
 <20200221121231.GA5546@sirena.org.uk>
 <40c4de9c-efdc-4fae-ad6d-1ba51fbbece1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <40c4de9c-efdc-4fae-ad6d-1ba51fbbece1@gmail.com>
X-Cookie: Dead?	No excuse for laying off work.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_091130_402685_DEF82368 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jim Quinlan <james.quinlan@Broadcom.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Jaedon Shin <jaedon.shin@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Gregory Fong <gregory.0xf0@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: multipart/mixed; boundary="===============1445904468811001498=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1445904468811001498==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rCwQ2Y43eQY6RBgR"
Content-Disposition: inline


--rCwQ2Y43eQY6RBgR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 21, 2020 at 08:33:36AM -0800, Florian Fainelli wrote:
> On 2/21/2020 4:12 AM, Mark Brown wrote:

> > No, this isn't a good idea - the set of supplies the device has is
> > fixed when the silicon is produced, it's not something that needs to
> > vary per board.  This means that the binding should have a fixed list of
> > supplies, per SoC if that's needed.

> These are not the supplies for the PCIe I/Os on the SoCs side, but the
> supplies for the PCIe end-point connected to the SoCs. More on that below.

Then the "slots" (obviously at least some of these are soldered down
rather than on actual slots) should be represented in DT and the
controller or bus should know that it needs to iterate over them to
bring up the chips.  I would also expect that there are standard names
in the PCI specs for the standard supplies that go into devices as part
of the bus spec which would mean that there should still be no need to
encode names like this.

> If you describe the regulators as properties of the PCIe EP nodes which
> are child nodes of the PCIe RC node (as we should), you will not be able
> to manage all of them within your pci_driver instance, because if there
> is no power to the EP you just do not enumerate it, therefore no
> pci_device is created.

The framework and/or driver can enumerate firmware information without
actually powering up the devices of course.

I would not be surprised to learn that most systems just mark the device
supplies always on, it's not like the devices will be able to use them
normally anyway.

--rCwQ2Y43eQY6RBgR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5QDz4ACgkQJNaLcl1U
h9D7MQf/YeQ1FAZw9dB7Kfcm1KJh5ahq4yucqHlg1gPLoilrZyl49an8LGVphqrg
xaSJ/iWvuoiYz9WkG8/18my3ckt8bdexU8rsw3FJOvljJxY4bL4caT9uRovqO/Gx
8aYf2FGDqaTWNA5MWDRHYP4vS6OSlu2Dq8QZAp8B4nII2XP+Y+FHi0X+oLGAsSub
owUznmwx0P/KsCEhWJP722VTq1+il5WrZZnqgE4Qvf9EtIwvBgz5EA+GVqWG+QGT
9qep25/GEqCx/kfgVzYvldCdzezJc7T43T8bNMrDNyRF7g2wQFoPy4aX/Tn8QL4v
t1AWpMfPlRi8XT/pENcm0eEBl5aRQg==
=GtTF
-----END PGP SIGNATURE-----

--rCwQ2Y43eQY6RBgR--


--===============1445904468811001498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1445904468811001498==--

