Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0BC157F27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 16:47:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lpR4G/vFx4vxepE0ZlwaE3uz+wKBACQ/3MIG3G9GnW0=; b=raipaQJEY5HR9ol5Kzvh09FbN
	HuiRY/mcz2GFIKbgYG33/izSPtT44Liti8H98SOUkiRjX/tAzMflko7xJobHb2dcs/dJ51bIrIGw1
	9SDgdTgvPwgyhGYT0EUosoDKLAo5d2vrO2Wv160CaQTd1k8Zq3/UO4d6/OojcM/LWt4HYpU27P6HT
	4St8BYclgzDLxx5F0GqdrDvynP7+lmU/apCKbETA1waMNz9Prx0pQo6N/vNOWhceN5nExvxKDzJpt
	+A8AKmK/UVUN3DvCgjPyZR2/bX2vIqJ9P06jR1ezoaa8nP93Hobu73Wth4ZkJwrW6tbgutCizctez
	6aZxsEVfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1BHQ-00082V-Qb; Mon, 10 Feb 2020 15:47:25 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1BHF-00080u-S2
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 15:47:15 +0000
Received: from LHREML712-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id DFD6BDD31CA7FEDB42FA;
 Mon, 10 Feb 2020 15:47:09 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML712-CAH.china.huawei.com (10.201.108.35) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 10 Feb 2020 15:47:10 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 10 Feb
 2020 15:47:09 +0000
Subject: Re: [PATCH RFC 1/7] perf jevents: Add support for an extra directory
 level
To: Jiri Olsa <jolsa@redhat.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-2-git-send-email-john.garry@huawei.com>
 <20200210120727.GD1907700@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <8bf65f0c-d4cf-8c69-15b3-961ce4f3cd2f@huawei.com>
Date: Mon, 10 Feb 2020 15:47:08 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200210120727.GD1907700@krava>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml720-chm.china.huawei.com (10.201.108.71) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_074714_056719_1360DCA8 
X-CRM114-Status: GOOD (  17.80  )
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
> On Fri, Jan 24, 2020 at 10:34:59PM +0800, John Garry wrote:
>> Currently we support upto a level 2 directory, and level 2 would be in the
>> form vendor/platform.
>>
>> Add support for a further level, to hold specific categories of events for
>> when we want to segregate them for matching purposes.
>>
>> Signed-off-by: John Garry <john.garry@huawei.com>
>> ---
>>   tools/perf/pmu-events/jevents.c | 11 ++++++++---
>>   1 file changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/tools/perf/pmu-events/jevents.c b/tools/perf/pmu-events/jevents.c
>> index 079c77b6a2fd..8af05b94a37d 100644
>> --- a/tools/perf/pmu-events/jevents.c
>> +++ b/tools/perf/pmu-events/jevents.c
>> @@ -960,15 +960,20 @@ static int process_one_file(const char *fpath, const struct stat *sb,
>>   	int level   = ftwbuf->level;
>>   	int err = 0;
>>   
>> -	if (level == 2 && is_dir) {
>> +	if (level >= 2 && is_dir) {
>> +		int count = 0;
>>   		/*
>>   		 * For level 2 directory, bname will include parent name,
>>   		 * like vendor/platform. So search back from platform dir
>>   		 * to find this.
>> +		 * Something similar for level 3 directory, but we're a PMU
>> +		 * category folder, like vendor/platform/cpu.
>>   		 */
>>   		bname = (char *) fpath + ftwbuf->base - 2;
>>   		for (;;) {
>>   			if (*bname == '/')
>> +				count++;
>> +			if (count == level - 1)
>>   				break;
>>   			bname--;
> 

Hi Jirka,

> I was wondering why we just don't use different filename for that,
> but it's true that the code transforms directory chain to the table
> name.. so I guess another directory level is justified ;-)

Yes, and we need to have separate tables for system and CPU/uncore PMU 
aliases.

Thanks,
John

> 
> jirka
> 
> 
>>   		}
>> @@ -981,13 +986,13 @@ static int process_one_file(const char *fpath, const struct stat *sb,
>>   		 level, sb->st_size, bname, fpath);
>>   
>>   	/* base dir or too deep */
>> -	if (level == 0 || level > 3)
>> +	if (level == 0 || level > 4)
>>   		return 0;
>>   
>>   
>>   	/* model directory, reset topic */
>>   	if ((level == 1 && is_dir && is_leaf_dir(fpath)) ||
>> -	    (level == 2 && is_dir)) {
>> +	    (level >= 2 && is_dir && is_leaf_dir(fpath))) {
>>   		if (close_table)
>>   			print_events_table_suffix(eventsfp);
>>   
>> -- 
>> 2.17.1
>>
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
