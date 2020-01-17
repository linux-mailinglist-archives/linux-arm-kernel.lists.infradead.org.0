Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3994414112A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:54:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uu/mDRZWB+MXZoEXqM2Og/gDMyMTeslAqw64Ca5FArs=; b=Y14276/hIKrP1PUMjBl+lnrOn
	RJr7RqkRFppp3UMz4D9C0hsS057g1Dx0JfB8tCtyUwYG0WdrJ3uqn79Obd4HaeY1OScypLDimoLTc
	XwvawnyalCHyhg31EVMC49g++WfThoK7ZlZiCba8ZpTza+itTl31kguozbWewMq+qpxQZicRW6q+2
	zzezpGYGw/tGR6qBcjuwSdfxKGIU7M3zrIPhxTIHhaDF9/6lqv9dN9XQb6Jcq7CqaMFlvGs/Clb8c
	y1MENHtacop0wpzGC6/+OkxhJohkEBdCq6dTP0yAavXUkBdm74BZ5aJE66zXi0uZb6sZ3zHZyQdOF
	ekOwc0BmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isWkz-0004jz-Q6; Fri, 17 Jan 2020 18:54:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWko-0004ja-HI
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:54:00 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A857D20748;
 Fri, 17 Jan 2020 18:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579287238;
 bh=Ggs4OoJBCkjO8db/zcQts4isiDP4L4RjiRCqQPSG+Do=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ckG2ELRNQQm99wQbw8vq+wWoAinNuDS1uWRMdwoY5ePHou+8BHw2vcCMGKAUN8cnt
 ikesXAuWEmHyUoev/Hc57X+zKChsZEh63Awa/wgJpxIhjGk0jINT32oVj2AD4iR5S0
 DS12dDaoxUdkAKnoTs+vFOzj/HyePGibWABa1HNY=
Date: Fri, 17 Jan 2020 19:53:55 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v2 0/5] Add support for Pine64 PineTab
Message-ID: <20200117185355.wmu3so53whvtbnhx@gilmour.lan>
References: <20200116033636.512461-1-icenowy@aosc.io>
 <20200117185012.GC14298@ravnborg.org>
MIME-Version: 1.0
In-Reply-To: <20200117185012.GC14298@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_105358_592319_DCD2EC6C 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============5285344380420477098=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5285344380420477098==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="p4f53y6km3ucx2zs"
Content-Disposition: inline


--p4f53y6km3ucx2zs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 17, 2020 at 07:50:12PM +0100, Sam Ravnborg wrote:
> Hi Icenowy
>
> On Thu, Jan 16, 2020 at 11:36:31AM +0800, Icenowy Zheng wrote:
> > This patchset tries to add support for the PineTab tablet from Pine64.
> >
> > As it uses a specific MIPI-DSI panel, the support of the panel should be
> > introduced first, with its DT binding.
> >
> > Then a device tree is added. Compared to v1 of the patchset, the
> > accelerometer support is temporarily removed because a DT binding is
> > lacked (although a proper driver exists).
> >
> > Icenowy Zheng (5):
> >   dt-bindings: vendor-prefix: add Shenzhen Feixin Photoelectics Co., Ltd
> >   dt-bindings: panel: add Feixin K101 IM2BA02 MIPI-DSI panel
> >   drm/panel: Add Feixin K101 IM2BA02 panel
> >   dt-bindings: arm: sunxi: add binding for PineTab tablet
> >   arm64: dts: allwinner: a64: add support for PineTab
>
> Thanks for the updates.
> I have applied the first three patches to drm-misc-next.
> The remaining two patches shall most likely go in via another tree.

queued the last two for 5.7, thanks!
Maxime

--p4f53y6km3ucx2zs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXiICwwAKCRDj7w1vZxhR
xZQcAQCabPKDVEHD7EEKVMSsoVVvXNcUSRxlLRN7UZEzxKP8/QD/TvXs63UOJH6/
6zRTD2fYEmgvB1Cr3YJC7JpuiB5qbgE=
=a6tO
-----END PGP SIGNATURE-----

--p4f53y6km3ucx2zs--


--===============5285344380420477098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5285344380420477098==--

