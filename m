Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8155125669
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:18:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/nT0WUBYUC2TkerbuPb/c5w5o1uSgPdfPWletuJdAv0=; b=DtZ8pFHau7JQHtdDoLf56UDtW
	YGpH8bWQHces18OwKIJB6m8efuH75tMRnNDU1pLyqSpohKcfFKDXy/8Z61OAufPAoEujUafOTMrhh
	nYShMKbRHJQPSm9V1AwCSdgujzF244VWE1Y85o1Cj8C+9t1AINajRtCWOb1GJB3KuEdmEaUND/4yT
	jXJqTzJisxcMtQwOT6F2Ufr7qd1ke6P7mvv1XKtVc0Gd1nRcOUEEV6eKzsfA1Z4f173kOWBmbXdY5
	U8hJsa07pdR6oRm3WeiQOqMxTIjrw1VHXYbFMtUY504tJwraXoWNTYBcxzSWt33wSIUBfYYWHtlPG
	W7rAiPg2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhe6-0007YM-1G; Wed, 18 Dec 2019 22:18:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhdv-0007Xy-2Z
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 22:18:08 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36D63218AC;
 Wed, 18 Dec 2019 22:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576707486;
 bh=xhXZ+35S+/6cI1WWLxRqDqVB+Krevd61uwH4joVkI+Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O08qVggBfYFX7mdzqneUUMrtP8xNId4jbqmESqBDwYUUX3GQKLvJc9Tc3uf5MXvet
 YEQ0XBPl8A0jLwLu4r7wd1Jsbj4fiDXw0WD5pHhTEV4r2dtj+HgltfdRHawWdXTZhZ
 w+u1QRxMDDARMOhd6brItV7mj6s/du1DOpjSywN4=
Date: Wed, 18 Dec 2019 23:18:04 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH 1/1] drm/sun4i: hdmi: Remove duplicate cleanup calls
Message-ID: <20191218221804.5nlobcy2bcxvlsr5@gilmour.lan>
References: <20191217124632.20820-1-stefan@olimex.com>
MIME-Version: 1.0
In-Reply-To: <20191217124632.20820-1-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_141807_135274_8A826A67 
X-CRM114-Status: GOOD (  10.72  )
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4994850816516284543=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4994850816516284543==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="t3hsvrwjuxfiwifc"
Content-Disposition: inline


--t3hsvrwjuxfiwifc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 17, 2019 at 02:46:32PM +0200, Stefan Mavrodiev wrote:
> When the HDMI unbinds drm_connector_cleanup() and drm_encoder_cleanup()
> are called. This also happens when the connector and the encoder are
> destroyed. This double call triggers a NULL pointer exception.
>
> The patch fixes this by removing the cleanup calls in the unbind
> function.
>
> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>

Added a fixes tag, and cc'd stable, and applied, thanks!
Maxime

--t3hsvrwjuxfiwifc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfqlmwAKCRDj7w1vZxhR
xZ3vAP9s6v4QB4Gp5qZQbl7J9vhz9/z9g/OiEFIVY3exwU1eGQD+Kd9eK1IzBZNQ
jnb58LSELiAKgpGxPmoTsqILx6OCng0=
=8IeF
-----END PGP SIGNATURE-----

--t3hsvrwjuxfiwifc--


--===============4994850816516284543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4994850816516284543==--

