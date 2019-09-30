Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258BFC1D7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mSgerp7vxvprA0wYcrnQU7scTmxc4RwRVHfZnH9HfxA=; b=bnOCEFTsYAyBiysCZOx/DzmAj
	QbmrnXIfUsUoMfGgkynpBT3ooUSj7gfvZzZyZgjTEq8EAZhnw6CKwGUAvhEW3blIQSpUbulfBqwhH
	S3UA2mXasf8QgFunWMtSsROQDfKrpGhlbjzlqxrCsNkWyC89EnNzfR98v83qdCstex2FGq/2ZqA4K
	wcOHAfFhB+ih8HxfCbMsyX4XaZQHj2pAsA4TDqXsZH4BIRAK6GPGDbzka1N8tGzK/azcuR3bTFB0c
	v6GcC1w4XBDrlWyttNAGn6N28Fg7dLd7PClebj083wqbdQZ8ud6j2lDlT1gPa8IdyCe60eBgN7bz2
	5d2JnwtCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iErTi-0006OY-DA; Mon, 30 Sep 2019 08:56:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iErTX-0006Nl-3J
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:56:12 +0000
Received: by mail-wr1-x442.google.com with SMTP id b9so10296289wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 01:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6fftjP5bUCArKKdB+VCYiLDFrQQtx2KZIvWcOKzDCTo=;
 b=pkVnTk26YezVaP0QB6r6YgludHu532Mk2WYVTZVUK5YERoR7Cre0MLCfdUEVXwksmh
 E/A4G9ZmWoZh3DyCXN9U6nYx4NR37V44cagnEPtHckwjRORmK3YYs+wVNOYpZL2eMn1w
 i5HJrQU9kaoZshin+US3ypkKy7lvUt8lO3Gv3+su4rGmlNEABHsqTVGlV4C9T/XPHSh5
 ETyK1J5wzAaKdV+AllRthATj0+wUpz8OAV4WEeQ/DwBbg2STqCpna3dJwDaHKtn27PGV
 NBZodjacGxxe9x27WUBsxLENR8tfy17IYHp7oVr4X4sa21WDcqyH/VFvHo6XEhdQBenD
 5m6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6fftjP5bUCArKKdB+VCYiLDFrQQtx2KZIvWcOKzDCTo=;
 b=hncBCVKodvzFhuPZcu8muRJwnIjNdUMSCrnMPTz2+GvNrBsgInw7ZUC1xEb2cwSqbc
 NjeeqRPnX//e/yxxqo9yXZnTcxheTRouDObpZOaFJwkNrv6j3KW8ZyFvx3SgSuzdfHvC
 1fA0GIBrL6lMfRb5jpkPJ+zXnBT19XqSa9wN8KDgNt80qCCfLaSpbd3nRzvoVAt6Clhv
 JXYaPHpp2Gc+1jtBeC3b8wQKzSGr+yDOBmEO2NNmc5SuIA3fdNnFXz3QC2uqRdaKF7/c
 ZG9OJ7e9OCdGYl0/vo4iXXrOO8T8dVJyob9F0OnjHm6SEp1PchUzxAuCIDpUTKXqkfrW
 p7Hw==
X-Gm-Message-State: APjAAAXgb1ejYIaxdJbT4CZbowIQgaGqGTy1kCYIch1sUDFbv5DOkjYF
 2gVtbhF0Xl5dtbfD2M8h2oM=
X-Google-Smtp-Source: APXvYqwWawM80XtnOjhYYvAiRzsk3JHKSsZXVdwQfDHIyltCNfgUlhCDMIJC6B8fbpk/Zl4xuFyAIA==
X-Received: by 2002:a5d:4a8a:: with SMTP id o10mr5386140wrq.201.1569833769122; 
 Mon, 30 Sep 2019 01:56:09 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id e30sm23469234wra.48.2019.09.30.01.56.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 01:56:07 -0700 (PDT)
Date: Mon, 30 Sep 2019 10:56:06 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 00/11] of: dma-ranges fixes and improvements
Message-ID: <20190930085606.GG1518582@ulmo>
References: <20190927002455.13169-1-robh@kernel.org>
 <CAK8P3a0oct0EOMi5t4BmpgdkiBM+LjC+2pTST4hcvNCa3MGLmw@mail.gmail.com>
 <20190930082055.GA21971@infradead.org>
MIME-Version: 1.0
In-Reply-To: <20190930082055.GA21971@infradead.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_015611_164292_10CA21F6 
X-CRM114-Status: GOOD (  23.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 DTML <devicetree@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-tegra@vger.kernel.org,
 Simon Horman <horms+renesas@verge.net.au>, Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============0239716713918510351=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0239716713918510351==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7lMq7vMTJT4tNk0a"
Content-Disposition: inline


--7lMq7vMTJT4tNk0a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 30, 2019 at 01:20:55AM -0700, Christoph Hellwig wrote:
> On Sun, Sep 29, 2019 at 01:16:20PM +0200, Arnd Bergmann wrote:
> > On a semi-related note, Thierry asked about one aspect of the dma-ranges
> > property recently, which is the behavior of dma_set_mask() and related
> > functions when a driver sets a mask that is larger than the memory
> > area in the bus-ranges but smaller than the available physical RAM.
> > As I understood Thierry's problem and the current code, the generic
> > dma_set_mask() will either reject the new mask entirely or override
> > the mask set by of_dma_configure, but it fails to set a correct mask
> > within the limitations of the parent bus in this case.
>=20
> There days dma_set_mask will only reject a mask if it is too small
> to be supported by the hardware.  Larger than required masks are now
> always accepted.

Summarizing why this came up: the memory subsystem on Tegra194 has a
mechanism controlled by bit 39 of physical addresses. This is used to
support two variants of sector ordering for block linear formats. The
GPU uses a slightly different ordering than other MSS clients, so the
drivers have to set this bit depending on who they interoperate with.

I was running into this as I was adding support for IOMMU support for
the Ethernet controller on Tegra194. The controller has a HW feature
register that contains how many address bits it supports. This is 40
for Tegra194, corresponding to the number of address bits to the MSS.
Without IOMMU support that's not a problem because there are no systems
with 40 bits of system memory. However, if we enable IOMMU support, the
DMA/IOMMU code will allocate from the top of a 48-bit (constrained to
40 bits via the DMA mask) input address space. This causes bit 39 to be
set, which in turn will make the MSS reorder sectors and break network
communications.

Since this reordering takes place at the MSS level, this applies to all
MSS clients. Most of these clients always want bit 39 to be 0, whereas
the clients that can and want to make use of the reordering always want
bit 39 to be under their control, so they can control in a fine-grained
way when to set it.

This means that effectively all MSS clients can only address 39 bits, so
instead of hard-coding that for each driver I thought it'd make sense to
have a central place to configure this, so that all devices by default
are restricted to 39-bit addressing. However, with the current DMA API
implementation this causes a problem because the default 39-bit DMA mask
would get overwritten by the driver (as in the example of the Ethernet
controller setting a 40-bit DMA mask because that's what the hardware
supports).

I realize that this is somewhat exotic. On one hand it is correct for a
driver to say that the hardware supports 40-bit addressing (i.e. the
Ethernet controller can address bit 39), but from a system integration
point of view, using bit 39 is wrong, except in a very restricted set of
cases.

If I understand correctly, describing this with a dma-ranges property is
the right thing to do, but it wouldn't work with the current
implementation because drivers can still override a lower DMA mask with
a higher one.

Thierry

--7lMq7vMTJT4tNk0a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2RwyMACgkQ3SOs138+
s6HYvBAAiJWcvv5xcJncOs7e0ol6y9Mk77w/r0hKJYeifVE572SDCmbwK8orp3zk
P0DcZYqws8pYA0kK38w8FJO6ptv754PoJ7Gp8Io9SIsbrvY9YFUFZAK7OQ3SExGx
LKwNoEeKNM5ceP0HFonHM2YTTuKL7soYqLm/4fTiOTACT2c42pRTLqonIXL73vxE
gV3/ssj+hfwNkORM3vSqgiC14re/1fi7uzG5YLjhe1maobqJ8hVUD8rfZfKIcE17
XFPHbBo8wILS6P6vYrrw8LJLsUNJMKrmqlxCYaAhuEQaosUatdHp9/KdDXOLZDxV
NLu2jOD4RZ46PC8P6p4E9ZgEuAJMrh5NydXMdSuGIbACndvQchObUEWbHEP8W8Xi
Cr70CmMxfFDGoqKO99X/07jvG0D/iEmF2CwQPO0QKaIDZPYN0weoIbcEm9r1KEAm
XCvXQl80jaMmZH2xpqeSV+i1wO0dNpPZ0MZUutXqjIyE189WvrcHsTk8HAJIcbj+
spwwo11tAR/x2t3WIgcrAHVbSEXUuK6hNwpeC44HBcQbWPOxa1sSJvNeYq0z/kPb
YuYY9NvQaZBX87qVunbANq05ev4cK2oeFbZjkWHKKhdBsb4rcaUvHWCQOpgTL0wQ
Sy9ckOP6goBXLArIFmTkuDyGxoNG5mqrcPGk1duSBP8nzDQvcVw=
=Iybe
-----END PGP SIGNATURE-----

--7lMq7vMTJT4tNk0a--


--===============0239716713918510351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0239716713918510351==--

