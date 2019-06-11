Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808403D221
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=whs5UaDHRgbDghjp7kFyS3NXk0WVgnqez3GyHHIV/bU=; b=m0OtQOKM8p1lBlsAaEHMIL1pX
	wXMxtifTGghS18sg66NvXbzQT1W+5eedP0YjsrzN6UlIhSAzgfTC/1nwVbEkgLB1VJeAW9EExEe2S
	6AEWSNJBBBZnupSzIZ4WPPZ9tExlFMJtc1WxAJuwA20WjrScvVXXF3Kwjk+SM6wNThQMOypKv5+Z2
	EAXgB1gnuh7cLc8iSRgrALx1I01r1oP5Ip3ovH5Mez08NSbwidV7EjrEsWnnq0L+rZzu0O2Lv4pNq
	kjiivAhvNi5Hdtqak/PPwGwUlOXDDG8+kSLbaBED8/iXicScKk1EyF+iZha/pEQw6dPJ3lqqa/7Cy
	K3/SP3y0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajYf-0006Eq-Vc; Tue, 11 Jun 2019 16:23:38 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajYU-0006Dd-6M
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:23:27 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 3184D90254F032FD5765;
 Wed, 12 Jun 2019 00:23:16 +0800 (CST)
Received: from [127.0.0.1] (10.210.166.43) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Wed, 12 Jun 2019
 00:22:44 +0800
Subject: Re: [PATCH 2/5] perf pmu: Support more complex PMU event aliasing
To: Jiri Olsa <jolsa@redhat.com>
References: <1560160772-210844-1-git-send-email-john.garry@huawei.com>
 <1560160772-210844-3-git-send-email-john.garry@huawei.com>
 <20190611161023.GD18242@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <9c3ba12c-0621-0e28-ddeb-e1ebeb1674a5@huawei.com>
Date: Tue, 11 Jun 2019 17:22:33 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190611161023.GD18242@krava>
X-Originating-IP: [10.210.166.43]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_092326_475449_99F2BCC5 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, brueckner@linux.ibm.com, ak@linux.intel.com,
 mathieu.poirier@linaro.org, peterz@infradead.org, tmricht@linux.ibm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 linuxarm@huawei.com, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 ben@decadent.org.uk, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/06/2019 17:10, Jiri Olsa wrote:
> On Mon, Jun 10, 2019 at 05:59:29PM +0800, John Garry wrote:
>> The jevent "Unit" field is used for uncore PMU alias definition.
>>
>> The form uncore_pmu_example_X is supported, where "X" is a wildcard,
>> to support multiple instances of the same PMU in a system.
>>
>> Unfortunately this format not suitable for all uncore PMUs; take the Hisi
>> DDRC uncore PMU for example, where the name is in the form
>> hisi_scclX_ddrcY.
>>
>> For the current jevent parsing, we would be required to hardcode an uncore
>> alias translation for each possible value of X. This is not scalable.
>>
>> Instead, add support for "Unit" field in the form "hisi_sccl,ddrc", where
>> we can match by hisi_scclX and ddrcY. Tokens in Unit field
>> are delimited by ','.
>>
>> Signed-off-by: John Garry <john.garry@huawei.com>
>> ---
>>  tools/perf/util/pmu.c | 45 ++++++++++++++++++++++++++++++++++++++-----
>>  1 file changed, 40 insertions(+), 5 deletions(-)
>>
>> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
>> index 036047f56efa..f00cae750086 100644
>> --- a/tools/perf/util/pmu.c
>> +++ b/tools/perf/util/pmu.c
>> @@ -700,6 +700,44 @@ struct pmu_events_map *perf_pmu__find_map(struct perf_pmu *pmu)
>>  	return map;
>>  }
>>
>> +static bool pmu_uncore_alias_match(const char *pmu_name, const char *name)
>> +{
>> +	/*
>> +	 * uncore alias may be from different PMU
>> +	 * with common prefix
>> +	 */
>> +	if (!strncmp(pmu_name, name, strlen(pmu_name)))
>> +		return true;
>> +
>> +	/* match strings with delimiter, ',' */
>> +	while (1) {
>> +		const char *delimiter;
>> +		char token[256] = {};
>> +		const char *found_token;
>> +		int token_len;
>> +
>> +		delimiter = strchr(pmu_name, ',');
>> +		if (delimiter) {
>> +			token_len = delimiter - pmu_name;
>> +		} else {
>> +			token_len = strlen(pmu_name);
>> +		}
>> +
>> +		memcpy(token, pmu_name, token_len);
>> +
>> +		found_token = strstr(name, token);
>> +		if (!found_token)
>> +			return false;
>> +
>> +		/* No more delimiters, so we must be a match */
>> +		if (!delimiter)
>> +			return true;
>> +
>> +		pmu_name += token_len + 1;
>> +		name = found_token + token_len;
>> +	}
>
> hum, would this be easier with strtok_r?

Yes, I think so.

Cheers,

>
> jirka
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
