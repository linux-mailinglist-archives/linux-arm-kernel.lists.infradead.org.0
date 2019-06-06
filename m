Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A9336F15
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IogyT3KJw1xkP2POS/p4ekYLy9TGMCzZElQasURm/cA=; b=Mx+TBvkYJfoeRmTWk/Bm2M9nB
	KO4nBLIGI4VfDI8Lm62RtqHj6WwpcXSqS9cfIxI1M81JkLMKgIF0Wo+UzBtUvoOTz42kkznOk7Ucq
	OnyKA4THqoGOHcQ6kimQyLkD7A9xTAFWiGrH2QrqBl7mBNfoJVwx5TgQPp9aa/9kYhAjVnizg0qPk
	F16qrcnU4xtXsOiLpqO/KptxcoLAGumU6/vVeZB0xT+Nba16fqq6E2YSgyo8wQ4ueqi4jK7yMtNX9
	BCv/43xv5A2GFYakZfmyC170tI8dmtr1NaXfBJ/y+WsTSz71MuaqCIT4OOFQ9Ok8yPOMQcduDBqo4
	BY3XYmVUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYo61-0005M3-KW; Thu, 06 Jun 2019 08:50:05 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYo5r-0005Kh-Ta
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 08:49:57 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 86D3DEE6FCD080AE8278;
 Thu,  6 Jun 2019 16:49:44 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 6 Jun 2019 16:49:37 +0800
Subject: Re: [PATCH 2/2] arm64: topology: Use PPTT to determine if PE is a
 thread
To: Jeremy Linton <jeremy.linton@arm.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190523224015.56270-1-jeremy.linton@arm.com>
 <20190523224015.56270-3-jeremy.linton@arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <be03d428-b543-0233-a98b-233f367a6bd0@huawei.com>
Date: Thu, 6 Jun 2019 09:49:30 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190523224015.56270-3-jeremy.linton@arm.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_014956_195187_A0742765 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: catalin.marinas@arm.com, will.deacon@arm.com, "Guohanjun \(Hanjun
 Guo\)" <guohanjun@huawei.com>, rjw@rjwysocki.net,
 Linuxarm <linuxarm@huawei.com>, linux-acpi@vger.kernel.org,
 yaohongbo@huawei.com, sudeep.holla@arm.com,
 wanghuiqiang <wanghuiqiang@huawei.com>, lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/05/2019 23:40, Jeremy Linton wrote:
> ACPI 6.3 adds a thread flag to represent if a CPU/PE is
> actually a thread. Given that the MPIDR_MT bit may not
> represent this information consistently on homogeneous machines
> we should prefer the PPTT flag if its available.
>

Hi Jeremy,

I was just wondering if we should look to get this support backported 
(when merged)?

I worry about the case of a system with the CPU having MT bit in the 
MPIDR (while not actually threaded), i.e. the system for which these 
PPTT flags were added (as I understand).

> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> ---
>  arch/arm64/kernel/topology.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
> index 0825c4a856e3..cbbedb53cf06 100644
> --- a/arch/arm64/kernel/topology.c
> +++ b/arch/arm64/kernel/topology.c
> @@ -346,11 +346,9 @@ void remove_cpu_topology(unsigned int cpu)
>   */
>  static int __init parse_acpi_topology(void)
>  {
> -	bool is_threaded;
> +	int is_threaded;
>  	int cpu, topology_id;
>
> -	is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;
> -
>  	for_each_possible_cpu(cpu) {
>  		int i, cache_id;
>
> @@ -358,6 +356,10 @@ static int __init parse_acpi_topology(void)
>  		if (topology_id < 0)
>  			return topology_id;
>
> +		is_threaded = acpi_pptt_cpu_is_thread(cpu);
> +		if (is_threaded < 0)
> +			is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;
> +
>  		if (is_threaded) {
>  			cpu_topology[cpu].thread_id = topology_id;

For described above scenario, this seems wrong.

>  			topology_id = find_acpi_cpu_topology(cpu, 1);
>

BTW, we did test an old kernel with 6.3 PPTT bios for this on D06 (some 
versions have MT bit set), and it looked ok. But I am still a bit skeptical.

Thanks,
John



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
