Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945E217E619
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:52:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CDvjhcgRQaSJ8lOUQh/Sk5gp35BuCyksx7KRzV2acs8=; b=PFU2+NBHGhRNMUubSFmQiQDDL
	2sblq7W/9WQ7eZ8Cn88DQ3S8YvveidZUavq1ACEXdlkXJNp4ywCAkYP2AV9xVD6hb4BoTNy+wTNZL
	Lsmy4gpL9U4HKfoC1j9ITB6nLdevlZDQMg9uIHhTJyPgXexDODR3sZxXkenNpKg3I4FyX4Q/ihf10
	pgi49ejbCvvY+GYC+hLOmOEyK2ZGxN/y3NT8I9hIKHtflshe4aowMpCY3IJXkRJzaDzoUF1YKXzCY
	gdEnqmyEazgBIrKc8xDRecIAFshpJ9AfR/pQ2cgxjR/JeBYXWpH2btQiFdD4+9Lr0t/jJWhdvhIjj
	gRMbadU9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBMZf-0007uv-Qz; Mon, 09 Mar 2020 17:52:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMZU-0007uG-Ba
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 17:52:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A28C37FA;
 Mon,  9 Mar 2020 10:52:07 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 14E243F7C3;
 Mon,  9 Mar 2020 10:52:06 -0700 (PDT)
Date: Mon, 9 Mar 2020 17:52:05 +0000
From: Mark Brown <broonie@kernel.org>
To: Kevin Li <kevin-ke.li@broadcom.com>
Subject: Re: [PATCH] ASoC: brcm: Add DSL/PON SoC audio driver
Message-ID: <20200309175205.GJ4101@sirena.org.uk>
References: <20200306222705.13309-1-kevin-ke.li@broadcom.com>
 <20200309123307.GE4101@sirena.org.uk>
 <69138568e9c18afa57d5edba6be9887b@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <69138568e9c18afa57d5edba6be9887b@mail.gmail.com>
X-Cookie: Above all things, reverence yourself.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_105208_444852_CBC449CE 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Scott Branden <sbranden@broadcom.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, bcm-kernel-feedback-list@broadcom.com,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7908246266998619575=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7908246266998619575==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fKov5AqTsvseSZ0Z"
Content-Disposition: inline


--fKov5AqTsvseSZ0Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 09, 2020 at 10:33:30AM -0700, Kevin Li wrote:
> Hi Mark,

Please don't top post, reply in line with needed context.  This allows
readers to readily follow the flow of conversation and understand what
you are talking about and also helps ensure that everything in the
discussion is being addressed.

> The SoC I2S block we currently have shares one clock and frame sync signal
> for both playback and capture stream, plus playback and capture can only
> have one master at a time. If we set playback and capture master at same
> time, it will have jitter on clock and FS.

I can't really parse what you're talking about here (perhaps some of
that context would have helped...) but it doesn't seem to be the
clocking of the I2S bus which would normally be what master and slave
would be talking about.  If it's something else perhaps the code needs
to be clarified to make it clear that it's not talking about the bus.

--fKov5AqTsvseSZ0Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5mgkQACgkQJNaLcl1U
h9A5Fgf/Urnfg3j5PZES06ywstEE7IyxgzPd7YpkYqxz2XToPpUnbB1SBhF0Lfxk
xo/iCZDUkh8H259e98Hq1BEN/mB8UROBB4E23KAY/cYsoFYjU3ZQQtGL3InblMsO
6fFx4mnUIX47TvK9S5oIsXpsS/+mrTx5GPmY9Xg/gBy32d15wnNFYtGP9mCGEgOi
hRj/VQ2vuAbiHk0D3Qjd6GvUZMnvF88BMndqq8wtUMjnwPK5pfk3SD62n1dQkuov
5MClefdJR/qwrpfLHjEzOzfSqrRceYcim8ccxQHmU/5qHgBm2xMTQFQeBjTLWIFs
7Qdtn3SNwtwyrW55Xp9IrO2+zHwjJw==
=VLrd
-----END PGP SIGNATURE-----

--fKov5AqTsvseSZ0Z--


--===============7908246266998619575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7908246266998619575==--

