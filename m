Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB23199B3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cn/M9NujlmRkh+ZXKt8PHs6aI0PnRlVhD3COsgbHlR4=; b=mZzF8GiJ7x5oADoQSY9ImA6Cs
	ahijfmqFFlbg8YutO/6nIxlRy2779Xv+2DsvOPy//8ZhukMDRnCDm+DmiyACe1kqW8wZWFBVoYZdQ
	VT+cRQk+xoQIuTM+DOfFGYqsRDW0NKcHE5qIaVaQzO79QVSg7MA2bxu5/XwpkbptJfU1iu4fBNg3V
	sMvN/NzFagP9FIQ3S6wrtRjtqp79ekSfYNOEz/9LT2qBLnhmfAEFmSzpEAT4T7l2z52t7xtEA3qeX
	OWVk8s3QPrhMq7lMMeCpoemubEv7RtRXCu+pRx9r8EodCPY2t/yx9UDnVG1qipSLWjOQArdRnKS/P
	eGQX5fFqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJbq-0005gq-3W; Tue, 31 Mar 2020 16:19:26 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJai-0004zi-2m
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:18:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lEz1klH4TymFRjb7lKYsi1k0Zi49pYdqaWSFWXTIeuk=; b=BBh3izn46LBL+dJzY1wokI+RBr
 5a5Cva/yn+6649y+ou0v8HhG1YQJZfSDrmE0O/IfEG5qQaz8JK4Ek8yXY1yvcKoAXDy7uLSZS29lM
 FY6pZ8HzyRB+IllEM5bMGWYAUDvicL4J79ud6uG9UyJXuKtKCxMCy+nZclMGjP8qnEC0Uzx46nTDu
 /QUV8mfthiEboZdqYhVy9780svU4o98P5SQSwE46qLsi8PEY/KE+xMlepvgcGZ1OqYf4L6eI0u8SM
 /1OysEV6vd5NANGb5Fg63MgLmsZHS4Odenm+1R0TTNOAoCVi8fBW5K34ndjxM6eAQHcoKrvHcuDs/
 976Sd9zw==;
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJFxi-0000Z7-4Q
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 12:25:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7EB9A31B;
 Tue, 31 Mar 2020 05:25:42 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 020F63F68F;
 Tue, 31 Mar 2020 05:25:42 -0700 (PDT)
Date: Tue, 31 Mar 2020 13:25:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Daniel Baluta <daniel.baluta@oss.nxp.com>
Subject: Re: [PATCH 2/5] ASoC: SOF: imx: fix undefined reference issue
Message-ID: <20200331122540.GD4802@sirena.org.uk>
References: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
 <20200319194957.9569-3-daniel.baluta@oss.nxp.com>
MIME-Version: 1.0
In-Reply-To: <20200319194957.9569-3-daniel.baluta@oss.nxp.com>
X-Cookie: It's later than you think.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, pierre-louis.bossart@linux.intel.com,
 daniel.baluta@gmail.com, Daniel Baluta <daniel.baluta@nxp.com>,
 kai.vehmanen@linux.intel.com, devicetree@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, yuehaibing@huawei.com,
 ranjani.sridharan@linux.intel.com, krzk@kernel.org, lgirdwood@gmail.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 alsa-devel@alsa-project.org, shawnguo@kernel.org, linux-kernel@vger.kernel.org,
 sound-open-firmware@alsa-project.org
Content-Type: multipart/mixed; boundary="===============6062051161824333469=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6062051161824333469==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sXc4Kmr5FA7axrvy"
Content-Disposition: inline


--sXc4Kmr5FA7axrvy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 19, 2020 at 09:49:54PM +0200, Daniel Baluta wrote:
> From: Daniel Baluta <daniel.baluta@nxp.com>

> Fixes: f9ad75468453 ("ASoC: SOF: imx: fix reverse CONFIG_SND_SOC_SOF_OF
> dependency")
> Signed-off-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>

This has you as the author but you list a signoff by Pierre before you?

--sXc4Kmr5FA7axrvy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6DNsMACgkQJNaLcl1U
h9AAewf/SRLQsBBj6wlAv5rhKMVQLnmnQY5R9scerh2jz6AEv/pHxINQd4zTWjnh
pIhrebacgZCwofsY/n31xPI/thHIHJIo4bqgKIQs85UkXwCVHXXctSlyWKPsQz7y
yuwX5Wp7Yamg32an6JuCQo3KCVC5kZt9TMT36nkVKSyhdxmVAkDj7x78EjJRPBTV
1kvi+UzHvDghla+wt2olnvA5KfhNc2SlMi7hDBPtXAEnHr3XDwVoeDxIwobdLC4j
KK0gxmGaHrmB5darIqDjRJeRiG9uzurATnY2GJREkJHgOnRV3mZkeOeQ4yFMoAvG
iJphl8WUXrpNLg0rdwTMnxFHXL4fPg==
=aJV2
-----END PGP SIGNATURE-----

--sXc4Kmr5FA7axrvy--


--===============6062051161824333469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6062051161824333469==--

