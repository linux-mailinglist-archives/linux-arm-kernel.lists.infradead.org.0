Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5249F13256C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 12:57:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Az7XBsjqrBVFBgL4O5vKDVZZoZj1TqI1sH1VXy5Ba/o=; b=qRaDDr9HuKSmsfAnP6jFB9XGm
	OeU3Q2wesk8nuqM8KtEbsdKTFhOrEeUeRtfvy98uNgxBBNRInmvR3aBrqlwW6tdlaS0j/9WCO48yS
	/q3G5c9U+/HDAVeQCaZpUcIuyaHp0kOFpsG2V8tGzxLB5G/W1nmTqqQSsBWeZHGehf/SJxYBcHwNj
	7qhqYa6PwBVVbadaXBPtXvIxDKswYd/x3HXqlMb4Q9qwMH5EGwv/3GCpabxWljLhsI9+opqpt+awK
	USyzie7UiYdX2wQ4odKXMFVm/rb/fl2lRTEReFlhkrnhoTqHxGEh1LdQj8Y6Ai7FFNBrY/4VwTOGO
	7p1BEqogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ionUa-0000tT-0d; Tue, 07 Jan 2020 11:57:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ionUT-0000t5-6I
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 11:57:42 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 12FF2207E0;
 Tue,  7 Jan 2020 11:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578398260;
 bh=AI+VfAqTa9UCq8IvejkTKMbTJBx1EJ58qhLOA9wGowE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A55wtQnfkltHy8t1jJOI3SXpwJjrT4aTNOuU48IslkaNiRawRyKfRrMyRh5XKdhJP
 jmi9V4548UnWlidEPJux/55Vln5PPtfMHeF2zXnhQS1Pl+sewNtKIUrcKeyzoDMtip
 h2uzk/OjTAIk/DCvrzzPMg4EnDoUndAgwVYCSTNE=
Date: Tue, 7 Jan 2020 12:57:37 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [PATCH] drm/sun4i: use PTR_ERR_OR_ZERO macro.
Message-ID: <20200107115737.ybaxsjyvfaledfje@gilmour>
References: <20200106140052.30747-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200106140052.30747-1-wambui.karugax@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_035741_255468_0EB966F2 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1727101369426578970=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1727101369426578970==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yo7cidopzvqnu2id"
Content-Disposition: inline


--yo7cidopzvqnu2id
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Jan 06, 2020 at 05:00:52PM +0300, Wambui Karuga wrote:
> Replace the use of IS_ERR and PTR_ZERO macros by returning the
> PTR_ERR_OR_ZERO macro.
> Changes suggested by coccinelle.
>
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>

Unfortunately, that patch came up a number of time and shouldn't have
been a coccinelle script in the first place.

I've sent a patch to remove that script:
https://lore.kernel.org/lkml/20200107073629.325249-1-maxime@cerno.tech/

Maxime

--yo7cidopzvqnu2id
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhRyIwAKCRDj7w1vZxhR
xYDqAP4n1dm9IQoXmI7Bx40vuU1hQtG4nyx+pIljTVCbkWCjFQD9G8aJvCqjVRId
JX/7qRsTP2Iifrmf5iMSo3e4cGz8NwA=
=ilwZ
-----END PGP SIGNATURE-----

--yo7cidopzvqnu2id--


--===============1727101369426578970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1727101369426578970==--

