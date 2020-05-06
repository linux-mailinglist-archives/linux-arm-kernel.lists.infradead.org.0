Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1055B1C666A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 05:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxxcvPd+nwr8KMZxMpkPf8SkDEsk+rphF1ebOjeQNfM=; b=RyCT5IrUExaACW
	URCIAFwQEG1jpwFmmYBunEACnvVF3UTlFcCIoIylQFVaGcv4QcnbDJ9++UgXX/Rc5sKVhTi9HwQVw
	RLA1ABC8QWp4kAazl8dgihmrTLHiWuyQk1AgV8qip7O+6YR+c2tWhlQirhRdaWbxU+rudv00g7Xfi
	IwflJLmskL2EO4m+dBo+w78R6OMbE/5oIB6FcZ0kXs9Scx4gIBPwkomxxRsqqrRN9jxI920/Rt2fb
	Vkr/Cmw+hraLmwuOxQaCvuGwoPzd+wOhKCAxlvewPA28O18H8e0NPdadrST0ETDzJJJV3Rd57ZhnH
	LdOQYAPBNTS5Pk+M7oaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWB03-0000No-2R; Wed, 06 May 2020 03:45:35 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWAzv-0000Jh-ML
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 03:45:29 +0000
Received: by mail-oi1-x244.google.com with SMTP id t199so527539oif.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 20:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zWB6cWjMNsKtRxqY/kkJuBnxLsHqY4CSraBHoWMjqp4=;
 b=OKN4zkBYDIz62lBDvEf3XM4DOuCpBniwoB2/yAFzUSYvxGBnmfmk4quJbCwxjP8DU4
 xLekmYvvK98w1NXnfe18epulQwaf2+My7yXmRnUncgTNHmX6BQEZFqAgF3JFDGeHWa8+
 Wbau+QfB/sZDYuLIB3bjX1iQJUToyR1I+k0IZkqJm/07hUnUAQQ1vRXD5CJ+h0n/aq+L
 3uf/30GOdRyiYkrNxBtM2huEyCGf5lQYugw3kkdLFna922yF/1J0v3s/y0DXrYoXzVzX
 f9rUeMCQmbgu9sXAYqxrKEs8BEJWpnKOVhsxzZo5g2Pj2d9a0C3KmGNJIMHH4kQRfRLk
 gY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zWB6cWjMNsKtRxqY/kkJuBnxLsHqY4CSraBHoWMjqp4=;
 b=Q0kIMgVDYu+zZz5HMGRgn3wdybKAb0pmPLzl+68/e2m2iKy4Uv7H7FFH8cfeXk2WWS
 vEc0ZnLUzKudjudVLtrX9wfmGK0WDRrXPS8YOjBBC2BdhDHA6ildQAX8VVSzg4CT4ygx
 GDC4T7aaj8KdvcdGesXqtaAEfytxv5GcDWq5Dt6T/Il+4UGVDj+eSR1aTVdjt5+ZSpWw
 h0MjN6LPSy6rbPoqF05dha9JlHC4iRjvccSja2Usf6apc7cz41xZs1HSg0s0MBlgEo3u
 OUVzqwSWmBa5wN5+b+lIiuw4kSpX3Omki4RBfHrv26W89q8pB4E7ANMgYCo8fqmxcnz/
 MIPQ==
X-Gm-Message-State: AGi0PuZeZX91PJ9G2vUN9g1JttbYq+vYVFqMshnEq34uRihSZYYbxJmf
 z4Xso3TkkWEgnsA957HjqE4=
X-Google-Smtp-Source: APiQypJeHUSXrgoOMLaldrkbNutzLGRo+2lOCXDoyA2v2XT/zC8q/zdCfYxUKlEywfZjTOMCYuVXBw==
X-Received: by 2002:a54:409a:: with SMTP id i26mr1403854oii.50.1588736725456; 
 Tue, 05 May 2020 20:45:25 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id r6sm304439oom.26.2020.05.05.20.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 20:45:24 -0700 (PDT)
Date: Tue, 5 May 2020 20:45:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
Message-ID: <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
References: <20200505141257.707945-1-arnd@arndb.de>
 <20200505142556.GF82823@C02TD0UTHF1T.local>
 <20200505194243.5bfc6ec6@blackhole>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505194243.5bfc6ec6@blackhole>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_204527_738133_1F9377C0 
X-CRM114-Status: GOOD (  30.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, Fangrui Song <maskray@google.com>,
 clang-built-linux@googlegroups.com, Marc Zyngier <maz@kernel.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Torsten Duwe <duwe@suse.de>, Kristina Martsenko <kristina.martsenko@arm.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Julien Thierry <jthierry@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Ionela Voinescu <ionela.voinescu@arm.com>, Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Fangrui, who implemented patchable_function_entry in LLVM/clang

On Tue, May 05, 2020 at 07:42:43PM +0200, Torsten Duwe wrote:
> Hi Arnd, Mark and others,
> 
> this may not be worth arguing but I'm currently fighting excessive
> workarounds in another area and so this triggers me, so I have to make
> a remark ;-)
> 
> On Tue, 5 May 2020 15:25:56 +0100
> Mark Rutland <mark.rutland@arm.com> wrote:
> 
> > On Tue, May 05, 2020 at 04:12:36PM +0200, Arnd Bergmann wrote:
> > > Clang only supports the patchable_function_entry attribute on
> > > little-endian arm64 builds, but not on big-endian:
> > > 
> > > include/linux/kasan-checks.h:16:8: error: unknown attribute
> > > 'patchable_function_entry' ignored [-Werror,-Wunknown-attributes]
> > > 
> > > Disable that configuration with another dependency. Unfortunately
> > > the existing check is not enough, as $(cc-option) at this point does
> > > not pass the -mbig-endian flag.
> > 
> > Well that's unfortunate. :(
> > 
> > Do we know if this is deliberate and/or likely to change in future?

I am not sure this is deliberate, I don't see anything about endianness
in the commits that added this:

https://github.com/llvm/llvm-project/commit/4d1e23e3b3cd7c72a8b24dc5acb7e13c58a8de37
https://github.com/llvm/llvm-project/commit/22467e259507f5ead2a87d989251b4c951a587e4
https://github.com/llvm/llvm-project/commit/06b8e32d4fd3f634f793e3bc0bc4fdb885e7a3ac

> > This practically rules out a BE distro kernel with things like PAC,
> > which isn't ideal.

To be fair, are there big endian AArch64 distros?

https://wiki.debian.org/Arm64Port: "There is also a big-endian version
of the architecture/ABI: aarch64_be-linux-gnu but we're not supporting
that in Debian (so there is no corresponding Debian architecture name)
and hopefully will never have to. Nevertheless you might want to check
for this by way of completeness in upstream code."

OpenSUSE and Fedora don't appear to have support for big endian.

> But still better than cumulating workarounds. If clang's flags aren't
> orthogonal then that's a bug in clang. If I get a vote here I'm against
> it.
> 
> > > Fixes: 3b23e4991fb6 ("arm64: implement ftrace with regs")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > 
> > This looks fine for now, and we can add a version check in future, so:
>                                       ^^^^^^^^^^^^^^^^^^^
> see what I mean? And in the end another line of code you'll never again
> get rid of.

That's a rather pessimistic attitude to have. We've been rather good
about trying to fix stuff in the compiler rather than hacking up the
kernel.

> I suggest to get a quote from clang folks first about their schedule and
> regarded importance of patchable-function-entries on BE, and leave it as
> is: broken on certain clang configurations. It's not the kernel's fault.

We can file an upstream PR (https://bugs.llvm.org) to talk about this
(although I've CC'd Fangrui) but you would rather the kernel fail to
work properly than prevent the user from being able to select that
option? Why even have the "select" or "depends on" keyword then?

That said, I do think we should hold off on this patch until we hear
from the LLVM developers.

> > Acked-by: Mark Rutland <mark.rutland@arm.com>
> > 
> > Mark.
> > 
> > > ---
> > >  arch/arm64/Kconfig | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > > index 4b256fa6db7a..a33d6402b934 100644
> > > --- a/arch/arm64/Kconfig
> > > +++ b/arch/arm64/Kconfig
> > > @@ -151,7 +151,7 @@ config ARM64
> > >  	select HAVE_DMA_CONTIGUOUS
> > >  	select HAVE_DYNAMIC_FTRACE
> > >  	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
> > > -		if $(cc-option,-fies on y=2)
> > > +		if $(cc-option,-fpatchable-function-entry=2) &&
> > > !(CC_IS_CLANG && CPU_BIG_ENDIAN) select
> > > HAVE_EFFICIENT_UNALIGNED_ACCESS select HAVE_FAST_GUP
> > >  	select HAVE_FTRACE_MCOUNT_RECORD
> > > -- 
> > > 2.26.0
> > > 
> 

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
