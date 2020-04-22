Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894151B4395
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 13:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BNsD51P6zdnFILw3zFYARZOqwXNBZk4p8qasTc7wKGs=; b=cW24hrB47DadJj85W+QriEEN1
	0Rz9MfIlEGCT80H51upTIRElyu2EGpOhoVHbpo9z3KPWHQSupTa1Y2YwqmwWm2cfMZ1AzBqlBnNHE
	71j+VzUbUTcL7JGCJztde6G/9i6zoh4gCJAcTuVojTiG8wma0GdNAnrToXNTXgUxfpA9qH8jQ/qof
	Oz9/EYP4cPp+ljddqGAEA3AXXrP6KrLow0KJabqaCPCGJAt5l/MwEMSpm16/H++mxBlswvZ9LN52g
	P/evUmrJhj3xmlfEcbFw1OM6Zms9oEc9+4xaBeLn8A2T3Lm+a3+U8k1DK0dEovkUlSbWbqfaT0A3U
	fSiGAoK+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRDym-00086O-IT; Wed, 22 Apr 2020 11:55:48 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDyb-00084b-SG
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 11:55:39 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 7DBD82D1E6F71322D1FA;
 Wed, 22 Apr 2020 12:55:30 +0100 (IST)
Received: from [127.0.0.1] (10.47.10.232) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Wed, 22 Apr
 2020 12:55:29 +0100
Subject: Re: [RFC PATCH v2 07/13] perf pmu: Add pmu_id()
To: Jiri Olsa <jolsa@redhat.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
 <1587120084-18990-8-git-send-email-john.garry@huawei.com>
 <20200422114122.GG962614@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <1b2c2b91-173b-2656-597c-551aac750784@huawei.com>
Date: Wed, 22 Apr 2020 12:54:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200422114122.GG962614@krava>
Content-Language: en-US
X-Originating-IP: [10.47.10.232]
X-ClientProxiedBy: lhreml709-chm.china.huawei.com (10.201.108.58) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_045538_063946_D71840D7 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, irogers@google.com, ak@linux.intel.com,
 qiangqing.zhang@nxp.com, peterz@infradead.org, robin.murphy@arm.com,
 linuxarm@huawei.com, acme@kernel.org, linux-kernel@vger.kernel.org,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  Wi
On 22/04/2020 12:41, Jiri Olsa wrote:
> On Fri, Apr 17, 2020 at 06:41:18PM +0800, John Garry wrote:
>> Add a function to read the PMU id sysfs entry. We only do it for uncore
>> PMUs where this would be relevant.
>>
>> Signed-off-by: John Garry <john.garry@huawei.com>
>> ---
>>   tools/perf/util/pmu.c | 36 ++++++++++++++++++++++++++++++++++++
>>   tools/perf/util/pmu.h |  1 +
>>   2 files changed, 37 insertions(+)
>>
>> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
>> index ef6a63f3d386..6a67c6a28d08 100644
>> --- a/tools/perf/util/pmu.c
>> +++ b/tools/perf/util/pmu.c
>> @@ -594,6 +594,7 @@ static struct perf_cpu_map *__pmu_cpumask(const char *path)
>>    * Uncore PMUs have a "cpumask" file under sysfs. CPU PMUs (e.g. on arm/arm64)
>>    * may have a "cpus" file.
>>    */
>> +#define CPUS_TEMPLATE_ID	"%s/bus/event_source/devices/%s/identifier"
>>   #define CPUS_TEMPLATE_UNCORE	"%s/bus/event_source/devices/%s/cpumask"
>>   #define CPUS_TEMPLATE_CPU	"%s/bus/event_source/devices/%s/cpus"
>>   
>> @@ -632,6 +633,39 @@ static bool pmu_is_uncore(const char *name)
>>   	return file_available(path);
>>   }
>>   
>> +static char *pmu_id(const char *name)
>> +{
>> +	char path[PATH_MAX], *id;
>> +	const char *sysfs;
>> +	FILE *file;
>> +	int n;
>> +
>> +	sysfs = sysfs__mountpoint();
>> +	snprintf(path, PATH_MAX, CPUS_TEMPLATE_ID, sysfs, name);
>> +
>> +	id = malloc(PATH_MAX);
>> +	if (!id)
>> +		return NULL;
>> +
>> +	file = fopen(path, "r");
>> +	if (!file) {
>> +		free(id);
>> +		return NULL;
>> +	}
>> +
>> +	n = fscanf(file, "%s", id);
>> +
>> +	fclose(file);
>> +
>> +	if (!n) {
>> +		free(id);
>> +		return NULL;
>> +	}
>> +
>> +	return id;
>> +}
> 
> I still need to go through this patchset in more detail,

ok, great.

But, could you check patch #1 also, as this *may* be fixing something 
broken in mainline? Not sure. Without it, we get a spew of warnings for 
metrics.

> but just quick note, that we have sysfs__read_str that you
> could use in here
> 

ok, there may be more functions in current pmu.c then which can use 
this. I can check.

Cheers,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
