Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A7095B87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 11:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n8W2VeS67cWQ+smJidc0Lm7zkDZvpcUMEBDWYShub3E=; b=WIaQqRo6+fy/AjV76x5LVLkbe
	0Qi1qqs7rkf0+RoyL5rt2ovt1DwK+Y51dJ4HVStn8on/C4SklOts5kgeiqAVpyylJOl4+FLXmBWWw
	Ic9OVDLT3NXH+dtt3Qxx7kLB6KDloVEXMgGE6yOENkvEBkGiPoUdF95enFykWrMcZ3Ig4N3Sa8lYq
	PcT+LIqzJlBQmfNCXGVnYS2sEmGUJPWJYWsnMpx1DjCLB1iMXavX3jNU4Cv2mJibH2cddQMXAyaDQ
	7AJQ/sb4fUnClgLZcrvN2YFhJNT4F5UWdKgVxEytHPhi93o51Fk29gSw3YR5RHegLhHmtcV/yj6mv
	xPNEgROuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00mx-0005fG-EC; Tue, 20 Aug 2019 09:50:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i00mf-0005dr-Jo
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 09:50:36 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E705222DA7;
 Tue, 20 Aug 2019 09:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566294631;
 bh=xAjbNh3jm1ba4AhcLUZNLmJZ2TdxmfxVs39tcWlM78Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0EXoISDTEiqwhkhpbtk5VfIHEy45qg61TQnHaT/HD1JvT418X54lFE5BvAiCLQjFC
 hNgJfLXMKpVSrkA43VEjSiKgypNwWRv+jpE4uJtcFp2vTNwqlBK819bLRG4DNN2VW6
 vQRVyIzXd4QqfZD2CDtD49H91AWPFlXzS5YQXxIA=
Date: Tue, 20 Aug 2019 11:50:28 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Sean Young <sean@mess.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: media: Add YAML schemas for the
 generic RC bindings
Message-ID: <20190820095028.l74sfvipwjjla6kq@flea>
References: <20190819182619.29065-1-mripard@kernel.org>
 <20190820081525.celdosrgcvwoq6e7@gofer.mess.org>
MIME-Version: 1.0
In-Reply-To: <20190820081525.celdosrgcvwoq6e7@gofer.mess.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_025033_682906_38297695 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 mchehab@kernel.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7563868779011322480=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7563868779011322480==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ftcnfstprcqph37g"
Content-Disposition: inline


--ftcnfstprcqph37g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sean,

On Tue, Aug 20, 2019 at 09:15:26AM +0100, Sean Young wrote:
> On Mon, Aug 19, 2019 at 08:26:18PM +0200, Maxime Ripard wrote:
> > From: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > The RC controllers have a bunch of generic properties that are needed in a
> > device tree. Add a YAML schemas for those.
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> For the series (both 1/2 and 2.2):
>
> Reviewed-by: Sean Young <sean@mess.org>
>
> How's tree should this go through?

Either yours or Rob's, I guess?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ftcnfstprcqph37g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVvCZAAKCRDj7w1vZxhR
xTFAAQDl8xXvQIXa8WbCZaFxnwrmvUt5UqA7/9ObYafNNiYcpQEAt15seL7rf1IE
lBtjtxdyX5TG4nk1wDwD7edVTHVeaQ4=
=TAb7
-----END PGP SIGNATURE-----

--ftcnfstprcqph37g--


--===============7563868779011322480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7563868779011322480==--

