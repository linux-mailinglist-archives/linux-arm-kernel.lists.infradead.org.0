Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0124D7B54
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 18:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/ehYoONhf3OXR0HRlC5/1ffTttFR1bqEPFZVgo7IQI=; b=WsTrjUqihuXyDd
	s/NUtxukOuP56p8oQOZAeOanpKxnTq6MaWmGqFU8RXTKCkCf/DRd5q6toRiGHXn0Bzvc8qK/smo/8
	GjDn/xCo+Tx1BqyYVD8vLz4mvc6VpMIou91nqKjAPMFGb6NQSF1ZJzGaD9Cvk4eNofp+rnnGgA+Hp
	FwyRBKxSzwLzhvS0qXL3uTKWwkNPqbZY3uPOuJWh8u6jhfUmEsQ1FZaetqpz3wv1kSb0OJksxFqOM
	n/c26S1Lyl9XsPVifSzXPyyCVBJTvJRlZDNPTmLYifvGJyvpsK8LhViTUMD7O//nXIV2n8HP4gBxo
	EADwE3nLUgxBVPB6O8rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPcM-0003Lz-TR; Tue, 15 Oct 2019 16:24:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPcD-0003LC-LO
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 16:24:06 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81B3F2086A;
 Tue, 15 Oct 2019 16:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571156644;
 bh=+3bA41N9zG3Na8eiZmgyqf6wPpM7u7VDlcQ7i85yw3Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=StYJMA5/BLxta6Bq7ntiXfwvCAGN+ItksqqushdPMj8/N5YyCsnDGO0W16VHdpGB0
 IxG4cxi6wDfDKCaXcI8oBfLjDBrt6KHc8VekcXdhf8yBRzt7ba+Z1BuhDx6bOHJUOo
 GMMMTfPhgpPP4m43Rut46SbGtc+mKa19vvgUyeJ0=
Date: Tue, 15 Oct 2019 17:23:59 +0100
From: Will Deacon <will@kernel.org>
To: Yunfeng Ye <yeyunfeng@huawei.com>, sudeep.holla@arm.com
Subject: Re: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
Message-ID: <20191015162358.bt5rffidkv2j4xqb@willie-the-truck>
References: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_092405_718427_35B923FF 
X-CRM114-Status: GOOD (  21.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Laight <David.Laight@ACULAB.COM>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "wuyun.wu@huawei.com" <wuyun.wu@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sat, Sep 21, 2019 at 07:21:17PM +0800, Yunfeng Ye wrote:
> If psci_ops.affinity_info() fails, it will sleep 10ms, which will not
> take so long in the right case. Use usleep_range() instead of msleep(),
> reduce the waiting time, and give a chance to busy wait before sleep.

Can you elaborate on "the right case" please? It's not clear to me
exactly what problem you're solving here.

I've also added Sudeep to the thread, since I'd like his ack on the change.

Will

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
> -	}
> +		/* busy-wait max 1ms */
> +		if (i++ < 100) {
> +			cond_resched();
> +			udelay(10);
> +			continue;
> +		}
> +
> +		usleep_range(100, 1000);
> +	} while (time_before(jiffies, timeout));
> 
>  	pr_warn("CPU%d may not have shut down cleanly (AFFINITY_INFO reports %d)\n",
>  			cpu, err);
> -- 
> 2.7.4.huawei.3
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
