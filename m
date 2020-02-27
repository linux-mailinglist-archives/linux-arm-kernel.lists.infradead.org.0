Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9FC172209
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:16:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JbySNMvvIjyyVPkUc6fa6UaOJcmxULek6vSDwgp/8V4=; b=mj/ScL++eUuX1UKPcefrGRLRZ
	xtH3gUYPWV9YM2OnD/nVwgMtrYrE4dJrKHYZKHOnLCQv82oohb+CfuW6v9cYjVfwTK6bGkEVm/sRb
	LLhtMLcEM/8mphp7xN+dY2wIW2BQKS3nfnzHRp8wPVlHlsQ7CykiSJnfE5swZjUFi/RRWFj7jd1IN
	D+rT26tnBVS6ZFo3KX4dNtIxPgsyNZlqSFX6reOg1S3DhQV7Cg2jYckQ8yUCZo3InDZ7N70j8cBhX
	xzyyoXX+14seJtbwWOTeXHlroXCTGkp6qUqytbtWkxQaIwcYKTOMcrOOwsG80VlwtK8Boqeouefky
	9E2e8Bukg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ktv-00031u-UT; Thu, 27 Feb 2020 15:16:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Ksl-0001wm-74
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:15:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 746D830E;
 Thu, 27 Feb 2020 07:15:19 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DEDA43F7B4;
 Thu, 27 Feb 2020 07:15:18 -0800 (PST)
Date: Thu, 27 Feb 2020 15:15:17 +0000
From: Mark Brown <broonie@kernel.org>
To: tangbin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] zte:zx-spdif:remove redundant dev_err message
Message-ID: <20200227151517.GC4062@sirena.org.uk>
References: <20200227150701.15652-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
In-Reply-To: <20200227150701.15652-1-tangbin@cmss.chinamobile.com>
X-Cookie: Edwin Meese made me wear CORDOVANS!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_071523_372476_EA2E479A 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, jun.nie@linaro.org, perex@perex.cz, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8416088473895935706=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8416088473895935706==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jousvV0MzM2p6OtC"
Content-Disposition: inline


--jousvV0MzM2p6OtC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 27, 2020 at 11:07:01PM +0800, tangbin wrote:
> devm_ioremap_resource has already contains error message, so remove
> the redundant dev_err message

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--jousvV0MzM2p6OtC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5X3QQACgkQJNaLcl1U
h9ClgQgAhVigaSedyPLajRpUX2vIOrqhnhTyoVj19iSU3QJ1uooXc/UR/CSyoPqA
cAz7Zl8hPiUmn4OaNu6331KZE6ihk5m19Qmw0KUoSvR5GqbJ5gIRwoEYeVeeBiZf
uB2oaosHLC0Y+f9rRdZIyj0jIBRC+aHcJX0l4Pjw1QMfilofa+LGhYa2/WUGexHp
0WrgNwrjSgAWDm5MN3xeR4GVd2u8cIKnmomA3u13VJDfAlIgNJCm+u9IKcteYc8W
m3BywhwFNs76Kbh9uqxWV6jhHdFok3McPs42ZgO7Sj7MOTZm8Usp6aqhCjesVVwX
hb5zdSpVV2CkMeQ9lz6oiDDjHjs2Fg==
=RASF
-----END PGP SIGNATURE-----

--jousvV0MzM2p6OtC--


--===============8416088473895935706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8416088473895935706==--

