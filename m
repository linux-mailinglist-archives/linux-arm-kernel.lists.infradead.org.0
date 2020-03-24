Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 749D81916A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 17:42:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7FfCEu1FarxT3SnKCDUzSBCDJ359fH+CGfJWXfRk9k=; b=t2bQE9lUCGc+KI
	DguHBbNdkJ/eKlI0YaU8jEsWcHVQXjrwY0/Ynv2OtzsigZjbuYJF1wG01WwmH4tnU8hy1gHcvrPuz
	W0RJm85qwwBQYlnQZvH0bCmRM64IHveEzVGcKZ5atAxuq9yHo1YX5Z3gGdDANFzNt1mWIySgh9J4/
	fLhaYjThnBKwmd8CbkE/ApQgYgm4mtpjhqGLXoangsUY/9hWLiE+LvCy8+Xa2/dAt1accyDQXSWvj
	AYTc7XMGwJ7zwlVFBq5c8BkBbD9L/KVROmOGVLERMz30gPjjOQnZVldOfFcWDbxne2WYXlAyzsVjh
	LsTwpFnmo6sE5ImYxbJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGmd6-0004L5-4X; Tue, 24 Mar 2020 16:42:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGmcp-0004KP-N4
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 16:42:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F6A71FB;
 Tue, 24 Mar 2020 09:41:57 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B87AD3F52E;
 Tue, 24 Mar 2020 09:41:55 -0700 (PDT)
Date: Tue, 24 Mar 2020 16:41:53 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 3/3] arm64: acpi: Make apei_claim_sea() synchronise with
 APEI's irq work
Message-ID: <20200324164152.GB3901@mbp>
References: <20200228174817.74278-1-james.morse@arm.com>
 <20200228174817.74278-4-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228174817.74278-4-james.morse@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_094159_805051_7F8EFC42 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tony Luck <tony.luck@intel.com>,
 linux-acpi@vger.kernel.org, Tyler Baicar <tyler@amperecomputing.com>,
 Xie XiuQi <xiexiuqi@huawei.com>, Rafael Wysocki <rjw@rjwysocki.net>,
 linux-mm@kvack.org, Borislav Petkov <bp@alien8.de>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 05:48:17PM +0000, James Morse wrote:
> APEI is unable to do all of its error handling work in nmi-context, so
> it defers non-fatal work onto the irq_work queue. arch_irq_work_raise()
> sends an IPI to the calling cpu, but this is not guaranteed to be taken
> before returning to user-space.
> 
> Unless the exception interrupted a context with irqs-masked,
> irq_work_run() can run immediately. Otherwise return -EINPROGRESS to
> indicate ghes_notify_sea() found some work to do, but it hasn't
> finished yet.
> 
> With this apei_claim_sea() returning '0' means this external-abort was
> also notification of a firmware-first RAS error, and that APEI has
> processed the CPER records.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
> Changes since $last_year:
>  * Dropped all the tags ... its been a year.

I think this patch hasn't changed much since, so my ack still stands.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
