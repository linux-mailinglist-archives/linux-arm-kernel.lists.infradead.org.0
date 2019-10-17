Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C65EDAED1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 15:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVBxMxzK0jdYdPirxV4U1Bzcwbw9esKI1UA6VhQTQnY=; b=YmVrvSWpHm0hWZ
	v1QiMkYGgWqWL/SasqUiZaYnTj4p/9A4+fZ2a8bU9reeuhJziqVzNMpWT1oeEvz9A8JiX4VVDBRpQ
	2IXIYgjHuuw6C26rDd7/CoEwoznXpYJeLz2X0GVRbdS4cDhWDwEXTj+I+lSN0mFv51zECU1szmWze
	QNAX5obqy/GPSQ6+l/LhQuNgPSdorS5JiHDAUDzHJecftVsmeWlpVTvVircwEImceappvcOzNrC+S
	LHBkD/KEt+n1n21327U1Xv41T+Ols0it6mKPnWcmBi9l1tZVv6h0yMfR3dKhjse9ErSoVtYvWm3LK
	ZiTinMErmhn8hWrSwzMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6Eo-0006SB-Fg; Thu, 17 Oct 2019 13:54:46 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6Ef-0006QF-6v
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 13:54:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E73811993;
 Thu, 17 Oct 2019 06:54:24 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2760A3F6C4;
 Thu, 17 Oct 2019 06:54:23 -0700 (PDT)
Date: Thu, 17 Oct 2019 14:54:16 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
Message-ID: <20191017135416.GA26312@bogus>
References: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
 <9df267db-e647-a81d-16bb-b8bfb06c2624@huawei.com>
 <20191016153221.GA8978@bogus>
 <0f550044-9ed2-5f72-1335-73417678ba45@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f550044-9ed2-5f72-1335-73417678ba45@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_065437_339566_DE2C41BE 
X-CRM114-Status: GOOD (  23.59  )
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>, hushiyuan@huawei.com,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linfeilong@huawei.com, David Laight <David.Laight@ACULAB.COM>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "wuyun.wu@huawei.com" <wuyun.wu@huawei.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 09:26:15PM +0800, Yunfeng Ye wrote:
>
>
> On 2019/10/16 23:32, Sudeep Holla wrote:
> > On Wed, Oct 09, 2019 at 12:45:16PM +0800, Yunfeng Ye wrote:
> >> If psci_ops.affinity_info() fails, it will sleep 10ms, which will not
> >> take so long in the right case. Use usleep_range() instead of msleep(),
> >> reduce the waiting time, and give a chance to busy wait before sleep.
> >>
> >> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
> >> ---
> >> V1->V2:
> >> - use usleep_range() instead of udelay() after waiting for a while
> >>
> >>  arch/arm64/kernel/psci.c | 17 +++++++++++++----
> >>  1 file changed, 13 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
> >> index c9f72b2..99b3122 100644
> >> --- a/arch/arm64/kernel/psci.c
> >> +++ b/arch/arm64/kernel/psci.c
> >> @@ -82,6 +82,7 @@ static void cpu_psci_cpu_die(unsigned int cpu)
> >>  static int cpu_psci_cpu_kill(unsigned int cpu)
> >>  {
> >>  	int err, i;
> >> +	unsigned long timeout;
> >>
> >>  	if (!psci_ops.affinity_info)
> >>  		return 0;
> >> @@ -91,16 +92,24 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
> >>  	 * while it is dying. So, try again a few times.
> >>  	 */
> >>
> >> -	for (i = 0; i < 10; i++) {
> >> +	i = 0;
> >> +	timeout = jiffies + msecs_to_jiffies(100);
> >> +	do {
> >>  		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
> >>  		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
> >>  			pr_info("CPU%d killed.\n", cpu);
> >>  			return 0;
> >>  		}
> >>
> >> -		msleep(10);
> >> -		pr_info("Retrying again to check for CPU kill\n");
> >
> > You dropped this message, any particular reason ?
> >
> When reduce the time interval to 1ms, the print message maybe increase 10
> times. on the other hand, cpu_psci_cpu_kill() will print message on success
> or failure, which this retry log is not very necessary. of cource, I think
> use pr_info_once() instead of pr_info() is better.
>

Yes changing it to pr_info_once is better than dropping it as it gives
some indication to the firmware if there's scope for improvement.

> >> -	}
> >> +		/* busy-wait max 1ms */
> >> +		if (i++ < 100) {
> >> +			cond_resched();
> >> +			udelay(10);
> >> +			continue;
> >
> > Why can't it be simple like loop of 100 * msleep(1) instead of loop of
> > 10 * msleep(10). The above initial busy wait for 1 ms looks too much
> > optimised for your setup where it takes 50-500us, what if it take just
> > over 1 ms ?
> >
> msleep() is implemented by jiffies. when HZ=100 or HZ=250, msleep(1) is not
> accurate. so I think usleep_range() is better. 1 ms looks simple and good, but how
> about 100us is better? I refer a function sunxi_mc_smp_cpu_kill(), it use
> usleep_range(50, 100).
>

Again that's specific to sunxi platforms and may work well. While I agree
msleep(1) may not be accurate, I am still inclined to have a max value
of 1000(i.e. 1ms) for usleep_range.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
