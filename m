Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B9010EFE9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:16:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hqDbN5yRWq4Y8OMPnGxrwKbN3Cb1NkEEaHrIm8047bs=; b=i6O6hPr5ILEAbUyjEjMW1A+li
	GuEBvpjjwwbkiYKC6KM45mNu9sKmFkVXdUQeZd462MwMuDREgdD+oRTfPu7THRSx1Xy+v+jwaoI5t
	udY/YR7MuZpU+vOQis0NquLkjAmC9AojySiKiuJnV4P8sBn7i2Ltaxysvg70N6HDSPzYBkzO8TY/k
	joeWteOsThHkCEG6BjsBlMEK7xyQ0i8/ZChj2dwc7Pa5j3IF9O97qB6VmI0SU5Jw5iCvMGtfUOlhb
	mwIHy53Q8Ts2nxaH5rjvs+3DmHvUczl8KvoNVPcOVxVgfoVHyhEc+9NFuaNWM9F2VubRtHUipcVDn
	Zaw6nNm3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrBX-00011D-F5; Mon, 02 Dec 2019 19:16:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrBR-00010r-4c
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 19:16:34 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 493AF214AF;
 Mon,  2 Dec 2019 19:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575314192;
 bh=a6t1Y8SGT7pSf3rULBWUhEZkTYHWD3R+C5WYp9Mtkqw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B2Qw9kdE+gwwP5bF0EJCih5sClV0MRDEfGH2vmu0pZD+l+jrBimZsJuztk5/991Ly
 O251kVtz1NxT0EIr05Rf7TdQP5wwUdFeh5vB9/ZrhbT5HMZVijUUorG7SIdjYGMxnS
 rQZ1PdHUKNI9lPCYhEjoGJ8ApOJ87xvVy1RrJ8pU=
Date: Mon, 2 Dec 2019 20:16:30 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: allwinner: a64: olinuxino: Add bank
 supply regulators
Message-ID: <20191202191630.55itysenwpxdrhfj@gilmour.lan>
References: <20191129113941.20170-1-stefan@olimex.com>
 <20191129113941.20170-3-stefan@olimex.com>
MIME-Version: 1.0
In-Reply-To: <20191129113941.20170-3-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_111633_203124_B0596499 
X-CRM114-Status: GOOD (  10.74  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6903567818946062243=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6903567818946062243==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="e67e634t6wlkd7vk"
Content-Disposition: inline


--e67e634t6wlkd7vk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 29, 2019 at 01:39:40PM +0200, Stefan Mavrodiev wrote:
> Allwinner A64 SoC has separate supplies for PC, PD, PE, PG and PL. This
> patch adds regulators for them to the pinctrl node.
>
> Exception is PL which is used by the RSB bus. To avoid circular
> dependencies, VCC-PL is omitted.
>
> On boards with eMMC, VCC-PC is supplied by ELDO1, instead of DCDC1.
>
> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>

Queued for 5.6, thanks!
Maxime

--e67e634t6wlkd7vk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXeVjDgAKCRDj7w1vZxhR
xS4NAQDZhesDivpERrXEzobJO+Q/JbNqNrZlcfOynVfPsfUvkAEAiDtcDNlVg4f3
Bw029YZyhs6d/m38NqQXo2VJx6QRDwg=
=6lca
-----END PGP SIGNATURE-----

--e67e634t6wlkd7vk--


--===============6903567818946062243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6903567818946062243==--

