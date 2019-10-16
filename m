Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF043D93F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYOSWYy7ocBBh7+/6lh5Rn0DogWc8kFqkgPm8TP+5+Y=; b=c+MkPeidUaD3qp
	/f4CPZL25ds4+daOzL+ct10zfhdI0LvOnouNmsFzC53njHJs7SvHv0TuB744+H61FRerZMT4c+HI+
	GL4AR9/luhNlhZ1gk1pGif0LwZO/UBTAqthW0LzvejrSCMQ7zgVzQ8gsHwBfI0Z9iIb2oBs998Wiv
	NG5vG8fBEMSJZUk5kbkiKOtJFIwjmg8fDxGtvMxGYaXKLPoK6LKatAA6dT9rTFaBXqD2oqNWPnZuz
	7fPxAvjFlTReRYLkuEQnzCkCqkbdi+f98A7guIaasyQNDL0r1CYNc1kvcnCGWLolN8jDFCWkNQwWd
	Vifu6R3OFUky/RZw2gIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkMP-00006m-O5; Wed, 16 Oct 2019 14:33:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkMG-00005W-0j
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:33:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2492D142F;
 Wed, 16 Oct 2019 07:32:57 -0700 (PDT)
Received: from arrakis.emea.arm.com (unknown [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C5453F68E;
 Wed, 16 Oct 2019 07:32:54 -0700 (PDT)
Date: Wed, 16 Oct 2019 15:32:52 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v12 0/4] fix double page fault in cow_user_page for pfn
 mapping
Message-ID: <20191016143252.GJ49619@arrakis.emea.arm.com>
References: <20191011140939.6115-1-justin.he@arm.com>
 <20191015001834.wwkd46t6dwicta7n@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015001834.wwkd46t6dwicta7n@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_073300_103586_6C6404D8 
X-CRM114-Status: GOOD (  15.51  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Jia He <justin.he@arm.com>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 Marc Zyngier <maz@kernel.org>, x86@kernel.org, hejianet@gmail.com,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, "H. Peter Anvin" <hpa@zytor.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 nd@arm.com, Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 01:18:34AM +0100, Will Deacon wrote:
> On Fri, Oct 11, 2019 at 10:09:35PM +0800, Jia He wrote:
> > When we tested pmdk unit test vmmalloc_fork TEST1 in arm64 guest, there
> > will be a double page fault in __copy_from_user_inatomic of cow_user_page.
> > 
> > As told by Catalin: "On arm64 without hardware Access Flag, copying from
> > user will fail because the pte is old and cannot be marked young. So we
> > always end up with zeroed page after fork() + CoW for pfn mappings. we
> > don't always have a hardware-managed access flag on arm64."
> > 
> > -Changes
> > v12:
> >     refine PATCH 01, remove the !! since C languages can convert unsigned
> >     to bool (Catalin)
> 
> Thanks. I think it's a bit late to take something like this for 5.4 now,
> especially as the current behaviour has always been there. Hopefully
> somebody can queue it for 5.5 instead.

I can queue this through the arm64 tree for 5.5 if I get an ack on the
x86 patch (3/4) or I don't hear any complaints.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
