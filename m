Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2CFC221B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=18npOGpqHa0Vvvju0zx2HiR8RR5rOIeskSzz1HAEr2U=; b=XPYxjYQ02VcfxW+GbsrSlSmym
	RCgCBwM7v1z/eHpsxvMr2JUI/nN79tAadgYxuUey8SF/oK9E//S+WylEkoILpxJoQvuSjoVcIbCW3
	PMBGZlufHeZ6XUoxA5eoFEWrpUbS474FKtwezbuyKURgdiszjaZgsQv9f31mVItE+M2I8ciPeOapj
	O9jgk5l7IdSRB4Qlm+IYLa9yD+/cf/oWFIhLuRMUwkFe0qZytvmWr0XrDTWVBRlMV+HpRRDW25Zdq
	jaY2eueJdn1euq6380/GsgKEbXP49jNkTAYrBusoK/Nnl6edaVi7PrygQZrZHXxGybkmk9b8elAAe
	QvG4Tz9Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvps-0001Xx-A2; Mon, 30 Sep 2019 13:35:32 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvpb-0001ER-8d
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:35:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id l3so11358050wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 06:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rCh9Vg6T3ECTbDQgHWwysJLgIuSC72Toh4hrLGUo0Bk=;
 b=n9au9sjSarhcP7II2+oFukloZx60NI/ERC8OA8/6fimP7XAipI5S46BL25nzyQEbEN
 GAKGnuw8oY0tosxi3dW1pZcsgAgUqfHkVDU4sJxAjMa42wl8oPicooJzzQ+9sijsQBYO
 ntbCzicwOuwQSl9QK9G7pDWOh0FLXg7silYY4Kh4nFbuJreda7TEtnRyF7Tz4SZi6wmC
 m+oKtTABWR7VfYadfVMqrWYMmFgRUQ3QOTzt72Td0Dmbcd8G43UsCXA2Bh2jVKkqF0TQ
 0jb5E3s4k0RCPRim4MbLWh9cfTZLYoiBffTs0M72hQAzdwCJ4TGVPnUI99388ZGU5KKv
 1qwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rCh9Vg6T3ECTbDQgHWwysJLgIuSC72Toh4hrLGUo0Bk=;
 b=BbXQ6OSe7obGgTV7uib6AllsGp1UPSLk/aCKaZinYwf0ccD8jhMDltGXp4T0yZuFiv
 4C2oquvf3Dk/JKC/lUH1KFzMEUEFTCPPUvjU5p4N8Tj4D3QyZKpmdlVsUEk+Jas7eb8b
 zAKtlzT5zZA0jmgRKcTV8ia/G5bF8jKfY6aUZrb/2KrD5nqc2jeqrrJgBkuuJkBpgsKD
 h1NSXbzXtYxz29kdcRnhvwRkjcwn45hOMOk+omBdEtRxEFN1oAdJXqn5F6nIfRA8H6Pv
 u9dfcEkbYdU/7mNIgW4BkG0fcg+l65wKn4+aFgWni9Ubsmg1q2wX7RR9GtFqkHCVmq2s
 ir7A==
X-Gm-Message-State: APjAAAXnh1VyidZiVKOnwsJrdsq5Ob7q3ME3DyGvqBvRFsEWN0an+ZCU
 AQZLOZTxidC/SBNEEj2XYdo=
X-Google-Smtp-Source: APXvYqwCoEkIeUPUex7gm7yypx/Bk+yuJECPCl9vC7K4SCIvaHSR56H/Pse4DnUPKIyEDhRpI7tuDw==
X-Received: by 2002:a05:6000:1281:: with SMTP id
 f1mr13741018wrx.247.1569850513451; 
 Mon, 30 Sep 2019 06:35:13 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id v2sm24055733wmf.18.2019.09.30.06.35.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 06:35:11 -0700 (PDT)
Date: Mon, 30 Sep 2019 15:35:10 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 00/11] of: dma-ranges fixes and improvements
Message-ID: <20190930133510.GA1904140@ulmo>
References: <20190927002455.13169-1-robh@kernel.org>
 <CAK8P3a0oct0EOMi5t4BmpgdkiBM+LjC+2pTST4hcvNCa3MGLmw@mail.gmail.com>
 <20190930082055.GA21971@infradead.org>
 <20190930085606.GG1518582@ulmo>
 <89e33aae-bc96-53c3-2a4e-e879e9a3c73e@arm.com>
MIME-Version: 1.0
In-Reply-To: <89e33aae-bc96-53c3-2a4e-e879e9a3c73e@arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_063515_700411_C5A5B017 
X-CRM114-Status: GOOD (  37.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-tegra@vger.kernel.org,
 Simon Horman <horms+renesas@verge.net.au>,
 Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============3810598397825002486=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3810598397825002486==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dDRMvlgZJXvWKvBx"
Content-Disposition: inline


--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 30, 2019 at 10:55:15AM +0100, Robin Murphy wrote:
> On 2019-09-30 9:56 am, Thierry Reding wrote:
> > On Mon, Sep 30, 2019 at 01:20:55AM -0700, Christoph Hellwig wrote:
> > > On Sun, Sep 29, 2019 at 01:16:20PM +0200, Arnd Bergmann wrote:
> > > > On a semi-related note, Thierry asked about one aspect of the dma-r=
anges
> > > > property recently, which is the behavior of dma_set_mask() and rela=
ted
> > > > functions when a driver sets a mask that is larger than the memory
> > > > area in the bus-ranges but smaller than the available physical RAM.
> > > > As I understood Thierry's problem and the current code, the generic
> > > > dma_set_mask() will either reject the new mask entirely or override
> > > > the mask set by of_dma_configure, but it fails to set a correct mask
> > > > within the limitations of the parent bus in this case.
> > >=20
> > > There days dma_set_mask will only reject a mask if it is too small
> > > to be supported by the hardware.  Larger than required masks are now
> > > always accepted.
> >=20
> > Summarizing why this came up: the memory subsystem on Tegra194 has a
> > mechanism controlled by bit 39 of physical addresses. This is used to
> > support two variants of sector ordering for block linear formats. The
> > GPU uses a slightly different ordering than other MSS clients, so the
> > drivers have to set this bit depending on who they interoperate with.
> >=20
> > I was running into this as I was adding support for IOMMU support for
> > the Ethernet controller on Tegra194. The controller has a HW feature
> > register that contains how many address bits it supports. This is 40
> > for Tegra194, corresponding to the number of address bits to the MSS.
> > Without IOMMU support that's not a problem because there are no systems
> > with 40 bits of system memory. However, if we enable IOMMU support, the
> > DMA/IOMMU code will allocate from the top of a 48-bit (constrained to
> > 40 bits via the DMA mask) input address space. This causes bit 39 to be
> > set, which in turn will make the MSS reorder sectors and break network
> > communications.
> >=20
> > Since this reordering takes place at the MSS level, this applies to all
> > MSS clients. Most of these clients always want bit 39 to be 0, whereas
> > the clients that can and want to make use of the reordering always want
> > bit 39 to be under their control, so they can control in a fine-grained
> > way when to set it.
> >=20
> > This means that effectively all MSS clients can only address 39 bits, so
> > instead of hard-coding that for each driver I thought it'd make sense to
> > have a central place to configure this, so that all devices by default
> > are restricted to 39-bit addressing. However, with the current DMA API
> > implementation this causes a problem because the default 39-bit DMA mask
> > would get overwritten by the driver (as in the example of the Ethernet
> > controller setting a 40-bit DMA mask because that's what the hardware
> > supports).
> >=20
> > I realize that this is somewhat exotic. On one hand it is correct for a
> > driver to say that the hardware supports 40-bit addressing (i.e. the
> > Ethernet controller can address bit 39), but from a system integration
> > point of view, using bit 39 is wrong, except in a very restricted set of
> > cases.
> >=20
> > If I understand correctly, describing this with a dma-ranges property is
> > the right thing to do, but it wouldn't work with the current
> > implementation because drivers can still override a lower DMA mask with
> > a higher one.
>=20
> But that sounds like exactly the situation for which we introduced
> bus_dma_mask. If "dma-ranges" is found, then we should initialise that to
> reflect the limitation. Drivers may subsequently set a larger mask based =
on
> what the device is natively capable of, but the DMA API internals should
> quietly clamp that down to the bus mask wherever it matters.
>=20
> Since that change, the initial value of dma_mask and coherent_dma_mask
> doesn't really matter much, as we expect drivers to reset them anyway (and
> in general they have to be able to enlarge them from a 32-bit default
> value).
>=20
> As far as I'm aware this has been working fine (albeit in equivalent ACPI
> form) for at least one SoC with 64-bit device masks, a 48-bit IOMMU, and a
> 44-bit interconnect in between - indeed if I avoid distraction long enough
> to set up the big new box under my desk, the sending of future emails will
> depend on it ;)

After applying this series it does indeed seem to be working. The only
thing I had to do was add a dma-ranges property to the DMA parent. I
ended up doing that via an interconnects property because the default
DMA parent on Tegra194 is /cbb which restricts #address-cells =3D <1> and
#size-cells =3D <1>, so it can't actually translate anything beyond 32
bits of system memory.

So I basically ended up making the memory controller an interconnect
provider, increasing #address-cells =3D <2> and #size-cells =3D <2> again
and then using a dma-ranges property like this:

	dma-ranges =3D <0x0 0x0 0x0 0x80 0x0>;

to specify that only 39 bits should be used for addressing, leaving the
special bit 39 up to the driver to set as required.

Coincidentally making the memory controller an interconnect provider is
something that I was planning to do anyway in order to support memory
frequency scaling, so this all actually fits together pretty elegantly.

Thierry

--dDRMvlgZJXvWKvBx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2SBIwACgkQ3SOs138+
s6GQ0w/+M5DX25F5EvacUJzXP9QLMg2vdsP8El3gsecwnqovP1oSoUKnZyz98KUl
ABB5ViyBPyNXg7XSmlJrrGoeA95AWyZiaXCQANS2ps24cOCd81sJR90NN/mQhQ6b
WlRDS1XdpSoLYEodeHKXS2chYdSGAIWMDsxouW2JDG/wugk3yCarpm0DQzUmsip/
FwI2OAKJJP0cJ0l0bFB7RuijyI/Gs/pRG1gNrLuzB5GX0t2dZLzfcKggzY44hi4Q
MIGxkRcFT2csNs3t+Qp4yy90SjEiDi77zGVqcKNreNa+0J5dcCmn8iXE8alV+9oN
XLVfb/8/e4Gdjm3hthjKrLQQ8GtZ04RjPujBEe2BFfERdfVb+CM+lIgZa6dI+KIp
7IYWxp5ehMclUc6u0UfkpRklyBfoK/eBr9+lJfzgd5+5D28RxMYgdpGVlQiTuL++
r+sS4cUaCD3KDNmj6j7GdxCl98jfxzXgzdJ5hkm3exZRHM3JcyiNSmsf6WoiGAJh
beh65vgHal5X5xFh38HV05lM2gYjh97GwzKecmY0q3xGw36R0jPxi4tMfKylnuKh
sp0kdAq2amwxR7Z0FBJ2t26SB41rVlA4Wu6Rc09m3bIblxnW45hgJhHsfqtPLB9A
dw9MG+gJVyffkh5BaZ3Td4raeptslyoappih5w2nWFYznD2kJQM=
=5SOJ
-----END PGP SIGNATURE-----

--dDRMvlgZJXvWKvBx--


--===============3810598397825002486==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3810598397825002486==--

