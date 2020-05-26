Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3ED1E3035
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 22:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uruNM+ppUWFdBuIGzJvsys006LJFf5sWC3owKND3G9M=; b=YEWOYvj/N3JDwr
	RVDoaVStYrWzwBbJTenaeFCaM29mUaF9y7z6ZMVqyJecSExXW5GI0DHJGk0z00WBu3tBcRry/VPcn
	GZFyLilL8eDy1BZa7jIoRiNxgXQ2p3Zpg55tDFVy+kCHBvhlvG+Gh2Coj1rI21LseQZlRQPG+8afq
	BDnxiYRqOgujJD3ZukqJbBnkxwDrdJd+DUKH5LlrqsmDlo0J4tekEiNZC02TDpYEO3PSfv1fOhzuQ
	d4/0A+xechW4bTEaCrAnUIzi5O+YLLmJ6nG1XO5Oc5LkyzsryYJ0II2CzlhXcO7y+7iqIXkm2DVXn
	y1j2Unj7KkOhHOGbg4UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdgS0-0000ut-9U; Tue, 26 May 2020 20:45:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdgRo-0000tF-Cv
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 20:45:17 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3BF7207CB;
 Tue, 26 May 2020 20:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590525913;
 bh=KSSDjXavc4Cfkda/YtwTNNTYhwmx7H7cHFjcR7WMiM8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=p56PlHM9Ux3eBLXiMitWDjCOX3x2l3RjHhy0jti/3zxxyc0uyd/jM9Skc42ZjzsfK
 ZC8xnZ5C0I1Q8exv5+co6FBVZQbyQMG02U3fQgN9hAGMhNUEZcNkyIep/EvRF06qJj
 kju0MB5feQ7fSPec8l+SyhwoCLVOBWlZNUl8apwQ=
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
Date: Tue, 26 May 2020 21:45:05 +0100
Message-Id: <159052247565.23781.7800427985507723263.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526173117.155339-1-ndesaulniers@google.com>
References: <20200526173117.155339-1-ndesaulniers@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_134516_472678_2C60A1C3 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 26 May 2020 10:31:14 -0700, Nick Desaulniers wrote:
> Custom toolchains that modify the default target to -mthumb cannot
> compile the arm64 compat vdso32, as
> arch/arm64/include/asm/vdso/compat_gettimeofday.h
> contains assembly that's invalid in -mthumb.  Force the use of -marm,
> always.

Applied to arm64 (for-next/vdso), thanks!

[1/1] arm64: vdso32: force vdso32 to be compiled as -marm
      https://git.kernel.org/arm64/c/20363b59ad4f

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
