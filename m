Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A263A1A9F12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cV2dHwY4JNoOG4BfpPR/16TT1I5PPS1iYbxG/oBiF+0=; b=O017E4gdr+Cqds
	XiVnw2z8C5N16255Y6cXcnjC/YH1acHDIcDR5Se2bxYxpe2nGxkWUVRCvyQhOstwyhUE0SVKauHLR
	7ePcSaEExZSA3PiYDdgARdN1Dx16VavixypgKcS9GCMeNT0/opLU0VkQQ3xZa/2yXq1yy2hsBmSOW
	GHIH5oEsLZXqIDdio9Ha4opgdMdOhm/X/FAddRg3TWk6iA4mwPEOrjyxlLDGJqyDQ2xRZc6XHNxk2
	T+hDpciZhMLs3jaBTsncarUIWQ7Yb7gAbbKPK1iF9rzF3bZJJPsbm8jyxfrP20H0tIZqv1OSFccRx
	lXZTqq8Co6F59y/TJS9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgpt-00087v-IJ; Wed, 15 Apr 2020 12:08:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgpj-00087Z-J5
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:08:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3931C1063;
 Wed, 15 Apr 2020 05:07:56 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1C653F68F;
 Wed, 15 Apr 2020 05:07:54 -0700 (PDT)
Date: Wed, 15 Apr 2020 13:07:52 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Fangrui Song <maskray@google.com>
Subject: Re: [PATCH v2] arm64: Delete the space separator in __emit_inst
Message-ID: <20200415120752.GD6526@gaia>
References: <20200414163255.66437-1-maskray@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414163255.66437-1-maskray@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_050759_672789_0AE3E330 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ilie Halip <ilie.halip@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Jian Cai <jiancai@google.com>, clang-built-linux@googlegroups.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 09:32:55AM -0700, Fangrui Song wrote:
> In assembly, many instances of __emit_inst(x) expand to a directive. In
> a few places __emit_inst(x) is used as an assembler macro argument. For
> example, in arch/arm64/kvm/hyp/entry.S
> 
>   ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
> 
> expands to the following by the C preprocessor:
> 
>   alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1
> 
> Both comma and space are separators, with an exception that content
> inside a pair of parentheses/quotes is not split, so the clang
> integrated assembler splits the arguments to:
> 
>    nop, .inst, (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1
> 
> GNU as preprocesses the input with do_scrub_chars(). Its arm64 backend
> (along with many other non-x86 backends) sees:
> 
>   alternative_insn nop,.inst(0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
>   # .inst(...) is parsed as one argument
> 
> while its x86 backend sees:
> 
>   alternative_insn nop,.inst (0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
>   # The extra space before '(' makes the whole .inst (...) parsed as two arguments
> 
> The non-x86 backend's behavior is considered unintentional
> (https://sourceware.org/bugzilla/show_bug.cgi?id=25750).
> So drop the space separator inside `.inst (...)` to make the clang
> integrated assembler work.
> 
> Suggested-by: Ilie Halip <ilie.halip@gmail.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/939

Queued for 5.7. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
