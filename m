Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CD41359D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:14:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2hND19LDlEVEPJLQQbNaiz11agXlbpR9eINlVMDnWeE=; b=QYEVCeng5loV+tlsEb9uiC8Gv
	RenCNbjlajZDGm4qBp8F0oEZ0Ij1LvSqm6s/u04BfyOgXJpygarHGOILoSApY0/i5K07hT/yq5Ogk
	2a6hhRwIbfK+fCTnoozN9+4znrxMNeszGHHkSJW3IIU4RJ/HYRQCfPRnHwx/F5PsUGPSS6Z0aIxS7
	0Wh2WuHcFMAlWEy8qgh5pKYezu/a2edbD5A2yRAssizSaSBGCYiI4Q9md+3fImsbyEqbKOipVfsRG
	zum8xP0a9sXdReL7kqlCRQy9EQXuK1BRhkD4l97TCIP3gMCqXQn7pQp1kweyARIhdPJ/3NeFS/w/6
	6dUt6u8bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipXdO-0002HU-AO; Thu, 09 Jan 2020 13:13:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipXdC-00029h-Vz
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:13:48 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B2872072A;
 Thu,  9 Jan 2020 13:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578575626;
 bh=N89fqm/wSNPygiHhvlyg6BX8W3BVH5DxNVHnix5I0q4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VUmOXFJKEVw4ngBhuV61AJyMW263sFDGLq3mPSQlVnntw+BcrUeoN/nPzHQeIMbQk
 DanmK4fpneCdJOfhYjy1YMkRL1yqZ/og4NTxthy+l+mzX+VJG67l+M2mJ6lQgTHvJu
 5ALFsbNQpFxBuIGF6bVy79urSlWQurdkYuutl/Zc=
Date: Thu, 9 Jan 2020 14:13:43 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v2 2/2] ARM: dts: sun8i-r40: Add thermal sensor and
 thermal zones
Message-ID: <20200109131343.mjyuj5ed2xwvmwd4@gilmour.lan>
References: <20200106174639.20862-1-tiny.windzz@gmail.com>
 <20200106174639.20862-2-tiny.windzz@gmail.com>
 <20200107075816.ly6exfd4qtvfxxua@gilmour.lan>
 <662e157a-603f-7423-0491-f26f0fc8d7b6@linaro.org>
MIME-Version: 1.0
In-Reply-To: <662e157a-603f-7423-0491-f26f0fc8d7b6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_051347_053718_F7348B00 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, megous@megous.com, amit.kucheria@verdurent.com,
 devicetree@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7950359132163485934=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7950359132163485934==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rudrzmim3rv4efom"
Content-Disposition: inline


--rudrzmim3rv4efom
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Daniel,

On Thu, Jan 09, 2020 at 12:51:27PM +0100, Daniel Lezcano wrote:
> On 07/01/2020 08:58, Maxime Ripard wrote:
> > On Mon, Jan 06, 2020 at 05:46:39PM +0000, Yangtao Li wrote:
> >> There are two sensors, sensor0 for CPU, sensor1 for GPU.
> >>
> >> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> >> Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> >> Tested-on: sun8i-r40-bananapi-m2-ultra
> >
> > As far as I know, tested-on is not documented anywhere (and isn't
> > really used either). I've removed it and applied, thanks!
>
> I think this patch should go through my tree as it refers to a commit in
> my branch.

I'm not quite sure to get why. Even though that patch depends on the
one affecting the driver to be functional, it doesn't break anything
when merged through arm-soc, and similarly yours doesn't affect any
other tree if it's merged through your tree, so there's no dependency?

Maxime

--rudrzmim3rv4efom
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhcnBwAKCRDj7w1vZxhR
xcImAQDNbSqcmxp2wB1rwCZU6HKqVaiK8UsFDVOYa38x/E7CiAEAxs5cMCPyNob1
HngPtTnq7ckkkdz5yvv7IEl2Ak4wcgE=
=9f/6
-----END PGP SIGNATURE-----

--rudrzmim3rv4efom--


--===============7950359132163485934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7950359132163485934==--

