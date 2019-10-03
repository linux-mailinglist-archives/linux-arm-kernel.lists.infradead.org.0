Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7E3C9998
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 10:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r6TBwa8kjHtbtedpalOUddyq2/YcCMghWljb9Nhdiyo=; b=u7gGMl/s9F9vWN6ZJvS1Y7yRl
	pGTeXNmn71hSBMfUHgbPJSCy0sR3/JoMsIPn/maEKZ/pNz4GRKoQc2N9+VxChqJvCo2aHmcRBMWo9
	EKGmu0otfNPmS6JZY4OiY91TE/2ret7VGqA1IK1np4QfZbW0rPHDpVBnMcRKgLiCdpkDMdY227O+1
	ao81sWCz5alYlepptY3HfrANbrqbyjO+ZZmTqH6iH4ERuVlCyWQoMCR7kyaANWvoa3YIh75r16Z0p
	kSIzuaaXH3q/VnpDx7LiTg88ND34Svt/NgWWNTYZn5xLVazCAm63/0txVtR19SENTV/vWweA7bFGh
	AQvlJSZlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFwDb-00059A-1o; Thu, 03 Oct 2019 08:12:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFwDR-00058a-Uk
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 08:12:03 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7970121A4C;
 Thu,  3 Oct 2019 08:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570090321;
 bh=O5XOqVtI749lX0kLTXsizlwyJ9jF3EZNAzgZ3Tj2D4A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YZaBTrmPZzkfsvkluHP0PQmgfB/mq+/dWelyLwPf0GVh7Q3OJfNLZjjv6SAcoERTC
 cZ0QWTzebb8L6n6es43dgA4s3rvh3bGjNxZp6l9W8J92j/ErUx8pYBq7liCOClYlXp
 tCpVLRlx8fuqIGiUsb7iaMfTppeMIGRLwyUGX128=
Date: Thu, 3 Oct 2019 10:11:58 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] arm64: tegra: Set dma-ranges for memory subsystem
Message-ID: <20191003081158.v72o3rilgg2bhncn@gilmour>
References: <20191002154654.225690-1-thierry.reding@gmail.com>
 <20191002154946.GA225802@ulmo>
MIME-Version: 1.0
In-Reply-To: <20191002154946.GA225802@ulmo>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_011202_039208_E2126D04 
X-CRM114-Status: GOOD (  26.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7023560359398560420=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7023560359398560420==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bengp4ayl5pew25c"
Content-Disposition: inline


--bengp4ayl5pew25c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 02, 2019 at 05:49:46PM +0200, Thierry Reding wrote:
> On Wed, Oct 02, 2019 at 05:46:54PM +0200, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >
> > On Tegra194, all clients of the memory subsystem can generally address
> > 40 bits of system memory. However, bit 39 has special meaning and will
> > cause the memory controller to reorder sectors for block-linear buffer
> > formats. This is primarily useful for graphics-related devices.
> >
> > Use of bit 39 must be controlled on a case-by-case basis. Buffers that
> > are used with bit 39 set by one device may be used with bit 39 cleared
> > by other devices.
> >
> > Care must be taken to allocate buffers at addresses that do not require
> > bit 39 to be set. This is normally not an issue for system memory since
> > there are no Tegra-based systems with enough RAM to exhaust the 39-bit
> > physical address space. However, when a device is behind an IOMMU, such
> > as the ARM SMMU on Tegra194, the IOMMUs input address space can cause
> > IOVA allocations to happen in this region. This is for example the case
> > when an operating system implements a top-down allocation policy for IO
> > virtual addresses.
> >
> > To account for this, describe the path that memory accesses take through
> > the system. Memory clients will send requests to the memory controller,
> > which forwards bits [38:0] of the address either to the external memory
> > controller or the SMMU, depending on the stream ID of the access. A good
> > way to describe this is using the interconnects bindings, see:
> >
> > 	Documentation/devicetree/bindings/interconnect/interconnect.txt
> >
> > The standard "dma-mem" path is used to describe the path towards system
> > memory via the memory controller. A dma-ranges property in the memory
> > controller's device tree node limits the range of DMA addresses that the
> > memory clients can use to bits [38:0], ensuring that bit 39 is not used.
> >
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> > Arnd, Rob, Robin,
> >
> > This is what I came up with after our discussion on this thread:
> >
> > 	[PATCH 00/11] of: dma-ranges fixes and improvements
> >
> > Please take a look and see if that sounds reasonable. I'm slightly
> > unsure about the interconnects bindings as I used them here. According
> > to the bindings there's always supposed to be a pair of interconnect
> > paths, so this patch is not exactly compliant. It does work fine with
> > the __of_get_dma_parent() code that Maxime introduced a couple of months
> > ago and really very neatly describes the hardware. Interestingly this
> > will come in handy very soon now since we're starting work on a proper
> > interconnect provider (the memory controller driver is the natural fit
> > for this because it has additional knobs to configure latency and
> > priorities, etc.) to implement external memory frequency scaling based
> > on bandwidth requests from memory clients. So this all fits together
> > very nicely. But as I said, I'm not exactly sure what to add as a second
> > entry in "interconnects" to make this compliant with the bindings.

It definitely sounds reasonable to me :)

Maxime

--bengp4ayl5pew25c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZWtTgAKCRDj7w1vZxhR
xaNSAQDPvQ0Eg3wgAsW+NG/VGPUeXTGz5HZ2S7wOq83jBXQOjwD+Mxiz+DDez9yR
wEL8S5X8NUb7rZUsz+nnZoo4Dh142g4=
=0yH4
-----END PGP SIGNATURE-----

--bengp4ayl5pew25c--


--===============7023560359398560420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7023560359398560420==--

