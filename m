Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9423214D572
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 05:00:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=014RiGDuJ3SCnk4JIsI8MlTxeIEC/eAlcC/zn7qSaJU=; b=r+998+53+xq89LccZhDNbvokb
	v8u7mhXCdUSHUqFGVmKYciYXdInF/0G6Y69E+AcZmk3IOxEPsln/SdIk0SN+Tdt5g+EpBjerPg7Cf
	1mPmCSVv+8bQaedP8LVuXT8ByJeasVnilMgI6ynciKDM/k5dgLUy5tdsQm3fzGlgxexXY3nQbU1am
	VTrYdu2VCqOKdcw01fazLccUJ7kp03hggYqrdDS6+274TnTGaaE/peQWqI8rIsOFKgtWR9JC9e3g6
	zBA7F7c+BBU4hLOKLzgndO4wPiEZvOs6o1kpsEMCETgX/w2u9qmDL5tDgr4t2+TGt2m1uv515BWDj
	fSa6Qrjnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix10L-00064T-SI; Thu, 30 Jan 2020 04:00:33 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix10B-000645-3C
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 04:00:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580356821;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7RMr6DeCtVaw7L9txP62zJF0Lsth0dh+TD6dp6MRj10=;
 b=djqows7/id5hGUfVUoZZgeL8Cr0Ws7WT2xcr4xgoUNk/mDGAXhn4cQ4d3gX9v6GbhIi5sP
 /9a7xtWw7WgGrhoW3PvFGG+R3RIa07YMemHMFs0q6qdyv8jos5A0rHUVPTroE8RkpTj0Z7
 w2eDXasj8AXlEdxk6BxVhbWXTPXFqns=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-197-UYCrK8vvMuyAxJkSFKDOlw-1; Wed, 29 Jan 2020 23:00:17 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5EB11800C79;
 Thu, 30 Jan 2020 04:00:16 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-25.bne.redhat.com [10.64.54.25])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 47C561000328;
 Thu, 30 Jan 2020 04:00:15 +0000 (UTC)
Subject: Re: [PATCH] drivers/firmware/psci: Fix memory leak in
 alloc_init_cpu_groups()
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
References: <20200130034938.158504-1-gshan@redhat.com>
Message-ID: <ae343710-43ef-a74a-1eda-17f9f3a34cb0@redhat.com>
Date: Thu, 30 Jan 2020 15:00:13 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200130034938.158504-1-gshan@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: UYCrK8vvMuyAxJkSFKDOlw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_200023_215621_FFD8CF0D 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/30/20 2:49 PM, Gavin Shan wrote:
> The CPU mask (@tmp) should be free'd on failing to allocating the element
> of @cpu_groups[]. Otherwise, it leads to memory leakage because the CPU
> mask variable is allocated with CONFIG_CPUMASK_OFFSTACK.
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>   drivers/firmware/psci/psci_checker.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
> index 6a445397771c..d1d6d1135fed 100644
> --- a/drivers/firmware/psci/psci_checker.c
> +++ b/drivers/firmware/psci/psci_checker.c
> @@ -167,6 +167,7 @@ static int alloc_init_cpu_groups(cpumask_var_t **pcpu_groups)
>   			topology_core_cpumask(cpumask_any(tmp));
>   
>   		if (!alloc_cpumask_var(&cpu_groups[num_groups], GFP_KERNEL)) {
> +			free_cpumask_var(tmp);
>   			free_cpu_groups(num_groups, &cpu_groups);
>   			return -ENOMEM;
>   		}
> 

I think @tmp has to be free'd either when failing to allocate @cpu_groups.
However, I'm holding to post v2 until feedback is received on v1.

diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
index d1d6d1135fed..03eb798ad3ed 100644
--- a/drivers/firmware/psci/psci_checker.c
+++ b/drivers/firmware/psci/psci_checker.c
@@ -157,8 +157,10 @@ static int alloc_init_cpu_groups(cpumask_var_t **pcpu_groups)
  
         cpu_groups = kcalloc(nb_available_cpus, sizeof(cpu_groups),
                              GFP_KERNEL);
-       if (!cpu_groups)
+       if (!cpu_groups) {
+               free_cpumask_var(tmp);
                 return -ENOMEM;
+       }
  
         cpumask_copy(tmp, cpu_online_mask);

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
