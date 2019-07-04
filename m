Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDF95F30E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 08:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L8YcAJuM6cmkfreTkNzndZTNwU/qD2rZBSGWZQEhhAc=; b=EYnfmP5yD8rTlNEqBZfY1dFhv
	PKCfBc1tmW/nHxQiwMs0LhhQTtJQbvDZNZc3pWmG8PpNErA4meFOJreBf6KHh+5YX7WP0rKy1q3Hk
	LlYX0HFZdWGAXEMoWoOMJ8YlrfHRfr/PWTX3lAkukzVaac7/n2D8mme/H//rJGVKQkYbou/MQ3qLo
	U7mB6BGHK+jnQsF1e0uy/nHuUFnDLfSDMIBfq85H37U4arBs3H0OujQHQb4K7pEj3+GcgUfpYOl0B
	Eh0/mVINntHO/prY+afADv3xM7gUkD0C8ZYDImdz/BX1pZlo2c7AtaDgipVQW30HyOvROsyDFbtXt
	zX6UbfWlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hivVs-0007JN-Ko; Thu, 04 Jul 2019 06:46:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivVe-0007Iu-77
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 06:46:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id x15so2483602pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 23:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=7u3j/qlpuiMl7q0crcwHK5qvOp5dbyAVCcaxQlei5BY=;
 b=d/u6QSi/W+Hep7xnLOkGy1zQzus/xm9kmEi9zJteGC+By7PW4KjgQWcSHcyR+Ga6ql
 I8H3C5il13o4RAUqeRGoK6OzmIU63054kYPrcXXtpL7MbrWqdhKClhb5jCqiwIXAnKay
 XKaHDrWkk/bpKY3G54zKktlypLL1MgPOfQyFt93BtOdisfS31RODJIyEVHuTDiyPKhlZ
 xsrvAiVLNtXgqk767s8NWPBwfZxUgYq5fI0z+FEn+0ZyDskl7UbQM5AROxEpw+KH5Wc9
 AjMtSRwBN+MCLdDP9DONVwz54+Sjj5YB5NJZh3//3UFZ7/ViVX8/BcYA4v54LWpZat3j
 ZlPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding;
 bh=7u3j/qlpuiMl7q0crcwHK5qvOp5dbyAVCcaxQlei5BY=;
 b=YKjdj2Htytsq39NoAHmwMJi06+496PAdOj64Aws82u5zTLZf/4d+35cFroVJaZ4aFB
 8L9yeLYJ5VwvKxIpJ50YXEVHjlHasyrmAONPCuwsrJXTlPx189vq8178Ch2/19JGW6Ne
 JOjcTp8qx//I55zxjsnJJwGkehntn4RzEFzKENOzUSNy5QjLBcRdAOPju8LfqDqXcPcX
 RSpCw/nCTZNVsY2j9vffU/LFwK+WhMfFS8TIAbKU/MtyLT1iEj5QWmg7kJFa8KF0/Wa5
 TGIAwuwKgPK7jB+zcl3iOfbjxleMkHE8h9TmRJNuQYoPaGjKLFSbflWymhtZ2i1wDp24
 6+YQ==
X-Gm-Message-State: APjAAAWJMchDVNJG9mXtX0BAAxJ0Ou0cLxHUKLEjDFuxwWpjmQcfMCoZ
 rwyj1WBX2R5hhPPYCOjPEx0=
X-Google-Smtp-Source: APXvYqy/s0Ljvqpnt4JWFhbvPuiQt4Q13IXhAAOtCo9uJyfuMIBmYhhpcuhs0o6/ztVpgX4DicG89w==
X-Received: by 2002:a63:2b8e:: with SMTP id
 r136mr13258143pgr.216.1562222781277; 
 Wed, 03 Jul 2019 23:46:21 -0700 (PDT)
Received: from [0.0.0.0] ([80.240.31.150])
 by smtp.gmail.com with ESMTPSA id z20sm8169915pfk.72.2019.07.03.23.46.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 23:46:20 -0700 (PDT)
Subject: Re: [RFC PATCH v2 2/3] arm64: mark all the GICC nodes in MADT as
 possible cpu
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>, rjw@rjwysocki.net,
 catalin.marinas@arm.com, james.morse@arm.com
References: <1561776155-38975-1-git-send-email-wangxiongfeng2@huawei.com>
 <1561776155-38975-3-git-send-email-wangxiongfeng2@huawei.com>
From: Jia He <jiakernel2@gmail.com>
Organization: ARM
Message-ID: <762be90e-7629-ab5e-4c2d-6566b100f2e5@gmail.com>
Date: Thu, 4 Jul 2019 14:46:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1561776155-38975-3-git-send-email-wangxiongfeng2@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_234622_290105_9ABE565E 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jiakernel2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jiakernel2[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: xiexiuqi@huawei.com, jonathan.cameron@huawei.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2019/6/29 10:42, Xiongfeng Wang wrote:
> We set 'cpu_possible_mask' based on the enabled GICC node in MADT. If
> the GICC node is disabled, we will skip initializing the kernel data
> structure for that CPU.
>
> To support CPU hotplug, we need to initialize some CPU related data
> structure in advance. This patch mark all the GICC nodes as possible CPU
> and only these enabled GICC nodes as present CPU.
>
> Signed-off-by: Xiongfeng Wang <wangxiongfeng2@huawei.com>
> ---
>   arch/arm64/kernel/setup.c |  2 +-
>   arch/arm64/kernel/smp.c   | 11 +++++------
>   2 files changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index 7e541f9..7f4d12a 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -359,7 +359,7 @@ static int __init topology_init(void)
>   	for_each_online_node(i)
>   		register_one_node(i);
>   
> -	for_each_possible_cpu(i) {
> +	for_each_online_cpu(i) {

Have you considered the case in non-acpi mode? and setting "maxcpus=n" in host 
kernel boot

parameters?

---
Cheers,
Justin (Jia He)


>   		struct cpu *cpu = &per_cpu(cpu_data.cpu, i);
>   		cpu->hotpluggable = 1;
>   		register_cpu(cpu, i);
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 6dcf960..6d9983c 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -525,16 +525,14 @@ struct acpi_madt_generic_interrupt *acpi_cpu_get_madt_gicc(int cpu)
>   {
>   	u64 hwid = processor->arm_mpidr;
>   
> -	if (!(processor->flags & ACPI_MADT_ENABLED)) {
> -		pr_debug("skipping disabled CPU entry with 0x%llx MPIDR\n", hwid);
> -		return;
> -	}
> -
>   	if (hwid & ~MPIDR_HWID_BITMASK || hwid == INVALID_HWID) {
>   		pr_err("skipping CPU entry with invalid MPIDR 0x%llx\n", hwid);
>   		return;
>   	}
>   
> +	if (!(processor->flags & ACPI_MADT_ENABLED))
> +		pr_debug("disabled CPU entry with 0x%llx MPIDR\n", hwid);
> +
>   	if (is_mpidr_duplicate(cpu_count, hwid)) {
>   		pr_err("duplicate CPU MPIDR 0x%llx in MADT\n", hwid);
>   		return;
> @@ -755,7 +753,8 @@ void __init smp_prepare_cpus(unsigned int max_cpus)
>   		if (err)
>   			continue;
>   
> -		set_cpu_present(cpu, true);
> +		if ((cpu_madt_gicc[cpu].flags & ACPI_MADT_ENABLED))
> +			set_cpu_present(cpu, true);
>   		numa_store_cpu_info(cpu);
>   	}
>   }

-- 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
