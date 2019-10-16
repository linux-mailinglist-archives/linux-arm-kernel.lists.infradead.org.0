Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D574D95A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:32:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SITFAk42gbp0g3ILeifYFlX5Fb1ZrnqbRjXeyucVV0=; b=IFn2w77uE575Sj
	DJNBL9Q9paNGu4zXeINlHwFYNre/fyZpARAMwAdGyfy/RcXdsoZ9WQuVaDb9wyYSlhH9lRJNTh1FU
	NC2V6VjWcIF67KnW6IcoXZWe2mu3Zhxzk2H1KrASY4hc6YoHtBsPdLuBUTU1HCCoMQsALiYRnBsP7
	A2fwCRVSrCO25/VgdSeYQUgr8oXXGxCWxFAH8CtBWp3WZGEQLVKFCstQO4Adt9ysnFmbOQioYRxtN
	Uu5DtD5Z3L3jYYtQnm2ZFuL8Z2WE8Sou/ImngU+kr/fZeyhvtIfEk5Qz11jA6kr9n8cvSUCFehELR
	1vAKpjff8O3gHJQhisYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlI1-0001Qv-Ub; Wed, 16 Oct 2019 15:32:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlHr-0001Q4-Fm
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:32:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47089142F;
 Wed, 16 Oct 2019 08:32:30 -0700 (PDT)
Received: from bogus (unknown [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 86B693F68E;
 Wed, 16 Oct 2019 08:32:28 -0700 (PDT)
Date: Wed, 16 Oct 2019 16:32:21 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
Message-ID: <20191016153221.GA8978@bogus>
References: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
 <9df267db-e647-a81d-16bb-b8bfb06c2624@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9df267db-e647-a81d-16bb-b8bfb06c2624@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_083231_569877_99DB6458 
X-CRM114-Status: GOOD (  20.08  )
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Laight <David.Laight@ACULAB.COM>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "wuyun.wu@huawei.com" <wuyun.wu@huawei.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 12:45:16PM +0800, Yunfeng Ye wrote:
> If psci_ops.affinity_info() fails, it will sleep 10ms, which will not
> take so long in the right case. Use usleep_range() instead of msleep(),
> reduce the waiting time, and give a chance to busy wait before sleep.
>
> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
> ---
> V1->V2:
> - use usleep_range() instead of udelay() after waiting for a while
>
>  arch/arm64/kernel/psci.c | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
> index c9f72b2..99b3122 100644
> --- a/arch/arm64/kernel/psci.c
> +++ b/arch/arm64/kernel/psci.c
> @@ -82,6 +82,7 @@ static void cpu_psci_cpu_die(unsigned int cpu)
>  static int cpu_psci_cpu_kill(unsigned int cpu)
>  {
>  	int err, i;
> +	unsigned long timeout;
>
>  	if (!psci_ops.affinity_info)
>  		return 0;
> @@ -91,16 +92,24 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
>  	 * while it is dying. So, try again a few times.
>  	 */
>
> -	for (i = 0; i < 10; i++) {
> +	i = 0;
> +	timeout = jiffies + msecs_to_jiffies(100);
> +	do {
>  		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
>  		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
>  			pr_info("CPU%d killed.\n", cpu);
>  			return 0;
>  		}
>
> -		msleep(10);
> -		pr_info("Retrying again to check for CPU kill\n");

You dropped this message, any particular reason ?

> -	}
> +		/* busy-wait max 1ms */
> +		if (i++ < 100) {
> +			cond_resched();
> +			udelay(10);
> +			continue;

Why can't it be simple like loop of 100 * msleep(1) instead of loop of
10 * msleep(10). The above initial busy wait for 1 ms looks too much
optimised for your setup where it takes 50-500us, what if it take just
over 1 ms ?

We need more generic solution.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
