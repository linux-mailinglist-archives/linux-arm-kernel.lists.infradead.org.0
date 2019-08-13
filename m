Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AA08B6F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rL0sZhReTgWCwV+jdt+sRkEeloohWSLcDNxSTdixW1Y=; b=qcGCWb5aM6hu4v0WEx8I7Mwbu
	Yt6D8v7tVp5KaRbG6qyTnw+BoghAeN9jhrMereHV7r3hQ4kj0UrUS7V95HCLIVjHM3pMFkcuO4v80
	ZwaeNV738cWoY9I4aUtcgO/bZwuZO1aFky8pzPd3oGvDtU5dKg2ReOkmW9CkOz2x8jKCVt/epzItA
	bB8QWoFXppNCot8/Gp3VAfo27Vc6vkgDQQwHjqlJdSNv0QNABV8jEgxmSLT2vA1KAis60hcoMHyTw
	W3JyY0X//5/bvZnbUgMLB1qe7YORuY+QXd9IrJfg4oA9N2JBgGVfNM4xb8xRexYHfozQzBB1yWQm7
	7lgiWBy4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxV2S-0005pU-BM; Tue, 13 Aug 2019 11:32:28 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUzY-00024j-7u
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:29:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zq++AH36LcJV8AEMAUwSGNdy/skc7edYjMJDAHmF7M8=; b=ZwZWUKiUxBj9FOa8Z3s5c7GoJ
 gxwgBVHVPGQ1V7ib3cLwm9AnJDH7Q8QWguLFsVEuAm+7DWkAaoeLwvHz63FLLjr8UUVAkcDi7PQR1
 C/oixVlRFcRW+k+7Hl6NEAaolSkzzgHYlUYl3tz7AgQm7Rzmg4KyjeJWVRlb3CGAvxwIc=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hxUzR-0007lv-EK; Tue, 13 Aug 2019 11:29:21 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 983992742B44; Tue, 13 Aug 2019 12:29:20 +0100 (BST)
Date: Tue, 13 Aug 2019 12:29:20 +0100
From: Mark Brown <broonie@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [alsa-devel] Regression in next with codec unload and
 snd_soc_component_get/put
Message-ID: <20190813112920.GC5093@sirena.co.uk>
References: <20190809070003.GA52127@atomide.com> <s5hwofmhkbs.wl-tiwai@suse.de>
 <20190809074643.GB52127@atomide.com> <s5hv9v6hhm9.wl-tiwai@suse.de>
 <20190813102451.GJ52127@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20190813102451.GJ52127@atomide.com>
X-Cookie: Poverty begins at home.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_042928_333356_DF24B05E 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Takashi Iwai <tiwai@suse.de>, linux-kernel@vger.kernel.org,
 Jaroslav Kysela <perex@perex.cz>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8664813890563091987=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8664813890563091987==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="raC6veAxrt5nqIoY"
Content-Disposition: inline


--raC6veAxrt5nqIoY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 13, 2019 at 03:24:51AM -0700, Tony Lindgren wrote:
> * Takashi Iwai <tiwai@suse.de> [190809 08:24]:

> > ... and it was already fixed in the later commit 0e36f36b04e7
> > "ASoC: soc-core: fix module_put() warning in soc_cleanup_component".

> Mark, looks like this commit is still not in Linux next, forgot
> to push out something?

There's a build failure the Intel guys haven't fixed.

--raC6veAxrt5nqIoY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1Snw8ACgkQJNaLcl1U
h9DF/Qf/WDdJEsNmRPfcsZFd9wcH/l/YYYCUVgA62rjOVqjdmJimIzjWXlc+W4xw
CZk3JtYhXgKz31j0/toBAkOS8bbArTQtWi5+40EuzExrZKV/MYBA2dlSSYKazuQO
bDQBxTg5kKAafEyViBEVMxCey+ubNGO4Ms69de/KW1lmZeEqtfSHPzOjWgrEI+H9
1xjLx4KVTDk2o3TaSc0iKj7MNCKJy0nBW/VnW8RxJiOnKu+kO2G4lBpCu+/0afjm
f+oufYCVjGXJKKv5SBsfB30/c11H+PindiU1ECSY5mn0YytmPY+cC2d00aE20GXY
v3jxVVy7d8M5zo4qooHjGF84oeCX7w==
=XIoR
-----END PGP SIGNATURE-----

--raC6veAxrt5nqIoY--


--===============8664813890563091987==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8664813890563091987==--

