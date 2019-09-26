Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 943B0BF63D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 17:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c1t452c8GqjUu+IO7ZonnJRhfk4kzoCn9HpRqh36Azo=; b=jO5Dhy5gAniU81
	7nQ2GUXvqWgI/GG92iNRHRYE8BQOazB3GedLFbvD6UtxWDO5Hhgv99z6d6FuIw2PWO74Pu+W2ZIaT
	m/ibSA+B0dXb8XLPJ9Zn9mkENE/kZbyhMl7V1RM7KWsJobn9tpOtQU33bcskYrvGF01h6aoAP6+ue
	APiac9YB+nnGd7Qmg6ICNuwnZ6e10cHHugNvLA+BjyL/KTqkag62QUEQ7PqV445oGePupcQr3xhHT
	//zJxp44/5W6DqCtMXwAoGZd6ZOm813pz9f3BljhzQNR9n4uxoQE5cG0YyBiF0qHfPpnhDTsAZMTp
	kYTmONL6Ya9gNWPZsoCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDW3p-0005ql-6H; Thu, 26 Sep 2019 15:52:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDW3b-0005qQ-OX
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 15:51:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCE1028;
 Thu, 26 Sep 2019 08:51:50 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DA1793F534; Thu, 26 Sep 2019 08:51:49 -0700 (PDT)
Date: Thu, 26 Sep 2019 16:51:47 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] arm64: Allow disabling of the compat vDSO
Message-ID: <20190926155147.GL9689@arrakis.emea.arm.com>
References: <20190925130926.50674-1-catalin.marinas@arm.com>
 <CAKwvOdn2Sf7aAt0zqUUqGY6nXg-C3be7An9amy4tfiNr_8ERJw@mail.gmail.com>
 <20190925170838.GK7042@arrakis.emea.arm.com>
 <a7e06b86-facd-21de-c47c-246d0da8d80d@arm.com>
 <20190926074717.GA26802@iMac.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926074717.GA26802@iMac.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_085151_843226_6DC11A71 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 08:47:18AM +0100, Catalin Marinas wrote:
> On Thu, Sep 26, 2019 at 01:06:50AM +0100, Vincenzo Frascino wrote:
> > On 9/25/19 6:08 PM, Catalin Marinas wrote:
> > > On Wed, Sep 25, 2019 at 09:53:16AM -0700, Nick Desaulniers wrote:
> > >> On Wed, Sep 25, 2019 at 6:09 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > >>> - clean up the headers includes; vDSO should not include kernel-only
> > >>>   headers that may even contain code patched at run-time
> > >>
> > >> This is a big one; Clang validates the inline asm constraints for
> > >> extended inline assembly, GCC does not for dead code.  So Clang chokes
> > >> on the inclusion of arm64 headers using extended inline assembly when
> > >> being compiled for arm-linux-gnueabi.
> > > 
> > > Whether clang or gcc, I'd like this fixed anyway. At some point we may
> > > inadvertently rely on some code which is patched at boot time for the
> > > kernel code but not for the vDSO.
> > 
> > Do we have any code of this kind in header files?
> > 
> > The vDSO library uses only a subset of the headers (mainly Macros) hence all the
> > unused symbols should be compiled out. Is your concern only theoretical or do
> > you have an example on where this could be happening?
> 
> At the moment it's rather theoretical.

Actually, it's not. The moment the compat vdso Makefile needs the line
below, we are doing it wrong:

VDSO_CFLAGS += -D__uint128_t='void*'

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
