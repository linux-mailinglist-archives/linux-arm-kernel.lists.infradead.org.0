Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9161C7546
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oPfsh4GhQgGrBQcJ/KgodLHFeMjeLV5CixIpZYpZr90=; b=TaJEtAq4xYh35kAbIm2XnYcTb
	WW9pI1ZGjzzM3S1vjzg2s0i/xY7zKGGRnPKdoO8RUFhDBhCluXypRe1BUutOzUKrmIYjVZMv7tu2l
	dSFT2crptOfkkiE5Yq6bZ0/bplFyVLhBmHIS2Nna2G3Zecz0FLbvd3dAXsXKK3uQiosibCgzdqNBx
	M006RDxy9kW0u6DbI6m8WGAzOIT8z9A5/yOJYisbEi1cmDJ3ShYiQzC99LsE4KQEduQ36FrTsTx5q
	sPv2W5s7Mag9UP50FxoFbiGziJ7q3poW4cuGLg9z97/h9YNSE83L9C15K2xdsSu0NFuAh62+NIDbe
	QxvGVC6tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWMFP-0008Be-PD; Wed, 06 May 2020 15:46:11 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWMFI-0008Ab-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:46:06 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ms17so1066563pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 08:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+AoWjl9qm/9ONcKycsC0yd4jPr3qRbLth7/5z1t+XVo=;
 b=TcJwiF9PZJ7weYuO7y5YljNF/n80dtvLxhRuBe3ZyDkIc/4wV5E/MZPhnlFGn9ocv4
 YBYDfadH8szxYIYL+r6z3W09w6cEDJ31wp9dskHioIjVDyTmJnX8M552EwQya9gu/Bre
 y0h/R9JdLaMiA7vpQqitsz//Jlmpx24z9YOnUanV53vffwnQFN7feRX2i7F8P4idZ83n
 QzEmaQYeuFB5RrPn9Y1BdikXDWTZeODBAvMsoyXrEXkXMQZk4flzNsBdDU6Zx9DC68Kp
 BGrmdrPw7B4Tary1iOpPmeQTbFSYfQMLTiCvuZrXWGLHQ3mif0aEXth1jdbIkLMwVrKM
 6kUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+AoWjl9qm/9ONcKycsC0yd4jPr3qRbLth7/5z1t+XVo=;
 b=fRgHXbB9FnAwjUou84NTlCnXseNfWSXV82KXMfw9b5M7J6mliuh7l01aK8BtP2Vsh6
 ZlwlVO01NKbJNL0qgoXDWLZnzQvCwVoNBdLk6l6Y0jxUnA4APznZ2GIwruEQaxA+DSws
 DUFBidl9Di2rKqqzcPwXl1D+8hHsyjrDJ5NZ0hAB0RHuqH0uKCbkBOac7cW9TaQKPoIM
 qirLMZh/CKK6/mm1lC14o5YEuyN+b0I7bUbyH2pPrX7j8ODnr9iI5Pv+tFrpqlQqgKhC
 Kiotj0Cqnquv3cOo3nwS8ymx3MazIS6iBKFo90WllI+68eicF4l87Yh74Blbt0+czErR
 3q0w==
X-Gm-Message-State: AGi0PuaRaGqM0qJV/YjbuKN4zFYx3IvTnxFcfJHUDoYq088JNUHGGOfb
 0w+3lHZXCAEG63Y2qnwz3wMEuA==
X-Google-Smtp-Source: APiQypLqUZX1ljzKvY3YflM7oBKNSvZrofamAqbFh6JhKo4XNOgo9b/+6kkq7eJMh6gxLe+YbfKl5Q==
X-Received: by 2002:a17:90a:a888:: with SMTP id
 h8mr10608900pjq.174.1588779961070; 
 Wed, 06 May 2020 08:46:01 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
 by smtp.gmail.com with ESMTPSA id i18sm5217925pjx.33.2020.05.06.08.45.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 08:46:00 -0700 (PDT)
Date: Wed, 6 May 2020 08:45:56 -0700
From: Fangrui Song <maskray@google.com>
To: Nathan Chancellor <natechancellor@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
Message-ID: <20200506154556.5fsxzs3vbfwixggd@google.com>
References: <20200505141257.707945-1-arnd@arndb.de>
 <20200505142556.GF82823@C02TD0UTHF1T.local>
 <20200505194243.5bfc6ec6@blackhole>
 <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
 <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
 <20200506153156.GA1213645@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506153156.GA1213645@ubuntu-s3-xlarge-x86>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_084604_934933_C40C4A7E 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Alexandre Ghiti <alex@ghiti.fr>, Julien Thierry <jthierry@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Torsten Duwe <duwe@suse.de>,
 Steve Capper <steve.capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Torsten Duwe <duwe@lst.de>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Ionela Voinescu <ionela.voinescu@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kees Cook <keescook@chromium.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-06, Nathan Chancellor wrote:
>On Wed, May 06, 2020 at 12:22:58PM +0200, Arnd Bergmann wrote:
>> On Wed, May 6, 2020 at 5:45 AM Nathan Chancellor
>> <natechancellor@gmail.com> wrote:
>> > On Tue, May 05, 2020 at 07:42:43PM +0200, Torsten Duwe wrote:
>> > > On Tue, 5 May 2020 15:25:56 +0100 Mark Rutland <mark.rutland@arm.com> wrote:
>> > > > On Tue, May 05, 2020 at 04:12:36PM +0200, Arnd Bergmann wrote:
>> > > > This practically rules out a BE distro kernel with things like PAC,
>> > > > which isn't ideal.
>> >
>> > To be fair, are there big endian AArch64 distros?
>> >
>> > https://wiki.debian.org/Arm64Port: "There is also a big-endian version
>> > of the architecture/ABI: aarch64_be-linux-gnu but we're not supporting
>> > that in Debian (so there is no corresponding Debian architecture name)
>> > and hopefully will never have to. Nevertheless you might want to check
>> > for this by way of completeness in upstream code."
>> >
>> > OpenSUSE and Fedora don't appear to have support for big endian.
>>
>> I don't think any of the binary distros ship big endian ARM64. There are
>> a couple of users that tend to build everything from source using Yocto
>> or similar embedded distros, but as far as I can tell this is getting less
>> common over time as applications get ported to be compatible with
>> big-endian, or get phased out and replaced by code running on regular
>> little-endian systems.
>>
>> The users we see today are likely in telco, military or aerospace
>> settings (While earth is mostly little-endian these days, space is
>> definitely big-endian) that got ported from big-endian hardware, but
>> often with a high degree of customization and long service life.
>
>Ah yes, that makes sense, thanks for the information and background.
>Helps orient myself for the future.
>
>> My policy for Arm specific kernel code submissions is generally that
>> it should be written so it can work on either big-endian or little-endian
>> using the available abstractions (just like any architecture independent
>> code), but I don't normally expect it to be tested on big endian.
>>
>> There are some important examples of code that just doesn't work
>> on big-endian because it's far too hard, e.g. the UEFI runtime services.
>> That is also ok, if anyone really needs it, they can do the work.
>>
>> > > I suggest to get a quote from clang folks first about their schedule and
>> > > regarded importance of patchable-function-entries on BE, and leave it as
>> > > is: broken on certain clang configurations. It's not the kernel's fault.
>> >
>> > We can file an upstream PR (https://bugs.llvm.org) to talk about this
>> > (although I've CC'd Fangrui) but you would rather the kernel fail to
>> > work properly than prevent the user from being able to select that
>> > option? Why even have the "select" or "depends on" keyword then?

Created https://reviews.llvm.org/D79495 to allow the function attribute
'patchable_function_entry' on aarch64_be.
I think -fpatchable-function-entry= just works.

Note, LLD does not support aarch64_be
(https://github.com/ClangBuiltLinux/linux/issues/380).

>> I definitely want all randconfig kernels to build without warnings,
>> and I agree with you that making it just fail at build time is not
>> a good solution.
>>
>> > That said, I do think we should hold off on this patch until we hear
>> > from the LLVM developers.
>>
>> +1
>>
>>       Arnd
>
>Glad we are on the same page.
>
>Cheers,
>Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
