Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6ED217169E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:02:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTfWPx3lHP+cMk+q7veFg9zEjGfc/wzV4J7UjWKySOU=; b=m2cBhYumCYWphh
	9hs/Ut2aTUSiGQFwv2PJOfeaeWTqIm6oEQFhRilJTi9j4gytubdmYY5AItKvdRSws4mZM2KKNysmC
	3AI8QWjvAVFlVEUBKii2ZfCQNQIOBYqY3hlbJz4bS8H42A4AfsJYY/+kgoJDrHLZgdkB35YPPp9Cr
	GYO4BtjEsiLSaBLQv7rLuWWJXcY0jPc0PBNv+smzQNeh/7jVSYlNw9yg93IEF6uxRQ74KhBq7B4Og
	kgS4umAgt+6qhZm9BBHwAZhwbE95sLg3vgCQ5b6h6c5W02pXlR2swYfdCe0HnIavFEjhroM1roMRe
	uoFOHN83kA1XxZ5vL6JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Hrw-0001P3-8p; Thu, 27 Feb 2020 12:02:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Hrn-0001OB-Oy
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:02:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 458B51FB;
 Thu, 27 Feb 2020 04:02:10 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 9FD413F73B; Thu, 27 Feb 2020 04:02:07 -0800 (PST)
Date: Thu, 27 Feb 2020 12:02:05 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V13 0/2] arm64/mm: Enable memory hot remove
Message-ID: <20200227120205.GD3281767@arrakis.emea.arm.com>
References: <1581565532-27916-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581565532-27916-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_040211_853408_AEAC10E5 
X-CRM114-Status: UNSURE (   6.74  )
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
Cc: mark.rutland@arm.com, valentin.schneider@arm.com,
 mgorman@techsingularity.net, david@redhat.com, ira.weiny@intel.com,
 steve.capper@arm.com, suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 steven.price@arm.com, linux-mm@kvack.org, logang@deltatee.com,
 broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com, arunks@codeaurora.org,
 akpm@linux-foundation.org, osalvador@suse.de, will@kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 Robin.Murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 09:15:30AM +0530, Anshuman Khandual wrote:
> Anshuman Khandual (2):
>   arm64/mm: Hold memory hotplug lock while walking for kernel page table dump
>   arm64/mm: Enable memory hot remove

Queued for 5.7. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
