Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E82173881
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 14:38:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8B9QAim1kNZRtxvZaJInSv4AQfJ0ZnhQcX2Yyzur8ok=; b=gQdYNzFfCmEVQH
	rjK/TvZ5orjMetxBgjlTfzZPfDyO9C2HHkkT2YcfYgnWDUqzKB0GbK76/LpykkCrh+KDMPez76lPP
	DwfZxzXeC9VRGv0jPe4Oytg8WcSvjiOJj950OsqHsEpyoHyd2DqAmw8vvpUKvuUR1Qn23tSSdom3U
	xtQcX1qOfdQvUAo7y64eTmPX7W5BR50jW/W0mLPsr3P+lyC8FdoRHcejYA4V+QMAX0EIVAmTSkQ5H
	9ceQ83B206zj/516UnL0Wdi7Y9swbmkklhN69+espLXwXlcKHtaX38vMLSclUUvbCbTtrG6xbNl0Z
	1/yHitsfvHL8vEJna3Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7fqb-0003HW-VB; Fri, 28 Feb 2020 13:38:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7fqS-0003H8-PZ
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 13:38:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9233531B;
 Fri, 28 Feb 2020 05:38:23 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 EF0CB3F7B4; Fri, 28 Feb 2020 05:38:22 -0800 (PST)
Date: Fri, 28 Feb 2020 13:38:20 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: mm: convert cpu_do_switch_mm() to C
Message-ID: <20200228133820.GC4019108@arrakis.emea.arm.com>
References: <20200213121452.23205-1-mark.rutland@arm.com>
 <20200227142946.GG3281767@arrakis.emea.arm.com>
 <20200228111350.GA2941@willie-the-truck>
 <20200228124731.GA4179@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228124731.GA4179@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_053824_870875_64348962 
X-CRM114-Status: GOOD (  10.39  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 12:47:32PM +0000, Will Deacon wrote:
> From 2528094854c3b56ad3fe49d2164c9a920a251f05 Mon Sep 17 00:00:00 2001
> From: Will Deacon <will@kernel.org>
> Date: Fri, 28 Feb 2020 12:43:55 +0000
> Subject: [PATCH] arm64: Update comment for ASID() macro
> 
> Commit 25b92693a1b6 ("arm64: mm: convert cpu_do_switch_mm() to C") added
> a new use of the ASID() macro, so update the comment in asm/mmu.h which
> reasons about why an atomic reload of 'mm->context.id.counter' is not
> required.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Will Deacon <will@kernel.org>

Thanks. Applied.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
