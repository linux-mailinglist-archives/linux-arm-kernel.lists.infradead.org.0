Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EF04C8A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 09:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PexLAj5CG1YqQ/PWJBAVZ3WxJ62kQMUMe0lcDT9HKqE=; b=ik4a7moGR2+GPb
	5lmpok6H5hzWsDC/SSaUrqzQMXDw/4IZwjuChyxSHmrHBPWqVtnM2iLVD6tQ+6ABxszU1K4rlpzd2
	qvFqU+PsRtRtpRC4gblD1ua3NIFn4/FilJzo2PI3kIySwZ6QiQ5qNvWbPXMO1iuAJtDk2mu5pNfij
	9hCqXxl8mRhSeJC8gaHegTO/p21mLdYjotXnnomki0c6Np/XSFoJwNSA0CAWwM4oVMnZmSXyjQof0
	lLfvbzlG7GyTWuaZ5hEsUZEnUv1WmLfAExOSvFD4UwzBMmGIY1IO7jSAcZDaZe9w5tgs+qJhR1jHb
	hHelXTZXveocQ8aLw3Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrn2-0005mF-J7; Thu, 20 Jun 2019 07:47:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrmp-0005lP-FA
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 07:47:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F1BF344;
 Thu, 20 Jun 2019 00:47:08 -0700 (PDT)
Received: from brain-police (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 191683F246;
 Thu, 20 Jun 2019 00:47:04 -0700 (PDT)
Date: Thu, 20 Jun 2019 08:46:58 +0100
From: Will Deacon <will.deacon@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: defconfig: update and enable CONFIG_RANDOMIZE_BASE
Message-ID: <20190620074640.GA27228@brain-police>
References: <20190620003244.261595-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620003244.261595-1-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_004711_551747_65346ECF 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, ard.biesheuvel@linaro.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, broonie@kernel.org,
 Jagan Teki <jagan@amarulasolutions.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nick,

On Wed, Jun 19, 2019 at 05:32:42PM -0700, Nick Desaulniers wrote:
> Generated via:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make defconfig
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make menuconfig
> <enable CONFIG_RANDOMIZE_BASE aka KASLR>
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make savedefconfig
> $ mv defconfig arch/arm64/configs/defconfig

Hmm, I'm in two minds about whether we want this on by default. On the plus
side, it gets us extra testing coverage, although the /vast/ majority of
firmware implementations I run into either don't pass a seed or don't
provide a working EFI_RNG. Perhaps that's just a chicken-and-egg problem
which can be solved if we shout loud enough when we fail to randomize; we'll
also eventually be in a better position when CPUs start implementing the
v8.5 RNG instructions (but don't hold your breath unless you have an
unusually high lung capacity).

On the flip side, I worry that it could make debugging more difficult, but I
don't know whether that's a genuine concern or not. I'm assuming you've
debugged your fair share of crashes from KASLR-enabled kernels; how bad is
it? (I'm thinking of the case where somebody mails you part of a panic log
and a .config).

Irrespective of the above, I know Catalin was running into issues with his
automated tests where the kernel would die silently during early boot with
some seeds.  That's a bit rubbish if it's still the case -- Catalin?

Finally, I know that (K)ASLR can be a bit controversial amongst security
folks, with some seeing it as purely a smoke-and-mirrors game with no
tangible benefits other than making us feel better about ourselves. Is it
still the case that it can be trivially bypassed, or do you see it actually
preventing some attacks in production?

Sorry for the barrage of questions, but I think enabling this one by default
is quite a significant thing to do and probably deserves a bit of scrutiny
beforehand.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
