Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7221A0088
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 13:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJxDFOHfqd2kXQgwHGmx+CO7LurCr+ti3wu5qNUEuNE=; b=ctUvXolLSh/KYn
	53YKpQGpsMVWbfR/8X6yI5UkMX2Y14EtkTZecJJT/Xuf4EDksUBFbQEFfUnK9TJMridZ7TR3fC/5q
	WxEq1dI5ifsnxsL1szoxp8lcC7BqjKVcFnpLqjLL7YG8rgFF8rvwH5Rx2jqGEjcJNZJTeRwZTF6Mo
	QyAB3kRAsgmo92wzZ6JHt0pW3XkxchIlWyHMqsVi2/jxO65phDSfKuU9dgvSr+kF1EfMjdtleqtnz
	ov4luZ3azx4mG5iDb9tbm524vUmu4gpRMJwmrVwEfHU4JUznY7sauzGWSXHmGxirN8VX6S19aYlEN
	XIScnr6wMb6Cmnz0lIEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2vt4-0005En-Bn; Wed, 28 Aug 2019 11:13:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vsA-0004kf-DC
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 11:12:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B932337;
 Wed, 28 Aug 2019 04:12:17 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8DE4E3F246;
 Wed, 28 Aug 2019 04:12:16 -0700 (PDT)
Subject: Re: [PATCH] arm64: kpti: ensure patched kernel text is fetched from
 PoU
To: Mark Rutland <mark.rutland@arm.com>
References: <20190827171257.36023-1-mark.rutland@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <86e5726b-70ed-e930-9b62-ac74b083af6b@arm.com>
Date: Wed, 28 Aug 2019 12:12:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190827171257.36023-1-mark.rutland@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_041218_534193_7432CBF9 
X-CRM114-Status: GOOD (  12.94  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 27/08/2019 18:12, Mark Rutland wrote:
> While the MMUs is disabled, I-cache speculation can result in

(Nit: MMU)

> instructions being fetched from the PoC. During boot we may patch
> instructions (e.g. for alternatives and jump labels), and these may be
> dirty at the PoU (and stale at the PoC).
> 
> Thus, while the MMU is disabled in the KPTI pagetable fixup code we may
> load stale instructions into the I-cache, potentially leading to
> subsequent crashes when executing regions of code which have been
> modified at runtime.
> 
> Similarly to commit:
> 
>   8ec41987436d566f ("arm64: mm: ensure patched kernel text is fetched from PoU")
> 
> ... we can invalidate the I-cache after enabling the MMU to prevent such
> issues.

> The KPTI pagetable fixup code itself should be clean to the PoC per the
> boot protocol, so no maintenance is required for this code.

Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
