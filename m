Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA2A7540E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:30:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFpVmYIYDlZZ3Pf34uEGg+r7jK94pSKFQrOfqhcjYHc=; b=GP5ULfa0upPoaT
	G5jUQrZJVIHG9DC9TyVAi3B3FWJ5mnFwy6Hq5QdtRGkvljr3Re/OxsZkv8I7obv7dddfwA9L1a178
	gfPzCDd4zL8DT5rVKhBJkoha6xq1a0Gv0ifmXOvxU7GUZClFkDLfAe2IW0/SglvR+gAVcmcPt4RS4
	LENE6u7G9DXsqPo4tV6kCJPBXgvOMSdCPDvS4jV45N+Bu+ZBFJdOX6N49P+W/lzJuFUOyimB57Hzw
	Y/3+w0Ly33RfSZLay/DVPpIyr/hnB7m91wi21Mhncjauli/X3c0XoYT32CjeKcDTgYkx7PFUdJd27
	qAlJHwTGS+/HGqveI/nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgdA-0005UB-8x; Thu, 25 Jul 2019 16:30:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgbZ-0004eo-V9
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:28:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D9F9174E;
 Thu, 25 Jul 2019 09:28:31 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 158293F71A; Thu, 25 Jul 2019 09:28:29 -0700 (PDT)
Date: Thu, 25 Jul 2019 17:28:28 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH v3 09/15] arm64/mm: Split the function
 check_and_switch_context in 3 parts
Message-ID: <20190725162827.GE4113@arrakis.emea.arm.com>
References: <20190724162534.7390-1-julien.grall@arm.com>
 <20190724162534.7390-10-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724162534.7390-10-julien.grall@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_092834_223821_77F58748 
X-CRM114-Status: GOOD (  17.61  )
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
Cc: julien.thierry@arm.com, marc.zyngier@arm.com, suzuki.poulose@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 05:25:28PM +0100, Julien Grall wrote:
> The function check_and_switch_context is used to:
>     1) Check whether the ASID is still valid
>     2) Generate a new one if it is not valid
>     3) Switch the context
> 
> While the latter is specific to the MM subsystem, the rest could be part
> of the generic ASID allocator.
> 
> After this patch, the function is now split in 3 parts which corresponds
> to the use of the functions:
>     1) asid_check_context: Check if the ASID is still valid
>     2) asid_new_context: Generate a new ASID for the context
>     3) check_and_switch_context: Call 1) and 2) and switch the context
> 
> 1) and 2) have not been merged in a single function because we want to
> avoid to add a branch in when the ASID is still valid. This will matter
> when the code will be moved in separate file later on as 1) will reside
> in the header as a static inline function.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> 
> ---
>     Will wants to avoid to add a branch when the ASID is still valid. So
>     1) and 2) are in separates function. The former will move to a new
>     header and make static inline.

Was this discussion logged somewhere, just to get the context?

I presume by "branch" you meant the function call to
asid_check_context(). Personally, I don't like the duplication of this
function in patch 13. This is part of the ASID allocation algorithm and
I prefer to keep them together (we even had a bug in here with the xchg
use).

Do you have any numbers to show how non-inlining this function affects
the performance (hackbench -P would do).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
