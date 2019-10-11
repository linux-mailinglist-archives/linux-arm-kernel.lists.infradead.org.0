Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC33D3DB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SVbfvlwsOrUQI4IFdZMteEbZNpGi7TESgP8xUxlsIsw=; b=hnc8V1mrEjCu3NxfrX97ZjQkZ
	wledUWEg3ENoC/gZq6tl5Q6W5WzGQxZG11xtM8ni9bmPiflxlnvc5gkvFrVifMfJ8E/tXv+kqeFDc
	mfIcRmq08Uu5pEJmTfbs2cGWVrv36nmXbtgcwdotAoHUrhSbj+g2Vaq9FDE5OvrycxRBm60ESXi2b
	mvPqA68ESKgcM3HZsh5RPIYSmaOOjpeoRwHkGvLq8dTeROBjAq3Po6jkyADd0guWv2FkuRWDMsx98
	CVYzgvU/8k9btBvG7UTXtXZ6f7S0BcPO9CtAchjGLZDnN/cVRzXJOMUho1nQ8QMZzPIpBy4q3jClN
	kHUFcFJ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsUy-0001iq-Fe; Fri, 11 Oct 2019 10:50:16 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsUq-0001Mc-Se
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:50:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+GYaGvn6aQG4ujRHeTb1+lopvEhjRcfgUQWj4NEdRZ0=; b=oFF+nMW8ULTocBKQP7Rg0G0OD
 ULnpmBNgzEV4j+EqDbOV/8Kdzb2mh5FWrQeFQm7wEwX6fdvC1FsK8ujWRciwYHXfBbq3oXwwe+HGq
 Baau7aDhUJjlC4PE6unDctPMCzjGx3HIrkGX42kkWsJ45W2xe8WLLJQIaNMl1O16Npsb0=;
Received: from fw-tnat-cam7.arm.com ([217.140.106.55]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iIsUk-0005Sr-Uf; Fri, 11 Oct 2019 10:50:03 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 3111DD0019E; Fri, 11 Oct 2019 11:50:01 +0100 (BST)
Date: Fri, 11 Oct 2019 11:50:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 20/36] ASoC: samsung: s3c2412-i2s: avoid hardcoded
 S3C2410_PA_IIS
Message-ID: <20191011105001.GG4741@sirena.org.uk>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-20-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191010203043.1241612-20-arnd@arndb.de>
X-Cookie: Void where prohibited by law.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_035008_945508_C8D211AB 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 Sangbeom Kim <sbkim73@samsung.com>, linus.walleij@linaro.org,
 Liam Girdwood <lgirdwood@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8905052381614554103=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8905052381614554103==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rV8arf8D5Dod9UkK"
Content-Disposition: inline


--rV8arf8D5Dod9UkK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 10, 2019 at 10:30:04PM +0200, Arnd Bergmann wrote:
> The constant requires indirectly including a machine header file,
> but it's not actually used any more since commit 87b132bc0315 ("ASoC:
> samsung: s3c24{xx,12}-i2s: port to use generic dmaengine API"), so
> remove it completely.

Acked-by: Mark Brown <broonie@kernel.org>

--rV8arf8D5Dod9UkK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2gXlgACgkQJNaLcl1U
h9DRDwf/Z97B2zjL3Z9O+QU4Fp9jlers2KrllaRLXhvKAvYYwb8JNWOGuedCmQDi
C6Gj9aBSXHmzjjFCM08/QJMG8u6TcM5H2gCjEVFOiRCMqP5DPX5qCIiiQ0SnBrdi
G78NJlKJRTR9kLnVYFd8DRx4fOHelhaH0X7n5EPUliwMpydcV81iL9zttP39m5+h
bTSe5rNrUxE6oNaq/1Ud7YFogrTUUSHQugLgRHDwsGakNFIYpP7HYvd9lYfAlX0C
dz+DUqy/Yq8FJMN3SUlsUyNx3X1LVOkKbKCiKbcwoYIaXy+YyNCPAja8eRtrWVZU
tdnsAgWDN5OszUmItgS481uI9UwV6Q==
=6yUg
-----END PGP SIGNATURE-----

--rV8arf8D5Dod9UkK--


--===============8905052381614554103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8905052381614554103==--

