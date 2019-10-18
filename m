Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EC3DC852
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33NSkEtgNvHyoNMPU5h/Tz0rtzhgbDlq5MCVsNRM0gQ=; b=BqMMQiiWdvoMXb
	rqeGZrxWMocaZ+HmRa5Jw8Z+FQrKyKO7KnxJKeWHZtyDQ8jn6Mlh0DQiMxy6s+pmaD3v8F6yA5QkR
	GWIhI9KdCTuugbpme9bAAkM/WQO4NiGkWezO+xYTYpolQLnooRq+DLfyng+ODFqvG/5c3FT6hr1Fg
	z882xUgn1iaQNvfSr2zOaAO88dk3BKyQP2MidiiJLz3XW7Wy1M+Szlk4CwS/IdU72fEmaGojBLn9R
	mDVXX7CLPkWPfkE/GSIzxIgEHwDA/A+WgTEgj3vVQ/9R5zvPbEhXlR8mdld5V0IE/aPzI0AjI0Txs
	tdQ6EO9ojCZvHzyn07Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLU4D-0007eq-Ic; Fri, 18 Oct 2019 15:21:25 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLU43-0007cz-HB
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:21:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CDC3AC8F;
 Fri, 18 Oct 2019 08:20:59 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B4DA3F718;
 Fri, 18 Oct 2019 08:20:57 -0700 (PDT)
Date: Fri, 18 Oct 2019 16:20:52 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH v4] arm64: psci: Reduce the waiting time for
 cpu_psci_cpu_kill()
Message-ID: <20191018152052.GA10312@bogus>
References: <04ab51e4-bc08-8250-4e70-4c87c58c8ad0@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <04ab51e4-bc08-8250-4e70-4c87c58c8ad0@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_082115_643908_C4D0D3C2 
X-CRM114-Status: GOOD (  22.07  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: kstewart@linuxfoundation.org, mark.rutland@arm.com,
 lorenzo.pieralisi@arm.com, hushiyuan@huawei.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, linfeilong@huawei.com, David.Laight@ACULAB.COM,
 gregkh@linuxfoundation.org, tglx@linutronix.de, wuyun.wu@huawei.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 08:46:37PM +0800, Yunfeng Ye wrote:
> In case like suspend-to-disk and uspend-to-ram, a large number of CPU

s/case/cases/
s/uspend-to-ram/suspend-to-ram/

> cores need to be shut down. At present, the CPU hotplug operation is
> serialised, and the CPU cores can only be shut down one by one. In this
> process, if PSCI affinity_info() does not return LEVEL_OFF quickly,
> cpu_psci_cpu_kill() needs to wait for 10ms. If hundreds of CPU cores
> need to be shut down, it will take a long time.
> 
> Normally, there is no need to wait 10ms in cpu_psci_cpu_kill(). So
> change the wait interval from 10 ms to max 1 ms and use usleep_range()
> instead of msleep() for more accurate timer.
> 
> In addition, reducing the time interval will increase the messages
> output, so remove the "Retry ..." message, instead, put the number of
> waiting times to the sucessful message.
> 
> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
> ---
> v3 -> v4:
>  - using time_before(jiffies, timeout) to check
>  - update the comment as review suggest
> 
> v2 -> v3:
>  - update the comment
>  - remove the busy-wait logic, modify the loop logic and output message
> 
> v1 -> v2:
>  - use usleep_range() instead of udelay() after waiting for a while
>  arch/arm64/kernel/psci.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
> index c9f72b2665f1..77965c3ba477 100644
> --- a/arch/arm64/kernel/psci.c
> +++ b/arch/arm64/kernel/psci.c
> @@ -81,7 +81,8 @@ static void cpu_psci_cpu_die(unsigned int cpu)
> 
>  static int cpu_psci_cpu_kill(unsigned int cpu)
>  {
> -	int err, i;
> +	int err, i = 0;
> +	unsigned long timeout;
> 
>  	if (!psci_ops.affinity_info)
>  		return 0;
> @@ -91,16 +92,17 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
>  	 * while it is dying. So, try again a few times.
>  	 */
> 
> -	for (i = 0; i < 10; i++) {
> +	timeout = jiffies + msecs_to_jiffies(100);
> +	do {
> +		i++;
>  		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
>  		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
> -			pr_info("CPU%d killed.\n", cpu);
> +			pr_info("CPU%d killed (polled %d times)\n", cpu, i);

We can even drop loop counter completely, track time and log that
instead of loop counter that doesn't give any indication without looking
into the code.

	start = jiffies, end = start + msecs_to_jiffies(100);
	do {
			....
			pr_info("CPU%d killed (polled %u ms)\n", cpu,
				jiffies_to_msecs(jiffies - start));
			....
	} while (time_before(jiffies, end));

Just my preference. Looks good otherwise.

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
