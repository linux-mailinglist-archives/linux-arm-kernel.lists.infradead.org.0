Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEE61BCC6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ghQPY4UQ9bqMArqEqq2lHOkTKy/9JYI8X6l2O6la6A8=; b=iYqaMUf9chVIKMFffgItTpziE
	3tc3K1bUcwJyQ49y8kBwJ9LuEopyBookJzGaPVxmsgpmFxd55/h9LbPSaCEoVRQyxezb1XC6c4Nqh
	fubKH1EoBbGJkS3zFrMvpsf4hrGWIanJ+skr0QJvoRRIplgOUUOXh5uHE7uMPwYF5GbinApu1CMYV
	vGJeHP1nJgIyV3rCdhUfyv4KVs+Rj7hR4HOsT1NCRAOqr66pziKtkX2LwWQexgzvYZWWtQj39yWO1
	b34fesJLUlM9jn3D0tk869za1ceVhoX6mLQfrFMdAgK/kt4ihk2clmFCa7r7NH/IPv92FP+vgLo91
	7tQpLixEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTVxB-0007Ow-P9; Tue, 28 Apr 2020 19:31:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTVx1-0007MX-Dj
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 19:31:28 +0000
Received: from earth.universe (dyndsl-095-033-172-075.ewe-ip-backbone.de
 [95.33.172.75])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3BFA21707;
 Tue, 28 Apr 2020 19:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588102286;
 bh=xj/V0eXDEGpxei/D4tRMMNGrhD6ZfmLPRgXfOZqZIGY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u/FoPomPbU1vPfODWtg6PZi8uOI/TJdHLpuHwDWL8wmZG/ki/i8heElf78GyUXuYr
 YDQTitPOORz1q5RWM34tPzESu94USs0MWCUDpKDC3h/f28pTs+3d17VchijSrYU8Fj
 cFHEBWN2uv4vgGyI/R/lZQt4GMyBAtBf8FBvn26Q=
Received: by earth.universe (Postfix, from userid 1000)
 id DDA173C08C6; Tue, 28 Apr 2020 21:31:24 +0200 (CEST)
Date: Tue, 28 Apr 2020 21:31:24 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 04/17] power/reset: vexpress: Support building as a module
Message-ID: <20200428193124.xe53lgorhc6uyffv@earth.universe>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-5-robh@kernel.org>
 <CAK8P3a2BZLti5pLrru8s-45Yz54SA0JZbyjvYEstSDJZfnzEmA@mail.gmail.com>
 <CAL_Jsq+Hk_WuK=c+eHi1Kz3EPzm=zOw2ctETXEySPH1WgAGjug@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+Hk_WuK=c+eHi1Kz3EPzm=zOw2ctETXEySPH1WgAGjug@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_123127_504247_75212A86 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Will Deacon <will@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Lee Jones <lee.jones@linaro.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7609458863881448297=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7609458863881448297==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6ujoodgxix7zrbfc"
Content-Disposition: inline


--6ujoodgxix7zrbfc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Apr 20, 2020 at 12:23:13PM -0500, Rob Herring wrote:
> On Mon, Apr 20, 2020 at 10:24 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
> > >
> > > Enable building the VExpress power-off/reset driver as a module.
> >
> > Your change allows loading and unloading the driver, but actually
> > unloading is a bug with the current implementation, as there is no
> > 'release' handler to undo the _vexpress_register_restart_handler()
> > function.
>=20
> And also to save and restore pm_power_off...

I'm fine with providing Acked-by for this for merging through a
different tree or taking it through my tree.

> > It should not be hard to add a release handler, or you could just
> > mark the function as non-unloadable by only having a module_init()
> > but no module_exit() function.
> >
> > I suppose if you do the latter, there should also be a suppress_bind_at=
trs
> > flag in the device_driver. This is a preexisting bug.
>=20
> I may just drop this patch. I wrote it and then realized I don't need
> it as PSCI can be used instead.

So is the driver useless on arm64 and depends can be reduced to
arm32?

-- Sebastian

--6ujoodgxix7zrbfc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl6ohIwACgkQ2O7X88g7
+ppDwRAAjzNQt+XW6UyQw1RRYM2D/aruiSteQDj9cf12K3voQf5RNkTLuRqVnJ07
Va8MWbiUbK95NMhhwkqIf8QZ3hpt3tTR5c0f8pLvBhbG7EJvhK8VVNqDmfFsjy4v
ahU0XxqIYt7pFxtsEo/WZ3o6L0maB15vdguIhKpEetmpd8hY9HJazdiiqrwu+dHX
J/bQpZ0ogKb6Nzckn9NZDOQGpAyi4qHkIjss7lvB6FCq/e2I4SIbxbhmE9UPhNcH
nJGSIbCTei/AhVDZApM4OBfcgg1QZQq4gffNPGXoA45hYNl/aCdLRNz+9syiSZhl
4vLICMyDPCCSFiud5CFnFeUXRcmc8Le/oAM+xVAY/O0loHmKZLELXkXR/NjrCyGn
ZKuQ70LBrMULyd/rqz+FhYKuObOTX1fZEaFW/NSSTMFpDHdpP1g6qmj92XCZK0V5
xpqZPyKjDvSRRfTFFVK9a8RhK34oV7WuL6HbSuo+2IktoavQjIQNKmem56qGUjrF
S+SR6r1majboQHs8NngZ7usn+u2oCLAst2LAsNUkz/Bi18JtjS8yqL9mRp8xYnDQ
BOL4zeUZMo/fBBksGeNwOYvf7bLKEneQ6kNhclGgqDc+81rbkv/YQYDW/wTXHw+a
yMPT/3lDRKcsUJoXQRgWWurcXn8WG6ii/qONJQMei2HQM9NtI/w=
=XM6R
-----END PGP SIGNATURE-----

--6ujoodgxix7zrbfc--


--===============7609458863881448297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7609458863881448297==--

