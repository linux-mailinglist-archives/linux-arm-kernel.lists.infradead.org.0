Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482EF157F46
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 16:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1zzaAw437w2HDwr1Ky5kz6AOd0cE3oQrDchwV9SR5OA=; b=j1mumPZIdulY+P/6hM0zHHT4L
	tlYknuHxX+ZdYDzaq9oIQY395HIM2DAMERXDAb/ut57gbohhjDFats4PkTlLpFtaUPyGn09xJqxPH
	IKPR5li+7iBFA/1/amUIRlsw4gEW8Eo/Z+9KshvvorAoMRhUNctVY568wFFypZtRanrQST/LCkEW4
	3De2jBD76hOMA7AjswtLdBIjtJb7sVrbB+cDJjkN847eZTS406aVnxWJ/iNAsqoTROAY/a6rBbkHz
	OUY3vD/L7kD5G6bgegopTcZnDXyTHQqaysVI8WL3bZlqqRYhChJ8GGOsqSj0BbYztsP1lLK1XNoRy
	lywwRBQ9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1BOy-0003ZP-Lx; Mon, 10 Feb 2020 15:55:12 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1BOq-0002f6-Fc
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 15:55:06 +0000
Received: from lhreml709-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 06EF21ADA86E6B7EE9B3;
 Mon, 10 Feb 2020 15:55:02 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml709-cah.china.huawei.com (10.201.108.32) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 10 Feb 2020 15:55:01 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 10 Feb
 2020 15:55:01 +0000
Subject: Re: [PATCH RFC 3/7] perf jevents: Add support for a system events PMU
To: Jiri Olsa <jolsa@redhat.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-4-git-send-email-john.garry@huawei.com>
 <20200210120749.GF1907700@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <b148f0b6-d2ae-6520-8da1-7aed2c9e1d6b@huawei.com>
Date: Mon, 10 Feb 2020 15:55:00 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200210120749.GF1907700@krava>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml720-chm.china.huawei.com (10.201.108.71) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_075504_688437_D2EC7086 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, ak@linux.intel.com, suzuki.poulose@arm.com,
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/02/2020 12:07, Jiri Olsa wrote:
> On Fri, Jan 24, 2020 at 10:35:01PM +0800, John Garry wrote:
> 
> SNIP
> 
>>   	- Set of 'PMU events tables' for all known CPUs in the architecture,
>> @@ -83,11 +93,11 @@ NOTES:
>>   	2. The 'pmu-events.h' has an extern declaration for the mapping table
>>   	   and the generated 'pmu-events.c' defines this table.
>>   
>> -	3. _All_ known CPU tables for architecture are included in the perf
>> -	   binary.
>> +	3. _All_ known CPU and system tables for architecture are included in
>> +	   the perf binary.
>>   
>> -At run time, perf determines the actual CPU it is running on, finds the
>> -matching events table and builds aliases for those events. This allows
>> +At run time, perf determines the actual CPU or system it is running on, finds
>> +the matching events table and builds aliases for those events. This allows
>>   users to specify events by their name:
>>   
>>   	$ perf stat -e pm_1plus_ppc_cmpl sleep 1
>> @@ -150,3 +160,18 @@ where:
>>   
>>   	i.e the three CPU models use the JSON files (i.e PMU events) listed
>>   	in the directory 'tools/perf/pmu-events/arch/x86/silvermont'.
>> +
>> +The mapfile_sys.csv format is slightly different, in that it contains a SYSID
>> +instead of the CPUID:
>> +
>> +	Header line
>> +	SYSID,Version,Dir/path/name,Type
> 

Hi jirka,

> can't we just add prefix to SYSID types? like:
> 
> 	SYSID-HIP08,v1,hisilicon/hip08/sys,sys
> 	0x00000000480fd010,v1,hisilicon/hip08/cpu,core
> 	0x00000000500f0000,v1,ampere/emag,core
> 
> because the rest of the line is the same, right?

I did consider that already. It should be workable.

> 
> seems to me that having one mapfile type would be less confusing

I thought that having it all in a single file would be more confusing :)

> 
As for this separate comment:

 >> +		if (!strcmp(bname, "mapfile_sys.csv")) {
 >> +			mapfile_sys = strdup(fpath);
 >
 >
 > we could release that in the cleanup code at the end of main
 > together with 'mapfile',

That should now go away.

 >  which is also missing

Right, I'll look to fix that.

Thanks,
John

> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
