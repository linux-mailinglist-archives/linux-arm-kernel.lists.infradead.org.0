Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D221C7042
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1mPIO4MIUsQ2j/V1cCKXxlKZyhBVnYaGjyVvNeRmcc=; b=QgOCaC5uMP62sX
	nsk5cmnFYCizKYi69y5d6dQugfm77TsLufxpveCnkr8M9yO//6/Pfd7N6lV+vuajF4lRp3LZRs92M
	RCnDVa3iAlCtOKMi6rfIJIe6wFq8YtoNnBpR+5UEgQxdIlXObKOwlsCWFduZAnt00+WBH/F6TRo8U
	rAdU7HJoMWP2l8vLh6lyrb/bVzPRUSEfNjUktIbnyUVWhmDToFQOeougcYgcKkzpA8MPvdPZn0MUj
	2mGaQQhRtNYZQdzciTzorDeTRwRlUbnZpkyqiWbsgt4A99e1rEdO/3OxeT31+9EZbE+bv33KCHg4O
	XoTvIZ0KhaLDwp2CkcrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJ90-0005f1-Dk; Wed, 06 May 2020 12:27:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJ8s-0005eR-Tx
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 12:27:16 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90F82206DB;
 Wed,  6 May 2020 12:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588768034;
 bh=Rl1luRGfQ8PqdzDlKahmue4LjgKeIjeb919zln3Ywos=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gJn5mB5GGokGcVyrXOoN5D5tBfpQCI9CPJyBivfO5ps8GPIo1zw2QXIab4ucKXKwg
 dBvIeBwMV1/b9eNv63Y9ENg64QXH+CfeieaWU+Q64qBBE23NpJbmVtlzSZe4dZ8uyA
 494y4y9mY9F5odAACxTqE6q4/nnVnDfFm3JlqFIc=
Date: Wed, 6 May 2020 13:27:10 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200506122709.GE8043@willie-the-truck>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-3-broonie@kernel.org>
 <20200505145642.GA24239@willie-the-truck>
 <20200505151806.GG5377@sirena.org.uk>
 <20200505160852.GF24239@willie-the-truck>
 <20200505172100.GI5377@sirena.org.uk>
 <20200506071025.GA7021@willie-the-truck>
 <20200506104152.GA5299@sirena.org.uk>
 <20200506105006.GC8043@willie-the-truck>
 <20200506114353.GB5299@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506114353.GB5299@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_052715_006859_A75B8227 
X-CRM114-Status: GOOD (  27.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 12:43:53PM +0100, Mark Brown wrote:
> On Wed, May 06, 2020 at 11:50:06AM +0100, Will Deacon wrote:
> > On Wed, May 06, 2020 at 11:41:52AM +0100, Mark Brown wrote:
> 
> > > Well, the theory behind the warning is that if the compiler is emitting
> > > code suitable for the features described in the note then it should
> > > always emit the appropriate annotations so the warning is more intended
> > > to be telling the user that the code is trying to link in code that's
> > > not built properly and will most likely fail at runtime.  In the current
> 
> > Hmm, I suppose, although it's a bit belt-and-braces given that we've got
> > the right options in KBUILD_CFLAGS. What about:
> 
> We know we're doing fine but the warning is being emitted by the linker
> rather than something in the kernel tree and it doesn't know what the
> users are or that they invoked their compilers correctly.
> 
> > 	"Your compiler is not emitting '.note.gnu.property' sections: forcing
> > 	 support for BTI in the linker, but check your CFLAGS and consider
> > 	 upgrading your toolchain."
> 
> > I'd usually not be too bothered, but having run into this yesterday and
> > not understood the problem, I'd like to save somebody else from puzzling
> > over this if we can!
> 
> That's a bit C specific - CFLAGS isn't going to apply to other
> languages and binutils could be linking pretty much anything.  TBH I'd
> expect one of the common cases would be assembler given the pain
> involved in generating notes.  Possibly "build configuration and
> toolchain" instead but that's also pretty vague so might not help much
> with people being confused?  Either way any diagnostic change would be a
> binutils change, I've flagged this up to the toolchain people
> internally.

Ah, that's where we're talking past each other: I was only thinking of
printing this from the Makefile after seeing the warning from ld. I
completely agree that the stuff I was suggesting is kernel-specific, and
sorry for not being clear.

That said, without a way for the linker to force bti *without* generating
the warning, I'm not sure how we could implement this sensibly. The warning
also seems only to be generated if some objects have the BTI property and
others don't; if all objects are missing it then it's quiet.

Maybe we could detect that the compiler doesn't generate the property
section, and then avoid generating them in our assembly files? i.e.
wrap '.macro emit_aarch64_feature_1_and' in a #ifdef CC_HAS_GNU_PROPERTY
... #endif block?

> I do think that this will be a lot easier going forwards - hopefully the
> problem with the toolchain not generating notes is not going to be an
> issue by the time people are actively deploying BTI (people using GCC
> are going to need a shiny new version anyway and I don't know how
> widespread the clang versions that have issues are), and if people do
> start running into it then it'll be possible to usefully search for the
> error message online which should help a lot.

I think we'll get reports of people running into this (I hit it with a
defconfig build), so just looking for an idea of what we might do if/when
that happens.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
