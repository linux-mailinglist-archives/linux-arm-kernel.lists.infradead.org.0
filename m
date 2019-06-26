Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A27565BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNErX/Y+8caSxdtrX17+XRTSpBVo5NK9tBkqLxwhVmI=; b=K/JCjkNtmivvy1
	iY/6DilOsX668yrdH2UgA+OI3fleR7y8ivsQbJ2CXVze3aQ3Da+3raJag78TNJpG84xm/rrgH1lsh
	HZRSuZa++oMiBfDF37c9/8YHLiZDqlx6Nst35BYmyMhg5KhRdAGen0hUuE/vHAa22YEUNvp6jxik4
	8mhMZnvVdxMGbzlOlkB7LQiplHz7Gas2L9Z+aZznVIQ9gwBf6KRx+AxFESKzpCwe0/ZXM6k/lWUvv
	gi2MuTQJg8btnq9EZ/W2/0F7FVFbJsAZqAJjM6aZ6JfKGzo7KZhnjYRf63pLTsnaxGXG4XY+vVwSI
	xeyfCq5atO5NjAycaL8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4OG-00030F-Dy; Wed, 26 Jun 2019 09:38:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4O2-0002yY-Sq
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:38:44 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3BBA2082F;
 Wed, 26 Jun 2019 09:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561541922;
 bh=b8yf4lmGvBB1dVa7/Twirj8FFTig4jUndq8vRGsYggw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CRlfvTtUSHB3ZCrHSBQ6nDjSFcABaixH8GhxBcZLYGVdIL3XgDxMWG0dn5lCMUqPN
 PXaoFJGnXAUmqCQ+tah3l4bWSK23B/DUTRlQn+s/+BPioJO3OI3lyzzpBFQ1vfrE45
 uIQcmJeUG7nEqXFBb7wbq3bD1cUiuAkZxpwj+Akg=
Date: Wed, 26 Jun 2019 10:38:37 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
Message-ID: <20190626093836.y2lofo54rhxw3xsm@willie-the-truck>
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
 <1561467369.5154.67.camel@lca.pw>
 <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
 <1561470705.5154.68.camel@lca.pw>
 <5113362e-1256-6712-6ce8-9599b1806cf1@arm.com>
 <1561472887.5154.72.camel@lca.pw>
 <668bbe72-b32b-8cee-ccad-d1f6110c6728@arm.com>
 <CAKwvOdmCFjunXRbninTdqoDGPNJ6b7npgXLAPYGqFZas5ofNjw@mail.gmail.com>
 <193c179e-16ca-4b4e-2584-75e8f6c1819f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <193c179e-16ca-4b4e-2584-75e8f6c1819f@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_023842_954651_676AE8E0 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>, Qian Cai <cai@lca.pw>,
 Thomas Gleixner <tglx@linutronix.de>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 06:00:27PM +0100, Vincenzo Frascino wrote:
> On 25/06/2019 17:26, Nick Desaulniers wrote:
> > On Tue, Jun 25, 2019 at 7:54 AM Vincenzo Frascino
> > <vincenzo.frascino@arm.com> wrote:
> >>> but clang 7.0 is still use in many distros by default, so maybe this commit can
> >>> be fixed by adding a conditional check to use "small" if clang version < 8.0.
> >>>
> >>
> >> Could you please verify that the patch below works for you?
> > 
> > Should it be checking against CONFIG_CLANG_VERSION, or better yet be
> > using cc-option macro?
> > 
> 
> This is what I did in my proposed patch, but I was surprised that clang-7
> generates relocations that clang-8 does not.
> 
>   LD      arch/arm64/kernel/vdso/vdso.so.dbg
>   VDSOCHK arch/arm64/kernel/vdso/vdso.so.dbg
> 00000000000009d0 R_AARCH64_JUMP_SLOT  _mcount

Hmm. It would be nice to understand where the reference to _mcount is coming
from, since that sounds like ftrace is getting involved where it shouldn't
be.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
