Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68AB164958
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:58:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iiqZH5KQdh4PG84/L8XiHdgUqUDewahbr0dHCJ42Few=; b=adjU5DIgQGjPZPIbE9OSBCYEi
	8u6F5VGbWWBy/hisVuSEebhpJznOgP2LWOKVWACywdVyj/XsxL7ryzHp9fY/oGbk8xHCWQPNKjRYd
	cxDKR54lxziJ63zbszTpURv2/MTVRQ00X08REjLHraPkSMJTwPDRaXFP1J1zoCtKvpMfyJ61BLMuQ
	CZkkbQ2vbDEQjoMsBLZpfTnzxTam3cN1LlcFoMY1qf7dt4giKiuK2YSygd3yatLiBgb9SsHQUBlaT
	2qsKNB0XC3ZLTvwceFeplkHBKmVlDqSwIiLQvJOhuprXMe5fP0IIvMN+Z/LpRcc0quXEcamd4/tmv
	lscDPKAPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Rjn-0006Rz-PK; Wed, 19 Feb 2020 15:58:11 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Rje-0006RB-Ul
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:58:04 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 3B4A92219C;
 Wed, 19 Feb 2020 10:57:59 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 19 Feb 2020 10:57:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=yR7ZFP5jnyQYDGWXj4DoIv/8TgX
 gvbgn3+/o7E/ImuY=; b=TTjtDNdYCwxvj6idPJY+4wBNWdnb+DCfxk2To/mlIGs
 tAip1rxCYFFiM6LAMPslY0DnHccbnApmApk/UT8mffvie5K3BrJmV7yNvOeJlRGb
 YN5Kk4QU8cX8/JwT8074n5wp0uOA5PmgJhpmPa6ZbS/ikfaL2eYu2+uG+ctpTvie
 SjjT4ZQemE+nQpogagIZHt9s1lkdCXHCFbPhQBnlXShn6R0AZYSpNyJqJAfg2XlT
 8Zcl5KF9EygpvaQgv9hh7icq+LYaxWtaIZ358kQwY12ZFPp2FZDzBfToZBUs7o+b
 3/ALpcRrPUp0coEOnzjQXHWAYO7ZrZrg0+1p4uwzbcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=yR7ZFP
 5jnyQYDGWXj4DoIv/8TgXgvbgn3+/o7E/ImuY=; b=xrMle4Tk8VgE87uyNspfTD
 2hBU7zcs8WE9gFdgzEgY/rind5W/t/PTx+3CWjPHWXWtaTjEnGyZE7/8JNbcxBjS
 c6dhaD8SDpz2/9W570IsuRPK9iE7QyzxJfhAeWPFkUGMT7wiNalHBxlqwAhJhYbj
 k4Er3R3gGNVrA0uyyp6I8TXYIOiNcNy/O0Xjgh9SvfYnQBJWwtjOeQ2BBXVrOwg5
 f87BZ4EmpoUuzWyT6jvv820mBl4hHroVeLm+9s2ceOpgQwxfq9kda4zzyb+2LuZg
 UgWTpehb7RVlLgUjNR4LbECnERLs5mnViaKfQxVn9aa7AHcGMiQK4Y7PIzph7QzA
 ==
X-ME-Sender: <xms:BFtNXkoWWu9lBepEpMfiXGXNyOySUG20wKHfkzi8dl1erT5-_im8-A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedtgdekfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:BFtNXhJvJoMDZ0HaE1S5qRV0DmIhfo9D-qwRAtZIotGg7v8ziu7--A>
 <xmx:BFtNXsYXvL5yIfgaWx4zpQrECCz2rTQbaxTeT_6KJRAJtqJNjT4mNg>
 <xmx:BFtNXl6YWhDDl8Br25JCv6loIDrsiwH0Q-3tjka0YGwZneh33VSUDw>
 <xmx:B1tNXmxSRsn1QcEl5mwSz8hMDeTsUHlrpwKuLro09sFzzEo0cAsQXg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5E3CA328005A;
 Wed, 19 Feb 2020 10:57:56 -0500 (EST)
Date: Wed, 19 Feb 2020 16:57:54 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH] drm/sun4i: dsi: Avoid hotplug race with DRM driver bind
Message-ID: <20200219155754.vajepubw64hxfmum@gilmour.lan>
References: <20200217060906.15152-1-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200217060906.15152-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_075803_338267_B6341EF3 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 stable@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1059510033857761363=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1059510033857761363==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="54gv4v2726dkjnkb"
Content-Disposition: inline


--54gv4v2726dkjnkb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 17, 2020 at 12:09:06AM -0600, Samuel Holland wrote:
> We need to make sure that the DRM driver is fully registered before
> allowing the panel to be attached. Otherwise, we may trigger a hotplug
> event before sun4i_framebuffer_init() sets up drm->mode_config.funcs,
> causing a NULL pointer dereference.
>
> Fixes: 1a2703bd7356 ("drm/sun4i: dsi: Allow binding the host without a panel")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Thanks for following up on this, I've applied it

Maxime

--54gv4v2726dkjnkb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk1bAgAKCRDj7w1vZxhR
xePFAQCYhA+x3yuXQWCrT9byki6JCFoJ0+xYDdlmkViFi6k1LgD7BAzzLGu8/hS1
PLrGCLHwJ0LBV1vFqXuLFHhBB7lBOwc=
=BDH/
-----END PGP SIGNATURE-----

--54gv4v2726dkjnkb--


--===============1059510033857761363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1059510033857761363==--

