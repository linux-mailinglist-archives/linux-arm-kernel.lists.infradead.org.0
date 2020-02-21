Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43741685BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:57:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bd6yAfQUTh1UWTsDKwR5AxGqMe0bkUyfGzPmcPFI/Zg=; b=GlMajk7YJIZ5qGTytxxfyNOnu
	JQlUWZu07mu1tN1jtotGDOTw9wMpS60RvXxD0ziOjE7YEVG8us/SnLWSuq1PtZSg7rtAzk+N7mwAP
	Xe2/N1O0AAJFJste5GhatU4iXPIeNdTxVjY+qSJRc9GEsyHfVKvTgYjVPvnGEktYp4k+amr9J69cR
	AEhHCU7yC4J/X7QBLOAoy7eFfs0z7NqfeTgMSAQoWNJ9AalSosJIM9Sq/VuhwOerYEnpDayKxYjBJ
	BWgTv2EH0jvMP8t7CPb1RgDrKyndD2Jg1cwwm24U2UYE0LVDvIJdfslqM6fl+gCb33nHJutTE1/oL
	MRLv97C2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5CY8-0006fc-Eq; Fri, 21 Feb 2020 17:57:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CXz-0006ed-St
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:57:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 557BE30E;
 Fri, 21 Feb 2020 09:57:07 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 969893F6CF;
 Fri, 21 Feb 2020 09:57:06 -0800 (PST)
Date: Fri, 21 Feb 2020 17:57:03 +0000
From: Mark Brown <broonie@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 1/2] PCI: brcmstb: Add regulator support
Message-ID: <20200221175703.GJ5546@sirena.org.uk>
References: <20200221033640.55163-1-jaedon.shin@gmail.com>
 <20200221033640.55163-2-jaedon.shin@gmail.com>
 <20200221121231.GA5546@sirena.org.uk>
 <40c4de9c-efdc-4fae-ad6d-1ba51fbbece1@gmail.com>
 <20200221171127.GH5546@sirena.org.uk>
 <aff7e72b-c6d3-9d66-2726-1014a040b601@gmail.com>
MIME-Version: 1.0
In-Reply-To: <aff7e72b-c6d3-9d66-2726-1014a040b601@gmail.com>
X-Cookie: Dead?	No excuse for laying off work.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_095707_978119_49992418 
X-CRM114-Status: GOOD (  17.72  )
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
Content-Type: multipart/mixed; boundary="===============7046375786085223329=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7046375786085223329==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wRtZRu2mMGBZ6YQ7"
Content-Disposition: inline


--wRtZRu2mMGBZ6YQ7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 21, 2020 at 09:50:42AM -0800, Florian Fainelli wrote:
> On 2/21/20 9:11 AM, Mark Brown wrote:

> > The framework and/or driver can enumerate firmware information without
> > actually powering up the devices of course.

> The issue is not enumeration, it is ensuring that you will be able to
> establish the PCIe link with the EP. If there is no pci_device created
> because the bus scanning returned a link down, there is not much that
> can be done. Also the question is whether this logic belongs in the PCI
> bus layer or the driver.

Given that the interface with the devices is all standardized I'd have
expected it to be in the bus code as a first pass.

> > I would not be surprised to learn that most systems just mark the device
> > supplies always on, it's not like the devices will be able to use them
> > normally anyway.

> In the downstream PCIe driver which is this one is just a subset of
> until we close the gap, we have some additional logical to determine
> whether the EP device is wakeup enabled in order to leave its regulators
> turned on during system sleep so as to permit Wake-on-WLAN for instance.

Is that just using standard PCI stuff or is it custom for embedded
applications?

--wRtZRu2mMGBZ6YQ7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5QGe8ACgkQJNaLcl1U
h9DPMgf/e4r5Gwi7L6QWp74/t0ncNlE8lT+mvnemgaNumxi8HWK/smVU+t35gvxo
dbdIrGGZLffZHrlCjmYjeVNjVLcWTFFr8XlczAjrSnbnlf1pnefF5Y+nN80hSZtR
mwQ50gnCPgM11jx7xybWdvJQczugxSG1bQnhSgi+E8wLtZi1MoGFo3NWkv1jMNr8
WcLdLgWdfAHnmhTVXYEuyxnpaO3HSDrmlQl8RGSalG/GvjrfSAjdQKVVmttjPGYc
HUgkJOLoTbNKtCMhZAQf3Y2hm8VAPuOlBkD0t1P1086I29uIctKE7LhxF553P3TR
mROjcuI9gQATJMw7UINisqe11KMyGw==
=88yz
-----END PGP SIGNATURE-----

--wRtZRu2mMGBZ6YQ7--


--===============7046375786085223329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7046375786085223329==--

