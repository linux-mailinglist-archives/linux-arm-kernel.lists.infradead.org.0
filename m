Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F29CE77B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=otJzBXnTS491/Xqhl38E2P5guDM/0w/6161Xw8RP448=; b=KEY75UyIfatHeiL++itts1fZ3
	4w+C4MAh50rguP2BAyOuN3H31poSp9lggAb2qwxLv4Jm+1LtZW9ru2iK6lX8Ie6yvWR72Jg7gzyOA
	9Kpi77axq4ItCyGf6xEukXcIU2xpeLligcraQxn9k0K5W5N8Oy9uvsa8bYf1znoMPkruMRh4T4ukY
	wQg+cpqobAnFV0AjzKvcOa3mjkWYzOzVhbCR+o1PuOB8t5M885j9Om/11pQeL9r8IWMjIahjecwTN
	15k36Fnz1n94eNm+2aU2/GQE54Eo3APv6UURiN8jiwZ7yo7PMg/k8qQM+FrWI2thf7NPb396BwVLv
	Of/XXWKBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUxT-0006yP-FA; Mon, 07 Oct 2019 15:29:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHUxL-0006xu-St
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 15:29:53 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F341F205C9;
 Mon,  7 Oct 2019 15:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570462191;
 bh=wZpqJAVdx0OquwJReQG4DI2BbxLYhSANl3AxInjoMnU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dP66wmu7YyEygbX3QijQsb/3NOB4N8uBisRfCqVfuTlCpD54iqPP2wIR1l9440iF7
 r70y9nVKYTTHvXvlvP1dCgZTXmM/hrecFRaIdWWPdOZawl1Tsfo7IfkqZ5ChB4xrCS
 qSNiOlLdTjHS6i40jueGJPJ740oi6aqlOM7CO+jk=
Date: Mon, 7 Oct 2019 17:29:48 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] [PATCH] bus: sunxi-rsb: Make interrupt handling
 more robust
Message-ID: <20191007152948.jgz6l4zmqjxqpzus@gilmour>
References: <20190824175013.28840-1-samuel@sholland.org>
 <CAGb2v67nuMnN_o1Pvz2bEyUVeg5OMfJMVgih9-ZsgYFYDbffGw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v67nuMnN_o1Pvz2bEyUVeg5OMfJMVgih9-ZsgYFYDbffGw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_082951_972137_E8A9CC01 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Boyd <sboyd@chromium.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Samuel Holland <samuel@sholland.org>
Content-Type: multipart/mixed; boundary="===============8933606056101389218=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8933606056101389218==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="blrzkcpgdyo7n7tb"
Content-Disposition: inline


--blrzkcpgdyo7n7tb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Oct 07, 2019 at 11:19:06PM +0800, Chen-Yu Tsai wrote:
> On Sun, Aug 25, 2019 at 1:50 AM Samuel Holland <samuel@sholland.org> wrote:
> > The RSB controller has two registers for controlling interrupt inputs:
> > RSB_INTE, which has bits for each possible interrupt, and the global
> > interrupt enable bit in RSB_CTRL.
> >
> > Currently, we enable the bits in RSB_INTE before each transfer, but this
> > is unnecessary because we never disable them. Move the initialization of
> > RSB_INTE so it is done only once.
> >
> > We also set the global interrupt enable bit before each transfer. Unlike
> > other bits in RSB_CTRL, this bit is cleared by writing a zero. Thus, we
> > clear the bit in the post-timeout cleanup code, so note that in the
> > comment.
> >
> > However, if we do receive an interrupt, we do not clear the bit. Nor do
> > we clear interrupt statuses before starting a transfer. Thus, if some
> > other driver uses the RSB bus while Linux is suspended (as both Trusted
> > Firmware and SCP firmware do to control the PMIC), we receive spurious
> > interrupts upon resume. This causes false completion of a transfer, and
> > the next transfer starts prematurely, causing a LOAD_BSY condition. The
> > end result is that some transfers at resume fail with -EBUSY.
>
> If we are expecting the hardware to not be in the state we assume to be
> or left it in, then maybe we should also keep setting the interrupt enable
> bits on each transfer?
>
> Surely we expect to have exclusive use of the controller most of the time.
> If it's to handle suspend/resume, shouldn't we be adding power management
> callbacks instead? That would reset the controller to a known state when
> the system comes out of suspend, including clearing any pending interrupts.
>
> Maxime, anything you want to add? (BTW, Maxime switched email addresses.)

The patch looks pretty harmless, so we can merge it, but if we're
going to share the RSB between those components, we should probably
use the hardware spinlocks as well.

Maxime

--blrzkcpgdyo7n7tb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZtZ7AAKCRDj7w1vZxhR
xd1bAQD5Rl4U3NuOje4WVojIJCGbADL6OKRPVUbYlOKDw+8k0wEA9tlTGx9fzbpi
x5XZIQm5HiB2QyJBU+rPQzd5Nx3+SQU=
=tZkN
-----END PGP SIGNATURE-----

--blrzkcpgdyo7n7tb--


--===============8933606056101389218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8933606056101389218==--

