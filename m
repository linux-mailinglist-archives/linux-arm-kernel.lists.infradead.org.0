Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8E1598B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 12:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7lOJkiq4cocuww/X8EyojhM3f5cIJuPSIGsEadao+Cs=; b=HFilN74h9FjkzbR5i627aesCi
	W/YHvGQkBIx/bLaPRZBGzA3MOwEGxSNBt3I3qAxaLCpkSRH4hNky8++fEhWp1N/2l0tNxwnMQBvGM
	kSRdeyQSS+V0j80qRUTAXlGT53+mu4HGiTXwHd+ytChGOvYEESjh44M/cr9b0ZKwhKsvRlsjlmk5+
	g4nR251VhK+XMstHXjPTnECmgonqFIHpzYkVT4sYhOxQ9yDYrtTYRCsTbWEbdklQPpN+snVOnElvq
	vqQhxZ1SfSKXPjiCRFdTukAi7YyqDSCK+A6G0PqX5/X1as8GwOLN3pp+6FApET/m2/p7VXl+sXSQ3
	qiCP2OjbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgoOb-0004AY-GA; Fri, 28 Jun 2019 10:46:21 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgoOL-00049g-Pe
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 10:46:07 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2E14F48D31486AA4B2C7;
 Fri, 28 Jun 2019 18:46:01 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 28 Jun 2019 18:45:51 +0800
Subject: Re: [PATCH v2 2/5] perf pmu: Support more complex PMU event aliasing
To: Jiri Olsa <jolsa@redhat.com>
References: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
 <1560521283-73314-3-git-send-email-john.garry@huawei.com>
 <20190616095844.GC2500@krava>
 <a27e65b4-b487-9206-6dd0-6f9dcec0f1f5@huawei.com>
 <20190620182519.GA15239@krava>
 <6257fc79-b737-e6ca-2fce-f71afa36e9aa@huawei.com>
 <cafed7d6-13c7-3a92-a826-024698bc6cc8@huawei.com>
 <20190628104040.GA15960@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <004cb11b-e0ee-5af1-33d4-437fb8be03c0@huawei.com>
Date: Fri, 28 Jun 2019 11:45:43 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190628104040.GA15960@krava>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_034606_080410_2D4C0B8D 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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

On 28/06/2019 11:40, Jiri Olsa wrote:
> On Thu, Jun 27, 2019 at 05:27:32PM +0100, John Garry wrote:
>
> SNIP
>
>>>>
>>>> heya,
>>>> sry for late reply
>>>>
>>>>>
>>>>>> if tok is NULL in here we crash
>>>>>>
>>>>>
>>>>> As I see, tok could not be NULL. If str contains no delimiters, then
>>>>> we just
>>>>> return same as str in tok.
>>>>>
>>>>> Can you see tok being NULL?
>>>>
>>>> well, if there's no ',' in the str it returns NULL, right?
>>>
>>> No, it would return str in tok.
>
> ok
>
>>>
>>>> and IIUC this function is still called for standard uncore
>>>> pmu names
>>>>
>>>>>
>>>>>>> +        res = false;
>>>>>>> +        goto out;
>>>>>>> +    }
>>>>>>> +
>>>>>>> +    for (; tok; name += strlen(tok), tok = strtok_r(NULL, ",",
>>>>>>> &tmp)) {
>>>>>>
>>>>>> why is name shifted in here?
>>>>>
>>>>> I want to ensure that we match the tokens in order and also guard
>>>>> against
>>>>> possible repeated token matches in 'name'.
>>>>
>>>> i might not understand this correctly.. so
>>>>
>>>> str is the alias name that can contain ',' now, like:
>>>>   hisi_sccl,ddrc
>>>
>>> For example of pmu_nmame=hisi_sccl,ddrc and pmu=hisi_sccl1_ddrc0, we
>>> match in this sequence:
>>>
>>> loop 1. tok=hisi_sccl name=hisi_sccl1_ddrc0
>>> loop 2. tok=ddrc name=ddrc0
>>> loop 3. tok=NULL -> breakout and return true
>

Hi jirka,

> ok, plz put something like above into comment
>

ok, can do.

Thanks again,
John

> thanks,
> jirka
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
