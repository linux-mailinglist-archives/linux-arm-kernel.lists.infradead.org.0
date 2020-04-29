Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A797E1BD91D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VteBnlddniJv8Pe2AThu5ADH5rH191CKRZFlvVCpxWM=; b=qattIucXu52dj5xovt3N9pZ1d
	R3SoylxF6P2eKB601tVHEpxeBQfIv9D8pH72YPXd0iRzXscoMmpEmbydPYVbCZ9Kmdeu364EAFBUr
	6ZhajatfQ5qevX7k2QH8XFF0pzsD7DFQEiayonLoxCZggJwVK92u/8bG8oSUlm7TuiugrrbJPhsci
	CHmPg8PyOaTmvlot8zIFCSX8qI+H76Wb0SYFCqHK8j55EjZT5lTknqlDZ9klkTFJ4Tsm0j9A3UvIP
	d9qqLIu2hgb++v6Rb/v47Ck7UQUsrchXnp7eWKHqYuT8w4y3ElUwkPYcYOJ5VkE5axJKeS91NeMEa
	o75B0+wtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjfm-0000J5-0s; Wed, 29 Apr 2020 10:10:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjfd-0000Ic-5O
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:10:26 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEAB62074A;
 Wed, 29 Apr 2020 10:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588155024;
 bh=zjPlwiTGEXdu0L6uZ1Vx/w5JsoTQxwRjjGjqRA1KmKc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p3M9LMT+gpSvO5sXnRI+kvjQ4YjEwBReJfGOy6tOV+zqoRxrxUnsvBiOwXfp3f902
 K/eXya5ReYKr1oHhkBgbVQx6jTtT9VshgXwvAqr8AOFU8HSzUtKHfugAQKvCHQuRkG
 j4ISeJ2t2w762h81WZeq47clPRJqauQBLuex2Zas=
Date: Wed, 29 Apr 2020 11:10:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 04/10] arm64: Set GP bit in kernel page tables to enable
 BTI for the kernel
Message-ID: <20200429101021.GD4201@sirena.org.uk>
References: <20200415130750.18645-1-broonie@kernel.org>
 <20200415130750.18645-5-broonie@kernel.org>
 <20200428172432.GB18257@gaia> <20200428180353.GN5677@sirena.org.uk>
 <20200429074012.GA29143@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200429074012.GA29143@willie-the-truck>
X-Cookie: I know how to do SPECIAL EFFECTS!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_031025_227038_44366270 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1937266200297952391=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1937266200297952391==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+B+y8wtTXqdUj1xM"
Content-Disposition: inline


--+B+y8wtTXqdUj1xM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 29, 2020 at 08:40:15AM +0100, Will Deacon wrote:

> FWIW, I don't agree with Catalin here (I realise this is unhelpful ;) and
> would much prefer to have separate config options for user and kernel. I
> also think it would be worth doing this for pointer auth too, since at the
> moment we have nonsensical dependencies such as user pointer auth depending
> on VHE if KVM is enabled.

OK, I think the best thing for me to do for the time being is leave the
separate config option until you two sort things out one way or the
other, it's easier to merge them than split them.

--+B+y8wtTXqdUj1xM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6pUo0ACgkQJNaLcl1U
h9CE9Qf+KJpyLqwNGNYtVk7r5IAdbYivJWJo2bhMdKedDhfi1dzlgnBQxmSnVFUF
+ojY7dpr9g1Xi/iJgGcXvKr9u5/fQZKvntWEOV5ldrb4qKERmkGYfGE7aZ1R23dv
SoIGFMQlTOw2h3I2I1oP0YRoo7n6UZSRN3Pu2XmkRGH88sX0DgJFRGn2VUbARmly
XvEIRlOPfY73X6grT5CzO0Vci612B9pDk/Xl9xZNDa42mUBSN7qcuMdhxScbuF9z
b77HSKRejzMSfb1r6smRcXjzdV9oU6iNcOzP0ezqRLZFx6ay8262IakhYiEfG5NR
vfz4+ULtMEGSGMnOPEqdB5yzlJH7Ew==
=nfhn
-----END PGP SIGNATURE-----

--+B+y8wtTXqdUj1xM--


--===============1937266200297952391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1937266200297952391==--

