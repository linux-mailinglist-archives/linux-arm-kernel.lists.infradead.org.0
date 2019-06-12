Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 799E742B81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jo7aHOCdplCYivfoDt8kydZSGEA3PvFdx+dypm0L9tY=; b=VkEN/G947dYjR4
	l6PpTHt0qNZjlL9IDTIIHS/aBxEIRLwyNua9SzknDlGo4UXtD855Pf6tFIeIY31R8oalZ+LrbaQmP
	a7mhYXuJfOC5aiiV5uUd4tjpRUSMT8uf4kSg89oTqeDDsPKzRMUWaTq+OD2Nx/Dz8h9s+OaYX09SG
	brW5aPBwJsd5rL0sPflcHCdnK0PWwE7bl1pmHVmS3/tBA7CqKQowbXrtLOHxqWrquKMTXLH4eJQMK
	X4pKJyXlcqqjankq0dUBWeabJq3Svlt6PjbtpnKB3OsoJhu4TkTIelOKIKqOPCAdVTVyZT0bOw1FA
	ejSkr5e4blZK+94jk2rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb5d3-0004X6-9b; Wed, 12 Jun 2019 15:57:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb5cY-0004U7-By
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:57:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F334337;
 Wed, 12 Jun 2019 08:57:02 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B245D3F73C;
 Wed, 12 Jun 2019 08:56:58 -0700 (PDT)
Date: Wed, 12 Jun 2019 16:56:52 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v4 2/2] arm64: Relax
 Documentation/arm64/tagged-pointers.txt
Message-ID: <20190612155651.GM28951@C02TF0J2HF1T.local>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
 <20190612142111.28161-3-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612142111.28161-3-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_085707_189432_64535E8B 
X-CRM114-Status: GOOD (  16.75  )
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-kselftest@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A couple of minor nits below.

On Wed, Jun 12, 2019 at 03:21:11PM +0100, Vincenzo Frascino wrote:
> --- a/Documentation/arm64/tagged-pointers.txt
> +++ b/Documentation/arm64/tagged-pointers.txt
> @@ -18,7 +18,8 @@ Passing tagged addresses to the kernel
>  --------------------------------------
>  
>  All interpretation of userspace memory addresses by the kernel assumes
> -an address tag of 0x00.
> +an address tag of 0x00, unless the userspace opts-in the ARM64 Tagged
> +Address ABI via the PR_SET_TAGGED_ADDR_CTRL prctl().
>  
>  This includes, but is not limited to, addresses found in:
>  
> @@ -31,18 +32,23 @@ This includes, but is not limited to, addresses found in:
>   - the frame pointer (x29) and frame records, e.g. when interpreting
>     them to generate a backtrace or call graph.
>  
> -Using non-zero address tags in any of these locations may result in an
> -error code being returned, a (fatal) signal being raised, or other modes
> -of failure.
> +Using non-zero address tags in any of these locations when the
> +userspace application did not opt-in to the ARM64 Tagged Address ABI,

Nitpick: drop the comma after "ABI," since a predicate follows.

> +may result in an error code being returned, a (fatal) signal being raised,
> +or other modes of failure.
>  
> -For these reasons, passing non-zero address tags to the kernel via
> -system calls is forbidden, and using a non-zero address tag for sp is
> -strongly discouraged.
> +For these reasons, when the userspace application did not opt-in, passing
> +non-zero address tags to the kernel via system calls is forbidden, and using
> +a non-zero address tag for sp is strongly discouraged.
>  
>  Programs maintaining a frame pointer and frame records that use non-zero
>  address tags may suffer impaired or inaccurate debug and profiling
>  visibility.
>  
> +A definition of the meaning of ARM64 Tagged Address ABI and of the
> +guarantees that the ABI provides when the userspace opts-in via prctl()
> +can be found in: Documentation/arm64/tagged-address-abi.txt.
> +
>  
>  Preserving tags
>  ---------------
> @@ -57,6 +63,9 @@ be preserved.
>  The architecture prevents the use of a tagged PC, so the upper byte will
>  be set to a sign-extension of bit 55 on exception return.
>  
> +This behaviours are preserved even when the the userspace opts-in the ARM64

"These" ... "opts in to"

> +Tagged Address ABI via the PR_SET_TAGGED_ADDR_CTRL prctl().
> +
>  
>  Other considerations
>  --------------------
> -- 
> 2.21.0

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
