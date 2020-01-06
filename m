Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E070130EF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 09:53:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VXK5054LTLGLYFF3jrkQKiO6wVy2R0LYe3I/NqaW+xs=; b=bj9nV7ML96TXg9ZvuoB8hjFwd
	TsfH1ju39/J3XlfSSQAMcN+AuRSTLAS8eXeI8yjfwdiVPkqyTecfKH3UTIsz1XZcaDnNq/TfV5HWl
	Rl6YfGb+n9GIjDK7Qjk/GByMSf/qsPbDv1CBoF0GeopvwW+6y33rNpuEq4c+RkhE1JF7X94A4HHac
	ms1hBWX5VxErKxEspzgYIDqRxlrIMoLI4wdU6q1HG3KO6PQzLEG8McKBDzbuKW9Vc/S6g5aJxphC/
	fWZ9LhI4+jYs5xr30Kse9tTTGEQR7Pg/SDpSYDa5fh8CUXH79uWwQDFV/hxz2eIwKObr2CQpyRNh4
	sLWN1O1Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioO8W-0007yB-IN; Mon, 06 Jan 2020 08:53:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioO8P-0007xQ-KV
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 08:53:14 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3CF620848;
 Mon,  6 Jan 2020 08:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578300793;
 bh=gGt53+T2QpuKFFig2c67HzTNBOHPtf+uVFA+hg/Q4lc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mNWq+JMn6qkB8nOciEMFpcK41iSy9C7xD6JjWbxszWRW22tRWFyaaS3msGnclalTk
 KQv3uRZ9+neBQab31ecZXXbR+ZSlO8USA4crcl1YhD2Z17v5c+/WIEC8HPO7Ul1LSw
 VLsUxlJkPz4ra3Nfugs/7c+U+7i3LyJr0dRfuBDs=
Date: Mon, 6 Jan 2020 09:53:11 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: pinebook: Fix lid wakeup
Message-ID: <20200106085311.nurmbdwr3bjdwlaz@gilmour.lan>
References: <20200105021137.46542-1-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200105021137.46542-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_005313_690127_A4B66C76 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6658895075463332761=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6658895075463332761==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ljcm7vm7yuabjva4"
Content-Disposition: inline


--ljcm7vm7yuabjva4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jan 04, 2020 at 08:11:37PM -0600, Samuel Holland wrote:
> By default, gpio-keys configures the pin to trigger wakeup IRQs on
> either edge. The lid switch should only trigger wakeup when opening the
> lid, not when closing it.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Applied, thanks!
Maxime

--ljcm7vm7yuabjva4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhL1dwAKCRDj7w1vZxhR
xT0HAQDrkJZI1CqZH3uwLnrFRjLzqsehNHgv8hEsBxg3719iyAEA9xfbbnHMmQk8
yCmfp3X3hgPbmZoRy11TXA4XmytyswE=
=nVEf
-----END PGP SIGNATURE-----

--ljcm7vm7yuabjva4--


--===============6658895075463332761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6658895075463332761==--

