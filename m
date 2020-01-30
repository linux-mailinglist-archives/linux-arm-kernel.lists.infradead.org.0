Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C83A14D974
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 12:05:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8ZsmR1liXDNq3Al9omCO+akeqlSYdpknXFPg3MgGqE=; b=fhjHZRo1aPbyMb
	3Pm0lkqEy9nNHG/llvZAnbFSnonQtW/F6hM7m1Sn+k2OZbyWeZhujbis4Kspjiq5RUYeQAiWl9HbM
	3OpXeV0/9m0EbdLXm72U8HTMpbmUdBoJgUDvQYvBagXCFZtJwpTnB7DnQ2+4nxD08Hqn1F+pRHyea
	T8KeiPoLAOT7PqupjIBEQ41a0tH/tUxl+EoNv72GnRY7bJZOa1wAcb2iNg0TSAdjE6TWzbSwq4xej
	HA0CA+PyiBm2x+ZeEn0ldg5O3J+85dlTsUot+wvS8wHXIOL+90InWCcfgmN8WnTjuuQFhoZjzxM5b
	hEb2us0ly5/SxmLY1EFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix7dQ-0006KP-GC; Thu, 30 Jan 2020 11:05:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix7dE-0005us-Ki
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 11:05:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20733328;
 Thu, 30 Jan 2020 03:05:08 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 55DDA3F67D;
 Thu, 30 Jan 2020 03:05:07 -0800 (PST)
Date: Thu, 30 Jan 2020 11:05:05 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] drivers/firmware/psci: Fix memory leak in
 alloc_init_cpu_groups()
Message-ID: <20200130110505.GD48466@bogus>
References: <20200130034938.158504-1-gshan@redhat.com>
 <ae343710-43ef-a74a-1eda-17f9f3a34cb0@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae343710-43ef-a74a-1eda-17f9f3a34cb0@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_030508_728974_DE851FB6 
X-CRM114-Status: GOOD (  16.45  )
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

On Thu, Jan 30, 2020 at 03:00:13PM +1100, Gavin Shan wrote:
> On 1/30/20 2:49 PM, Gavin Shan wrote:
> > The CPU mask (@tmp) should be free'd on failing to allocating the element
> > of @cpu_groups[]. Otherwise, it leads to memory leakage because the CPU
> > mask variable is allocated with CONFIG_CPUMASK_OFFSTACK.
> > 
> > Signed-off-by: Gavin Shan <gshan@redhat.com>
> > ---
> >   drivers/firmware/psci/psci_checker.c | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
> > index 6a445397771c..d1d6d1135fed 100644
> > --- a/drivers/firmware/psci/psci_checker.c
> > +++ b/drivers/firmware/psci/psci_checker.c
> > @@ -167,6 +167,7 @@ static int alloc_init_cpu_groups(cpumask_var_t **pcpu_groups)
> >   			topology_core_cpumask(cpumask_any(tmp));
> >   		if (!alloc_cpumask_var(&cpu_groups[num_groups], GFP_KERNEL)) {
> > +			free_cpumask_var(tmp);
> >   			free_cpu_groups(num_groups, &cpu_groups);
> >   			return -ENOMEM;
> >   		}
> > 
> 
> I think @tmp has to be free'd either when failing to allocate @cpu_groups.
> However, I'm holding to post v2 until feedback is received on v1.
> 

Ah sorry, problem with sequential mail reading, ignore my reply as you have
already figured this out.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
