Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8120397D1B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+A+QLd/rdjV61guA2lr6LEZt/59LVpkpcrDCvsHa7ME=; b=o+xGJIwnSxC3RsvU2gDlwJsb6
	zE829Thzf4PBIHbcYZxF9sketXfKoNzZ7TVOS8D9x5wfgUyeIE2BwIxSd7RSYR2l//vhEdWrZzzW0
	q2j4EpwJKoMLQKIAM0Z6b1a+vKi4jX5sMn4KisCuKq8HsutzTMV0hFI+agwAfZhIn5kpF3ZNQycLj
	PZVCPmxgjmMzW/w4OwlsZr11jhQKqDpCzvILVO9MVYOxQSzdxti+TEk3agTggvM70tnwpsfOc4gdl
	EdZkSy11MndG3/Jv9jA0f4T+7MpQ7aq6TmjJOvOjJlmTwWQI3PAhMkRb0qTnme5VtdRFygv7jKW6V
	qL+5sMZGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Rg4-000874-8W; Wed, 21 Aug 2019 14:33:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Rfu-00085m-FD
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:33:23 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B31EB21655;
 Wed, 21 Aug 2019 14:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566398000;
 bh=QO+p1/85LdqTXyI9zUBJ/aIY/wCtPQIJief+RWd2UrY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PHZnmkn9zAYlpVwUC319SBmftvtX2tizMVRp2zk2k3EriOA8NLI+X3BAJWW30wuza
 sSunp5GHpstIb3ekTNyky5M7w8XNsyYD4r0idsCwXcCOqD1EtGNerIFaGgZdsNdnjP
 w/ON98/gqARUdfEixQZj25NBbsXVSOG8Tm4VOaUw=
Date: Wed, 21 Aug 2019 16:33:17 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v2 1/6] dt-bindings: watchdog: Add YAML schemas for the
 generic watchdog bindings
Message-ID: <20190821143317.dkahpwjvgrtqtx4d@flea>
References: <20190819182039.24892-1-mripard@kernel.org>
 <ada53037-898f-7b8c-8a96-b80414563fa7@roeck-us.net>
MIME-Version: 1.0
In-Reply-To: <ada53037-898f-7b8c-8a96-b80414563fa7@roeck-us.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_073322_530885_4D3CD879 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, wim@linux-watchdog.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1925887047370954551=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1925887047370954551==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3o66cqpsjmmmmqh3"
Content-Disposition: inline


--3o66cqpsjmmmmqh3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Guenter,

On Tue, Aug 20, 2019 at 08:54:53AM -0700, Guenter Roeck wrote:
> On 8/19/19 11:20 AM, Maxime Ripard wrote:
> > From: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > The watchdogs have a bunch of generic properties that are needed in a
> > device tree. Add a YAML schemas for those.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> What is the target subsystem for this series ? You didn't copy the watchdog
> mailing list, so I assume it won't be the watchdog subsystem.

Sorry for that :/

It can either go through the DT or watchdog tree. I'll resend it and
let you and Rob figure it out :)

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--3o66cqpsjmmmmqh3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV1WLQAKCRDj7w1vZxhR
xV7MAP9eNJQeheprjz1a/+LmmPM8s1A06SHcgrdDWaIdjrnr9AEA3opx310odS8e
IIcinBLkTGCtVyqZQn99Bq1LeOvEPgA=
=W2rw
-----END PGP SIGNATURE-----

--3o66cqpsjmmmmqh3--


--===============1925887047370954551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1925887047370954551==--

