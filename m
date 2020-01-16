Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA17713D89A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:09:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w97+RWzmpJvfwBj5LBYWtLSnC/netE6FIg/hvztxpYg=; b=WVvkdmwrymmOmq
	lj6G9h4TN+hardOKor9lLvFVCk6qUi7GNsaQLOpAAcPSyaBHB/XTVUN1qLG6rYSKDm0KmG4pwhPL/
	QtlikZQsHdzNRdCOYrsp2XS/12K+dWUPZFLjoFbLzM/r1e5BtTMjFRBoATvYYXnfXCd0NrqSa7PTB
	rlmRk6/srpb4vqyGXenHdhf59oFCsT5pDpLxLorw9S7YNRsl2+71wDzI1lzfKkQOIk+Yaqz1yMf2V
	EOZdD9fe9qhz+5KvXBPpFcyIvGis/0dbqwO8Z2K/AYz/ecTFXBfYMmCLr+ICafAw0LVainK3RuVg8
	Rg701aq1lc99UqWeZFGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is31q-0004UT-H9; Thu, 16 Jan 2020 11:09:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is31c-0004TU-9S
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:09:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 16F242072B;
 Thu, 16 Jan 2020 11:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579172959;
 bh=vc1eS1Q2QThKXCZG9OTh32DIlaGsAXxxnnsQoKtmYG4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FDxpSI2IleBtE1CP1lydmOJTLtN7qR5EhtKAWBT4SkcqCQ2C003S4z7BH19ajI/AI
 m5y7zO0Nf4rerc+XhY4KkohEtm4qxtLBLSHZXBZV41BQjzBH3csEeLZabpO4Kwp+h2
 qFuR9y7c0+3Q5scHUGWukt1ME/1H3mxhDZX4KR7I=
Date: Thu, 16 Jan 2020 11:09:14 +0000
From: Will Deacon <will@kernel.org>
To: yeyunfeng <yeyunfeng@huawei.com>
Subject: Re: [PATCH] arm64: mm: support setting page attributes for debug
 situation
Message-ID: <20200116110914.GA16345@willie-the-truck>
References: <5a3ab728-b895-0930-9540-5e9c586e8858@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a3ab728-b895-0930-9540-5e9c586e8858@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_030920_349719_9B2AFB0E 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: anshuman.khandual@arm.com, hushiyuan@huawei.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, willy@infradead.org, linfeilong@huawei.com,
 ard.biesheuvel@arm.com, akpm@linux-foundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 03:47:41PM +0800, yeyunfeng wrote:
> When rodata_full is set or pagealloc debug is enabled, block mappings or
> contiguou hints are no longer used for linear address area. Therefore,
> support setting page attributes in this case is useful for debugging
> memory corruption problems.
> 
> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
> ---
>  arch/arm64/mm/pageattr.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)

Although I can kind of see what you're getting at, I'm not keen on merging
this without a user. If you're just referring to random debug hacks, then I
think this change could be part of those too.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
