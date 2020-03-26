Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B9C193DEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 12:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3HCeIP+nr8L1b3Nqy6Ee0SiO+iJUOLBIMXVfmu1xBg=; b=iCLS/GKfJIpA8z
	s+UcM6Cz/S3RdLUCTQNyxPAQcdsFpxvhkljth6qNqMGS43/pZwLuwoM1Mj+QwbiwBAJTpNE5SJlMz
	90l52uj/MaxwFjaxn4BI8GyaBNb4Uzas0qyDft3PnJk68ggBQ7bQYjDV00OwHtPARpeOwgXxkmeGC
	+dADZwAlteyMJU5JAE+uXr3cFN5VTHGhECv4ABnzZe+XyxjeOAsOuGt38c3rICFgfP5OqrMpKPKcA
	gdl3SBSnnDbPDOzSTlSKP+2tayxvGY7gkvqiekS1cPDq8rzuNqEFIEVpqB8Pcc2UO1Ffrm2tzkhEb
	xYb/zrjH+1zoJ0+C6pJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQm0-0001wg-7A; Thu, 26 Mar 2020 11:34:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQln-0001vg-E6
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 11:33:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 221407FA;
 Thu, 26 Mar 2020 04:33:53 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 48D713F71F;
 Thu, 26 Mar 2020 04:33:52 -0700 (PDT)
Date: Thu, 26 Mar 2020 11:33:49 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] mm/mremap: Add comment explaining the untagging
 behaviour of mremap()
Message-ID: <20200326113349.GB26987@mbp>
References: <20200325111347.32553-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325111347.32553-1-will@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_043355_518795_0ECEFC30 
X-CRM114-Status: GOOD (  10.29  )
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>, kernel-team@android.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 11:13:46AM +0000, Will Deacon wrote:
> Commit dcde237319e6 ("mm: Avoid creating virtual address aliases in
> brk()/mmap()/mremap()") changed mremap() so that only the 'old' address
> is untagged, leaving the 'new' address in the form it was passed from
> userspace. This prevents the unexpected creation of aliasing virtual
> mappings in userspace, but looks a bit odd when you read the code.
> 
> Add a comment justifying the untagging behaviour in mremap().
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Will Deacon <will@kernel.org>

I queued this patch via the arm64 tree (for 5.7-rc1). Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
