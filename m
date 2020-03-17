Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28009188D52
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 19:38:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BY0HRSW3ljcO0TmeXM/utQVvhSWqj8oE90prH7qPnl8=; b=ahMZVfyhVBQILK
	a8QEiE4mhJHPu0YtjqV7+27vShL27mqdRKBulaMS14gyeHJmQ/wcW6kvhI26ZRp1Zp7fXmFY4ojge
	PvBWiYfk1CMh/gQbHhbDZ31jFAa00SAXtt1cxh3QiaTddGxL2530XyBcEEvWEOalRluaRb9xaoBEM
	1nOXx9pak4CGY2REETFbCwQ5l4Rmun9+LjXJJ6C1ez+RMRLoHOt13BWCtdM3efbW9MoP1nsaaLI/w
	HaTsESTPJKWLFdVTfirRt41y3WHXlihuHw3ArSz5n1qybsr6fyOpJzjvwmJTiChghcbZpfy5aH3hI
	QkxwYT1T3FtBxD1SiyTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEH68-0001t7-V2; Tue, 17 Mar 2020 18:37:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEH5j-0001nz-GO
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 18:37:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D608131B;
 Tue, 17 Mar 2020 11:37:26 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D6D383F67D; Tue, 17 Mar 2020 11:37:25 -0700 (PDT)
Date: Tue, 17 Mar 2020 18:37:23 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: glider@google.com
Subject: Re: [PATCH] arm64: define __alloc_zeroed_user_highpage
Message-ID: <20200317183723.GH632169@arrakis.emea.arm.com>
References: <20200312155920.50067-1-glider@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312155920.50067-1-glider@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_113727_923255_5DEF5E01 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, keescook@chromium.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 04:59:20PM +0100, glider@google.com wrote:
> When running the kernel with init_on_alloc=1, calling the default
> implementation of __alloc_zeroed_user_highpage() from include/linux/highmem.h
> leads to double-initialization of the allocated page (first by the page
> allocator, then by clear_user_page().
> Calling alloc_page_vma() with __GFP_ZERO, similarly to e.g. x86, seems
> to be enough to ensure the user page is zeroed only once.
> 
> Signed-off-by: Alexander Potapenko <glider@google.com>

I queued this for 5.7. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
