Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B79B191935
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 19:34:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=50XJ4FTDIgyX555qT5n3h7squ8jMAwAPWeva9qLEpRw=; b=ZmZJ7ShHb5a5bCnv72z5TP7Ba
	ENxzjcrb9w2JVez4lavCLn8MzaQ8oRXqWsNQbs/YPOHTgfHm+u9t85jEyE5SptyI7nviDFGbLxp3x
	v/S5eONC72csQ9ppwYKS48pxd9ANmejFyHgEO/pAfRVKWtZMf+fNxsqiv1vA+DsKe86VixLi6D8r/
	bcyS7Lp3cUSI95RBcmCoGj+CgnCcVG19jdJDUSqWSLtiH/qn4NVqolLFeBhhkEfP25XCTaF4vV10G
	5yhz5plgpqSq8wHV/q88ThFR4DpZfjCI9HjYloAmqO3dyqp2f0nkLnJZ6eUlYAfC+AXl6c3DiTOJf
	nok/1yN+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGoNM-0004zI-7O; Tue, 24 Mar 2020 18:34:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGoND-0004yo-Am
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 18:34:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D220331B;
 Tue, 24 Mar 2020 11:33:56 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 56C353F71F;
 Tue, 24 Mar 2020 11:33:56 -0700 (PDT)
Date: Tue, 24 Mar 2020 18:33:54 +0000
From: Mark Brown <broonie@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64: head: Convert install_el2_stub to SYM_INNER_LABEL
Message-ID: <20200324183354.GI7039@sirena.org.uk>
References: <20200323123336.8728-1-broonie@kernel.org>
 <CAKv+Gu-wX+gN+2YiK+PmpLe=+wKBE08yXGDNpwrgcS+eS6hX4A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu-wX+gN+2YiK+PmpLe=+wKBE08yXGDNpwrgcS+eS6hX4A@mail.gmail.com>
X-Cookie: I feel ... JUGULAR ...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_113359_415535_B7AA9653 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6076213279487012263=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6076213279487012263==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+PbGPm1eXpwOoWkI"
Content-Disposition: inline


--+PbGPm1eXpwOoWkI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 24, 2020 at 07:19:56PM +0100, Ard Biesheuvel wrote:
> On Mon, 23 Mar 2020 at 13:33, Mark Brown <broonie@kernel.org> wrote:

> > -install_el2_stub:
> > +SYM_INNER_LABEL(install_el2_stub, SYM_L_GLOBAL)

> Shouldn't this be SYM_L_LOCAL?

I think it could be, yes.

--+PbGPm1eXpwOoWkI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl56UpIACgkQJNaLcl1U
h9BOHwf+KghVipTgE+r4crM1W4zM+CvwJTFH/Ssml1+HcCJkPwO+/kranb6WwYjO
/HIo6iXMp8WNnGvpFtnKzJ7t/WputwxvgqHsNO3xagAX/Xzc8kZSKXt137ytnopt
dprIYFuwuBaDY4fm3CTZo8ZeJOP1i44loPb8bboucdGvVEediJjWTVlP+XAFK+jU
uHexG+92DcNGA0RTkch6xyAjneZ8OfrgHRk/vbqoTfwCdO4OicmjXOIozwp+Z7Kv
cKPZEJeIZR2TCYXNINWBxQY3cB8cHLiKa19wFRKU927dDp6HBd1Fj8p/TGeBcPqw
C+NWJhQaNXdkP7Ardxv0ksEHJ5BBhw==
=I+9r
-----END PGP SIGNATURE-----

--+PbGPm1eXpwOoWkI--


--===============6076213279487012263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6076213279487012263==--

