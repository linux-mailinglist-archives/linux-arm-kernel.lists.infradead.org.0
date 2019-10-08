Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F62CF250
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 07:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IwPjm+FyZDpPv0KYAU7pX5HXce3BgP6s+3VzRhdAxgM=; b=eqaoeLvbVgYZRqI8a882Q6qD4
	YTDsO7LiBpGNbjVNm9W9tAWWtMdgS+FRuUQ2lGl30A4kV4a63Qdhd0yOo0lWr6GiN3BI3bvjkk6qv
	co3dnRW0grYmqtUvI7cJx18a9LGOWZOCBljgI9CjE8ggWx8iZmGKEwAMScDLgPERiSum28wcCEk1h
	Zx5j8hbakKImOIyLiaZkQ+IQwwg/t4JtbvmEbPqJX0rGBCTPS6n/tgiWPvqFfFMEChlZEEZ1H99nw
	wSrddE86U7pX/kUkRPjWX/mIA0s1w0qDIcpffTmQ/TCe/zIlKiFH/D12ypYUYxAZBsPzQomg67eZn
	JDDsZFDIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHiVn-0000qS-Ot; Tue, 08 Oct 2019 05:58:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHiVg-0000pw-RS
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 05:58:14 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 057DA206BB;
 Tue,  8 Oct 2019 05:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570514292;
 bh=OKUgYROz7lxc7E9/7Ur7efZbYs8IQ81R9gApIpjwp9M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C7J5cK1mBB5fvQZ0ThE4YCz7Qur4Fw909mYvNTRLpboW6BubXmXiGCIDVT0T+7y+g
 qpfWg9TOv0RucK+/Wve187tlBEXxO4YONvuJdDEAFmh8lbNhSrcoBHyHWPyArcc5v2
 4/axwyD+PUb+vlHhzw5ryeI4HqtheN6u1Z+gorl8=
Date: Tue, 8 Oct 2019 07:58:10 +0200
From: Maxime Ripard <mripard@kernel.org>
To: megous@megous.com
Subject: Re: [RESEND PATCH 0/2] Add bluetooth support for Orange Pi 3
Message-ID: <20191008055810.wqkmoy63ujiagbfe@gilmour>
References: <20191007203152.3889947-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20191007203152.3889947-1-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_225812_901322_2555385A 
X-CRM114-Status: GOOD (  12.68  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7749427565367595800=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7749427565367595800==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ert3szapvjumxzbc"
Content-Disposition: inline


--ert3szapvjumxzbc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 07, 2019 at 10:31:50PM +0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
>
> (Re-send for Maxime, with already applied patches dropped. Nothing new.)
>
> This series implements bluetooth support for Xunlong Orange Pi 3 board.
>
> The board uses AP6256 WiFi/BT 5.0 chip.
>
> Summary of changes:
>
> - add more delay to let initialize the chip
> - let the kernel detect firmware file path
> - add new compatible and update dt-bindings
> - update Orange Pi 3 / H6 DTS
>
> Please take a look.

Applied both, thanks!
Maxime

--ert3szapvjumxzbc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZwlcQAKCRDj7w1vZxhR
xfZYAP9SMxqaZn19ntY7023We3X+5/xContSlxTodlVbXkTQCQEAghM2VObtw49u
Q9P7kQeTJcnIsIbJNFymmtSCVdx+sA0=
=ZikW
-----END PGP SIGNATURE-----

--ert3szapvjumxzbc--


--===============7749427565367595800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7749427565367595800==--

