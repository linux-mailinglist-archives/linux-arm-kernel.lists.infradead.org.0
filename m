Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50D4E0824
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vCdYxy4T33GJWrCsyotpj/c19KrB764Gk9H3PNGB+I=; b=f54hGksi+ZvidI
	SERrcL+u5erTrSos7SzUtt1f3Up8Lfv965GMBTtyPkKqlVQu+KjG1kLF9Jp87i4GdJEK5BJRiheWr
	y1VGOkueun+CYjEUXnRL3QEeASN2/Wjg8NWvLuEYwOqaWKjTX61lF0R70o1E68nZL9VeEtwOQacpJ
	tJPjBBPtGQ+1ggV1NB8xHJrhUgPr8Au0ONHxO4FfrA+A/DhZUiJVpuR105ArkpHJO1LcpO5FIguCb
	UUhu7jJY7LYi1jjiQUvp28Vnw1ISC+9U+nUp29fmJNpGL2f7CJU1gyK4Y4ym3T5QgmckNmfZiOq6m
	YuSYejk1mmfbuh00Jzyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwaP-0002Hd-TG; Tue, 22 Oct 2019 16:00:41 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwa9-0001wU-RA
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:00:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6C2C177F;
 Tue, 22 Oct 2019 09:00:14 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 09A513F71A;
 Tue, 22 Oct 2019 09:00:12 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:00:10 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 12/18] arm64: reserve x18 only with Shadow Call Stack
Message-ID: <20191022160010.GB699@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-13-samitolvanen@google.com>
 <CAKwvOd=rU2cC7C3a=8D2WBEmS49YgR7=aCriE31JQx7ExfQZrg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=rU2cC7C3a=8D2WBEmS49YgR7=aCriE31JQx7ExfQZrg@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_090025_939336_FF6A0A4A 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 02:23:10PM -0700, Nick Desaulniers wrote:
> On Fri, Oct 18, 2019 at 9:11 AM 'Sami Tolvanen' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Only reserve x18 with CONFIG_SHADOW_CALL_STACK. Note that all external
> > kernel modules must also have x18 reserved if the kernel uses SCS.
> 
> Ah, ok.  The tradeoff for maintainers to consider, either:
> 1. one less GPR for ALL kernel code or
> 2. remember not to use x18 in inline as lest you potentially break SCS

This option only affects compiler-generated code, so I don't think that
matters.

I think it's fine to say that we should always avoid the use of x18 in
hand-written assembly (with manual register allocation), while also
allowing the compiler to use x18 if we're not using SCS.

This can be folded into the earlier patch which always reserved x18.

> This patch is 2 (the earlier patch was 1).  Maybe we don't write
> enough inline asm that this will be hard to remember, and we do have
> CI in Android to watch for this (on mainline, not sure about -next).

I think that we can trust the set of people who regularly review arm64
assembly to remember this. We could also document this somewhere -- we
might need to document other constraints or conventions for assembly
in preparation for livepatching and so on.

If we wanted to, we could periodically grep for x18 to find any illicit
usage.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
