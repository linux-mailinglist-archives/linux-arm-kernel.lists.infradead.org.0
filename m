Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF827B1C6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 13:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQBcXMiFNKJN7M4cfumY2Ah8oSZW+EiHmg/8eSf3/+E=; b=AkRAI+my7I0APj
	nTgJSEnKYcjYzzw8N91W2NDoftIwY0DxHcxBD3wxGaQkv0IbHo2yZuxUVm0AmtcLmvbrlgl/Z0NQ3
	PTVMJooXaVLjyq71iTZn6kyP/jGUmXjaGEcSCMpeCoSGSCYpciTojxwozB1TquLS3bmjHTrjsDM3P
	6xK21BtEPMD+LyKL9K/ufqh2jaQF7izPncNu6Mkeujvz0RwvHGV0S2bPDc0I5ufrFvdgA2ITmZcwY
	c8PiEE6T3tc68pUmjs6T5F9M0flC8gpo1x2SsL4sni+lngJPmkt/35zGZ49jfTdGOqFBJ1d3Km+J0
	rY3eqKZf0e74UNqDBhnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8jqR-00029O-8G; Fri, 13 Sep 2019 11:34:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8jq1-00028Z-Sa
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 11:34:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5AFF028;
 Fri, 13 Sep 2019 04:34:02 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 71BE93F59C;
 Fri, 13 Sep 2019 04:34:01 -0700 (PDT)
Date: Fri, 13 Sep 2019 12:33:55 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: fix function types in COND_SYSCALL
Message-ID: <20190913113355.GA32453@lakrids.cambridge.arm.com>
References: <20190910224044.100388-1-samitolvanen@google.com>
 <20190911151545.GD3360@blommer>
 <20190912131143.u3rncvqdgx4z3ckz@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912131143.u3rncvqdgx4z3ckz@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_043405_964251_B1735957 
X-CRM114-Status: GOOD (  16.60  )
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
Cc: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Kees Cook <keescook@chromium.org>,
 Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 02:11:44PM +0100, Will Deacon wrote:
> On Wed, Sep 11, 2019 at 04:15:46PM +0100, Mark Rutland wrote:
> > On Tue, Sep 10, 2019 at 03:40:44PM -0700, Sami Tolvanen wrote:
> > > Define a weak function in COND_SYSCALL instead of a weak alias to
> > > sys_ni_syscall, which has an incompatible type. This fixes indirect
> > > call mismatches with Control-Flow Integrity (CFI) checking.
> > > 
> > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > 
> > This looks correct to me, builds fine, and I asume has been tested, so FWIW:
> > 
> > Acked-by: Mark Rutland <mark.rutland@arm.com>
> > 
> > In looking at this, I came to the conclusion that we can drop the ifdeffery
> > around our SYSCALL_DEFINE0(), COND_SYSCALL(), and SYS_NI(), which I evidently
> > cargo-culted from x86 (where the ifdeffery is actually necessary).
> 
> Curious: why is it required on x86?

Due to the way they share some native calls with (IA32) compat, but need
slightly different wrappers to marshall registers, they have ifdeffery
like:

#ifdef CONFIG_IA32_EMULATION
#define COND_SYSCALL(name)                                              \
        cond_syscall(__x64_sys_##name);                                 \
        cond_syscall(__ia32_sys_##name)
#endif

#ifndef COND_SYSCALL
#define COND_SYSCALL(name) cond_syscall(__x64_sys_##name)
#endif

... so that they define the compat wrapper when necessary, but not otherwise.

As we don't share the native syscall table with compat tasks, we don't
need to do anything like that, and can unconditionally define the native
case once.

> > I can send a follow up for that.
> 
> Yes, please.

I'll cook that up now, atop of Sami's patch applied to arm64's
for-next/core.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
