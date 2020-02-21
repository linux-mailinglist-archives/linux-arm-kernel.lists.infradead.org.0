Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3505167D2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 13:12:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u1Fk/XY5dFAyFrSqAVCRtuYkL0cufMk+L3svNpwt2Xc=; b=NOMt7dyA14pYL7b3EdimaNa3c
	l28CsbkMrNUlXbSZlZUq+ZyZpQzPP5AM2ki2AHFSmdCdpIsY/1kAVMXGbGwXzYRCWxokEjpT/X3Uf
	3f7fp5tIceL4bIm6gWHlxBvqF3SbVf+mrLBT77WnBqOMVtaFW/4rhkenDzgi1y4XGc+1pLrX6o8Ap
	5rnIXLrpnSKRSzhp86txS1jjaflcIEpfL4nXmHZ4wmDctYeK/ms17hxmWH3fiXXzPaa2JtWDXKTbJ
	idhqJBhlSaIuHBJNT5XSiZz4I7cnpewqzi/qmMKKe1Po1zqA+I4HOitOeGdLXwDdrCnCmgQX+rghB
	+P8CALSgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j57Ai-000376-DE; Fri, 21 Feb 2020 12:12:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j57Aa-00036U-4a
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 12:12:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA44630E;
 Fri, 21 Feb 2020 04:12:33 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 32C603F68F;
 Fri, 21 Feb 2020 04:12:33 -0800 (PST)
Date: Fri, 21 Feb 2020 12:12:31 +0000
From: Mark Brown <broonie@kernel.org>
To: Jaedon Shin <jaedon.shin@gmail.com>
Subject: Re: [PATCH v2 1/2] PCI: brcmstb: Add regulator support
Message-ID: <20200221121231.GA5546@sirena.org.uk>
References: <20200221033640.55163-1-jaedon.shin@gmail.com>
 <20200221033640.55163-2-jaedon.shin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200221033640.55163-2-jaedon.shin@gmail.com>
X-Cookie: Dead?	No excuse for laying off work.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_041236_224364_E77EFA69 
X-CRM114-Status: GOOD (  10.95  )
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
 Florian Fainelli <f.fainelli@gmail.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Gregory Fong <gregory.0xf0@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: multipart/mixed; boundary="===============0743039166385657514=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0743039166385657514==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pWyiEgJYm5f9v55/"
Content-Disposition: inline


--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 21, 2020 at 12:36:39PM +0900, Jaedon Shin wrote:

> +  supply-names:
> +    description: List of regulator supplies to use for PCIe
> +

No, this isn't a good idea - the set of supplies the device has is
fixed when the silicon is produced, it's not something that needs to
vary per board.  This means that the binding should have a fixed list of
supplies, per SoC if that's needed.

--pWyiEgJYm5f9v55/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5PySwACgkQJNaLcl1U
h9CVWQf+O9qBCs/Lb8Xyx/Xp50BEVAE/kse9ndOMrfqxRwPtK7kvpDaBpP5neV60
5t4Q/Q6eePsRFeY5/FtSagvQb2JrXzgRpvTcMvBGrK825H5MXM/SDmG9812XzlkE
8p6lTmi5bG/SzCiFVlwKK2h4cQvCsMM9pqLtgaelPYfjovxGA0r6p6gcsB7MIU2S
5UYKgcO+3Wio0DEM7u2nWEQqjO8ql0e7COzAUOMATt7n+GD9h6NpfaS3wkexZ8PO
dz/NJ0QV9Yo/GjQ2i546feXuoeHXfpgJeIHZOb430S1c++14JhRHEezk3x49sHCL
c9nDdvFeMHQZQpLzSiioS8/X3XKitQ==
=fULJ
-----END PGP SIGNATURE-----

--pWyiEgJYm5f9v55/--


--===============0743039166385657514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0743039166385657514==--

