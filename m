Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A4B143920
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:08:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z0W/1a/FwGhobIf529n39DdHNkjAUor9rOdBW1zYnBM=; b=FH+7v6dOHot/zLVSnX8n+WjWQ
	wK7XqlH77qxTq0Klv88rjCXKnSdocax/JNfjTD4j6lEtdATzv1wSRrVpp1NmuE/u+iSxROF5G4Rgl
	6bzFGbmmZa1A3SDR5jvakiQ9blkjWpW8EGoSN4FdirWzmXZdVvXh/CQ1eDXlcgaqv0G2AaMj9HUW4
	XDPcke2k5tG9Fe/9l1NO9a4oxg0EKQn7SOpmJgk6Op5OjgMzaARwMZfQcAQ1XC+jQ3PRmV4IWxA4E
	YQLjRqXL0gOsDZgGYYqmSdL/WheCYvNlKZBtG+wfqYVhIrZlffCYo2QhBS28i34N2esCWWHwZmioJ
	BK2GlUyJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpWY-0005dC-1a; Tue, 21 Jan 2020 09:08:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpWK-0005bq-OL
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:08:30 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01F5A20882;
 Tue, 21 Jan 2020 09:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579597704;
 bh=V/N4fJDuFow+RDfqLPVuw2V+0R91MFUR/t+PMQloXb0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c/9yZ47/q3p0PhEQaxR5nGPIUsC9W0grdwpmH//oUnfRmSwE/oJlRnHIomBQvU24t
 BIfJppGmOTDGZ1WHvvC9dmji0hbzU91zAO0lRosPwvVyQheFQXaITv/nzQsr1HYRNR
 o1OO29wAsE/eSjbp/bqysGFzr5lkwy4FSi9I7ya4=
Date: Tue, 21 Jan 2020 10:08:22 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 9/9] arm64: dts: allwinner: pinebook: Fix 5v0 boost
 regulator
Message-ID: <20200121090822.77pjto5xh4hoybej@gilmour.lan>
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-9-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200119163104.13274-9-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_010824_808612_9B73805F 
X-CRM114-Status: GOOD (  10.81  )
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
Content-Type: multipart/mixed; boundary="===============0626514090865388216=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0626514090865388216==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qackdqofuyqe3hmn"
Content-Disposition: inline


--qackdqofuyqe3hmn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 19, 2020 at 10:31:04AM -0600, Samuel Holland wrote:
> Now that AXP803 GPIO support is available, we can properly model
> the hardware. Replace the use of GPIO0-LDO with a fixed regulator
> controlled by GPIO0. This boost regulator is used to power the
> (internal and external) USB ports, as well as the speakers.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Applied, thanks!
Maxime

--qackdqofuyqe3hmn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXia/hgAKCRDj7w1vZxhR
xfofAPYyu4j1NVQCLPclIpVo8s1pk99EUtMOVuQYEBl0ifMZAP9MEShdqJiLf4xw
l8v1MunFWBbjeNlIadaab/Zpxm2VBA==
=qHzz
-----END PGP SIGNATURE-----

--qackdqofuyqe3hmn--


--===============0626514090865388216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0626514090865388216==--

