Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5071DAAFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 13:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9vR+te/+KnnoadG412YwOENuj7NlkCeP/U2oscyIg2s=; b=iB9+AEZrqDxxDqM8uox92mdTZ
	uEVtOvT9V6M8F/jvvIoHolKBlv5R6RScfWT2I2rH+qu0DMqUH/u1aLc7mx79gmq0OfgZcYHHdif3S
	F7hA/E/GEmVDUP55dV9UHewsT+qqQ5PduMuphRyC9OL+TZZIf7d5xDll6L43AKKoG8vXPJj+0kPQv
	zU0CmAcC8Ckzg161A5Gvf32R9ZrUGNt/P4n5V8J/OZrl3jl9uRkv0t2M2blQZoYXNKiXqHWjOvH6d
	zR+N4u83R826UzUpn6avb3Xk08VOUcA4B5lymEfONhxdIOoGujwWFy+0vMYez0rGH7faxsM3UgcXq
	Q23B5X1BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL3hB-0005ZQ-Sx; Thu, 17 Oct 2019 11:11:53 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL3h1-0005Yq-Ud
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 11:11:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hu92kkg/rOG7H1uhawHnfkVXpSc0yt/8yzcgxVqHn6M=; b=KfPKdlCJZtg1+QqDDMACBohJ4
 nOwvwQT3jnWe3ml7rxiHpiVcbuGR+fqnkoG5zya3ECIaBTvmCLivMwizmQGeeUucAcJ60vhQtDoRL
 bnGGNVwtaW4lV4rx5OMTfMLV+okrJpZxuEVrgZc1ENumUN71ugIMVxf5K9kTcImU/KsWI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iL3gv-0000mV-PU; Thu, 17 Oct 2019 11:11:37 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 200EC2742BAC; Thu, 17 Oct 2019 12:11:37 +0100 (BST)
Date: Thu, 17 Oct 2019 12:11:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Yuehaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] ASoC: atmel: Fix build error
Message-ID: <20191017111137.GB4976@sirena.co.uk>
References: <20190928081641.44232-1-yuehaibing@huawei.com>
 <c0a0ddc9-5ae4-8b5e-1d77-b322970651bd@huawei.com>
MIME-Version: 1.0
In-Reply-To: <c0a0ddc9-5ae4-8b5e-1d77-b322970651bd@huawei.com>
X-Cookie: Shut off engine before fueling.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_041143_989069_A69685B7 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.belloni@bootlin.com, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, mirq-linux@rere.qmqm.pl,
 tiwai@suse.com, codrin.ciubotariu@microchip.com, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2521249130412756682=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2521249130412756682==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Pd0ReVV5GZGQvF3a"
Content-Disposition: inline


--Pd0ReVV5GZGQvF3a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 17, 2019 at 03:32:01PM +0800, Yuehaibing wrote:
> ping..., this issue still in linux-next 20191017

Please don't send content free pings and please allow a reasonable time
for review.  People get busy, go on holiday, attend conferences and so=20
on so unless there is some reason for urgency (like critical bug fixes)
please allow at least a couple of weeks for review.  If there have been
review comments then people may be waiting for those to be addressed.

Sending content free pings adds to the mail volume (if they are seen at
all) which is often the problem and since they can't be reviewed
directly if something has gone wrong you'll have to resend the patches
anyway, so sending again is generally a better approach though there are
some other maintainers who like them - if in doubt look at how patches
for the subsystem are normally handled.

--Pd0ReVV5GZGQvF3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2oTGgACgkQJNaLcl1U
h9DLQgf/bpKGur09JNKSVcz4fizyK0a7jmcFtSjI2sF5Yi7dqr8rGWgMJuQ6lXnd
yKAo3kNfJkakIcpLAe+5JFWjvLSfOPdlbn+pvA9DO30LWUU9yfZpiwJh8DCCmzHf
VtLwbaYEn2Lz3+7pfSQ+vOjqA07HaBXLvpgu+eL+HcGCAQQ0xiBSEBW0/X1k6Nzi
raR3jYrrFXeqn03GlAdjfcwa0MOx3HO134aU2hDCRLoi0DZsi8mjsEmi5eTW+lTg
BSmJmUTgMBX0EKsscrwJnR66qX+Slx9d2pL0DO48viIRUqz84Ro0I3w6XlBT02Fi
YCa34N8RkRi0nIf++MH8GlzSZYp67w==
=StwZ
-----END PGP SIGNATURE-----

--Pd0ReVV5GZGQvF3a--


--===============2521249130412756682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2521249130412756682==--

