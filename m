Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808FD1C08F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4AKVuVEdI4t21E7xZoOKYin3O2mtxAWXymFqJ5t9aac=; b=lVJoKlUVLXCwd1
	FvZRjoUO4xoT3q+a3hYCku08ZKDrK2uoxJX+Oy+o0CL5bj4t5vVzMqFJm0IoCJvEw6Kjn2ZVV7ckd
	J/wXAmFvkoAI4iJ6GDBHqWrHGbqOMuwqSABkaqtEcp0Ix4gg9UDDm5bAXkLVx8GSrug8I4wuIvCqg
	K6v2hSxxX8+shs+72AN8edxEDHI8xeh4n3QCSajw0PUY/qaaU7GrHBglS44vK28y5b2BTnAztyQhs
	ojls9HBhOFzRLI3vqYeDVfuebZWCCfbmjmcgfR7xbSDi45/056QNpA67BbraBNGTIVqdt5K+3XCKQ
	fgb4caRKiFsyUk/oBpZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGVz-0006cv-3K; Thu, 30 Apr 2020 21:14:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGU3-0005EW-DY
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:12:41 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAA492070B;
 Thu, 30 Apr 2020 21:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588281158;
 bh=v9Lf0rrVZo5rNgO4FTMUCWiZC44pRfkJihz7+RCKImY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cAUG6+W30h45pEb8N67PLRnG1u47+QtFHjY6eVBWzxwBmg/RqAYUr7mcYceljXtNV
 qIwuGqVJOQkCHRLrvw/SZNNsmzfdI7ByqbyxhVD+gWZhXJjGEdNDUsiddx2N48DYNn
 QCR7MSYSHVcEZ4VjMjDeTSRhG+rWW9VbBfswoA64=
From: Will Deacon <will@kernel.org>
To: Guixiong Wei <guixiongwei@gmail.com>,
	catalin.marinas@arm.com
Subject: Re: [PATCH v2] arm: mm: use __pfn_to_section() to get mem_section
Date: Thu, 30 Apr 2020 22:12:24 +0100
Message-Id: <158827763886.6823.16995736264888732732.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200430161858.11379-1-guixiongwei@gmail.com>
References: <20200430161858.11379-1-guixiongwei@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141239_502220_D3550B02 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: akpm@linux-foundation.org, steve.capper@arm.com,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 linux-arm-kernel@lists.infradead.org, tglx@linutronix.de,
 Will Deacon <will@kernel.org>, guro@fb.com, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 1 May 2020 06:18:58 +1400, Guixiong Wei wrote:
> __pfn_to_section() helper which already wraps around
> __nr_to_section(pfn_to_section_nr(pfn)), should be used
> directly instead.

Applied to arm64 (for-next/misc), thanks!

[1/1] arm: mm: use __pfn_to_section() to get mem_section
      https://git.kernel.org/arm64/c/037d9303a7e7

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
