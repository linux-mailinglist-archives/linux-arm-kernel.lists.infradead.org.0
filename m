Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C047515BDA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 12:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4FeORELzv9+BfwO4W0yQVa60OctPBySDFQWwo89i864=; b=sTkeK06uIhWO9G
	AMBhv68R1j/wH8w3lvDGC3Vtosd9T4+wyUhms8npPPCcA1vEMe+g3+1SFkrkZBI20O+0sokc53Lij
	VjbICsrJFWZ1BPx3fAsGqKGConVIXvVAcsKXswmzjRMcida9/w8S3Lj2VyrCsj504l8soJIng3/AQ
	seKwEHFoUDvOGCkdyOZIed622Rt2BN5mzSQR+lwObEJQM+KxzbEsApLkuRFZBv6ZnIkFNCxz+dkID
	EhcI5pb83GwZanbjdhaytoO9p707EMbMOiLnfdM5XRgLvV/oIEjWSoivHWfP+Ql6WZWmW9txTLfEV
	0h0VWBQbMRynOGH9dhUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2CbA-0006Qa-TD; Thu, 13 Feb 2020 11:24:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Cb2-0006Pv-UG
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 11:23:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2FE651FB;
 Thu, 13 Feb 2020 03:23:50 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6ACBA3F6CF; Thu, 13 Feb 2020 03:23:48 -0800 (PST)
Date: Thu, 13 Feb 2020 11:23:46 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH 00/22] arm64: Memory Tagging Extension user-space support
Message-ID: <20200213112346.GA639258@arrakis.emea.arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <CAMn1gO6f4UUdhBe1sfiAPBW=zr-C3ypUv-Pwgx=wvmJjp4xfyA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMn1gO6f4UUdhBe1sfiAPBW=zr-C3ypUv-Pwgx=wvmJjp4xfyA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_032353_020015_F7AC80A0 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Kostya Kortchinsky <kostyak@google.com>, Kostya Serebryany <kcc@google.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Evgenii Stepanov <eugenis@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 10:05:10AM -0800, Peter Collingbourne wrote:
> On Wed, Dec 11, 2019 at 10:40 AM Catalin Marinas
> <catalin.marinas@arm.com> wrote:
> > This series proposes the initial user-space support for the ARMv8.5
> > Memory Tagging Extension [1].
> 
> Thanks for sending out this series. I have been testing it on Android
> with the FVP model and my in-development scudo changes that add memory
> tagging support [1], and have not noticed any problems so far.

Thanks for the comments so far and the testing. I'll post a v2 next
week.

> > - Clarify whether mmap(tagged_addr, PROT_MTE) pre-tags the memory with
> >   the tag given in the tagged_addr hint. Strong justification is
> >   required for this as it would force arm64 to disable the zero page.
> 
> We would like to use this feature in scudo to tag large (>128KB on
> Android) allocations, which are currently allocated via mmap rather
> than from an allocation pool. Otherwise we would need to pay the cost
> (perf and RSS) of faulting all of their pages at allocation time
> instead of on demand, if we want to tag them.

Would the default tag of 0 be sufficient here? We disable match-all for
user-space already, so 0 is not a wildcard.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
