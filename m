Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 179E01FBD4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omyrw4UYBoIcuE1zphPj1rhCFq2lSyJ1k1OlnffcC2Q=; b=qs6jiaavxWOyvQ
	ae8kYTFDgsaC1ADdX1kSdcdMVkt3ToxSFu1uRk+X3Dp2noUo8CekupiRjvKPBy04KypjhTOtXD7TH
	LQAE1VZlq8y8d93jmDuQ22bjR0rrhqfBsNqg/UCN0WXw74MF0PNsegZPz5EEP1csdx6XzNUJOefjj
	w5XfldvHtST95LautRSO3F55PZzZmf/63z/0XGNdeQWvktfhsaIVj0ynllE7Bqz0ZYQjHeqCsXV3X
	4vHxQVanZaLqZHGYjDrO3RMd1m32FEo5JV9IO24S3zSeN5Vzh/sD1jaZ3QoRU3uJYG8fECS1M8t/V
	7sIHwacP6jiBJ6jU/I9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFhy-00031S-Nl; Tue, 16 Jun 2020 17:49:14 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFhs-00030z-3i
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:49:09 +0000
Received: by mail-oi1-x242.google.com with SMTP id d67so20002716oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 10:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ShWvJES21PY863zJ7xMRiENg3GSGe4vsDcPcHHAB/1s=;
 b=RNh/0R6Jq7bYNDS5SgmgEmtxi1wkoEzOnrdu8Yz7V1/AvAp0FXw9MbG8V0Mov3fziG
 OkWQUftD5r6fFsuGfYIHXFIXrcPdy4lp6nz6oNolzV48+gdBx61ztS6OrEdaL6fK0x0z
 8K8QHjT4TbRGJhHSiAOBdOR5T7fBybrjzRSy1RHdhmKkcCOO1dVyA4di3K5irhf3KPVz
 JjznbsF2ryWRbXyTVKWwXhB6wRGwxBA8/TT92M4BXOn1IaP0pRGWDDG2i1q8LWRBjx5J
 sNqYJNu9i6BRtGXja1fFLtAfo9rOkT1chIp6MGWLFZsfvx7KdduWsd+8XCYphuixDt+v
 UE6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ShWvJES21PY863zJ7xMRiENg3GSGe4vsDcPcHHAB/1s=;
 b=I/uJhpLHmDvKLdxUuJRn416AXOd+K9JCMb/3iPqkwZ82wWJForv670O7BGAUgwNtgN
 A++hjY2wp/H923/xmDxADvesoesFIY4VBGU1k0lt2jC3c/mkElcvwfcwM4muMdMvuTzZ
 8kdEKMrXErDXs0/ubILHNk7kIryywpxPlf5CiD664uBnTydIDgDMC7r+kymIjBUBc7ZY
 ULDlUJWl48DpP7Gf/KZ4wk8c9+/rxXe/lE57zh3F24WUF7LkgGNvDhmBoP0qpd2APnQN
 wYlH75Y6Ghexz6wTxoCK+Y+qjOi6IHO6HbX2QOT+jnDkThLo8+P7K1CgH5PvezGM+9xY
 C6Qg==
X-Gm-Message-State: AOAM533XnaiQ97oMKg8dPjB2RJ6wWUTkK+TGOBZUFTlZRa8v6cV2kI0f
 WyTOmEjVmXk5qEwROJ8dFpc=
X-Google-Smtp-Source: ABdhPJzjnFRJfl2yg4OJL9GjFnQsXh8BZZhNZ1POVy92rmwpH4YWucdHxcmxJBmXXnDYYNHwgcBdfQ==
X-Received: by 2002:aca:57d8:: with SMTP id l207mr4208296oib.79.1592329746554; 
 Tue, 16 Jun 2020 10:49:06 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id x4sm3853105ood.43.2020.06.16.10.49.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 10:49:05 -0700 (PDT)
Date: Tue, 16 Jun 2020 10:49:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
 <20200616173728.GC2129@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616173728.GC2129@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_104908_166947_05208C2F 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, tstellar@redhat.com, android-kvm@google.com,
 catalin.marinas@arm.com, ndesaulniers@google.com,
 clang-built-linux@googlegroups.com, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org, daniel.kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 06:37:28PM +0100, Will Deacon wrote:
> On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
> > [+ Tom, the clang 10 release manager]
> > 
> > On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
> > > On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
> > > > On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:
> > > > 
> > > > > Here, the switch statement has been replaced by a jump table which we *tail
> > > > > call* into. The register dump shows we're going to 0xffffd68929392e14:
> > > > 
> > > > > ffff800010032e14:       d503233f        paciasp
> > > > > ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> > > > > ffff800010032e1c:       910003fd        mov     x29, sp
> > > > > ffff800010032e20:       aa0803e0        mov     x0, x8
> > > > > ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
> > > > > ffff800010032e28:       93407c00        sxtw    x0, w0
> > > > > ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
> > > > > ffff800010032e30:       d50323bf        autiasp
> > > > > ffff800010032e34:       d65f03c0        ret
> > > > 
> > > > > The problem is that the paciasp instruction is not BTYPE-compatible with BR;
> > > > > it expects to be called with a branch-and-link, and so we panic. I think you
> > > > > need to emit a 'bti j' here prior to the paciasp.
> > > > 
> > > > I checked with our internal teams and they actually ran into this
> > > > recently with some other code, the patch:
> > > > 
> > > >    https://reviews.llvm.org/D81746
> > > > 
> > > > ([AArch64] Fix BTI instruction emission) should fix this, it's been
> > > > reviewed so should be merged shortly.
> > > 
> > > Cheers, that's good to hear. Shall we have a guess at the clang release
> > > that will get the fix, or just disable in-kernel BTI with clang for now?
> > > 
> > > Will
> > > 
> > 
> > This will be in clang 11 for sure. Tom, would it be too late to get this
> > in to clang 10.0.1? If it is not, I can open a PR.
> 
> Any update on this, please? I'd like to get the kernel fixed this week.
> 
> Cheers,
> 
> Will

The AArch64 backend owner said it should be okay to add to 10.0.1:
https://llvm.org/pr46327

Tom just needs to pick it, I see no reason to believe that won't happen
this week.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
