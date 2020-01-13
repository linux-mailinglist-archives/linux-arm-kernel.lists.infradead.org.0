Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F74C139326
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 15:08:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o5oG1DzyFx+ipdaf7NuhIzHouZd4WY8tDoYfrY0gF/U=; b=U3bjaWbwDPeXkb/mmAhoAhi4R
	Mlj5ySnvV2uolc0IvG4uO2IiWgwFm4mbp4IE55pboVdIYcqSuIUyKbkJvvFlYB1VvJUbcpInFH9VV
	jNovVuWk92DjanOA/JktyolyrafxLwaaVH/J0rtwVNpp8QDp8sEMkEzzdBGzTrZEQNFWHy6IqUf9X
	QZersbJ5N6gR8W/wfEK+I45+z0qtKf8Q6DbGbx2m/PJ6r3cezoH4i8aoL4y25sJldPVzkjehE/Km2
	eOJrw2wNTxNsLKSORMui4CM+YRpc6iIqsFfUws22pGd2wtrAOASqJwdViD1bJPUhiqXCuQBtqlR/7
	T/NdQww2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir0Nx-0007tQ-Fh; Mon, 13 Jan 2020 14:08:05 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir0Np-0007sU-F1
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 14:07:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id f129so9789109wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 06:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/EVMN9/xN8MEKSvYGmrRESOZyE3xK5MPvzaelIarzkM=;
 b=FOx+UFwA7cB2vGDHkTq2NvnjJkOrR3oWJ+FVDZABhynuqwLUuxHvseX5i5pJrqnpse
 dwQ7gYHjaA/Cw+M3+lKd+quYZ9wxp8F1Ovv/RXcJpKy0H5OjiScOXF7BRJtca1Wbffsu
 gS2WGwbPeh2d9TKxgyfz27TQFGce9VRB/b2gvBDbmjpuU/eOIv3Z4QpAWBd8VsKwCYKo
 ZuG36vj/8Pwacg6Bt4R1RQ8PxFao1KHEYH5XRr7Jb/9ISBUVNTtio+X6hwZrxuHxNHNi
 zI6ggrCjJ7OHy/W/x/x/1Rfef4OVDE5EHOqAV3YSbGqLVL8YPgfM4J0fBxTcMUXbZy4x
 ODMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/EVMN9/xN8MEKSvYGmrRESOZyE3xK5MPvzaelIarzkM=;
 b=Y4jcQJUtn70Q65nZemgMRf2JrNVC43HfeaCQvWN7TQlJxHq0QBmivANP5eDxqFG7N1
 RJ31fvW2nwCJcR6T0HrbI+dFcusQupk6jL6C5b8xz5Fpdmw2IrT68Q2cVnvo/7QB/MTO
 dMx//RByHIXRB5GeKPYXneOdNCbrUwQEGSLk87mjHWOCUDq9Qv0BbrSgeWMH5GnG5042
 r/+3waumDkndBnuCIo4sHzfx9QeUP138Tiipv97eLVmtkdRVyUGqVm+NdnS9A5d+XK76
 MtVFAAn0iytr6LDSFjPNx66b+NW3BA9DmXXJYAVpAkEwOM5VQrZyxnJx8IJpaRkT8ZEo
 gUMg==
X-Gm-Message-State: APjAAAXAIPls0zIf0lSpaSm9asUAa1YOeoy0ShkM5eIlSm5sV99Whlxw
 OyPBURpiAVHo8CbutWTak78=
X-Google-Smtp-Source: APXvYqwol4MJpyZnadAtY2dCc9+KZIIX8XfaE0ty644VxRTQf1+KIo2iP5varH8Wr+i+Kh7iRG+Yng==
X-Received: by 2002:a7b:c936:: with SMTP id h22mr19784504wml.115.1578924475615; 
 Mon, 13 Jan 2020 06:07:55 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id k82sm14540668wmf.10.2020.01.13.06.07.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 06:07:54 -0800 (PST)
Date: Mon, 13 Jan 2020 15:07:51 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Saravana Kannan <saravanak@google.com>
Subject: Re: [RFC 0/2] iommu: arm-smmu: Add support for early direct mappings
Message-ID: <20200113140751.GA2436168@ulmo>
References: <20191209150748.2471814-1-thierry.reding@gmail.com>
 <20200111045639.210486-1-saravanak@google.com>
MIME-Version: 1.0
In-Reply-To: <20200111045639.210486-1-saravanak@google.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_060757_525800_5B79C921 
X-CRM114-Status: GOOD (  44.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-team@android.com, Patrick Daly <pdaly@codeaurora.org>,
 robin.murphy@arm.com, joro@8bytes.org, Rob Clark <robdclark@gmail.com>,
 iommu@lists.linux-foundation.org, linux-tegra@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, Pratik Patel <pratikp@codeaurora.org>
Content-Type: multipart/mixed; boundary="===============0637099533417723258=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0637099533417723258==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 10, 2020 at 08:56:39PM -0800, Saravana Kannan wrote:
> Hi Thierry,
>=20
> I happened upon this thread while looking into another thread [1].
>=20
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > On some platforms, the firmware will setup hardware to read from a given
> > region of memory. One such example is a display controller that is
> > scanning out a splash screen from physical memory.
> >=20
> > During Linux' boot process, the ARM SMMU will configure all contexts to
> > fault by default. This means that memory accesses that happen by an SMMU
> > master before its driver has had a chance to properly set up the IOMMU
> > will cause a fault. This is especially annoying for something like the
> > display controller scanning out a splash screen because the faults will
> > result in the display controller getting bogus data (all-ones on Tegra)
> > and since it repeatedly scans that framebuffer, it will keep triggering
> > such faults and spam the boot log with them.
>=20
> While I'm not an expert on IOMMUs, I have a decent high level
> understanding of the problem you are trying to solve.
>=20
> > In order to work around such problems, scan the device tree for IOMMU
> > masters and set up a special identity domain that will map 1:1 all of
> > the reserved regions associated with them. This happens before the SMMU
> > is enabled, so that the mappings are already set up before translations
> > begin.
>=20
> I'm not sure if this RFC will solve the splash screen issue across SoCs
> ([1] seems to have a different issue and might not have memory-regions).

Looking at the proposed patches, they look like they're solving a
different, although related, problem. In your case you seem to have a
bootloader that already sets up the SMMU to translate for a given
master. The case that I'm trying to solve here is where the bootloader
has not yet setup the SMMU but has instead pointed some device to read
memory from a physical address.

So what this patch is trying to solve is to create the mappings that a
given device needs in order to transparently keep scanning out from an
address region that it's using, even when the kernel enables address
translation.

In the case where you're trying to inherit the bootloader configuration
of the SMMU, how do you solve the problem of passing the page tables to
the kernel? You must have some way of reserving that memory in order to
prevent the kernel from reusing it.

> > One thing that was pointed out earlier, and which I don't have a good
> > idea on how to solve it, is that the early identity domain is not
> > discarded. The assumption is that the standard direct mappings code of
> > the IOMMU framework will replace the early identity domain once devices
> > are properly attached to domains, but we don't have a good point in time
> > when it would be safe to remove the early identity domain.
>=20
> You are in luck! I added sync_state() driver callbacks [2] exactly for
> cases like this. Heck, I even listed IOMMUs as an example use case. :)
> sync_state() works even with modules if one enables of_devlink [3] kernel
> parameter (which already supports iommus DT bindings). I'd be happy to
> answer any question you have on sync_state() and of_devlink.

I wasn't aware of of_devlink, but I like it! It does have the drawback
that you need to reimplement a lot of the (phandle, specifier) parsing
code, but I don't think anybody was ever able to solve anyway.

Looking at struct supplier_bindings, I think it might be possible to
share the property parsing code with the subsystems, though. But I
digress...

Regarding sync_state(), I'm not sure it would be useful in my case. One
of the drivers I'm dealing with, for example, is a composite driver that
is created by tying together multiple devices. In that setup, all of the
devices will have to be probed before the component device is
initialized. It's only at that point where the SMMU mapping is
established, so releasing the mapping in ->sync_state() would be too
early.

One other thing I'm curious about with sync_state() is how do you handle
the case where a consumer requires, say, a given regulator to supply a
certain voltage. What if that voltage is different from what's currently
configured? According to the documentation, ->sync_state() is the point
at which the provider driver will match the configuration to consumer
requests. How do you communicate to the consumer that they aren't yet
getting the configuration that they're asking for?

I suppose the example might be somewhat contrived. Presumably any
devices sharing a regulator would have to be compatible in terms of
their input voltages, so maybe this can't ever happen?

One case that I could imagine might happen, though, is if a device is
probed and the driver wants to enable the regulator. But if the
regulator is disabled on boot, isn't the regulator then going to be kept
powered off until ->sync_state()? If so, will the regulator_enable()
call still succeed? If yes, doesn't that mean that the consumer device
may malfunction because it's not actually powered on after the driver
has requested so?

> > One option that I can think of would be to create an early identity
> > domain for each master and inherit it when that master is attached to
> > the domain later on, but that seems rather complicated from an book-
> > keeping point of view and tricky because we need to be careful not to
> > map regions twice, etc.
> >=20
> > Any good ideas on how to solve this? It'd also be interesting to see if
> > there's a more generic way of doing this. I know that something like
> > this isn't necessary on earlier Tegra SoCs with the custom Tegra SMMU
> > because translations are only enabled when the devices are attached to a
> > domain.
>=20
> Good foresight. As [1] shows, identity mapping doesn't solve it in a
> generic way.

I think your [1] is a special case of identity mappings where the
mappings are already active. If you pass the information about the
mappings via memory-region properties, then you should be able to
reconstruct the identity mapping in the kernel before switching the
SMMU over to the new mapping for a seamless transition.

> How about actually reading the current settings/mappings and just
> inheriting that instead of always doing a 1:1 identity mapping? And then
> those "inherited" mappings can be dropped when you get a sync_state().
> What's wrong with that option?

Reading the current mappings should also work. You still need to ensure
that the in-memory page tables for the mappings are properly protected
so that nobody can overwrite them. In that case, however, you may also
want to pass those page tables into the kernel so that the mappings can
be extended, otherwise you'll be stuck with an IOMMU domain that you
can't modify.

I can see some potential pitfalls with that. What, for example, if the
bootloader has chosen to use a different page table format than what the
kernel wants to use? In order to inherit the mappings, you'd have to do
some fairly complication conversions in order for this to work.

One major downside with inheriting the mappings from the bootloader is
that you assume that the bootloader has already set up any mappings.
None of the setups that I'm working on does that. So even if you can
solve mapping inheritance in a generic way, it doesn't mean that it can
be used on all platforms. You'll always have the case where you need to
create the mappings from scratch to 1:1 map the physical addresses that
hardware might be accessing.

Thierry

>=20
> Cheers,
> Saravana
>=20
> [1] https://lore.kernel.org/linux-arm-msm/20200108091641.GA15147@willie-t=
he-truck/
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/Documentation/driver-api/driver-model/driver.rst#n172
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/Documentation/admin-guide/kernel-parameters.txt#n3239

--rwEMma7ioTxnRzrJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl4cebUACgkQ3SOs138+
s6HuWg/7B3nDRF/YLH9Krye8QDZ57H+fAlldEAKKcLJlzK6v1vTthhixh861Uzn9
x3cn75YGpEYGW4mr3Nh0asGuKAvwZKapA1mYIFirXMILQRD5CEtumKJoqRI+n2kh
8oiOhjwZaWihckgV2MNLMdgkgwQp2SUJN9+pPRzKqYzDaHBEKaQVC606pSADPT3s
tt8bQ9cAGgf/Q6KuxNN3kB6iHVnv0LE3O2IRmF7SXxPjzYBkBZZTlmft/LmDNJ+G
i1nHvoy+CYXCWYRfNoVYn0If//4HlDglUQFs0iBaV0ZffzK6mMUVDAn/eKnr/ZYt
zV2xxpWZz3YeywJHefZfi7RJAnudBtZbagp8PoI66SrDsX8+g72Gp/5khC45RwMQ
h8E7fEDc0KQLM40Xx3bUoiOfhwd1zfWhU+88zVkQGD/oy9Pj3znuUzqruwk2NhFm
MmML9v7ZlHa6xxdZM2TBFrolrWQo8PxV/0RjtrHZAufp7Yvcz08X/AoGa6ThDCaA
N0rb1ItarA6qGcbP1GmauTeErllkFhcQaFO/3wXcYIqlZXVIZfXLDhX5vv6XBKwD
SiAtieTmWYDZBPO31KAz/ualhsA1Ck82NfVNy6AwnSHUeTW3+38WCtzlx2peZ8+E
hs6tuz1JJidPlPT2VCbuPsTMx/UGyU+mrRX6CZCKyDSH85YhfJ8=
=ttp3
-----END PGP SIGNATURE-----

--rwEMma7ioTxnRzrJ--


--===============0637099533417723258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0637099533417723258==--

