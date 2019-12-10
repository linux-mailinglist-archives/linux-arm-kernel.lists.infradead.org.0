Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 909F91183CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:41:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+P0M02JrL6MqaipaEUJuZ9EOEK9JnPdX3BftH0US45M=; b=AA22eB9shF+pq4DZknqHjhWfV
	RO1fTquppViEfjHVcTcFUk/4XjdZ96Su8qbEcm18iC1Ppqf2pAwo0vKJPXJsyn6zXFiQ6vohgYL+F
	TXTiN5h9FAjZW2hm+2DBGAD1aBhN3HhD28gWrOOEPimTFR2/hqRNhj1TbsrQsGhR+RXkatyZGUhKV
	tBbDtr5nb2t8iIPsW0CwtiRMy9LZfdnjYQRPPVZRiAaI2Z2F7C9VsfDs/dtynr5uVeYKvtVqvx6j3
	1pt1rk3DRtvDrY4jKPgIY3BE2+YHDT0ngpMT1yd4srjA+eE+nygYaYqPU7gdn0wsyYKgr/8aiN71h
	VEkRqShGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iec0y-0000s6-K7; Tue, 10 Dec 2019 09:41:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iec0p-0000rh-RS
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:41:01 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17C0C20663;
 Tue, 10 Dec 2019 09:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575970859;
 bh=rXiWjC0C2pFz1m1mewguEYBdET4p356PjzRIiT7GIUg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TDP1G8eLXvPf0sI3iSZYCxkxoqJvjl2n3kbJn7lyM0D5dRe1+clfrVAWUPiaav6WF
 Ls6hYNAVCMMjMifHG+8zCjYmu214bWZiezN+ADSJtrRcDH3h9B6lFzhli4aUcduplT
 uzmlvvhstSKU/wIJENKW+HHFzmaqY604Fj8Ofhk4=
Date: Tue, 10 Dec 2019 10:40:57 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: allwiner: Fix typo in dual licensed
 SPDX identifier
Message-ID: <20191210094057.ojenu74cmjcuaq73@gilmour.lan>
References: <20191209182024.20509-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191209182024.20509-1-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_014059_909732_563C468E 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============3294439105705095396=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3294439105705095396==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q5d4baoofanzj4pg"
Content-Disposition: inline


--q5d4baoofanzj4pg
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 09, 2019 at 07:20:22PM +0100, Cl=E9ment P=E9ron wrote:
> With dual licensed SPDX identifier the "OR" should
> be uppercase.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Applied, thanks!
Maxime

--q5d4baoofanzj4pg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXe9oKQAKCRDj7w1vZxhR
xX4DAPwNlr4EMNiMHoyTLLO0bo5xLU9WWV6hkoT9iI+1hdNtCQEA9dm44ukjGX+g
sTQyp0ZoJFLctSwVzyuLipTN/0glfAw=
=G1aM
-----END PGP SIGNATURE-----

--q5d4baoofanzj4pg--


--===============3294439105705095396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3294439105705095396==--

