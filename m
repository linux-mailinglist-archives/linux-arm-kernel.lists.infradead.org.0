Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 647F51B9F49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jWAP9iDXTcoAhhMWiPJr3Q7Ur2bXAwcpD11q+3B7WWo=; b=uIXVXVBmfRXBic7FfBUaCSrz+
	s0AiYdHRx9mVBSQAyOgWIjXIzgNe0gZDLOSxsAFW//XY74zwaYUWUejRQGdQMNwGK/ZsdVJ1qeVu1
	rfAdUXHbKdK9gT4Agt1acuq0HN1CHDK5lz3BiCv7U2l+HOi5NfkWJzbUGBH7K/DjUR1JFGvNZmeNy
	Eu5S+6PFMeX+ZjF63NyFMuWqcLEZ1f4soSdBXUCnN99cbuxdLYipMHdFevinkwTiVD7VhCbd7FUoX
	dHT+bbYC60605cfl0Ru/OrLnE0NhhW+s5Ohn9J6rPdPLz37IVRNMD+MJ9TeSmjvLOHcD+bv3e1yFW
	hhv+UopHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzh1-0002OG-UK; Mon, 27 Apr 2020 09:04:47 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzgt-0002N7-O9
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:04:41 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 61123C1D0363CAD51DE2;
 Mon, 27 Apr 2020 10:04:33 +0100 (IST)
Received: from [127.0.0.1] (10.210.170.137) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Mon, 27 Apr
 2020 10:04:31 +0100
Subject: Re: [RFC PATCH v2 01/13] perf parse-events: Fix comparison of evsel
 and leader pmu name
To: Jiri Olsa <jolsa@redhat.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
 <1587120084-18990-2-git-send-email-john.garry@huawei.com>
 <20200427081624.GA1431639@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <ead36e57-3baf-6af2-57d8-c0fa365926cd@huawei.com>
Date: Mon, 27 Apr 2020 10:03:53 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200427081624.GA1431639@krava>
Content-Language: en-US
X-Originating-IP: [10.210.170.137]
X-ClientProxiedBy: lhreml722-chm.china.huawei.com (10.201.108.73) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_020439_936024_A61A20B6 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On 27/04/2020 09:16, Jiri Olsa wrote:
> On Fri, Apr 17, 2020 at 06:41:12PM +0800, John Garry wrote:
>> Since we now strdup() the pmu name for the event selector, use strcmp()
>> instead of pointer equality for comparison.
>>
>> Fixes: d4953f7ef1a2 ("perf parse-events: Fix 3 use after frees found with clang ASANutil/parse-events.c")
>> Signed-off-by: John Garry <john.garry@huawei.com>
> 
> I don't ee this change in your branch:
>    private-topic-perf-5.6-sys-pmu-events-v2-upstream
> 
> do you have some updated tree?

I have started rebase work here:

https://github.com/hisilicon/kernel-dev/commits/private-topic-perf-5.7-sys-pmu-events-v2

Without this patch, I get this spewed for metric events:

	assertion failed at util/parse-events.c:1637

However, if there was a problem on mainline, I would expect some other 
reports now.

Thanks,
John



> 
>> ---
>>
>> I am not 100% sure that this is the right fix....
>>
>>   tools/perf/util/parse-events.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
>> index 10107747b361..90ddade1ba23 100644
>> --- a/tools/perf/util/parse-events.c
>> +++ b/tools/perf/util/parse-events.c
>> @@ -1629,7 +1629,7 @@ parse_events__set_leader_for_uncore_aliase(char *name, struct list_head *list,
>>   		 * event. That can be used to distinguish the leader from
>>   		 * other members, even they have the same event name.
>>   		 */
>> -		if ((leader != evsel) && (leader->pmu_name == evsel->pmu_name)) {
>> +		if ((leader != evsel) && !strcmp(leader->pmu_name, evsel->pmu_name)) {
>>   			is_leader = false;
>>   			continue;
>>   		}
>> -- 
>> 2.16.4
>>
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
