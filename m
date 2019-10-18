Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9428ADC42A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 13:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGVP2X6u7uVr+LGm5PGN4qrJpfhdoZ/jCQAF6egFt2s=; b=qenJjHIJTvY52i
	DJSQqTG2Z4xJv3glUZhNqQHMiGQ865RwXD55l9XEU7SKQNpsL+W/1bGMEZwIj8QYZNbIConFUbEgn
	+nqTrrGnkEUjGIuktknLIj4QuvPVLeokFI5tHP8f5eVSah07YebgbZiEzdxF3DM5VPe1ClisI3Ud/
	7VBq1ILv+gyOb4qJq+44dXD7qRMlUnhUxGxPl6TDsvneLnNDgOqSkTI02Mkl2kh44pzpZ8322qPww
	U+im9oMnTrvmopFrAsZN2Bqyw37Oa16vo255yQNcnae6VbNDla6+2pAIMN+gV2Gv+hJ1829gZE4/W
	dhjKpof+rpw8Frim7qIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQho-0002h4-Sz; Fri, 18 Oct 2019 11:46:04 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQhf-0002cc-To
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 11:45:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D43DCA3;
 Fri, 18 Oct 2019 04:45:45 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F1EE3F6C4;
 Fri, 18 Oct 2019 04:45:43 -0700 (PDT)
Date: Fri, 18 Oct 2019 12:45:29 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH V3] arm64: psci: Reduce waiting time for
 cpu_psci_cpu_kill()
Message-ID: <20191018114529.GA15116@bogus>
References: <433980c7-f246-f741-f00c-fce103a60af7@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <433980c7-f246-f741-f00c-fce103a60af7@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_044556_004469_836BC2C8 
X-CRM114-Status: GOOD (  21.41  )
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
Cc: kstewart@linuxfoundation.org, lorenzo.pieralisi@arm.com,
 ard.biesheuvel@linaro.org, "hushiyuan@huawei.com" <hushiyuan@huawei.com>,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 "linfeilong@huawei.com" <linfeilong@huawei.com>, David.Laight@ACULAB.COM,
 gregkh@linuxfoundation.org, tglx@linutronix.de, wuyun.wu@huawei.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 07:24:14PM +0800, Yunfeng Ye wrote:
> In a case like suspend-to-disk, a large number of CPU cores need to be

Add suspend-to-ram also to list, i.e.
"In case like suspend-to-disk and suspend-to-ram, a large number..."

> shut down. At present, the CPU hotplug operation is serialised, and the
> CPU cores can only be shut down one by one. In this process, if PSCI
> affinity_info() does not return LEVEL_OFF quickly, cpu_psci_cpu_kill()
> needs to wait for 10ms. If hundreds of CPU cores need to be shut down,
> it will take a long time.
>
> Normally, it is no need to wait 10ms in cpu_psci_cpu_kill(). So change

s/it is/there is/

> the wait interval from 10 ms to max 1 ms and use usleep_range() instead
> of msleep() for more accurate schedule.
>

s/for more accurate schedule/for more accurate timer/

> In addition, reduce the time interval will increase the messages output,

s/reduce/reducing/

> so remove the "Retry ..." message, instead, put the number of waiting
> times to the sucessful message.
> 
> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
> ---
> v2 -> v3:
>  - update the comment
>  - remove the busy-wait logic, modify the loop logic and output message
> 
> v1 -> v2:
>  - use usleep_range() instead of udelay() after waiting for a while
> 
>  arch/arm64/kernel/psci.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
> index c9f72b2665f1..00b8c0825a08 100644
> --- a/arch/arm64/kernel/psci.c
> +++ b/arch/arm64/kernel/psci.c
> @@ -91,15 +91,14 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
>  	 * while it is dying. So, try again a few times.
>  	 */
> 
> -	for (i = 0; i < 10; i++) {
> +	for (i = 0; i < 100; i++) {
>  		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
>  		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
> -			pr_info("CPU%d killed.\n", cpu);
> +			pr_info("CPU%d killed by waiting %d loops.\n", cpu, i);
>  			return 0;
>  		}
> 
> -		msleep(10);
> -		pr_info("Retrying again to check for CPU kill\n");
> +		usleep_range(100, 1000);

Since usleep_range can return anytime between 100us to 1ms, does it make
sense to check for (time_before(jiffies, timeout)) you had in v2 ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
