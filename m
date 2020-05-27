Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 691FA1E448E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWui3RtRIQiLUjDHa34eWWSeo3Lod7GxZua9cZlChZg=; b=rMOfozk0MHKxtx
	Kb/xTOIvNfdYdGE5e4EM8pJoT4jttbvdwfICaV1oF1BcrRrGc2BCiKE9mFCWKZXUJ1SlDl6bg7MCk
	Qcyi+LqeYuKsYn7fhyBAXrjYP32D8/MTpC6L7oz5IR+90EQpgBdWn+LU7aOzNm+pdEOlQf5E5QJjq
	QZSqM3oj2h0bWgm5N0A/Dc4R0L9FGgXvSyOfiNRAMQJuzonhzaTseBmlyIK5RiowPPfsI5iytxYRg
	WwebeAAAbTiUyLr+bDqFg0MrwrV2hfm+nsYoCrlDYo97vh9KyKnn7tcvC1/eKTFqcVLiNluziHS5O
	PDbebCPPAqVsNyZn6eqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwV3-0005wc-Rx; Wed, 27 May 2020 13:53:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwUr-0005uf-Ur
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:53:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9B6630E;
 Wed, 27 May 2020 06:53:26 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 17D9C3F6C4;
 Wed, 27 May 2020 06:53:24 -0700 (PDT)
Date: Wed, 27 May 2020 14:53:22 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
Message-ID: <20200527135322.GU5031@arm.com>
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <159052247565.23781.7800427985507723263.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159052247565.23781.7800427985507723263.b4-ty@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_065330_033626_C3ACCBF6 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 09:45:05PM +0100, Will Deacon wrote:
> On Tue, 26 May 2020 10:31:14 -0700, Nick Desaulniers wrote:
> > Custom toolchains that modify the default target to -mthumb cannot

It's probably too late to water this down, but it's unfortunate to have
this comment in the upstream commit history.

It's not constructive to call the native compiler configuration of
major distros for many years a "custom" toolchain.  Unmodified GCC has
had a clean configure option for this for a very long time; it's not
someone's dirty hack.  (The wisdom of armhf's choice of -mthumb might
be debated, but it is well established.)

Ignoring the triplet and passing random options to a compiler in the
hopes that it will do the right thing for an irregular usecase has never
been reliable.  Usecases don't get much more irregular than building
vdso32.

arch/arm has the proper options in its Makefiles.

This patch is a kernel bugfix, plain and simple.

> > compile the arm64 compat vdso32, as
> > arch/arm64/include/asm/vdso/compat_gettimeofday.h
> > contains assembly that's invalid in -mthumb.  Force the use of -marm,
> > always.
> 
> Applied to arm64 (for-next/vdso), thanks!
> 
> [1/1] arm64: vdso32: force vdso32 to be compiled as -marm
>       https://git.kernel.org/arm64/c/20363b59ad4f

Does this need to go to stable?

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
