Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C20B615A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 12:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcdAOcaBkjgxh5MIDM2T6yRzKco/KmqiQoiQg5d1erk=; b=sFhyMYa8YalShq
	98a1Ia7gNVmtPTyyNnbt+sxhekfoaP9HbeGrG/Xv1kel6zrO39bxsorify+4xDQbO3nztlTf9Ek9b
	slXr+I/Y/KPEdBZaDN5qzA+yQlAwt+zLMUHFWTlEvfLVrDjtKlM8r5wxDUQ6mczfTULARPhFhqgH6
	DjqFhF2j1CxFPKEH7wRXDZusEZyy7/B/NJzBpKx6K1Ity2RHO9cg6aqzfc+vwjzjjucSDunGrNk47
	xxeh+X2XTLO0NTvLlWUqku3/iaNlSpP4Ogz8tq5zJH7zkJEMLcOFd6CvzhzTmM7cP0nK9gpm06qws
	SwkG59lQCGHlIKOKu0iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAX7Q-0000My-Fh; Wed, 18 Sep 2019 10:23:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAX7F-0000MJ-DZ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 10:23:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AFA0F337;
 Wed, 18 Sep 2019 03:23:16 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E209F3F59C; Wed, 18 Sep 2019 03:23:15 -0700 (PDT)
Subject: Re: [PATCH] irqchip/gic-v3: Fix GIC_LINE_NR accessor
To: Zenghui Yu <yuzenghui@huawei.com>
References: <1568789850-14080-1-git-send-email-yuzenghui@huawei.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <89645aea-70d4-8456-cb47-5a11846fa934@kernel.org>
Date: Wed, 18 Sep 2019 11:23:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1568789850-14080-1-git-send-email-yuzenghui@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_032317_502801_7B233990 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: wanghaibin.wang@huawei.com, tglx@linutronix.de, jason@lakedaemon.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/09/2019 07:57, Zenghui Yu wrote:
> As per GIC spec, ITLinesNumber indicates the maximum SPI INTID that
> the GIC implementation supports. And the maximum SPI INTID an
> implementation might support is 1019 (field value 11111).
> 
> max(GICD_TYPER_SPIS(...), 1020) is not what we actually want for
> GIC_LINE_NR. Fix it to min(GICD_TYPER_SPIS(...), 1020).
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
> 
> Hi Marc,
> 
> I still see "GICv3: 992 SPIs implemented" on the host. I go back to
> https://patchwork.kernel.org/patch/11078623/ and it seems that we
> failed to make the GIC_LINE_NR correct at that time.

Ah, nice catch. Clearly, I didn't have my head screwed on properly when
I wrote this. I'll take this in for the next round of fixes.

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
