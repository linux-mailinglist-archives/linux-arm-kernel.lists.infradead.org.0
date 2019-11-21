Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9807B105512
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 16:06:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7HDGUORQwCVRmBNaQIhGsnpNinPZ2SCcK5hedyFtMrM=; b=Poh/TBOUKL5D9Iorow6zf2WLp
	dKz5Iosz69eGBjfs0+uDSiqvoww6xk8laSgjFye0/oasqlrWtNUcdlR8e2ieAzJfJaQH9pE5/M3+7
	3/NIITbu1mRdUZNuQK2UBxQlDOEyVXlsVtKg8gmkIhzAmcMpXzAD09hFlR0cvKVmYvzUdgU4iXFwH
	DiveE86+/wzZb0SS2w72ZCxXAzli/8wFXvjsTHWmoyVzWt+H2JN2Oiz8xmKVRNMQCwcy9OCfkbJd9
	7KWQCLXreZTVpSPsTjSdijqX+WBXJNDG8U5JWFxfWZZbGmwrCpBtfFuuMjqKjiC1Za2yLhTYLBei9
	yHkeAP1Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXo2E-0005w5-W5; Thu, 21 Nov 2019 15:06:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXo27-0005vh-CR
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 15:06:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D181DA7;
 Thu, 21 Nov 2019 07:06:08 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 727203F703;
 Thu, 21 Nov 2019 07:06:07 -0800 (PST)
Date: Thu, 21 Nov 2019 15:06:05 +0000
From: Mark Brown <broonie@kernel.org>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v2 13/14] arm64: compile the kernel with ptrauth return
 address signing
Message-ID: <20191121150605.GC4071@sirena.org.uk>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-14-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
In-Reply-To: <1574166746-27197-14-git-send-email-amit.kachhap@arm.com>
X-Cookie: When in doubt, lead trump.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_070611_465768_03248507 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0647221512303298052=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0647221512303298052==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dkEUBIird37B8yKS"
Content-Disposition: inline


--dkEUBIird37B8yKS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 19, 2019 at 06:02:25PM +0530, Amit Daniel Kachhap wrote:

> +config CC_HAS_BRANCH_PROT_PAC_RET
> +	# GCC 9 or later
> +	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)

clang also supports this option, as of clang-8 I think.

> +ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
> +pac-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
> +pac-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> +KBUILD_CFLAGS += $(pac-flags-y)
> +endif

This is going to be a bit annoying with BTI as we need to set
-mbranch-protection=bti too.  This means we end up with type
bti+pac-ret+leaf which is annoying to arrange.  There is the convenient
branch protection type standard which does enable both in one option but
that only enables non-leaf pac-ret so you need to explicitly spell out
pac-ret so you can turn on leaf as well.  I'm not sure I can think of
anything much better than adding another case for BTI at the top so we
end up with something along the lines of:

ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_BTI) := -mbranch-protection=bti+pac-ret+leaf
else ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
endif
KBUILD_CFLAGS += $(branch-prot-flags-y)

with a separate section for the signed return address bit.  It would be
helpful to avoid the immediate refactoring when adding BTI by splitting
things up with a more generic name.

--dkEUBIird37B8yKS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3Wp9wACgkQJNaLcl1U
h9DFAgf9GoIL2JLFoQH4k0+/vq5b1Zqbf6y80m4HYy6HmqMEZdaSwOqU/9+2Ue2X
3f88+TP5P7P0HU1xxYqEbLUeDjMo4F6j3yYSlwk7P/4b/6kpVhYtEPAYsmHSebXh
3GZ37CEYIXD1HdSlPVvFQDRRdlz6KRPRlAR32c0mM8Ld2Ix+jdGVldNrbCCvR+Ru
Jzuvdmt0iPg1lRZmHRH/Foukqet6Py5IExFlQjQcR7LQiYjrgTpkywwAT176uqbS
dvWaXI7QdhFBY+ini8c6L01LcqiyI7bRP3gi/c6lj5/fqWH8z94j3SSjd8FRiD2H
w3snfuYBZbmqXE4V6zKvwkjSxb9vGg==
=sLGg
-----END PGP SIGNATURE-----

--dkEUBIird37B8yKS--


--===============0647221512303298052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0647221512303298052==--

