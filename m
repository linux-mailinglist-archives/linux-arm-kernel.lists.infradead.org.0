Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED341891D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 00:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bA5pun7ixxEJPsWvQECAxg1X158ZnP5IA1Y02899+KY=; b=UX3+NwFguWBKrG
	E+ZAdnwqLVco+PHc3AcKKZpOIrWXkl6RYeAsWSh+/+2GYRZ9hQg4DDdSdx/sY8/nIEPtNaPjdGFKa
	UiOTyUVkKxf0M0KO3sAYO1EUeUJtsOyXkZtZELGxMvgGFIgehTgB91+Rmd4qRPvlM1LvrK2j1cmza
	rRDSMoahpeuxVZCifL8aFGgzW1zOEhQM0dlXt4XALunkLJv24IatlenDa6cCKgK088DGqer31jQTK
	NAOm+53QxxDmllNIktghpVORUIQj/E5n/ug6JWKKPZ+zgoN7maFKsf+bogTb+bw8NBdYE2/2t90L5
	ipB8VQEPqW6pUgpIYp6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jELMj-0005hy-IC; Tue, 17 Mar 2020 23:11:17 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jELMb-0005gD-OY
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 23:11:11 +0000
Received: by mail-pf1-x442.google.com with SMTP id u68so12798817pfb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 16:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=655SZyZ4kTa0wHYVMzoiHvAnRif4SDxsc5wkKB6CdU4=;
 b=eUMPbzAqzrqQXlybEnzx167u/1i1iSQsa7u7QfhXmBEvhSkw8D+L0/TR8sOAEwOfIg
 XuAaujrRbieGgO0/qr+EvIWua1i6z8ZvoplH1M5dXL6LAPgDXaFFCLzr41m0i1ZHiWWz
 H8U8U9DHtdBdgdQ/u2EWN1hOn5e0xjJuGohPBJKgDSKjH7w95GZBs/sOWTTDXco39T2t
 cTP631HOxnCKgBY+Cv74mEaRxLg85+5Wv62YbfVHxZKll7CsMkCz3CTTEsteQhDOee23
 v474oNfv+rwexWppcw+5NzUx5z7W9BU+O4T233jnqRISbv9YLBcCTH2ByBQyKawclyel
 MMOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=655SZyZ4kTa0wHYVMzoiHvAnRif4SDxsc5wkKB6CdU4=;
 b=UAYkUHX/k2AQ14KVSmvAYGid55VMbKvMz6DWzMhhQGIIu1GJuAAfVJpvyZx/hAhjC5
 Yst0dSXVSQTzPA5QSUA0iGR8nxyMzVqXU1ZYeZFWXFLasFA069TA51yt4+cDVrhDAgeO
 PXysM35pEFF9bXTnwewC3dRmwDqFEX+9ULPZD5nQZGK1mir0Yphk85teAHk496YCf6cO
 ZHFb+cFsuoROk89Hj0AleHSs1JQFHSig6Tr1UVxk84iMulUchaVR9lfy8jIBYCzEM8V/
 qjMuqHysAPf9ycjG6VWvyTVa941Oy87atZEeCvx7qO3SU4fVknHYqq+CWRXmP9U34EHi
 U2Cw==
X-Gm-Message-State: ANhLgQ0Cu7NBzO6ahYWr8W95IMjfzRpAfVn3TuIF3/S/yukU4KPH9CIa
 kywefl/aK6NJ9bHmgQlZzQm4cur6G3h1yWMPcrvDNA==
X-Google-Smtp-Source: ADFU+vvE1FXbmVfwZP+3e+8/+pgDo9ls3qIGPgKOg4hXyHLB8+yMmGdmETbmaY842qrOS5HGBT3syYeBGVngysMxZJM=
X-Received: by 2002:aa7:8b54:: with SMTP id i20mr1155834pfd.39.1584486664473; 
 Tue, 17 Mar 2020 16:11:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200228002244.15240-1-keescook@chromium.org>
 <20200228002244.15240-8-keescook@chromium.org>
 <20200317215614.GB20788@willie-the-truck> <202003171558.7E1D46AED6@keescook>
In-Reply-To: <202003171558.7E1D46AED6@keescook>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 17 Mar 2020 16:10:53 -0700
Message-ID: <CAKwvOd=9JHM4yhfCWEa-8OhZ70v_pChjgKj=TSGZgxZrhS5a_g@mail.gmail.com>
Subject: Re: [PATCH 7/9] arm64/build: Warn on orphan section placement
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_161109_800245_3F46206B 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 James Morse <james.morse@arm.com>, linux-arch <linux-arch@vger.kernel.org>,
 Borislav Petkov <bp@suse.de>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 4:01 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Tue, Mar 17, 2020 at 09:56:14PM +0000, Will Deacon wrote:
> > On Thu, Feb 27, 2020 at 04:22:42PM -0800, Kees Cook wrote:
> > > We don't want to depend on the linker's orphan section placement
> > > heuristics as these can vary between linkers, and may change between
> > > versions. All sections need to be explicitly named in the linker
> > > script.
> > >
> > > Explicitly include debug sections when they're present. Add .eh_frame*
> > > to discard as it seems that these are still generated even though
> > > -fno-asynchronous-unwind-tables is being specified. Add .plt and
> > > .data.rel.ro to discards as they are not actually used. Add .got.plt
> > > to the image as it does appear to be mapped near .data. Finally enable
> > > orphan section warnings.
> >
> > Hmm, I don't understand what .got.plt is doing here. Please can you
> > elaborate?
>
> I didn't track it down, but it seems to have been present (and merged
> into the kernel .data) for a while now. I can try to track this down if
> you want?

Yes, the presence of a procedure linkage table makes sense for symbol
interposition and lazy binding in userspace executables with runtime
shared object loading support, but not so much the kernel, I would
think.  (Though someone did just recently ask me if loadable kernel
modules could interpose weakly defined symbols in the kernel, and if
so what happens on unload.  I have no idea and suspect kernel modules
cannot do that, but I have looked into the kernel's runtime relocation
support.)
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
