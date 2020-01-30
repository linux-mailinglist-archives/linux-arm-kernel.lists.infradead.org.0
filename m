Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EFD14D972
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 12:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRc35OvaZ3j5JJevFINCFvZxq6KltmC/gGhn0YhD8zo=; b=ZVPGGFvExI+kD+
	58D/FCT7a0IKZBAKupoJ7ZVSPX8T0wqDY47/OnmF5HHPtdNHmgAgXDG1gJDahlSSlXeYtPRYBH8C8
	d++q97t9KM/wxN9QDU+/Nq1RYuj3Sxwu2TWDG2i+Xe5uicHOfWK1gKVxVSyQuT1+OD4ghw0aN/ICS
	zpx5ZdvXAeYSHVOTXbquBzJNcrxv0dKNi2WeDMEYcjjJNY8lamYj8947gerIonf6zHKBkPqatc/Gz
	TbKjzYGNYPv/yZqjM4Q7J2e4Vygn/A8H6T0ozyB4qnzGpZi+vg5IcuKBWjKDgT70mvZ8VGdlpNhzf
	fUISCRNZQQ1AFKEqen/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix7b6-0004em-Ag; Thu, 30 Jan 2020 11:02:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix7av-0004eI-Da
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 11:02:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4EEC6328;
 Thu, 30 Jan 2020 03:02:42 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 845C23F67D;
 Thu, 30 Jan 2020 03:02:41 -0800 (PST)
Date: Thu, 30 Jan 2020 11:02:39 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] drivers/firmware/psci: Fix memory leak in
 alloc_init_cpu_groups()
Message-ID: <20200130110239.GC48466@bogus>
References: <20200130034938.158504-1-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130034938.158504-1-gshan@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_030245_503048_DFC0A011 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 02:49:38PM +1100, Gavin Shan wrote:
> The CPU mask (@tmp) should be free'd on failing to allocating the element
> of @cpu_groups[]. Otherwise, it leads to memory leakage because the CPU
> mask variable is allocated with CONFIG_CPUMASK_OFFSTACK.
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>  drivers/firmware/psci/psci_checker.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
> index 6a445397771c..d1d6d1135fed 100644
> --- a/drivers/firmware/psci/psci_checker.c
> +++ b/drivers/firmware/psci/psci_checker.c
> @@ -167,6 +167,7 @@ static int alloc_init_cpu_groups(cpumask_var_t **pcpu_groups)
>  			topology_core_cpumask(cpumask_any(tmp));
>  
>  		if (!alloc_cpumask_var(&cpu_groups[num_groups], GFP_KERNEL)) {
> +			free_cpumask_var(tmp);

You may need also below diff, right ?

-->8

diff --git i/drivers/firmware/psci/psci_checker.c w/drivers/firmware/psci/psci_checker.c
index 6a445397771c..c5a5c76a9fda 100644
--- i/drivers/firmware/psci/psci_checker.c
+++ w/drivers/firmware/psci/psci_checker.c
@@ -157,8 +157,10 @@ static int alloc_init_cpu_groups(cpumask_var_t **pcpu_groups)

        cpu_groups = kcalloc(nb_available_cpus, sizeof(cpu_groups),
                             GFP_KERNEL);
-       if (!cpu_groups)
+       if (!cpu_groups) {
+               free_cpumask_var(tmp);
                return -ENOMEM;
+       }

        cpumask_copy(tmp, cpu_online_mask);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
