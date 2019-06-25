Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6523654EED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tk1BFC5UCC738WKT1lRTk9wjVBjn3kMROcjHOsXYVfM=; b=HP/hsGP0o/hA3eJ6dzBXwyni+
	qxmrQqaNqjhEmMCk/Bl9iEbUEqj6Mx/2hhEDKDuCPtaVUWFDAz3Gq8kJ4gkI+fdpR8GonrvKJTgCj
	s5zMLEBqSk1YUmOo8D3xioqTr70+Tby1PBJ8orkETWQu5Fy0Mz9U8GhjulKxUqZa++oSdli3bA8f1
	O6oEz1xhNI++2m0TNBSLWgFEmVCX/MG3QHTC49jWvN6aJuqOYAyUznvllWy0dwWew+fcaRQsW/0rr
	H5Wh4N/dKR/X4fQbVi1ULFhv+ad6NCI5nN+AeFKMY/t+ucwjIXd4IhHDh8BQujsdqmTvXeW21Az4g
	lC9dfi92w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkcz-0003Tq-Pm; Tue, 25 Jun 2019 12:32:49 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkch-0003Sy-7j
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:32:33 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 1BC0EFF81B;
 Tue, 25 Jun 2019 12:32:19 +0000 (UTC)
Date: Tue, 25 Jun 2019 14:32:19 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Allwinner Device Tree Changes for 5.3
Message-ID: <20190625123219.hwg5vjz3qocxavn5@flea>
References: <459c0bad-c02e-40f0-9e56-1dcdad9c6591.lettre@localhost>
 <20190625114119.tgxsiwstd3pfm64i@localhost>
MIME-Version: 1.0
In-Reply-To: <20190625114119.tgxsiwstd3pfm64i@localhost>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_053231_447411_4846E0D7 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Chen-Yu Tsai <wens@csie.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7210286886046382962=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7210286886046382962==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5o67tkqcs5hz5hf3"
Content-Disposition: inline


--5o67tkqcs5hz5hf3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Olof,

On Tue, Jun 25, 2019 at 04:41:19AM -0700, Olof Johansson wrote:
> On Fri, Jun 21, 2019 at 10:08:08AM +0200, Maxime Ripard wrote:
> > Hi,
> >
> > Please pull the following changes for the next release.
> >
> > Thanks!
> > Maxime
> >
> > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> >
> >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> >
> > are available in the Git repository at:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-dt-for-5.3-201906210807
>
> You know, there's a timestamp in the tag too, no need to encode it in the name.

Yeah, I've switched to some tooling to send them instead of doing them
manually, and having a timestamp was the easiest solution to avoid a
collision, but I guess having it down to the minute was a bit
overkill. Do you have any preference on this?

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--5o67tkqcs5hz5hf3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRIUUwAKCRDj7w1vZxhR
xfu4AQCvFLpY497/2nBIRsQhMnh3KXzayk5btS6157hhgvpxngEAgXPca9kc/3hf
wKOCtG6WOW1a+J3pQgD4KrBPnhUHUw8=
=i85P
-----END PGP SIGNATURE-----

--5o67tkqcs5hz5hf3--


--===============7210286886046382962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7210286886046382962==--

