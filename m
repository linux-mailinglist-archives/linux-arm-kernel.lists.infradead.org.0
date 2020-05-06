Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651301C74EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUqA5lHxP7moqYpo0kwvYVZKuKvamWBI+ggCrZBxz4Q=; b=TL7MbwYFa0FGXY
	s1XtP2ORWkU4rh2N0a7HZHohzXHv+dfxfJ0ay96gaLXxTeMhktb2xkgArLkDfYykvGarRnm0JM2Gh
	cIcf6OFbCeA1runSKXkjGwVWnDDDk2r78qvvscvhDMQXmxL8jp06wVxsJdc7sKzORwSvvmsJrcpcS
	hPE9919M/NUCWARPM3a++Vc9M1G8r/j8maskoyP+kIb1uu2PNxhybZpNaPsKNFHZDCUVt8QxdC4Cm
	bRFGRSyk3nywd3vomOA2hBfDKIZd4zvSx/Z92mnHKxiilPSlwX+hzirvbeZ2jV7Nw4iheaDq6hsZV
	8GQzmXN+XBJxxRDsXUIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWM1n-0005wX-8H; Wed, 06 May 2020 15:32:07 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWM1f-0005vS-Mw
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:32:01 +0000
Received: by mail-ot1-x342.google.com with SMTP id c3so1682293otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 08:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HGob2W+jtJ1wxr5TyUwXRK5f3ACyssA5mwEkdojnzSc=;
 b=ft34+Tuj1/EXggzTdLuevyBjykqE8Mo6BrUQeaVcw0R26trAW03x2IpOBwVX+aWtN+
 zenPFzWx92ITkR0k2zz/kScA82yz+x+GJpQQ9bjvzKrl+llIb59Dw88EiShplEqNKGf5
 QV7Zgmr9AiRNNRkhp257Q9EbG7UA/k8IA8smqoPoLeMlZc14E9IEsR446khqN8j0PzOz
 e3enOxOtzg7qzTWl/NJv4tgCCBvCOMn0EwZl57xNr4a7I9QvqhNlM8UHOyPCxZP/4fu9
 32fEWgM1q4dPoIPW9Mp/d3xx/l1PdjgM4oJGfPC+ZWvtFbKFgWr9sHtxu9ffO85zcG4X
 50oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HGob2W+jtJ1wxr5TyUwXRK5f3ACyssA5mwEkdojnzSc=;
 b=TgknLbS2Fod0rSpf803RCj0fnmeEgyYUTgqFCUK9NSMPh8o6e1lDu3Wd3vs8t6PJ6Z
 ZHt7cdhiA9B5Nx3l3aFHiD8JvpDTcxLi2O27zWvtCYB2jU/Dn2rRRRY4wOVJ3mXebV/g
 E1Q77MqlxwiJr22/YC5eYPM65rTYs119zKRLLOvlMeIv0gZSxrEzXlDr2kmwu8YgQYPr
 lXcHiDvkQuZ0UTi86SBooan7ETLKtfQywGGUqZhnTqXJpzRX9rqMnvbr42Uth1rW5am6
 hQBTpjvgJMh6DsbkhBe7LUK/rZZJ6IqSptgUy3ucjmTs4IAd49dyaJx+7+NmbYy+StQ1
 2KkQ==
X-Gm-Message-State: AGi0PubmUbmP1VknAT4BHWZ2No3i1Z02z9qkhdKzVLgD0C/HEd0qaO9H
 8yQx+tzeJ1WHOhutfO2Upo4=
X-Google-Smtp-Source: APiQypLu+rugV5iMHAMDUMStivxbyqze+0IvgUKVeYPMJwAz9l+XPCxlS3esB3VFosY4NfT4vVb8qA==
X-Received: by 2002:a05:6830:1d9c:: with SMTP id
 y28mr7465935oti.280.1588779118864; 
 Wed, 06 May 2020 08:31:58 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id m189sm600819oig.12.2020.05.06.08.31.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 08:31:58 -0700 (PDT)
Date: Wed, 6 May 2020 08:31:56 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
Message-ID: <20200506153156.GA1213645@ubuntu-s3-xlarge-x86>
References: <20200505141257.707945-1-arnd@arndb.de>
 <20200505142556.GF82823@C02TD0UTHF1T.local>
 <20200505194243.5bfc6ec6@blackhole>
 <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
 <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_083159_758509_8BDB1E83 
X-CRM114-Status: GOOD (  27.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Marc Zyngier <maz@kernel.org>, AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Kees Cook <keescook@chromium.org>, Torsten Duwe <duwe@suse.de>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Julien Thierry <jthierry@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Torsten Duwe <duwe@lst.de>, Andrew Morton <akpm@linux-foundation.org>,
 Ionela Voinescu <ionela.voinescu@arm.com>, Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 12:22:58PM +0200, Arnd Bergmann wrote:
> On Wed, May 6, 2020 at 5:45 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > On Tue, May 05, 2020 at 07:42:43PM +0200, Torsten Duwe wrote:
> > > On Tue, 5 May 2020 15:25:56 +0100 Mark Rutland <mark.rutland@arm.com> wrote:
> > > > On Tue, May 05, 2020 at 04:12:36PM +0200, Arnd Bergmann wrote:
> > > > This practically rules out a BE distro kernel with things like PAC,
> > > > which isn't ideal.
> >
> > To be fair, are there big endian AArch64 distros?
> >
> > https://wiki.debian.org/Arm64Port: "There is also a big-endian version
> > of the architecture/ABI: aarch64_be-linux-gnu but we're not supporting
> > that in Debian (so there is no corresponding Debian architecture name)
> > and hopefully will never have to. Nevertheless you might want to check
> > for this by way of completeness in upstream code."
> >
> > OpenSUSE and Fedora don't appear to have support for big endian.
> 
> I don't think any of the binary distros ship big endian ARM64. There are
> a couple of users that tend to build everything from source using Yocto
> or similar embedded distros, but as far as I can tell this is getting less
> common over time as applications get ported to be compatible with
> big-endian, or get phased out and replaced by code running on regular
> little-endian systems.
> 
> The users we see today are likely in telco, military or aerospace
> settings (While earth is mostly little-endian these days, space is
> definitely big-endian) that got ported from big-endian hardware, but
> often with a high degree of customization and long service life.

Ah yes, that makes sense, thanks for the information and background.
Helps orient myself for the future.

> My policy for Arm specific kernel code submissions is generally that
> it should be written so it can work on either big-endian or little-endian
> using the available abstractions (just like any architecture independent
> code), but I don't normally expect it to be tested on big endian.
> 
> There are some important examples of code that just doesn't work
> on big-endian because it's far too hard, e.g. the UEFI runtime services.
> That is also ok, if anyone really needs it, they can do the work.
> 
> > > I suggest to get a quote from clang folks first about their schedule and
> > > regarded importance of patchable-function-entries on BE, and leave it as
> > > is: broken on certain clang configurations. It's not the kernel's fault.
> >
> > We can file an upstream PR (https://bugs.llvm.org) to talk about this
> > (although I've CC'd Fangrui) but you would rather the kernel fail to
> > work properly than prevent the user from being able to select that
> > option? Why even have the "select" or "depends on" keyword then?
> 
> I definitely want all randconfig kernels to build without warnings,
> and I agree with you that making it just fail at build time is not
> a good solution.
> 
> > That said, I do think we should hold off on this patch until we hear
> > from the LLVM developers.
> 
> +1
> 
>       Arnd

Glad we are on the same page.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
