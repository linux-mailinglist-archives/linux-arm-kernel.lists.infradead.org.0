Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB1715CA18
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 19:16:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EBTT/SR3hpCQAWcd+54pfUJkFcoC3jOHpaBP69FHSvA=; b=nOMsk7OQS5AsS3srpdaYdHTAV
	ZoSfNSEkd0GEoujOMuCE3iYOKYShvViBK+PdJhAM0lWKDo7FhqhAJmNXyusNdZRKDnrI4dV44daFV
	uRtVAOUOZAXu5zEs4jMeKhkv0L5NqnZTuO8/INpqdvI+XF1XM43/VTnAi57bx7HfHxXWe0rF8U5aT
	TyafHgT53FuLJ88F+VHTEQh2uM8H53p4VNAIcW/PH7dSarmudi/4uEPS5ERu2iZb8GXXjF2ECyamX
	7vJJCNy97DyzcPTA4hOglTSRyuoK6cFg2QRrqqRJuS94DTetJiO/BoJAm5HmpOziWzNGO9VenNLF4
	vYCsnn1+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2J20-0006rn-0j; Thu, 13 Feb 2020 18:16:08 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2J1s-0006qx-7I
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 18:16:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so7308657wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 10:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5d94ISfAMJsY5/JXuqSKAmxNkAX3S4dFJmeeR7ypVcE=;
 b=FFwuMx4A91uPXpKY8nsucsQTEpphwr5zhH4Oya1D86W+RXvdwACsmlSXhLSexF0NcM
 P9TfFve1ePZB9zAXpfXPJ6pnLIJKiI+vsVdmHMDavStLweUfRWnrTV2MIgQDt/tnTttP
 FrQGvuDP4LCuIFD2h2Vv6QvQSiEUUKhJF+QkXD2j/s44KWLYBWsxLrHYeZer3Z2y0aqz
 RPfiBuphdNVtBahhcdlpnYEKEr+vLrCy1lGJ7aAqfiw6nTeNt7IO1eXjEYH3eL7LBRNt
 K3XIt4YNATmo1Grnqf9PsgDq8/IUaIU45JRkPVo0FI0rVzdZ8pPphyr8n0oNjdxNyj3b
 ddBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5d94ISfAMJsY5/JXuqSKAmxNkAX3S4dFJmeeR7ypVcE=;
 b=rO2nIVWy0xAzRfyMFP54dfEfLtIerFCIosvP7zdQj2g03xS5xE1liPVPQukMSueSrH
 3Ussc8o3dp6wQz+mOinvPsraSM9GjxrZSz33Z0kpFNL5cIbxSSQS4iN9xR+bFV2UBa6R
 r6DK6QONyskCP4mHrrTRDZMAdI2o2wO46t6AGZdScCvOeAX/ehXKNW0i2a5UKr702CGI
 XHEQl/1fqIRLpCJToWh0yWT85WP+NJHOUWnJVAAlCm6jIq92oDMc/395+OggJFyzFeFS
 MJWTrfNN2uJz2t9jmuprBd3w+qJ4QDYio71iylFWK7/Y4FmfV4E0ebXheeUpzzkq4RQa
 Y7GQ==
X-Gm-Message-State: APjAAAUcmpzYbq3SuPvR7QTRDw/hC3nnXTvzIdWaEhmxQIX7giwU0fDn
 K3bhkS35eHLNllM6uT62KOI=
X-Google-Smtp-Source: APXvYqxqFNSHf02vz4/vAuR4WVy3yZSGsTnLODcDrddSPmiG/KsfyeRBrRl06AzAZBFk2cOx947e8g==
X-Received: by 2002:a1c:4e05:: with SMTP id g5mr6927099wmh.152.1581617758127; 
 Thu, 13 Feb 2020 10:15:58 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id y12sm3896731wmj.6.2020.02.13.10.15.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 10:15:56 -0800 (PST)
Date: Thu, 13 Feb 2020 19:15:55 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v4 0/5] memory: Introduce memory controller mini-framework
Message-ID: <20200213181555.GB1006063@ulmo>
References: <20200213163959.819733-1-thierry.reding@gmail.com>
 <9841eb35-65e4-632a-ceff-bb2ba3b11bb0@arm.com>
MIME-Version: 1.0
In-Reply-To: <9841eb35-65e4-632a-ceff-bb2ba3b11bb0@arm.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_101600_296783_18611B7C 
X-CRM114-Status: GOOD (  30.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-tegra@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8143688346658170377=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8143688346658170377==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZfOjI3PrQbgiZnxM"
Content-Disposition: inline


--ZfOjI3PrQbgiZnxM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 13, 2020 at 05:23:23PM +0000, Robin Murphy wrote:
> [+ Maxime]
>=20
> On 13/02/2020 4:39 pm, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > Hi,
> >=20
> > this set of patches adds a new binding that allows device tree nodes to
> > explicitly define the DMA parent for a given device. This supplements
> > the existing interconnect bindings and is useful to disambiguate in the
> > case where a device has multiple paths to system memory. Beyond that it
> > can also be useful when there aren't any actual interconnect paths that
> > can be controlled, so in simple cases this can serve as a simpler
> > variant of interconnect paths.
>=20
> Isn't that still squarely the intent of the "dma-mem" binding, though? i.=
e.
> it's not meant to be a 'real' interconnect provider, but a very simple way
> to encode DMA parentage piggybacked onto a more general binding (with the
> *option* of being a full-blown interconnect if it wants to, but certainly=
 no
> expectation).

The way that this works on Tegra is that we want to describe multiple
interconnect paths. A typical device will have a read and a write memory
client, which can be separately "tuned". Both of these paths will target
system memory, so they would both technically be "dma-mem" paths. But
that would make it impossible to treat them separately elsewhere.

So we could choose any of them to be the "dma-mem" path, but then we
need to be very careful about defining which one that is, so that
drivers know how to look them up, which is also not really desirable.

One other things we could do is to duplicate one of the entries, so that
we'd have "read", "write" and "dma-mem" interconnect paths, with
"dma-mem" referencing the same path as "read" or "write". That doesn't
sound *too* bad, but it's still a bit of a hack. Having an explicit
description for this sounds much clearer and less error prone to me.

Thierry

> > One other case where this is useful is to describe the relationship
> > between devices such as the memory controller and an IOMMU, for example.
> > On Tegra186 and later, the memory controller is programmed with a set of
> > stream IDs that are to be associated with each memory client. This
> > programming needs to happen before translations through the IOMMU start,
> > otherwise the used stream IDs may deviate from the expected values. The
> > memory-controllers property is used in this case to ensure that the
> > memory controller driver has been probed (and hence has programmed the
> > stream ID mappings) before the IOMMU becomes available.
> >=20
> > Patch 1 introduces the memory controller bindings, both from the
> > perspective of the provider and the consumer. Patch 2 makes use of a
> > memory-controllers property to determine the DMA parent for the purpose
> > of setting up DMA masks (based on the dma-ranges property of the DMA
> > parent). Patch 3 introduces a minimalistic framework that is used to
> > register memory controllers with along with a set of helpers to look up
> > the memory controller from device tree.
> >=20
> > An example of how to register a memory controller is shown in patch 4
> > for Tegra186 (and later) and finally the ARM SMMU driver is extended to
> > become a consumer of an (optional) memory controller. As described
> > above, the goal is to defer probe as long as the memory controller has
> > not yet programmed the stream ID mappings.
> >=20
> > Thierry
> >=20
> > Thierry Reding (5):
> >    dt-bindings: Add memory controller bindings
> >    of: Use memory-controllers property for DMA parent
> >    memory: Introduce memory controller mini-framework
> >    memory: tegra186: Register as memory controller
> >    iommu: arm-smmu: Get reference to memory controller
> >=20
> >   .../bindings/memory-controllers/consumer.yaml |  14 +
> >   .../memory-controllers/memory-controller.yaml |  32 +++
> >   drivers/iommu/arm-smmu.c                      |  11 +
> >   drivers/iommu/arm-smmu.h                      |   2 +
> >   drivers/memory/Makefile                       |   1 +
> >   drivers/memory/core.c                         | 248 ++++++++++++++++++
> >   drivers/memory/tegra/tegra186.c               |   9 +-
> >   drivers/of/address.c                          |  25 +-
> >   include/linux/memory-controller.h             |  34 +++
> >   9 files changed, 366 insertions(+), 10 deletions(-)
> >   create mode 100644 Documentation/devicetree/bindings/memory-controlle=
rs/consumer.yaml
> >   create mode 100644 Documentation/devicetree/bindings/memory-controlle=
rs/memory-controller.yaml
> >   create mode 100644 drivers/memory/core.c
> >   create mode 100644 include/linux/memory-controller.h
> >=20

--ZfOjI3PrQbgiZnxM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5FklsACgkQ3SOs138+
s6GcqA//Q5OUVYrdcTeux/f0EWBv1/pwht0ee1aUsnP4Um8quhAz+gMOpMLLq0Tr
Lxv4wuLKKSd59BfF48NUk7fU91iMLKJTzT1yBxSWvsEc0MIfUPre8PalEToob4oj
TfLrNwEulquUL4aUAEdXUzfpSibr+2cf0Vf0oQMXDIj4TQ5LNc8WtRssWU/joa1Z
jTNrXQ8B0+gA9KXf9/5jA4tzsrFfpxaVQ2oiPBJTxaBS6a1VSGhCfk64Fv1Xezv6
NIffcn67mdt2rtI59Pz1YTVEgUqG9E47S+9qwqfgtcRvqE2UoiPHGoOpOevDI2El
LO/muVw5xyROk4X23lhbH9q1IZ8wDefRP0Nt2e5/Fgi1jj899n3GBpFrp4tLIZQ4
OKzxA/yoHOfWqPQkYmE8LY9OZZKYv5vX1E0l7aY7OR78rUpc0oXPptkedP1JVHnX
It3t3YvecvstIl0UxC67b9OlZC4h2kPzqlqF3fc0xOdV1eeLI1G58UzC8phSfoEo
qCOps57BTHR2i4BMXirkvKkb5bbDhGA3qrgX068xGIsw4SDvnQ7y4c5SFTqybqql
eplj55UYCk+JP85/gJ6+sXjEqAnyMIdv6lnGCxmfncIXheSDw0c/D8t00IzpovmO
PX1pak4k8xe0Ub8R6Vg9HRM0IsCSQ8lDrt/whJVWXKU1M74PJlM=
=gwzY
-----END PGP SIGNATURE-----

--ZfOjI3PrQbgiZnxM--


--===============8143688346658170377==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8143688346658170377==--

