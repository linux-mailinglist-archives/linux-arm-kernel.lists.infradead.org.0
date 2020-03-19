Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6068818BFAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 19:52:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIqDbQ4FhO5f1NJlum+3c/PgkZfCnhin0E2uP5oDmo4=; b=SfAtwWK6ndKYg/
	UfGz4q/7nTAiVcoR7ew4MdlJzcu6p/GnugLzJDd+G+gL10VQDTtwD7vpJDnGwfnLIxWjOFaO4uyUJ
	XMbR0dfP8NOCRujZ7bmqvafRNsgNFkCHeZ6ScYBQtwB4uvpeD0o2XcVbV89Oqt8l/He+v/1Sr2r++
	322nawTTgG2/p6Fug5bFIoj0HjT1pMfduzZrMNIP8nPxPndloH502hKomlNRlHbAsCKGqnYKGjg28
	5/CZzPpriTIkIpeob5T1jL8SbTia1kv9R3KmToFtDAiVZNPJSzZBfnGSSaGcaW1XQNSIN0lKK7BSr
	WeLN5CzugRXkcMgsEhJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF0HQ-0004h2-A5; Thu, 19 Mar 2020 18:52:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF0HI-0004g5-2y
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 18:52:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 132C92070A;
 Thu, 19 Mar 2020 18:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584643941;
 bh=m+shdL7C7EaM3QtPm8TsyLH2ZhlRHrypClgBpyQGT48=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HHGlocEeaJaJXF2JjGzFzJqrg1ksv0lrzQ0/Vu+MFhg3roqKb9vpUmJn3+LshqLnA
 TBGeYPYjvNWZDnktdr9genFx9zC6PfegcStAynai0o154Sx8gMVJqvYvciCUL6lxYu
 +7wpTB9QVeieoB+2vnsLbmKArqykYvBvc6plJ1WM=
Date: Thu, 19 Mar 2020 18:52:16 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: compat: Fix syscall number of compat_clock_getres
Message-ID: <20200319185216.GD27141@willie-the-truck>
References: <20200319141138.19343-1-vincenzo.frascino@arm.com>
 <20200319181203.GB29214@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319181203.GB29214@mbp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_115224_151708_94624E34 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 06:12:03PM +0000, Catalin Marinas wrote:
> On Thu, Mar 19, 2020 at 02:11:38PM +0000, Vincenzo Frascino wrote:
> > The syscall number of compat_clock_getres was erroneously set to 247
> > instead of 264. This causes the vDSO fallback of clock_getres to land
> > on the wrong syscall.
> > 
> > Address the issue fixing the syscall number of compat_clock_getres.
> > 
> > Fixes: 53c489e1dfeb6 ("arm64: compat: Add missing syscall numbers")
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will.deacon@arm.com>
> 
> Will left ARM about 8 months ago IIRC ;).

Haha, well I certainly tried to!

> > Cc: stable@vger.kernel.org
> > Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> 
> I think Will could take this as a fix.

For sure, I'm queuing it now.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
