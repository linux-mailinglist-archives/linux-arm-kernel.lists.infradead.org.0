Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1037F1735E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 12:14:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjV9sSW1Pec1QhWShc0qrDoSVlx2mX3XN937Wc66c94=; b=Upu7/GrZLu+glm
	lARlp/6LY6eja0czVRJwZKYSnRdSfLLHEQIkm4VdEcMjwr+mrxXTw0ec9xmz3zqCvOxzDlDER2CTi
	wuk1ZGXlmi8B4DjdsrjuceJLQHHmrnH0dtbuTkcieZiLWkhSS9deIppUr1DDm7RJ6sCd6k3+dYzEF
	HRcCgzJkXCLmdskHkYPGWnZtzqJc+dFm86dWzAS3KD3SMkQ1sjIoAqc+t0kAhDQzLH/1upHbx9PJ6
	XQNfL+umnr3DiR0tTdYI6erfcaAPjrncVD1eQLCytzwHR944aizeqTJN6e+Jorz7H4fkUtly9l7GN
	rc7lxF9Hzboz84KLIxMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7dar-0004vB-Ty; Fri, 28 Feb 2020 11:14:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7dag-0004u8-LR
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 11:13:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7C96246A3;
 Fri, 28 Feb 2020 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582888434;
 bh=We52bk2ew6+RuBPCye3UBP6AKkdcVEOIr014xNviGiw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iAEbzqx2ls9zhEFdHl4dEC6N9Fbhkctm2MT9i9tt8KDI/ayYAkAyQR7k3QdlzJtne
 kTWn8K5Pa3krOhHAToBxns4OAkfB4038dN8e4ntWnd3icyOuv2wpmG7FIxEf5Q1K7y
 S2rW+0x9s+5/HeO2CqwzZJZa1ETtF+MwjV9/yjK8=
Date: Fri, 28 Feb 2020 11:13:50 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: mm: convert cpu_do_switch_mm() to C
Message-ID: <20200228111350.GA2941@willie-the-truck>
References: <20200213121452.23205-1-mark.rutland@arm.com>
 <20200227142946.GG3281767@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227142946.GG3281767@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_031358_728466_C7963652 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 02:29:46PM +0000, Catalin Marinas wrote:
> On Thu, Feb 13, 2020 at 12:14:52PM +0000, Mark Rutland wrote:
> > There's no reason that cpu_do_switch_mm() needs to be written as an
> > assembly function, and having it as a C function would make it easier to
> > maintain.
> > 
> > This patch converts cpu_do_switch_mm() to C, removing code that this
> > change makes redundant (e.g. the mmid macro). Since the header comment
> > was stale and the prototype now implies all the necessary information,
> > this comment is removed. The 'pgd_phys' argument is made a phys_addr_t
> > to match the return type of virt_to_phys().
> > 
> > At the same time, post_ttbr_update_workaround() is updated to use
> > IS_ENABLED(), which allows the compiler to figure out it can elide calls
> > for !CONFIG_CAVIUM_ERRATUM_27456 builds.
> > 
> > There should be no functional change as a result of this patch.
> > 
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> 
> I'll queue this for 5.7. Does not seem to have any functional change (I
> changed the comments to C-style ones /* */).

Can you also update the comment in asm/mmu.h for the ASID() macro please?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
