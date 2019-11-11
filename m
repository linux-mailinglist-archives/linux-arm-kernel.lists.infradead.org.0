Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB971F769A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+nrHEA++HmN256FANw+cZPgowGlU0BDYHopkUJfy0tI=; b=PZ/Jr2D1NIm4gcm6CXi6ahFdm
	JroLbitbCp+XO4BgCHvYjnSR6baHkt/LTJZu4qicRFFZ6A/720J0/8J4JNMfevpaub+K6d3z1kRmQ
	7MulSipMjBQIFka/Zq0hUjGKdSWbkrOyK4oQoLlPgrVrg1mgk/Bo1ZalYRezrUb9l7jFHI4aK8FAw
	yMH6lYwOIth89pMURgDk+ZMV+cqsHGsiulTIKi5F6ZWdz4UsMnRzyuybNXP47X7DugEvbVBrt5jqN
	Wy44DKZMqdeHwAeMTbxnP3vIxHH8rPImQqCkxvJB8S041MOtl2ih03BYCQFIwcsbUufNath49axEb
	ayFsfPcvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAqs-0000IH-FG; Mon, 11 Nov 2019 14:39:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAqe-0000Hu-T5
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:39:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F422431B;
 Mon, 11 Nov 2019 06:39:19 -0800 (PST)
Received: from localhost.localdomain (unknown [10.1.196.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 65F243F52E;
 Mon, 11 Nov 2019 06:39:19 -0800 (PST)
Subject: Re: [PATCH v8 4/4] arm64: Use a variable to store non-global mappings
 decision
To: Mark Brown <broonie@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20191108170116.32105-1-broonie@kernel.org>
 <20191108170116.32105-5-broonie@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <facc5c49-719e-f63a-3bec-67c369eb5cea@arm.com>
Date: Mon, 11 Nov 2019 14:39:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191108170116.32105-5-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_063920_978281_4F9C01E7 
X-CRM114-Status: GOOD (  16.54  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/11/2019 17:01, Mark Brown wrote:
> Refactor the code which checks to see if we need to use non-global
> mappings to use a variable instead of checking with the CPU capabilities
> each time, doing the initial check for KPTI early in boot before we
> start allocating memory so we still avoid transitioning to non-global
> mappings in common cases.
> 
> Since this variable always matches our decision about non-global
> mappings this means we can also combine arm64_kernel_use_ng_mappings()
> and arm64_unmap_kernel_at_el0() into a single function, the variable
> simply stores the result and the decision code is elsewhere. We could
> just have the users check the variable directly but having a function
> makes it clear that these uses are read-only.
> 
> The result is that we simplify the code a bit and reduces the amount of
> code executed at runtime.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
