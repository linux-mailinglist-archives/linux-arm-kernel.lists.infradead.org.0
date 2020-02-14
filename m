Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4A315D322
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 08:47:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xMZYquZCMXx3JY0nrEuVu9mIaDm4SBIMuuHXrmNYJL0=; b=K5024hH5smemd9QIDtcD++Ooi
	1nBwrvGiM5KJ9TfbBgNW2Sey8259peTnZa6zFc787cyfBkAx9RpoFfpJELyIMG6/WKViMr0c0IB1j
	JdfENOtfHI3I/AERVy57ZzOoE/JsnwaVuDhGvXmM8bll8XTY/olHb+3fJoZ1u85/Lfc6n+7GOWHng
	V32u9MjEyx+QJveGztSDT9pXYMK81gVUQ+ZuW2L1jJ9LIqK6PM6Z2zIKY6zMxVNRDYznaqAIgQtcZ
	ZuM6aoBq0XH60UvhxpW8Ys4jIsmay+H5Eg2Mxe+JlcX/nDfF2oagR8gD6AJ7XBY8bpt5tL94/6GbC
	ILtO7AprQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Vgk-0003B8-Kz; Fri, 14 Feb 2020 07:47:02 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Vgc-0003A5-Im
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 07:46:56 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 51A7A6D03;
 Fri, 14 Feb 2020 02:46:49 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 02:46:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=30N8lwJ76ANNJLmexRYW2YyfSL/
 98l30UQuoobG1iNg=; b=JN5dYvugDS5kqf2GGCp8ZMdFibo4E8KRIrL2o3DZvqQ
 ovSewFqziZEtnb9W7JRbZMPoX1NBVr8C/+RfpLt2TImgnIR8cgA+N4TKfcoraaiW
 eFsvMiRiRI66amQiDPXS4P+LWbnkqycyZ4tR63jWBpOE5cVfXJP0acsgtTnL1+FE
 jX7S93QhMC7sT9qLCjoW9RYS+yzbfHohrIr+evAsRS+1scMHbA3rKZFRP0qZm2P7
 kMO15SxB6fMyd9xgMI0d3hxFRXazLLjE43WWJuGhEsbZobP8Rm0CC2LavT3eEfcd
 Jfe5mE6n4GD0SSmzKJnrzYqn2zUXb+JqWFABy2vlALA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=30N8lw
 J76ANNJLmexRYW2YyfSL/98l30UQuoobG1iNg=; b=zgs7mwVwewVfMn7yLs4xxT
 7IfmQxufvBbG0CCCt9K1DYdxOURULoeN2iDr/Oe6SLR6kxcCtOgsQ0xynql5jeWW
 Jv2hYIN3Ck3Bk5IWYE2Q97OnNw1lH4c+tUd+WPCtZSrEl5QqpyGKjd6NJWivlpby
 2n755lBasVZx21RXFxv5S05RgA7VK6RhaojtPgr6uH8zhiMC8D1F1sBks5YNEMob
 biSrSeeZsD33tO64ZzEp2khnLvecYrcafLQvxk7+n9p6/DAqyzvAjxPY90JELOfu
 i1ZV+JFlYpl4pAhwxqe1liKGBER6R0z3tkT4fE4JTWnTw0kOZj7XOMZfXX4kSRmw
 ==
X-ME-Sender: <xms:aFBGXiuKYSuC0YTB4cRzClHTkRzayCcmXNYq9BD0mRBgnqqezcR-gg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieelgdduudefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:aFBGXpvB2roE6DcENcXQiMJo7po7-NCCd0XC5dYRpYRxwY5NwhCQrg>
 <xmx:aFBGXtcCi6pPw98gKy3FPcc4kHkD2Awqlx1Viep3QzutLZE12Qv8qw>
 <xmx:aFBGXp7FMuSbVxJfIt8t3YXb15cM-f78C72qwNPL0TIPmiTvnmvbvg>
 <xmx:aVBGXp-nspaUV4PRqHIpdJQozZQ4qEOB1toDImRJhezbniykUY--Pw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5EAE43280066;
 Fri, 14 Feb 2020 02:46:48 -0500 (EST)
Date: Fri, 14 Feb 2020 08:46:46 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v4 0/5] memory: Introduce memory controller mini-framework
Message-ID: <20200214074646.j57uywq27xqrnjrd@gilmour.lan>
References: <20200213163959.819733-1-thierry.reding@gmail.com>
 <9841eb35-65e4-632a-ceff-bb2ba3b11bb0@arm.com>
 <20200213181555.GB1006063@ulmo>
MIME-Version: 1.0
In-Reply-To: <20200213181555.GB1006063@ulmo>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_234655_092963_57EBE773 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9119200773113448447=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9119200773113448447==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cgx7eqxuhae5r2xz"
Content-Disposition: inline


--cgx7eqxuhae5r2xz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 13, 2020 at 07:15:55PM +0100, Thierry Reding wrote:
> On Thu, Feb 13, 2020 at 05:23:23PM +0000, Robin Murphy wrote:
> > [+ Maxime]
> >
> > On 13/02/2020 4:39 pm, Thierry Reding wrote:
> > > From: Thierry Reding <treding@nvidia.com>
> > >
> > > Hi,
> > >
> > > this set of patches adds a new binding that allows device tree nodes to
> > > explicitly define the DMA parent for a given device. This supplements
> > > the existing interconnect bindings and is useful to disambiguate in the
> > > case where a device has multiple paths to system memory. Beyond that it
> > > can also be useful when there aren't any actual interconnect paths that
> > > can be controlled, so in simple cases this can serve as a simpler
> > > variant of interconnect paths.
> >
> > Isn't that still squarely the intent of the "dma-mem" binding, though? i.e.
> > it's not meant to be a 'real' interconnect provider, but a very simple way
> > to encode DMA parentage piggybacked onto a more general binding (with the
> > *option* of being a full-blown interconnect if it wants to, but certainly no
> > expectation).
>
> The way that this works on Tegra is that we want to describe multiple
> interconnect paths. A typical device will have a read and a write memory
> client, which can be separately "tuned". Both of these paths will target
> system memory, so they would both technically be "dma-mem" paths. But
> that would make it impossible to treat them separately elsewhere.
>
> So we could choose any of them to be the "dma-mem" path, but then we
> need to be very careful about defining which one that is, so that
> drivers know how to look them up, which is also not really desirable.
>
> One other things we could do is to duplicate one of the entries, so that
> we'd have "read", "write" and "dma-mem" interconnect paths, with
> "dma-mem" referencing the same path as "read" or "write". That doesn't
> sound *too* bad, but it's still a bit of a hack. Having an explicit
> description for this sounds much clearer and less error prone to me.

IIRC the dmaengine binding allows to do that, so it would make sense
to me to have the same thing allowed for interconnects.

Maxime

--cgx7eqxuhae5r2xz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkZQZgAKCRDj7w1vZxhR
xZN1AP9xEZt3x9xN7nNg9v862AKEohAW68yHN8slrEdDkuDjLAEArPnr7wS/Ocya
nXTLIBU8NqQbSLnqTc5obXprpB/YcgM=
=twP1
-----END PGP SIGNATURE-----

--cgx7eqxuhae5r2xz--


--===============9119200773113448447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9119200773113448447==--

