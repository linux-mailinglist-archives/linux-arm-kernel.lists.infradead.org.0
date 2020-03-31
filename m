Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE49199BA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U/XJibDpxeLDQsgpDPf7fyF+n4jqpUiEw1KC5JGllb8=; b=MQw4nQ+blC0oDZ9VtMrTJXidg
	iJ4doyqPxInFVHth2fZtgxKAXFbRxLFsk/MkdubfC/+dO4HT8t7/sMFfXzzowJ33HxJPBwU/kennj
	RPq3PkBpiaTLapnYhBjCg3z4rvHGfov7tY/8m4GeIAiCzW5VBNtqoWy0n9W8ifi8lX/Vlm1RVQR2i
	HKJIGpV0tD/23yjZ/d1xq8wVkNV+AncJV0uD26T6jJpvXld/lywsugICMOZjElrBrAk8m0BQjDULG
	j+inRGVmUa6xvrfuNxvPA0J06oZuXXifhIJhAHZgVTy7dTpYzmxUl+4xF1ctYW1fjSRgBtVp1oLiO
	jAIek7y7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJo7-00056r-29; Tue, 31 Mar 2020 16:32:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJnl-00055x-S6
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:31:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=g4CrkrgZhBAaau6MOzcIseuPcUbmd45Nq4iU097uRwI=; b=e14MTQkDeiC4eJc3766VnZoYqS
 dMQLAJXhpgpZj2rGY4W7fG9tm6ODxVbZN8pS/Pv0uokf22sAmwtv3N0AlZPoNdvIL/I3yFUbVtOIK
 0KMRa8T0p/uCdKjZ5vWoCvpJ23hca/XrHuYkeyXoK5eM8ItgZRUpLUKVLKJplhs3gm1aXEG8YNQhZ
 X1PpTVgSTvEDj9LtHk+/KyW64y6pWOrtJFgnsYtFcTwR5oIF4oYSN5b6jKRXhRMLWKKP4Q21OkWEx
 iaptseKpT+ikvWNj5iMWGRxW/Fm9VRQ92GcwRu44ADM8Nea6ymHf4usSK+6ulMlV02rOo/HEZonrz
 2XUl4JIw==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIhp-0004zY-Bk
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:21:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28BB431B;
 Tue, 31 Mar 2020 08:21:31 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9D9903F71E;
 Tue, 31 Mar 2020 08:21:30 -0700 (PDT)
Date: Tue, 31 Mar 2020 16:21:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 1/5] arm64: bti: Support building kernel C code using BTI
Message-ID: <20200331152129.GF4802@sirena.org.uk>
References: <20200327192107.18394-1-broonie@kernel.org>
 <20200327192107.18394-2-broonie@kernel.org>
 <202003281348.B5ECC9DB2@keescook>
 <20200330113300.GD4792@sirena.org.uk>
 <202003301105.37A7CE7@keescook>
MIME-Version: 1.0
In-Reply-To: <202003301105.37A7CE7@keescook>
X-Cookie: It's later than you think.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_162134_048612_845B0DF1 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-4.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1887327036008024566=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1887327036008024566==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f61P+fpdnY2FZS1u"
Content-Disposition: inline


--f61P+fpdnY2FZS1u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 30, 2020 at 11:06:23AM -0700, Kees Cook wrote:
> On Mon, Mar 30, 2020 at 12:33:00PM +0100, Mark Brown wrote:

> > I feel better about adding the extra dependency than feeding an option
> > to the compiler that looks wrong like -mbranch-protection=+bti (more
> > BTI!) but ultimately I don't have strong feelings either way so whatever
> > Catalin and Will prefer.

> Cool cool. If I end up with a use-case for stand-alone BTI I'll take the
> responsibility to sort out the future patches to support it. :)

It turns out that we also need to explicitly force
-mbranch-protection=none for cases where we have PAC disabled for the
kernel but userspace support (configuring the pointer auth for userspace
can end up causing pointer auth instructions in the kernel to start
doing things we're not ready for) and at least GCC doesn't like
none+anything combinations anyway.

--f61P+fpdnY2FZS1u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6DX/gACgkQJNaLcl1U
h9Dvtwf/dPyf8P0kvn9XKR1XDzpbe0o0MKbQZlQ3gOyCiV8bubULjWkHYTjixhJW
4jsjLGft8S7R6SgEH5sNDTH34SP5iWR49KSie2anGM6rY9zhCpZWi8R0DckMD0sS
vcQLkyLXBwRBS2r0P3IO/8HUcztXxdJBQ6wPeHRXQozhBohmbMVw76ItcRvyEfAR
he42sGehz9owkXPLE9NJofYPZ5ioDdAYlozHB0BKOCWTmxe2YMB1NtXHO6oUpkI/
UV5aS47TccPVl1fP/Dgutfbg21Ny4BLZFBMDNgpfy/caXuYZTszA18dwcHlLcyu4
IP3cHzQ7djc0ysMFlVUd77eGjyB+Wg==
=5Zbg
-----END PGP SIGNATURE-----

--f61P+fpdnY2FZS1u--


--===============1887327036008024566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1887327036008024566==--

