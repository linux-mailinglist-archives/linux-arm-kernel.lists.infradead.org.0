Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E989B13470F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:04:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PaURUsmfdoeX8lkeWFHzAlfEiiuR4dAYs9REy0vYFNM=; b=Q9awWZlf3EU+1zrtKjGw2cUyi
	g9FnWpXhzhWGGpZ75DPEYuAIeOKckkjjaL44Nb5kJ+4EWvHfbNwRz9LkOF5iEZTX4GwmnuV6+PpG4
	2HrHzV7VkXEjBY9HbB37UNuYwdhdMhTfUJJlaUV4BeoeO3oqlQa0KvoH9WAHx3K7Au92NFwPI50oz
	UcS40EInqKMmrxTWWscioMcD0S+0yxKKLXrTtc8txkP7egSpIKtaaX08pubWJ5027YGD6eKG66jma
	EOdhvjPa+BfDjvWwUrAo0YbokaY2FZQ49JXah9OdIPQIFH1rMhPAVS2Wbsi7luLrXSn1ITrykrM6+
	MhHjgG+mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipDob-0000lG-Cb; Wed, 08 Jan 2020 16:04:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipDoU-0000kc-7W
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 16:04:07 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 976CA2070E;
 Wed,  8 Jan 2020 16:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578499445;
 bh=GlCfqyySpJw/Yg2GpZ82R6+4QUJLHH/cQeS3qO5FAhA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UJukIpmyM1pbBq48i7yegRvqVqK0MXi2sHAVWEk4t3RGKDVNK48wzTTGp/zRuxG5e
 0TkFFzjhb1iL8ynNLJh9Ww6MEh1hQKEMDOk/cJD+DeuTq0K33iyxfyRLzUN4E42aPM
 99gc1SyddQvIcmj8ic5XRmNURy+WNHrKbZxWjgyA=
Date: Wed, 8 Jan 2020 17:04:02 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v2 0/4] arm64: allwinner: a64: Enable DVFS on A64
Message-ID: <20200108160402.u44odtfsuhiuytfl@gilmour.lan>
References: <20200108042018.571251-1-anarsoul@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200108042018.571251-1-anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_080406_291091_D371065B 
X-CRM114-Status: GOOD (  10.30  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2164117180680578353=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2164117180680578353==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="56arlx7x5vlcfzas"
Content-Disposition: inline


--56arlx7x5vlcfzas
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Jan 07, 2020 at 08:20:14PM -0800, Vasily Khoruzhick wrote:
> This series introduces new DTSI with operating points for A64,
> adds cooling maps and thermal tripping points and enables DVFS
> on all the supported A64-based boards

Thanks for that new series.

I'm not sure I've seen the answer, but how did you test that the OPPs
were stable?

So far, the only method that proved to be reliable was to run
https://github.com/ssvb/cpuburn-arm/blob/master/cpufreq-ljt-stress-test

Could you paste the result (one board should be enough) ?

Thanks
Maxime

--56arlx7x5vlcfzas
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhX9cgAKCRDj7w1vZxhR
xYdAAQCD2eBEbQsMOmLn6QvePtBn+9ActC0b0QyoO9SE7cRp4AD9HV9OjxZAvMzi
hmLfolvy8IcSXadEK9djjiNh65goiAA=
=dYiD
-----END PGP SIGNATURE-----

--56arlx7x5vlcfzas--


--===============2164117180680578353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2164117180680578353==--

