Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81289F3F93
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:19:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JiInuaO7srEP1UAMzp6HaNY4tfmyHamylnperLhTRTA=; b=t0+93VKKs+gHfJ
	/3SDqAORKte5ok5soBYjr9Z8kOOPpMcEI8JBvm9TzJDJ0q0U52vt9n7Z4A3mkaeodCZCh8XNwYv0P
	aMsgJKR2l+oXwWzrLya2Kszg6feo/1K3n7JnxpMxHPpRvYg2ywNv0ZhXCFwpkvVo+vg1+jP8mdI33
	r+57osi3533Q8y2uVShF8M7Gutm2uyG04UlO0zoz7o2B456Ikn7s7kzxw1AHCREXmzr+uw0Be5YR5
	zkFBlANLXsH4p1tnb5JZK7DoA5J6CeGOd8kJykkfmFCaX0WSLnltyzsx+keVL3n8RSG0ykWkKzpK7
	xn3SGEuyR8h/92bnFgXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwfd-00012v-HT; Fri, 08 Nov 2019 05:18:53 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwfT-00012T-Ft
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:18:45 +0000
Received: by mail-ot1-x343.google.com with SMTP id z6so4207603otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=a8NqHTJNQzWrzIcT6Wra0QFnjXgc1Ma/yBvslGF44VE=;
 b=H8wfl+Awdqv4220HWbmC4xgOaXhzmCsLRLPFOkp7CCy9sc3ubCa10iZkr/bHVouTSB
 JUOjbbNOGbYKIr06tAEtxeXJki4Szs6I8aAbxqRJGQh5TtvoDxturcIdzfXFu/wcxBfe
 HkgPKwJjsJr3At0/HwWpNZc1B3PM2cjWjUpPjutRsW1P+NgsCYsmop9hygg969H5MkAt
 9sBcGZR6WViAOd3vSuYCSZ8GTHJOYO3G+z6q/d3YRZICrxIHjHyGPd9vI/nHmzeUfBsl
 Rn3M9JD2gATr2JPvvWci10wXjP9fSmRVAYdCv1OSypRkuQszsTtBhHP8DbkBGdrjroxf
 ENBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=a8NqHTJNQzWrzIcT6Wra0QFnjXgc1Ma/yBvslGF44VE=;
 b=ZUh38YVTQ5feBXQTlAGjzfdLeRmq/DmuDX5rHpeqW/cVRjAa/+HU1rWxhJI6DzyZjq
 2NRdfPGdHAxhqDHOdhEsk8Q/dYRDW/PrVzcIma8KT1oe0CxOyiN9inw3vbZiDtrgxro1
 PrxiakLycR12fuwVmTskaTJpYRgBg6hx18ujn7GdaugpLEpQPz0wh8UeVVsinPrOzNE0
 khuHbAW25OxZvVZWZy9RJc/AXWWd1zN6opEZFK5zdtykMZC88W6dSWiPQnUbMF8bdAhG
 hchrnK0mS309IuOx4mfhMn5u06KP7WF0ONJ6i0g/APTa+cU1Goo3+x/POJgTgn8J4qzU
 n01Q==
X-Gm-Message-State: APjAAAUb4TL+lM0y2qJZdNBq2o9SA+qAzBBqfNSb6ETwg+jhqiW3HxPX
 AjUhMU4YBvxU8eMZ31wZa9c=
X-Google-Smtp-Source: APXvYqxFTZyhkoesp6IsZSXaIrsfOQMUs1PzI1ME/JFTm8CJJUoYC7aBZgSNhdQmOIm0w7frx7I/cg==
X-Received: by 2002:a05:6830:2363:: with SMTP id
 r3mr6985515oth.39.1573190322005; 
 Thu, 07 Nov 2019 21:18:42 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id 94sm1592110otx.3.2019.11.07.21.18.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 07 Nov 2019 21:18:41 -0800 (PST)
Date: Thu, 7 Nov 2019 22:18:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alan Modra <amodra@gmail.com>
Subject: Re: GENERATE_SHLIB_SCRIPT vs. EMBEDDED
Message-ID: <20191108051839.GA35767@ubuntu-m2-xlarge-x86>
References: <fb6030c6-f96d-8219-61f9-548dfc9c5b5a@redhat.com>
 <20191028235341.GD3663@bubble.grove.modra.org>
 <20191105040135.GG6708@bubble.grove.modra.org>
 <CAKdteOa8Mf_MOd4Hf8jkcCcgo4bPH8Lss2QCHMu5BBog6N+19Q@mail.gmail.com>
 <20191105100317.GI6708@bubble.grove.modra.org>
 <20191107073700.GA22249@ubuntu-m2-xlarge-x86>
 <20191107074330.GP6708@bubble.grove.modra.org>
 <20191107172514.GA9267@ubuntu-m2-xlarge-x86>
 <20191107234842.GS6708@bubble.grove.modra.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107234842.GS6708@bubble.grove.modra.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_211843_531154_F89A9E40 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Christophe Lyon <christophe.lyon@linaro.org>,
 binutils <binutils@sourceware.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CC'ing the arm64 Linux kernel maintainers + Ard and mailing list since I
am sure their input is more valuable than mine :) hopefully you all
don't mind, small discription of the issue below to key you in.

On Fri, Nov 08, 2019 at 10:18:43AM +1030, Alan Modra wrote:
> On Thu, Nov 07, 2019 at 10:25:14AM -0700, Nathan Chancellor wrote:
> > On Thu, Nov 07, 2019 at 06:13:30PM +1030, Alan Modra wrote:
> > > On Thu, Nov 07, 2019 at 12:37:00AM -0700, Nathan Chancellor wrote:
> > > > For what it's worth, this breaks building the Linux kernel for me:
> > > > 
> > > > aarch64-linux-ld: -shared not supported

This error occurs when building an arm64 defconfig kernel with master
binutils due to this commit in binutils interacting with the ELF
emulation added in the kernel commits linked below.

https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=f2aaebdb97977ee7a5c83c02af871e758e7d594b

> > > An aarch64-linux ld will use emulparams/aarch64linux.sh, which does
> > > have shared support.  If you're trying to use binutils configured for
> > > aarch64-elf on Linux, well, good luck with that.
> > 
> > As it turns out, this error is related to the arm64 Linux kernel using
> > the ELF emulation mode by default, falling back to the Linux one if it
> > is not supported. See the following commits:
> > 
> > https://git.kernel.org/linus/38fc4248677552ce35efc09902fdcb06b61d7ef9
> > https://git.kernel.org/linus/96f95a17c1cfe65a002e525114d96616e91a8f2d
> > https://git.kernel.org/linus/c931d34ea0853d41349e93f871bd3f17f1c03a6b
> 
> Ah, now your report is starting to make more sense.  The Linux kernel
> makes use of -shared to build the kernel vdso and when building a
> relocatable kernel.  In both cases the ELF file header and program
> headers are not needed to load those images.
> 
> However, in any other shared library the headers must be present for
> the binary to be loaded by ld.so.  That's what I meant with my comment
> "good luck with that".  So attempting to build an aarch64-linux shared
> library using -maarch64elf or -maarch64elfb generally will result in a
> non-functional binary.  I think the linker should at least warn about
> that.

I suppose it has been working fine for the past year; otherwise someone
would have noticed something, right? How would the binary be
non-functional?

> I wonder if the following would work for the aarch64 kernel build?
> You might also need -Ttext-segment=0 along with -shared in the kernel
> Makefiles since otherwise you'd get a vsdo and relocatable kernel
> linked at something other than a zero base address.

<snip patch>

I applied that patch on top of binutils commit
f2aaebdb97 ("GENERATE_SHLIB_SCRIPT vs. EMBEDDED.") and it fixed that
error but revealed another one. I am using Segher Boessenkool's build
script available here, in case it is a configuration issue:

http://git.infradead.org/users/segher/buildall.git/blob/refs/heads/master:/build-binutils

aarch64-linux-ld: warning: -shared not supported
aarch64-linux-ld: unrecognized option '--hash-style=sysv'
aarch64-linux-ld: use the --help option for usage information
../arch/arm64/kernel/vdso/Makefile:60: recipe for target 'arch/arm64/kernel/vdso/vdso.so.dbg' failed
make[3]: *** [arch/arm64/kernel/vdso/vdso.so.dbg] Error 1
arch/arm64/Makefile:159: recipe for target 'vdso_prepare' failed
make[2]: *** [vdso_prepare] Error 2
/home/nathan/src/linux/Makefile:326: recipe for target '__build_one_by_one' failed
make[1]: *** [__build_one_by_one] Error 2
Makefile:179: recipe for target 'sub-make' failed
make: *** [sub-make] Error 2

Happy to continue to test other solutions.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
