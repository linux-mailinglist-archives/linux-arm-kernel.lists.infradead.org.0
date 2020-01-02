Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1796F12E525
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 11:55:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sIEMJh8GqjD8hmkiSzUv+H6ioYqWEsK22s8wRf59CEk=; b=b5vraMlimHFU9Bc5gOdAqkDQE
	rY+ncKhCxwPHqY1QPYoAIPO2tmOmPtSnFOCDliEreP/FpJ9eQbiBRy553vFzjqbfyYey4W7YYofrN
	N5UNob3RpbKPjVYoyCGh/DTcPag+iyomxYWhv6z/AFSIw1W2y4h6SSfVp4effJlplBIRHIcpT5tyG
	/bLPw2wWyt9CUQrsIIqHvZcYLPZz1SDx5SQr4f+U0q2RNc/yTny8AD1/Gmw1V110rkTm9rVqGWf3r
	dofMuqyxw585msVTOfQcPDWy8DjOB6t3kfInFIABiOaYm+HrBFFYMI3pjqqgrm4bvxQwtcUPxV9Dq
	ojEWI3ivA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imy8Z-0002Ai-SP; Thu, 02 Jan 2020 10:55:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imy8P-00029v-Sr
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 10:55:23 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22B76215A4;
 Thu,  2 Jan 2020 10:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577962521;
 bh=ukjU++godUoDpWkY61biU/lQXD6lUfIOlYlnf1ANUOk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yzRfRP/ugZJwE3CCES4EvFu+akRgcakQsgYvpTbxeCgpSMThfu6KhS1CdGgiKRzHY
 n0CEda8Ar5AbKHkQpRYMSjGUSBT82TXFG4MJO2tz3L/JC1sf9bbgd/UEbmdzX+67VJ
 JCFwKX5fm1sHbUr76wiGL4iYWzqVdYe+Uv61QoJo=
Date: Thu, 2 Jan 2020 11:55:19 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 3/9] ARM: dts: sun8i: r40: Use tcon top clock index
 macros
Message-ID: <20200102105519.cvpcwvjyig5dztan@gilmour.lan>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
 <20191231130528.20669-4-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191231130528.20669-4-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_025521_958913_FCA74383 
X-CRM114-Status: GOOD (  10.13  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3883675725778910431=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3883675725778910431==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oj6tgo2qqefryvgl"
Content-Disposition: inline


--oj6tgo2qqefryvgl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 31, 2019 at 06:35:22PM +0530, Jagan Teki wrote:
> tcon_tv0, tcon_tv1 nodes have a clock names of tcon-ch0,
> tcon-ch1 which are referring tcon_top clocks via index
> numbers like 0, 1 with CLK_TCON_TV0 and CLK_TCON_TV1
> respectively.
>
> Use the macro in place of index numbers, for more code
> readability.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks
Maxime

--oj6tgo2qqefryvgl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg3MFwAKCRDj7w1vZxhR
xXAuAQDcI/HjKTyNWSYjBIfy/Ni4nla+VO45v3aSQ3cBZPTx0AEA5Ofb6egNlD0b
Tq7ayXPuXNzgqUXGPC45HIFkDi7I+gw=
=OC9E
-----END PGP SIGNATURE-----

--oj6tgo2qqefryvgl--


--===============3883675725778910431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3883675725778910431==--

