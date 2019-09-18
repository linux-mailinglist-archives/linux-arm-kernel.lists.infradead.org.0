Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730E1B65B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NEqcSlsT50slffy2KOVt0KygfhfUCkxhEnP4nlYDDvA=; b=CHRoc3NVbi9XBbGgGrLJ/q1zb
	eo+8o+CNgo2bwOLDw8V6VZ0Ym9ZBZi/WWagTdkzQuf0IFrAN5rxBLHXmFKk5LQrV9qwZLwu5uTSVh
	SeECbWhvHJefJiLbtOZ0tPI11DXeQ1lH9SlspwzFSmAJNlImjO09O8TaN1lgsHizHJpm5WZDvIFdU
	2+SudnNzJntmmnKick0E7wrYIpyJHfQnBUJuKrndPjNMnojD6o7DcRp1GHtPH8zoXgnpd4HF9XEFT
	FiU8OhA9gWgM57URPdhOICZmTixq/iW7jX7zi3opXcVOHa3W5E2ZdjN18ksDfub86/x0kh8g6Uulq
	wdJkHKztg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAamF-0004wD-UX; Wed, 18 Sep 2019 14:17:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAam4-0004vW-JB
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:17:42 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A48A7218AF;
 Wed, 18 Sep 2019 14:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568816257;
 bh=XlMjo+rJMmL2INhELdyisylIWWJuH9qmRMqjUBhMrPs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sCU4sOePodZ0NZRXVMNEveX/tym8IABAHl9TG6H3SeCs3z6Ppyi6VenSOym+Cfzv/
 3ND6vGPBodkNZ3H9Hg5nUSBl97swamBntj6Lwn2frijgY9Qnkfoi5WyjGHQxpgutMR
 VgymzYgeFrgM7zIt6dH/U6bBqd5Btwkwb3V7T2Mc=
Date: Wed, 18 Sep 2019 16:17:34 +0200
From: Maxime Ripard <mripard@kernel.org>
To: megous@megous.com
Subject: Re: [PATCH] drm: sun8i-ui/vi: Fix layer zpos change/atomic modesetting
Message-ID: <20190918141734.kerdbbaynwutrxf6@gilmour>
References: <20190914220337.646719-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20190914220337.646719-1-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_071740_654473_761F9391 
X-CRM114-Status: GOOD (  12.34  )
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2814287356347300220=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2814287356347300220==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cdt6atu5ilzdls4s"
Content-Disposition: inline


--cdt6atu5ilzdls4s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sun, Sep 15, 2019 at 12:03:37AM +0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
>
> There are various issues that this re-work of sun8i_[uv]i_layer_enable
> function fixes:
>
> - Make sure that we re-initialize zpos on reset
> - Minimize register updates by doing them only when state changes
> - Fix issue where DE pipe might get disabled even if it is no longer
>   used by the layer that's currently calling sun8i_ui_layer_enable
> - .atomic_disable callback is not really needed because .atomic_update
>   can do the disable too, so drop the duplicate code
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

It looks like these fixes should be in separate patches. Is there any
reason it's not the case?

Maxime

--cdt6atu5ilzdls4s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXYI8fgAKCRDj7w1vZxhR
xb0xAP0UxpXjzIgS09xk7fwpffpkj2Q3Yv0Qg6MWjDlQTkd50gEAy9kA6SNT4uzq
55chDp6x+7ABhqgw1Undj9ZVA3OQbQA=
=Op1q
-----END PGP SIGNATURE-----

--cdt6atu5ilzdls4s--


--===============2814287356347300220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2814287356347300220==--

