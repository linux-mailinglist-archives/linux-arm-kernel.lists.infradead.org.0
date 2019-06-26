Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A99A35673C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txzJqG6Qg0foZ5bQEatD1RU80epW4m0Ptjadwc3YJ+g=; b=UC73EsQ7g3dmt4
	9XEXNHEgNxh0pcbsOwOxCPh8WsDay5TFYYSIzFkawWc7O7q0tn/FGsMYlUeOvh+VXEIBhn8FkIPWq
	Q7s3zFyDVpZtwl4uGXNZmtQ8LCovlxdPOH7h3mNj6lhGCocD7lCZoTEgEZnP4cm7XxngQLT3LAnRx
	gqrz9Vwl5dbCLM0dxoBKJMAn8jpt3v6YopYKLYaoy2/Gyjl6XZJeA0AUf/R8tY0mFLT8WaGd8Co3R
	WqPcHTsuRE4JnSYMVNPlMnGZjQXtXPx8+ieJI7Rhpd5KOhCGZjb5rrU7WLC759M1B3mOT5xtelksX
	7K1QSXgp6zmZmINo6/PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg5bn-0000Cp-Lg; Wed, 26 Jun 2019 10:56:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg5bf-0000CI-8K
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:56:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0FB7360;
 Wed, 26 Jun 2019 03:56:48 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A4BDD3F718; Wed, 26 Jun 2019 03:56:47 -0700 (PDT)
Date: Wed, 26 Jun 2019 11:56:45 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <Steve.Capper@arm.com>
Subject: Re: [PATCH v3 01/10] arm64: mm: Flip kernel VA space
Message-ID: <20190626105645.GD1161@arrakis.emea.arm.com>
References: <20190612172658.28522-1-steve.capper@arm.com>
 <20190612172658.28522-2-steve.capper@arm.com>
 <b8147191-7c02-66c0-12ff-96de972bf2ca@arm.com>
 <20190617160901.GB1976@capper-debian.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617160901.GB1976@capper-debian.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_035651_343905_B5AF2E7A 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Marc Zyngier <Marc.Zyngier@arm.com>,
 "bhsharma@redhat.com" <bhsharma@redhat.com>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 Will Deacon <Will.Deacon@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 05:09:11PM +0100, Steve Capper wrote:
> On Fri, Jun 14, 2019 at 05:47:55PM +0530, Anshuman Khandual wrote:
> > On 06/12/2019 10:56 PM, Steve Capper wrote:
> > > We need to adjust:
> > >  *) KASAN shadow region placement logic,
> > >  *) KASAN_SHADOW_OFFSET computation logic,
> > >  *) virt_to_phys, phys_to_virt checks,
> > >  *) page table dumper.
> > > 
> > > These are all small changes, that need to take place atomically, so they
> > > are bundled into this commit.
> > 
> > It will be great to add a before patch and after patch view of the kernel
> > virtual address space enlisting different sections to make things apparent
> > about what and how the layout has changed.
> 
> Hmm, pondering this. I can introduce a documentation document in a new
> first patch then modify it as the series changes?
> 
> Catalin, would that work for you?

If you want to. Otherwise just a patch documenting the final layout
would work for me (possibly mentioning the commit which removed the
original document as a reference).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
