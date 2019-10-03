Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C083AC9F43
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 15:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2Ihza8GsYpfO5MiDaBJNoTK+3qnNyjZ78pLjnKTYauk=; b=QfqkRPc0jyvJ5VH7qWZuYacnP
	r7QntM4S7jMt6Np2RsfEjl6k3qHXZuH/nmEV99F9KuFkKb1pGdSCcrGavmjLsRtmXeU53gMYUp7yV
	mMXpTNPQgxAujMvFdmpR8Iv+rHTjrtK4R5ssomnIlHG95+j4mxPAhhFFR1rhPcj51e4VAxAOli+mb
	p3QD9LGjAGV9ITK7wWGZKGMsg6NAIriWO58P3PUcvP77/zu8AAmNleA1+8/qoUDtwDpSM4qt8zmJ0
	joXij45SVioiOHRvU+cty8r7IHppd7M5wAjX6cplBSUDgdK3qLWrS3/LbchBKs9GtY/iUYWOK5B99
	3GnnkEt3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG116-0007VQ-Nv; Thu, 03 Oct 2019 13:19:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG10p-0007RK-Ca
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 13:19:20 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9305F20862;
 Thu,  3 Oct 2019 13:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570108759;
 bh=LZnYEhmvbSaW3Ofpm6bbGneZMRXJOF36LsLe7rVKsiE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b4NIq8WYP5JaZDLiCwCQTigNR4O6wgBuNSMj1dwMDtbDVOQj/iC0ui6TY73gL+SiS
 PhJWqYe90ubpY+i3nRet3oc7jB9RCXLLWy8xTzrW+N/EubHZtIg9CAxNkl3mtTMVFc
 lKEUIxFvgExGZqaLKkuZSvOyUEbVr7jMnXC/Pf9M=
Date: Thu, 3 Oct 2019 15:19:16 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [linux-sunxi] [PATCH 1/3] Revert "drm/sun4i: dsi: Change the
 start delay calculation"
Message-ID: <20191003131916.4bm22krapo5tz6oz@gilmour>
References: <20191001080253.6135-1-icenowy@aosc.io>
 <20191001080253.6135-2-icenowy@aosc.io>
 <CAMty3ZCjrM4MajJLyLwt-31mNnfVWghwatogtwVOvCt4gY0LZA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZCjrM4MajJLyLwt-31mNnfVWghwatogtwVOvCt4gY0LZA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_061919_449632_8BB75320 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============4680267306228790409=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4680267306228790409==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gpjy7vewgc4imexw"
Content-Disposition: inline


--gpjy7vewgc4imexw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 03, 2019 at 12:38:43PM +0530, Jagan Teki wrote:
> On Tue, Oct 1, 2019 at 1:33 PM Icenowy Zheng <icenowy@aosc.io> wrote:
> >
> > This reverts commit da676c6aa6413d59ab0a80c97bbc273025e640b2.
> >
> > The original commit adds a start parameter to the calculation of the
> > start delay according to some old BSP versions from Allwinner. However,
> > there're two ways to add this delay -- add it in DSI controller or add
> > it in the TCON. Add it in both controllers won't work.
> >
> > The code before this commit is picked from new versions of BSP kernel,
> > which has a comment for the 1 that says "put start_delay to tcon". By
> > checking the sun4i_tcon0_mode_set_cpu() in sun4i_tcon driver, it has
> > already added this delay, so we shouldn't repeat to add the delay in DSI
> > controller, otherwise the timing won't match.
>
> Thanks for this change. look like this is proper reason for adding +
> 1. also adding bsp code links here might help for future reference.
>
> Otherwise,
>
> Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>

The commit log was better in this one. I ended up merging this one,
with your R-b.

Maxime

--gpjy7vewgc4imexw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZX1VAAKCRDj7w1vZxhR
xUuoAP4y5oTqiRELKb7+eBaUuQzrM0UnEaEFGgPGo3tNepr5MAD+JZ+yULsZi7ib
qWa9lYn9gfhY+hQfA+wQQBdXJWRJxgk=
=K3FM
-----END PGP SIGNATURE-----

--gpjy7vewgc4imexw--


--===============4680267306228790409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4680267306228790409==--

