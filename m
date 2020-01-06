Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C464130EEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 09:52:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JuPJWIcDKXwWckIXPmMXMa4k7s8WUpwBo4gqlw9m+Tc=; b=H9bv/fRld0wGA1nG852ptTSZs
	o6TbxrWRVgyLFfWtJlLCufXnWdHSlxtlNrJoxaNPcxvwxzVML5RWNAen21AIHUk/w3V9xwRPLT7jT
	p6RsNSUdNn+mQT1RxUd18yWpqlQrs68DUD3NN1X+juqeZ5DcntTnq5Gu3APDqSK11P56PwW5JxmqN
	KAOoZSXbfpyu/KlN8y6Ug3w2IjF6ls1Berafg8srume4uKRvodNCTfckmeFoMzyLQUBs149k9YmJ+
	gBPlqLF5RzJMK6c0Bvl5gOY8SPt7k101+kmkQhxMmNXKcb+ZVlDT+9+aHB3IwYuSUYDddGVldJUnd
	ics59CEIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioO7N-0007MZ-EZ; Mon, 06 Jan 2020 08:52:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioO7G-0007Lu-IO
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 08:52:03 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C12BE20848;
 Mon,  6 Jan 2020 08:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578300722;
 bh=E+6+jXxqoUF8JBv1qsja8+TZpcYAmNNZ5HQDABfvKuI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h4xlslVdQiv8N7fhoPP8JaP1b9TB5P6wsd2h1uTZhbj6lyDVHVZ+WMhTITIGHQLuQ
 60WtDtaXaJXoqrGGifMzcOYrMX54CAUZKQR3hmCsLrSFYvf/l3v40R3HgK7XW57zO/
 ZBUDURZ8mB6nyLnIqnrs6aRuRuzkGsa5swSDFxP4=
Date: Mon, 6 Jan 2020 09:51:59 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH v2 3/7] dt-bindings: bus: sunxi: Add R40 MBUS compatible
Message-ID: <20200106085159.oirhyvxov6c4lzs6@gilmour.lan>
References: <20200106084240.1076-1-wens@kernel.org>
 <20200106084240.1076-4-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200106084240.1076-4-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_005202_636604_B9E4EA1A 
X-CRM114-Status: GOOD (  10.08  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0407659953073181412=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0407659953073181412==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fzzjkvck4wgddh6g"
Content-Disposition: inline


--fzzjkvck4wgddh6g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 06, 2020 at 04:42:36PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> Allwinner R40 SoC also contains MBUS controller.
>
> Add compatible for it.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--fzzjkvck4wgddh6g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhL1LwAKCRDj7w1vZxhR
xWpOAP4whnttbvE2hfVbsNwjE7RNPqRTYADXuBxx1mgcnvmu2wD/XEaXL0cTGKKp
YA8JcPr/DbtfRVazD96m/sWxWyu/UAQ=
=z178
-----END PGP SIGNATURE-----

--fzzjkvck4wgddh6g--


--===============0407659953073181412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0407659953073181412==--

