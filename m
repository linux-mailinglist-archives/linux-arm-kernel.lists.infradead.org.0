Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A9C118A36
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evaq3Af708z3KzqRzZrmO1kqyS1zQ8Elzhy8uElPycQ=; b=azU+b34HrXJadu
	E+1viSdgW+vl3dBqojHynhjEyseDM6tZOAiDfsX/4m1wXWzXj2rNoaBe3qns3AfoTwOX9g0SmgV0W
	IQWqwzs2rOAbyrsJduIJwf7XOGJj3e/ysa4jWoK0vBn4GsyTJonAiT+0sI0rF9+YfyHsLPgmnyjWG
	0tG8EcGzYQXxKxGm+Ne/XbqD/UlzVwvFfOBE67GfnfuR58cfitMuFjfB2Wkjb3iI+Mr4aBvGPOVJ+
	GEOqAwo7Fci08O6UW7Hpqd3PbRoPpnUTp24I25tyfYLMknNg8nzUEHkUFAA1K8nNn5+iTTb7eB/ok
	ifLnNRAf9JGYa2eszOTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefzW-0002q9-LT; Tue, 10 Dec 2019 13:55:54 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefzO-0002oR-L0
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:55:48 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E958DF45AE7025AA0D1E;
 Tue, 10 Dec 2019 21:55:36 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Tue, 10 Dec 2019
 21:55:29 +0800
Subject: Re: [PATCH] perf/smmuv3: Remove the leftover put_cpu() in error path
To: Will Deacon <will@kernel.org>
References: <1575974784-55046-1-git-send-email-guohanjun@huawei.com>
 <20191210132458.GA19183@willie-the-truck>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <d251a136-2722-93ba-1bea-0000bf257db2@huawei.com>
Date: Tue, 10 Dec 2019 21:55:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20191210132458.GA19183@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_055547_312237_D1996A25 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/12/10 21:24, Will Deacon wrote:
> On Tue, Dec 10, 2019 at 06:46:24PM +0800, Hanjun Guo wrote:
>> In smmu_pmu_probe(), there is put_cpu() in the error path,
>> which is wrong because we use raw_smp_processor_id() to
>> get the cpu ID, not get_cpu(), remove it.
>>
>> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
>> ---
>>  drivers/perf/arm_smmuv3_pmu.c | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
>> index 773128f..fd1d46a 100644
>> --- a/drivers/perf/arm_smmuv3_pmu.c
>> +++ b/drivers/perf/arm_smmuv3_pmu.c
>> @@ -834,7 +834,6 @@ static int smmu_pmu_probe(struct platform_device *pdev)
>>  out_unregister:
>>  	cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
>>  out_cpuhp_err:
>> -	put_cpu();
>>  	return err;
> 
> Can we kill 'out_cpuhp_err' altogether then and just return err if we fail
> to add the hotplug instance?

Makes sense, but I think we can go further to kill both 'out_cpuhp_err' and
'out_register' as below [1], what do you think?

Thanks
Hanjun

[1]:
diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index fd1d46a..a5adaba 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -814,14 +814,15 @@ static int smmu_pmu_probe(struct platform_device *pdev)
        if (err) {
                dev_err(dev, "Error %d registering hotplug, PMU @%pa\n",
                        err, &res_0->start);
-           goto out_cpuhp_err;
+         return err;
        }

        err = perf_pmu_register(&smmu_pmu->pmu, name, -1);
        if (err) {
+         cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
                dev_err(dev, "Error %d registering PMU @%pa\n",
                        err, &res_0->start);
-           goto out_unregister;
+         return err;
        }

        dev_info(dev, "Registered PMU @ %pa using %d counters with %s filter settings\n",
@@ -830,11 +831,6 @@ static int smmu_pmu_probe(struct platform_device *pdev)
                 "Individual");

        return 0;
-
-out_unregister:
-   cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
-out_cpuhp_err:
-   return err;
 }

 static int smmu_pmu_remove(struct platform_device *pdev)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
