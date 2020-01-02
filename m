Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C345B12E4D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 11:08:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kt1Ua+8fE5NcUCmoia5uKYC8oalu4OSftUOFx1Xt0Ts=; b=l64XsSfsj8Lb9oIARkk2OupJn
	ztPtsp3PJstkHsFWh3M8YV8qqFCs84lrgnWA6VMtlRQ5BFCCkiNs/whoHs2Pd4NQdswIPMzC/GEhE
	wEyJkvKu6SHXm/C/NAPRS59U3u+LISvdcJfR0wHlMEBBghNq2d1pBLpDeCfbp/gW5HcIIbM3F3X7/
	Q9+RbEgdGbCaHEyT+pjjVbvZsDJDNNOgFAGomySiGz6yXoLevdLBVIvhLaOBSQUJVidIjr+oZPsfp
	yMT/6Mgn/4xJllfn5wx8aF1BVKVbwRQcKYhG+EfXQs078iYNxtjvXoe3eiRj1VGOIzIetLuA0JDpa
	gJ9CTzRvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imxPI-0002CN-CB; Thu, 02 Jan 2020 10:08:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imxP9-0002C1-Ps
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 10:08:37 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECB4020866;
 Thu,  2 Jan 2020 10:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577959715;
 bh=x+kRT2D1Kn7Lf5nh9cGLkMkzex1mV1+rt2WXH85GIi4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NcZ1gTpS9ZvXDi5jA7DNk42YY4dfQY3uFvtZSH2ldAvzg3sN5DkND5yikXFrXrilf
 u7+WxXig3U6Hsn0lVM/SpchgomNPm5q/PDKX0Nz8JE76d7i9AXfIDxawh1z+WtzFLh
 7jpbHCGZPpfvOtRr9TGddKUETlpqoBTc+hlhOY2Y=
Date: Thu, 2 Jan 2020 11:08:32 +0100
From: Maxime Ripard <mripard@kernel.org>
To: roman.stratiienko@globallogic.com
Subject: Re: [PATCH v3 2/2] drm/sun4i: Use CRTC size instead of PRIMARY plane
 size as mixer frame.
Message-ID: <20200102100832.c5fc4imjdmr7otam@gilmour.lan>
References: <20200101204750.50541-1-roman.stratiienko@globallogic.com>
 <20200101204750.50541-2-roman.stratiienko@globallogic.com>
MIME-Version: 1.0
In-Reply-To: <20200101204750.50541-2-roman.stratiienko@globallogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_020835_862728_604946AB 
X-CRM114-Status: GOOD (  11.40  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jernej.skrabec@siol.net, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2207318077987647597=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2207318077987647597==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eij2leiodiz6sky6"
Content-Disposition: inline


--eij2leiodiz6sky6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Jan 01, 2020 at 10:47:50PM +0200, roman.stratiienko@globallogic.com wrote:
> From: Roman Stratiienko <roman.stratiienko@globallogic.com>
>
> According to DRM documentation the only difference between PRIMARY
> and OVERLAY plane is that each CRTC must have PRIMARY plane and
> OVERLAY are optional.
>
> Allow PRIMARY plane to have dimension different from full-screen.
>
> Fixes: 5bb5f5dafa1a ("drm/sun4i: Reorganize UI layer code in DE2")
> Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>

So it applies to all the 4 patches you've sent, but this lacks some
context.

There's a few questions that should be answered here:
  - Which situation is it fixing?
  - What tool / userspace stack is it fixing?
  - What happens with your fix? Do you set the plane at coordinates
    0,0 (meaning you'll crop the top-lef corner), do you center it? If
    the plane is smaller than the CTRC size, what is set on the edges?

Thanks!
Maxime

--eij2leiodiz6sky6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg3BIAAKCRDj7w1vZxhR
xRAgAP9QwzO6tt8HxHevGLJBWJuDC9qBUkk3iJWXTPHclJfsRwEA+VsyeUKuAxRL
/ZAvWo9lYy6wvymqssndD03TUld2Pwc=
=T74d
-----END PGP SIGNATURE-----

--eij2leiodiz6sky6--


--===============2207318077987647597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2207318077987647597==--

