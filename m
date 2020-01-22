Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B99144DE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 09:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RR5uMoodUNznq/dV9OcHynJabMzhqxeseH9c4tOVJdM=; b=WdaZ6HqgWX8sDFevcMJTByIZ3
	2MiLOZ3lHgUpd2wHKffrv4eohxKQfQxKxcmW+1sUfxP5p8ca3DOU+ahWjtKjuU07tPZvhPrbryQOe
	UJVo4BBLo1fMN5gOIuLNyf04cF0Y1I0fVyaJTD1phk7zD7C9d27tXGlZmlSMSJivxoP9hAmX/O9BD
	mLnY4a1sAaFRl/K9wDbu6cCZjed1/rse1aPrQpXx3iRyo2+mcnVLeV7sAoSqeYTPHPgukOGc3Y1Is
	o6ftUdhb994Wlpgg3P7J/I1A/dz1WYE+Zhv20qiwnvM9LV1M43lEd8I5olFkFWEpd7a37c79rCl8C
	S1pkItCDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuBeh-00086B-Bi; Wed, 22 Jan 2020 08:46:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuBeX-00085P-Js
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 08:46:22 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 412962465A;
 Wed, 22 Jan 2020 08:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579682780;
 bh=AepTZQnS41aFGnPgtfnFssNsH20gZiJLcFaGD27PRV0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lKE/jqr5coHc/wWfyg1XVzfBMwoTN0AhXWs9DT60kBanKLjyBiFKr2fllB1806A74
 +Rr8FQ5616OSPdnCwWeNrWpuI1lXV/wnZDKg0ZJtiGrakIj12v0wYeNSe7WEiV7AHQ
 6vIdT8z4Tfao3vHQoSBrDVNtmR0OUVIwCurppQHU=
Date: Wed, 22 Jan 2020 09:46:17 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 2/2] drm: sun4i: hdmi: Add support for sun4i HDMI
 encoder audio
Message-ID: <20200122084617.s2n4dqhwanmaxuch@gilmour.lan>
References: <20200120123326.30743-1-stefan@olimex.com>
 <20200120123326.30743-3-stefan@olimex.com>
 <20200121182905.pxs72ojqx5fz2gi3@gilmour.lan>
 <20200121182937.2ak72e4eklk4za2u@gilmour.lan>
 <20200121183247.GL4656@sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <20200121183247.GL4656@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_004621_672117_3BC8CD07 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Mavrodiev <stefan@olimex.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, Vinod Koul <vkoul@kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2339158191208919368=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2339158191208919368==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eo44jwmgblwjtd3w"
Content-Disposition: inline


--eo44jwmgblwjtd3w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 21, 2020 at 06:32:47PM +0000, Mark Brown wrote:
> On Tue, Jan 21, 2020 at 07:29:37PM +0100, Maxime Ripard wrote:
>
> > > Mark, our issue here is that we have a driver tied to a device that is
> > > an HDMI encoder. Obviously, we'll want to register into DRM, which is
> > > what we were doing so far, with the usual case where at remove /
> > > unbind time, in order to free the resources, we just retrieve our
> > > pointer to our private structure using the device's drvdata.
>
> > > Now, snd_soc_register_card also sets that pointer to the card we try
> > > to register, which is problematic. It seems that it's used to handle
> > > suspend / resume automatically, which in this case would be also not
> > > really fit for us (or rather, we would need to do more that just
> > > suspend the audio part).
>
> There's a drvdata field in the snd_soc_card for cases like this - would
> that work for you?

Ah, right, we could just retrieve the snd_soc_card in the unbind, and
the retrieve our structure that way. That's pretty simple :)

Stefan, I guess this is the easiest solution, we should just make sure
that there's a comment to explain why we retrieve snd_soc_card in the
unbind, since it's somewhat unusual.

Thanks!
Maxime

--eo44jwmgblwjtd3w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXigL2QAKCRDj7w1vZxhR
xWq1AP43hh7O1drKmKw4LWDcFL1e3jFnbiNLxBGwUtUAsT8hwwEA505uGh0lTCPZ
1dpI8BQYcJ5Zzjp9JGkU9Pm1KCyZMQA=
=vZhm
-----END PGP SIGNATURE-----

--eo44jwmgblwjtd3w--


--===============2339158191208919368==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2339158191208919368==--

