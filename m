Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7952D965DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7U6cUvmL0CyaYb6UdRktoEXXbtCya016DWxfxrqnFOc=; b=cGkwXKehLFkUry
	9Wc8uk9iIw37WgnvvwlKGX39wJRM53P1ZcN/jPB6dfRwmX2P5MApsU9pMVGTo7HqqpT0KadlrpU+N
	s8S//ASkrjOF6hM29NUk5+8h0W9bRMMDpCciN2K3er7vjvueCf9+PaF/hDCqcTQ0NHhUgMTu8qrIS
	lZy0MfPrjGvjZfJWSw7rjO40XWMuvXyOTIGyy6S0CwJNgR0xuIhnuOZBm1OdV2+6ZSWNqXR+sMSOW
	Yq8Y3/W/LZuotEDe9bDVDttlVddXlD1o+CZHCNp7T4H+1NZQYXWgE779RrkX1l1UAWOiiVSiRWo4M
	m5BJ9iAu3XZibeWtiilQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06en-0004Fr-Bn; Tue, 20 Aug 2019 16:06:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i06eX-0004FQ-OQ
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:06:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3500328;
 Tue, 20 Aug 2019 09:06:33 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE9F83F246;
 Tue, 20 Aug 2019 09:06:31 -0700 (PDT)
Date: Tue, 20 Aug 2019 17:06:29 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [PATCH] arm64: perf_event: Add missing header needed for
 smp_processor_id()
Message-ID: <20190820160629.GD43412@lakrids.cambridge.arm.com>
References: <20190820155745.20593-1-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820155745.20593-1-raphael.gault@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_090633_886075_896DE9F1 
X-CRM114-Status: GOOD (  12.73  )
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 04:57:45PM +0100, Raphael Gault wrote:

It would be worth having a body for the commit message like:

| in perf_event.c we use smp_processor_id(), but we haven't included 
| <linux/smp.h> where it is defined, and rely on this being pulled in 
| via a transitive include. Let's make this more robust by including
| <linux.smp.h> explciitly.

... and with that, my Acked-by stands.

Thanks,
Mark.

> Acked-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> ---
>  arch/arm64/kernel/perf_event.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index 96e90e270042..24575c0a0065 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -19,6 +19,7 @@
>  #include <linux/of.h>
>  #include <linux/perf/arm_pmu.h>
>  #include <linux/platform_device.h>
> +#include <linux/smp.h>
>  
>  /* ARMv8 Cortex-A53 specific event types. */
>  #define ARMV8_A53_PERFCTR_PREF_LINEFILL				0xC2
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
