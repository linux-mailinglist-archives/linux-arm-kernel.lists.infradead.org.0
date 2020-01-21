Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D01CF14390E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:07:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mFaoZhAv79nkGJnND7JUZK0o+hbUYgawBHEBIEOn558=; b=pMd/k64bhfr8ljh+l+YxNIlJ8
	Ahg2QPdU0iVcOp28vHJ0R+0yVG8mC6F6vTb5Y8xZkZ777IV4HsEzm/9AFkUQ3rR59Ag+TTht0OkmA
	IWrqgPgSXLzJSGR5WGs5nxhWfKRK3o1cgoZ8TvO2l9A0Jm1aUu2aZuKAg34CCORXmh3DdgrsLSjIn
	UVQwjXj4DvU/ZjjW91UWRx381e6u44UsNOlC0e5kaUCTHuPHNvt9V28b9R0VjOGOu8sFW3pTNzVjq
	DEuV64cfbdIx5BCefPxWqu25/H4Vk4n1dyg6IL17+rYFhW/Zi/0d7iSkssA8M3jHX/BMKneu27dFK
	4exQiCebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpUw-0004VU-EV; Tue, 21 Jan 2020 09:06:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpUc-0004TU-1w
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:06:43 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BE9920882;
 Tue, 21 Jan 2020 09:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579597597;
 bh=SMoJPN5+FqZ0+fUWKubh3YgmqpeACLh4FHRRGsFD+gY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oQFjR9hA3rph4sQuXuYQtJJFNRCsB3psfENTzdtbWz6uhCtZtdY3ZROoI1IaKN8t9
 GlpOekS2uB6xZb921y6plLdlFF+L1olXSTJ5RIJanaNacPRvEax4r9OyKVWjbRZLW4
 WyxaIGvotM8at2dcW/660tihti61GX/ogOij8AT8=
Date: Tue, 21 Jan 2020 10:06:35 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 5/9] arm64: dts: allwinner: pinebook: Make simplefb more
 consistent
Message-ID: <20200121090635.ebr54xw7gecvvpce@gilmour.lan>
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-5-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200119163104.13274-5-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_010638_118387_A812E967 
X-CRM114-Status: GOOD (  10.21  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7414031094560116807=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7414031094560116807==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wldyhqwusn2zbrwl"
Content-Disposition: inline


--wldyhqwusn2zbrwl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 19, 2020 at 10:31:00AM -0600, Samuel Holland wrote:
> Boards generally reference the simplefb nodes from the SoC dtsi by
> label, not by full path. simplefb_hdmi is already like this in the
> Pinebook DTS. Update simplefb_lcd to match.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Applied, thanks!
Maxime

--wldyhqwusn2zbrwl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXia/GwAKCRDj7w1vZxhR
xeC9AP96PAb0ObZ8Xdyoot2Jwfnbz6i+1pLLT4ac2qO1rqLerwD9GYw/ILdszhgA
4TJXvHZ8JCiIzN6Cy/cFctpM09+ofAY=
=448p
-----END PGP SIGNATURE-----

--wldyhqwusn2zbrwl--


--===============7414031094560116807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7414031094560116807==--

