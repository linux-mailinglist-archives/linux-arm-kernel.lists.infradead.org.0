Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0997212E46A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 10:29:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dsy5h10qxxttVEnVZWVf9RxTZsMMurfi+VbWxz4NT84=; b=rGgHpGHYOuc5XZVfltYFzAlaa
	JmW0TnDf7KbtgcNRURjKCZTiylX/2bJiF2sCWv+y6uBLaooey7uKqEayYvQ0iguaHlfc1qQ9HYLUm
	FtNN3Nq3pHGrDEd9FAjuBz2ZdkXgzYry49m1XF/1tF6YIvTIQwPNm9nAgGjP8waOggAG9Jv4S3pAv
	R/z6bOe542zD64CawvPRkN0si3teHzS+lVZxZ/WgxsYnHdFoYAVpFh7JPZmd8S+D0e5NOIP199xAF
	WlO58YLDZbWW5vIy7t8m+EKkJZnb/fjv2ZpWMngtm/okzQTPq9D6qkTrHkxvx+cddoX0EPXjOmH/p
	aQ81rT/dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imwn0-0004RQ-OD; Thu, 02 Jan 2020 09:29:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imwmt-0004QM-BB
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 09:29:06 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F43C20866;
 Thu,  2 Jan 2020 09:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577957341;
 bh=pRLLWLshpdZaj7aSje6TIFcK62XHUMhFH6uF34UjPWE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qioH68TnAGoz6R8XezA9BL4hVOWCriMkL0fN0Za0boFI4yM/swDLfcwRPWMzCKTuf
 HKyYkBgMbDNYXcGEt9krDRjxThh6owzoXQTFPIqw6l9EWGkVB88gT9Iq8HryEjmuSf
 4p9Sg6GPF0yHKPT05z79Rtav8FmyWoZYSwJwxCqo=
Date: Thu, 2 Jan 2020 10:28:58 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 0/3] A64/H3/H6 R_CCU clock fixes
Message-ID: <20200102092858.6n5uqymglia4t7lk@gilmour.lan>
References: <20191229025922.46899-1-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20191229025922.46899-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_012903_411822_8DFD4BDF 
X-CRM114-Status: GOOD (  12.59  )
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0487804386762519358=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0487804386762519358==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gk2aam5hdxft2et4"
Content-Disposition: inline


--gk2aam5hdxft2et4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Dec 28, 2019 at 08:59:19PM -0600, Samuel Holland wrote:
> Hi all,
>
> I was examining the H6 BSP clock driver[1] for guidance when porting an
> AR100 firmware[2] to the H6 SoC. I found some inconsistencies between
> that code and the sunxi-ng driver.
>
> I don't have a good way to verify the first patch. Someone with an
> oscilloscope could set the divider and check the I2C/RSB frequency.
>
> Patch 2 should have no functional change.
>
> Patch 3 was verified by benchmarking. Details are in the commit message.

Applied all three, thanks
Maxime

--gk2aam5hdxft2et4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg232gAKCRDj7w1vZxhR
xR/OAP9JY57TmyxiCqTZ5rQ+jSsbbgBIlK0MUpFXFJ60USVATgD+LwMfTzcDLCvz
GjShAjhcGPUCGqkJC8XOg5DyklsoFAo=
=gy/O
-----END PGP SIGNATURE-----

--gk2aam5hdxft2et4--


--===============0487804386762519358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0487804386762519358==--

