Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64306171EBF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 15:30:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOeDbejulp4wxiKYTUjZczZOjSSWMMTIuRyikfdVO3o=; b=b/mU9KlZCP7xym
	FjEQ7RuRCM/x4c7LgJhlx6EPD+cowl5Ei/C4CM6l/kIegP9f27otI0z0gf6b/n3Se4jdGyx1z1R0X
	Vmwx/J2Cu8NsyXuT0FIqkmtkR1IGVGdAm0c/FL1/NWZ9YBW2QdSLYWQG1EuXaeDaRXHD4SS14HwCk
	xOS+EblceA05OCF4eynnVmoy50U+wu2RCh/VsEulDadOOusF/kVp5DA49ldqHHXDR0J8XSDjGXn9S
	m43KOYKM65llDcrlKEvNZYQp0gg+GiQZQbqjqXeeCckusz9BWHNauA8Xk/9e3VTtaueOXHSCp0bpM
	FrsZWPswpTa3mRaf3axg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7KAu-0007dj-Bx; Thu, 27 Feb 2020 14:30:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7KAg-0007cz-D2
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 14:29:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45A3C30E;
 Thu, 27 Feb 2020 06:29:49 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 ACFE93F881; Thu, 27 Feb 2020 06:29:48 -0800 (PST)
Date: Thu, 27 Feb 2020 14:29:46 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: mm: convert cpu_do_switch_mm() to C
Message-ID: <20200227142946.GG3281767@arrakis.emea.arm.com>
References: <20200213121452.23205-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213121452.23205-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_062950_483558_DEACCD66 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 12:14:52PM +0000, Mark Rutland wrote:
> There's no reason that cpu_do_switch_mm() needs to be written as an
> assembly function, and having it as a C function would make it easier to
> maintain.
> 
> This patch converts cpu_do_switch_mm() to C, removing code that this
> change makes redundant (e.g. the mmid macro). Since the header comment
> was stale and the prototype now implies all the necessary information,
> this comment is removed. The 'pgd_phys' argument is made a phys_addr_t
> to match the return type of virt_to_phys().
> 
> At the same time, post_ttbr_update_workaround() is updated to use
> IS_ENABLED(), which allows the compiler to figure out it can elide calls
> for !CONFIG_CAVIUM_ERRATUM_27456 builds.
> 
> There should be no functional change as a result of this patch.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>

I'll queue this for 5.7. Does not seem to have any functional change (I
changed the comments to C-style ones /* */).

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
