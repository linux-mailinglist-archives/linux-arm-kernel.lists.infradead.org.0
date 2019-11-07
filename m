Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AECDF31C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:48:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n3dml/tGUUbglhT4SkJru3DZI8sGt1R1rBzR1DC+TTo=; b=BCUeg+zUGynTD7FJqGEblhX4H
	dY89L9htS1wv0L65NSEMHTOLy8VDinbZJNO6Z378KszutrYXAlIG2koQDT3YFpvr/c79ZXUUJH7Om
	yToWXRPTwJw5YcdPSZj9RVo6zXGJcrbt9r3v6wAVx8uyeQWEIT1okuVdHtzSMRrFE7+GayFdPzmeS
	8ruwxDxM2EgxnggO9E0FNR+ec12UURgM/42iuS+wa+7+flgbuhvihqqHszLDJy3xtMKAHZPwUpCC0
	BP8LpQaa5R9KzUztwhFZXPO13tuvt4z7KXU5hwFNDuOXBpzYAo7PJYgXx3BPogl0wlYcajPCB6qVo
	/mTrXTCyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSj58-0007md-IZ; Thu, 07 Nov 2019 14:48:18 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSj52-0007m9-Tl
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:48:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a7gOmIg/VAKNIRqQ5COcR/jUmBqhm+5Inr6IICCW2QQ=; b=MimWgVZsXPfP5ALwYoHYFpzv3
 PZOdf83pN+zkPdGCXA2MrARVzz4FWwzExKPxnQr6ier0sTEs/LhqxMdoZtiedHIHWo/D8EUXajZPl
 /gZkC2YFXrC/R2nMX4r1uGfy8Y9Ogp9eNRqSR2wuuAd1CCia1M8wn4llagnq7E8frLWK0=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iSj50-0004Vj-AP; Thu, 07 Nov 2019 14:48:10 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 86C8B27431AF; Thu,  7 Nov 2019 14:48:09 +0000 (GMT)
Date: Thu, 7 Nov 2019 14:48:09 +0000
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v7 3/4] arm64: Don't use KPTI where we have E0PD
Message-ID: <20191107144809.GH6159@sirena.co.uk>
References: <20191106130052.10642-1-broonie@kernel.org>
 <20191106130052.10642-4-broonie@kernel.org>
 <05bafb8a-9019-701c-f744-a8d014771b87@arm.com>
MIME-Version: 1.0
In-Reply-To: <05bafb8a-9019-701c-f744-a8d014771b87@arm.com>
X-Cookie: I've read SEVEN MILLION books!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_064812_958125_35D2DD0A 
X-CRM114-Status: UNSURE (   9.23  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8369321334066919760=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8369321334066919760==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dDnEQgWzhgf+8aPe"
Content-Disposition: inline


--dDnEQgWzhgf+8aPe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 07, 2019 at 12:01:10PM +0000, Suzuki K Poulose wrote:

> > +		if ((ftr >> ID_AA64MMFR2_E0PD_SHIFT) & 0xf)

> nit: You may use the existing helper :
> 	cpuid_feature_extract_unsigned_field(ftr, ID_AA64MMFR2_E0PD_SHIFT)

Actually, the name of the helper is so verbose that it's makes
formatting things into 80 columns hard, you end up with something like:

		ftr = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);
		if (cpuid_feature_extract_unsigned_field(ftr,
					ID_AA64MMFR2_E0PD_SHIFT))

which is awkward.

--dDnEQgWzhgf+8aPe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3ELqgACgkQJNaLcl1U
h9C1Awf9FKWM9HYaebj7oTdOpM+2Tu3Miw6JsUmUT1oOFNmYv87V3DdkhoSxlHl+
RVCE/7R6rAL2RlZqtAFVeAK556DbTsfPotLGyjo102f2kk3FrkD/V9MHQO3MQb9N
Dpfs1Q8AgpO1VOqeBHNOTZ7gulMFWFicCZ1BOj17reK2igYr7aD9e3rQio2WczHH
SOJ2wpKYaGdv1aeQY1kxl4iWBSEc6PswAjKYSHVQ6ySMME31HN1CJP4I9HfWM2cd
O8g3bzT/K5LmFGRh5UufDLu2kPR+rXsf0I8DZtwN/W9FFJdSXFxHhUEdlvsx6WE4
cn0m+0M5NWbLpkFqERODO0qglEwy7w==
=WQp3
-----END PGP SIGNATURE-----

--dDnEQgWzhgf+8aPe--


--===============8369321334066919760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8369321334066919760==--

