Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C47C5870D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 18:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ypvXUaq+lkslL0Yt4HeSCVOGqN1OHWNcc2BjAk+7t/o=; b=NgwMYq1aQ3Y/HRksX+zbJnoHZ
	IhPQAM6oovfK7mAWYQg6vhoEj9xASa7rwkCy0Wjy9BpT/yO5//aOWTwy2bnyTot7Du4NNO4zZRRGD
	Nf+FXEI/n0p5o8eVrohmkxmFuve9890MoxiSyCIlUyLxJ7EZMCHiuiYgKUYexTEAa15Dc8ZHYL6S7
	K+szUlQ/t8v58Id3+wB+QZPZpkFCoN/zGK9Z17tMQ110g881Pzy4A1HcNm3NOx920eYR3bF/4M3zz
	964US81oZd5kZcaNnzgUBVPGaTOvhCYJH1tOtMJttWtMyBNSei5Y1DmT2u68D8bCpIAu/cHCE2435
	/IQbyfs0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXG6-0005FU-N1; Thu, 27 Jun 2019 16:28:26 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXFh-00053u-Cb
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 16:28:04 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9349457549DBE8AA1F6B;
 Fri, 28 Jun 2019 00:27:48 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 28 Jun 2019 00:27:41 +0800
Subject: Re: [PATCH v2 2/5] perf pmu: Support more complex PMU event aliasing
To: Jiri Olsa <jolsa@redhat.com>
References: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
 <1560521283-73314-3-git-send-email-john.garry@huawei.com>
 <20190616095844.GC2500@krava>
 <a27e65b4-b487-9206-6dd0-6f9dcec0f1f5@huawei.com>
 <20190620182519.GA15239@krava>
 <6257fc79-b737-e6ca-2fce-f71afa36e9aa@huawei.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <cafed7d6-13c7-3a92-a826-024698bc6cc8@huawei.com>
Date: Thu, 27 Jun 2019 17:27:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <6257fc79-b737-e6ca-2fce-f71afa36e9aa@huawei.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_092802_246609_F2CE0FB9 
X-CRM114-Status: GOOD (  23.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, brueckner@linux.ibm.com, mathieu.poirier@linaro.org,
 peterz@infradead.org, tmricht@linux.ibm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, linuxarm@huawei.com,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, ben@decadent.org.uk,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/06/2019 11:42, John Garry wrote:
> On 20/06/2019 19:25, Jiri Olsa wrote:
>> On Mon, Jun 17, 2019 at 10:06:08AM +0100, John Garry wrote:
>>> On 16/06/2019 10:58, Jiri Olsa wrote:
>>>> On Fri, Jun 14, 2019 at 10:08:00PM +0800, John Garry wrote:
>>>>> The jevent "Unit" field is used for uncore PMU alias definition.
>>>>>
>>>>> The form uncore_pmu_example_X is supported, where "X" is a wildcard,
>>>>> to support multiple instances of the same PMU in a system.
>>>>>
>>>>> Unfortunately this format not suitable for all uncore PMUs; take
>>>>> the Hisi
>>>>> DDRC uncore PMU for example, where the name is in the form
>>>>> hisi_scclX_ddrcY.
>>>>>
>>>>> For the current jevent parsing, we would be required to hardcode an
>>>>> uncore
>>>>> alias translation for each possible value of X. This is not scalable.
>>>>>
>>>>> Instead, add support for "Unit" field in the form "hisi_sccl,ddrc",
>>>>> where
>>>>> we can match by hisi_scclX and ddrcY. Tokens in Unit field are
>>>>> delimited by ','.
>>>>>
>>>>> Signed-off-by: John Garry <john.garry@huawei.com>
>>>>> ---
>>>>>  tools/perf/util/pmu.c | 39 ++++++++++++++++++++++++++++++++++-----
>>>>>  1 file changed, 34 insertions(+), 5 deletions(-)
>>>>>
>>>>> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
>>>>> index 7e7299fee550..bc71c60589b5 100644
>>>>> --- a/tools/perf/util/pmu.c
>>>>> +++ b/tools/perf/util/pmu.c
>>>>> @@ -700,6 +700,39 @@ struct pmu_events_map
>>>>> *perf_pmu__find_map(struct perf_pmu *pmu)
>>>>>      return map;
>>>>>  }
>>>>>
>>>>> +static bool pmu_uncore_alias_match(const char *pmu_name, const
>>>>> char *name)
>>>>> +{
>>>>> +    char *tmp, *tok, *str;
>>>>> +    bool res;
>>>>> +
>>>>> +    str = strdup(pmu_name);
>>>>> +    if (!str)
>>>>> +        return false;
>
> Hi Jirka,
>
>>>>> +
>>>>> +    /*
>>>>> +     * uncore alias may be from different PMU with common
>>>>> +     * prefix or matching tokens.
>>>>> +     */
>>>>> +    tok = strtok_r(str, ",", &tmp);
>
> If str contains no delimiter, then it returns str in tok.
>
>>>>> +    if (strncmp(pmu_name, tok, strlen(tok))) {
>
> So this above check covers the case of str with and without a delimiter.
>
>>>>
>>>
>>> Hi Jirka,
>>
>> heya,
>> sry for late reply
>>
>>>
>>>> if tok is NULL in here we crash
>>>>
>>>
>>> As I see, tok could not be NULL. If str contains no delimiters, then
>>> we just
>>> return same as str in tok.
>>>
>>> Can you see tok being NULL?
>>
>> well, if there's no ',' in the str it returns NULL, right?
>
> No, it would return str in tok.
>
>> and IIUC this function is still called for standard uncore
>> pmu names
>>
>>>
>>>>> +        res = false;
>>>>> +        goto out;
>>>>> +    }
>>>>> +
>>>>> +    for (; tok; name += strlen(tok), tok = strtok_r(NULL, ",",
>>>>> &tmp)) {
>>>>
>>>> why is name shifted in here?
>>>
>>> I want to ensure that we match the tokens in order and also guard
>>> against
>>> possible repeated token matches in 'name'.
>>
>> i might not understand this correctly.. so
>>
>> str is the alias name that can contain ',' now, like:
>>   hisi_sccl,ddrc
>
> For example of pmu_nmame=hisi_sccl,ddrc and pmu=hisi_sccl1_ddrc0, we
> match in this sequence:
>
> loop 1. tok=hisi_sccl name=hisi_sccl1_ddrc0
> loop 2. tok=ddrc name=ddrc0
> loop 3. tok=NULL -> breakout and return true
>
> A couple of notes:
> a. loop 1. could be omitted, but the code becomes a bit more complicated
> 2. I don't have to advance name. But then we would match something like
> hisi_ddrc0_sccl1. Maybe this is ok.
>
>>
>> and name is still pmu with no ',' ...
>> please make this or
>> proper version that in some comment
>>
>
> I didn't really get your meaning here. Please check my replies and see
> if you have further doubt or concern.
>

Hi Jirka,

I was just wondering if you have any further comments or questions here?

Much appreciated,
John


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
