Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C706FD5EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 07:15:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgP7RmKWVq2wNAKnvgzivOMNgAeVOfT/4j1Xm3lO+Ks=; b=TCTYWOjSFxli+Y
	QIZIIWYRtAPNfqxSkrWteGsPRGNS4n+wPEjhlsZq6BTuJtPK36EGn3hRasIYFItbiz298OGP2ZVCG
	eDpVn6eDhKqFNFeyM7fp9X+M4Ap7b4ZhS1AiD7F2LSUhjnaa39p4Ovo12cbK/MoWvWivmn6+fPJSZ
	MKyAeRHMyIQyvX12JvAhVx3E/daeCWnWZDZ3t8be78aLRbKGsjuWdpPsIKnCe9smv7EzwnGAFCcNy
	0+t6nq9qN2zr5EK/uwEvR8g16FcTQmID7nkvmOevRc7WggzRi9eFikEG7ZoQjoaz8dknuSP+tl7Ar
	OZSwK4hwBtWx/H3+iZ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVUtK-0002oj-Ln; Fri, 15 Nov 2019 06:15:34 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVUtA-0002o8-0I
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 06:15:27 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191115061520epoutp0219cfe2becd4517aacb059cb9a0ac876d~XQWp44X-I3237232372epoutp02Y
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 06:15:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191115061520epoutp0219cfe2becd4517aacb059cb9a0ac876d~XQWp44X-I3237232372epoutp02Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573798520;
 bh=N/bKRe2LsaFFN6ELh+ajkLwnV9jitavc9CHWMee0aqQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=SQxjUtAquvRS3R/r0/EoCi/JYvL/8m+er0HVKrVRJqNdyt2Xdon85htGc0FLVQoQg
 QjeZqtKbuq5i5pDU8kV/w9rqY7LK/ESoIgEOcPP8WcY1LiCNY8izsBWRvSkJdHPGcq
 z5FnUdkSVmQG6YSrXTtUS0OBzINGynUlwXY28YDU=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191115061519epcas1p13fc3da9cfcdfe0e3cacb932fa6fad564~XQWphm-RN2478724787epcas1p1s;
 Fri, 15 Nov 2019 06:15:19 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.158]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47Dp4553l7zMqYm1; Fri, 15 Nov
 2019 06:15:17 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 FE.57.04135.5724ECD5; Fri, 15 Nov 2019 15:15:17 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191115061516epcas1p13a1ba279420333d7846fca032367a750~XQWmuzFg62256322563epcas1p19;
 Fri, 15 Nov 2019 06:15:16 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191115061516epsmtrp189e143561d9d079f937bd890a2ed27bd~XQWmt5XIL0755107551epsmtrp1h;
 Fri, 15 Nov 2019 06:15:16 +0000 (GMT)
X-AuditID: b6c32a36-7e3ff70000001027-aa-5dce42755c9e
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 25.5D.25663.4724ECD5; Fri, 15 Nov 2019 15:15:16 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191115061516epsmtip2dba0cbfc3ba9b108c9dd6e818cd42a2a~XQWmX3P1b1789917899epsmtip2d;
 Fri, 15 Nov 2019 06:15:16 +0000 (GMT)
Subject: Re: [PATCH 7/7] devfreq: move statistics to separate struct
From: Chanwoo Choi <cw00.choi@samsung.com>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Organization: Samsung Electronics
Message-ID: <4ed6b8bf-b415-c42d-33d6-d2ed0504eaf4@samsung.com>
Date: Fri, 15 Nov 2019 15:21:00 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <85a29ce4-0f89-2b50-b046-dba747208933@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TZ0wTYRjO17teD7R4VtRXMFoPR8QAPaD1aMBJDEZ/EJsYV4MX+FIIXfZa
 Z4yIC4xbGSJuUcAQEHFH0QoxqIyIGpGQqOBCcWBwhKC2vRr597zjeZ/3+QZNqC5RIXSG1Ykd
 VsHMUoHk5btTNRGuOU1GTUvXRP5CYaWcP9FbKOf3dn4g+ObmKgXfmP1RwVd3PpXzrdeLKf7b
 7jrEFzbfkvEVdR0Kvn1zKTVrSFJ1eS6VdPHMpqQ9NeUo6Vv1uGRyWWZ8OhbSsEONram2tAyr
 KYFdYEiZm6LVabgILo6fzqqtggUnsIkLkyPmZZg9S7Hq1YLZ5UklC6LIRs2Id9hcTqxOt4nO
 BBbb08z2OHukKFhEl9UUmWqz6DmNJlrraVyZmd7yqpKwZ7vR2jf3D1NZqPAY2okCaGBiYaD2
 DrkTBdIq5iqC/O4quRT0IjiZe9MffEdQcueC/B8lr/6Gv3ATQVVFnp//GUHfgS6Ft2sEkwgP
 D2RTXkwx4VD77pkPBzM8VJT2+AgE80cGbbf3kN7CMGYCPPnZ6dtKycyA+oICwotJZhJ0H3F7
 8jQ9klkCD/oEqWU4NBzu8lEDmJnwte2RDxPMaHjedVwm4fFwpaeY8GoBs0MBFTd6Se8c8CzX
 0RsouRkB3fdqFBIOgfd7t/vxBihrqKMkbg6CmtoWv/0YqC05KPPOIZipUHk9SkpPgGv9R5Gk
 GwSf+nbJJSkl5GxXSS1h0PqiQybhMXB6Ry61D7FFg9wUDXJQNMhB0X+xE4gsR6OwXbSYsMjZ
 owffdzXyPdlw3VV0qmmhGzE0Yocq4XmjUSUXVovrLG4ENMEGKw/1PDSqlGnCuvXYYUtxuMxY
 dCOt56z3EyEjU22eD2B1pnDa6JiYGD6W02k5jh2tnH2uxKhiTIITZ2Jsx45/PBkdEJKF9Ibf
 W7ccCw7SB5wS28dWzscFL+OmRA6P1RE/Wh/3XxqY8vasKTFePR7C2s7/eNu4KLQ+NGtN06r8
 tedLMxYvbvkYdP8XtU9lfH1kQL+xbOM0w/KtK4iG7ys7cU5efU/7tqUodFEjzO3Xh5G63ZPH
 vT+6SvckzGC4tuTL0neaqIjiMpYU0wUunHCIwl8p7k8DyAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsWy7bCSvG6J07lYg+8dZhYbZ6xntVjwaQar
 Rf/j18wW589vYLc42/SG3WLT42usFpd3zWGz+Nx7hNFixvl9TBZrj9xlt7jduILNgdtj06pO
 No/NS+o9+rasYvT4vEkugCWKyyYlNSezLLVI3y6BK+PCo/XMBU2HGCuenZrJ1sA4Yx5jFyMn
 h4SAicTUo7tZuxi5OIQEdjNKbO++DZWQlJh28ShzFyMHkC0scfhwMUTNW0aJpqczmUBqhAVc
 JM5MamIDsdkEtCT2v7gBZosIWEisXfGWBaSBWaCRWWLOms9gCSGBB0wSh9f4gtj8AooSV388
 BlvGK2AncXT6dGYQm0VAVeLV7ENgcVGBCInn229A1QhKnJz5hAXE5hSwl/h48xKYzSygLvFn
 3iVmCFtc4taT+UwQtrzE9rdzmCcwCs9C0j4LScssJC2zkLQsYGRZxSiZWlCcm55bbFhglJda
 rlecmFtcmpeul5yfu4kRHG9aWjsYT5yIP8QowMGoxMMrcetsrBBrYllxZe4hRgkOZiUR3ilv
 z8QK8aYkVlalFuXHF5XmpBYfYpTmYFES55XPPxYpJJCeWJKanZpakFoEk2Xi4JRqYEw3mlnw
 76mkheUb3kcum/gu7Y8y2brJ125l/gvv3Q371h1zZH4l2yDN0bBwAotpSmVEIv9dvfCKQM/6
 5dNlLosfkq3edY77+6z5ippV/Q/b2lz1Zl77kMNvaKWvuOnkNOYnjfdV3IxdFfiPMT6I6fZl
 k9bTSA1U/runOzTKZ4E4j7bnhWVLlFiKMxINtZiLihMBMlmYT7MCAAA=
X-CMS-MailID: 20191115061516epcas1p13a1ba279420333d7846fca032367a750
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191113091354eucas1p265de4985d167814f5080fbdf21b75a0a
References: <20191113091336.5218-1-k.konieczny@samsung.com>
 <CGME20191113091354eucas1p265de4985d167814f5080fbdf21b75a0a@eucas1p2.samsung.com>
 <20191113091336.5218-8-k.konieczny@samsung.com>
 <4942d2ad-fef7-89be-91c1-c02c319546ff@samsung.com>
 <38350d81-e916-b386-6727-f4c85689c172@samsung.com>
 <85a29ce4-0f89-2b50-b046-dba747208933@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_221524_747278_FA32FD37 
X-CRM114-Status: GOOD (  37.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 Kamil Konieczny <k.konieczny@samsung.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bartlomiej,

On 11/15/19 12:25 PM, Chanwoo Choi wrote:
> Hi Bartlomiej,
> 
> On 11/15/19 3:01 AM, Bartlomiej Zolnierkiewicz wrote:
>>
>> Hi Chanwoo,
>>
>> On 11/14/19 2:52 AM, Chanwoo Choi wrote:
>>> Hi Kamil,
>>>
>>> The 'freq_table' and 'max_state' in the devfreq_dev_profile
>>> were used in the ARM Mali device driver[1][2][3]. Although ARM Mali
>>> device driver was posted to mainline kernel, they used
>>> them for a long time. It means that this patch break
>>> the compatibility. The ARM Mali drivers are very
>>> important devfreq device driver. 
>>
>> This argument is not a a technical one and the official upstream
>> kernel policy is to not depend on out-of-tree drivers.
>>
>> Besides the ARM Mali drivers are full of code like:
>>
>> #if LINUX_VERSION_CODE >= KERNEL_VERSION(x, y, z)
>> ...
>> #else
>> ...
>> #endif
>>
>> so few more instances of similar code won't do any harm.. ;-)
>>
>>> [1] https://protect2.fireeye.com/url?k=909caa5c-cd52abe8-909d2113-000babdfecba-812f16576c3614a3&u=https://developer.arm.com/tools-and-software/graphics-and-gaming/mali-drivers/bifrost-kernel#
>>> [2] https://protect2.fireeye.com/url?k=33265f96-6ee85e22-3327d4d9-000babdfecba-44c2daec328712e6&u=https://developer.arm.com/tools-and-software/graphics-and-gaming/mali-drivers/midgard-kernel
>>> [3] https://protect2.fireeye.com/url?k=69bdcab0-3473cb04-69bc41ff-000babdfecba-4b576facf85e0208&u=https://developer.arm.com/tools-and-software/graphics-and-gaming/mali-drivers/utgard-kernel
>>
>> I took a look at ARM Mali drivers source code anyway and I fail to
>> see a rationale behind their behavior of doing 'freq_table' and
>> 'max_state' initialization in the driver itself (instead of leaving
>> it up to the devfreq core code, like all in-kernel drivers are doing
>> already).
>>
>> Could you please explain rationale behind ARM Mali drivers' special
>> needs?
>>
>> [ Both ARM Mali and devfreq core code are using generic PM OPP code
>>   these days to do 'freq_table' and 'max_state' initialization, the
>>   only difference seems to be that ARM Mali creates the frequency
>>   table in the descending order (but there also seems to be no real
>>   need for it). ]
>>
>> Maybe this is an opportunity to simplify also the ARM Mali driver?
> 
> OK. I agree to simplify them on this time.
> For touching the 'freq_table' and 'max_state', need to fix
> the descending order of freq_table. 
> 
> The partition_enable_ops() in the drivers/thermal/devfreq_cooling.c 
> requires the descending order of freq_table. Have to change it by using
> the ascending time or support both ascending and descending order for freq_table.
> 
> 1. Move freq_table, max_state of devfreq_dev_profile to struct devfreq
> 2. Edit partition_enable_ops() in the drivers/thermal/devfreq_cooling.c 
>    by using ascending order instead of descending order.
> 

After changed about 'freq_table' and 'max_state', the build error
will happen on ARM mail driver because the initialization code of
'freq_table' in ARM mali driver, didn't check the kernel version.

The first devfreq patch provided the 'freq_table' as optional variable
in the 'struct devfreq_dev_profile'. Even if ARM mali driver is out of mainline tree, 
this change seems that break the usage rule of 'freq_table' in 'struct devfreq_dev_profile'.

So, if there are no any beneficial reason, I just keep the current status of 'freq_table'
in order to keep the previous usage rule of 'freq_table' in 'struct devfreq_dev_profile'.

Frankly, I'm note sure that it is necessary. I don't want to make
the side-effect without any useful reason.

But,
Separately, have to fix the ordering issue of partition_enable_ops()
in the drivers/thermal/devfreq_cooling.c.

>>
>>> Also, the devfreq device driver specifies their own
>>> information and data into devfreq_dev_profile structure 
>>> before registering the devfreq device with devfreq_add_device().
>>> This patch breaks the basic usage rule of devfreq_dev_profile structure.
>>
>> Well, 'struct devfreq_stats *stats' can be trivially moved out of
>> 'struct devfreq_profile' to 'struct devfreq' if you prefer it that
>> way..
>>
>> Best regards,
>> --
>> Bartlomiej Zolnierkiewicz
>> Samsung R&D Institute Poland
>> Samsung Electronics
>>
>>> So, I can't agree this patch. Not ack.
>>>
>>> Regards,
>>> Chanwoo Choi
>>>
>>> On 11/13/19 6:13 PM, Kamil Konieczny wrote:
>>>> Count time and transitions between devfreq frequencies in separate struct
>>>> for improved code readability and maintenance.
>>>>
>>>> Signed-off-by: Kamil Konieczny <k.konieczny@samsung.com>
>>>> ---
>>>>  drivers/devfreq/devfreq.c          | 156 ++++++++++++++++-------------
>>>>  drivers/devfreq/exynos-bus.c       |   6 +-
>>>>  drivers/devfreq/governor_passive.c |  26 +++--
>>>>  include/linux/devfreq.h            |  43 ++++----
>>>>  4 files changed, 129 insertions(+), 102 deletions(-)
>>>>
>>>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>>>> index d79412b0de59..d85867a91230 100644
>>>> --- a/drivers/devfreq/devfreq.c
>>>> +++ b/drivers/devfreq/devfreq.c
>>>> @@ -105,10 +105,11 @@ static unsigned long find_available_max_freq(struct devfreq *devfreq)
>>>>   */
>>>>  static int devfreq_get_freq_level(struct devfreq *devfreq, unsigned long freq)
>>>>  {
>>>> +	struct devfreq_stats *stats = devfreq->profile->stats;
>>>>  	int lev;
>>>>  
>>>> -	for (lev = 0; lev < devfreq->profile->max_state; lev++)
>>>> -		if (freq == devfreq->profile->freq_table[lev])
>>>> +	for (lev = 0; lev < stats->max_state; lev++)
>>>> +		if (freq == stats->freq_table[lev])
>>>>  			return lev;
>>>>  
>>>>  	return -EINVAL;
>>>> @@ -117,56 +118,64 @@ static int devfreq_get_freq_level(struct devfreq *devfreq, unsigned long freq)
>>>>  static int set_freq_table(struct devfreq *devfreq)
>>>>  {
>>>>  	struct devfreq_dev_profile *profile = devfreq->profile;
>>>> +	struct devfreq_stats *stats;
>>>>  	struct dev_pm_opp *opp;
>>>>  	unsigned long freq;
>>>> -	int i, count;
>>>> +	int i, count, err = -ENOMEM;
>>>>  
>>>>  	/* Initialize the freq_table from OPP table */
>>>>  	count = dev_pm_opp_get_opp_count(devfreq->dev.parent);
>>>>  	if (count <= 0)
>>>>  		return -EINVAL;
>>>>  
>>>> -	profile->max_state = count;
>>>> -	profile->freq_table = devm_kcalloc(devfreq->dev.parent,
>>>> -					count,
>>>> -					sizeof(*profile->freq_table),
>>>> -					GFP_KERNEL);
>>>> -	if (!profile->freq_table) {
>>>> -		profile->max_state = 0;
>>>> +	stats = devm_kzalloc(devfreq->dev.parent,
>>>> +			     sizeof(struct devfreq_stats), GFP_KERNEL);
>>>> +	if (!stats)
>>>>  		return -ENOMEM;
>>>> -	}
>>>>  
>>>> -	for (i = 0, freq = 0; i < profile->max_state; i++, freq++) {
>>>> +	profile->stats = stats;
>>>> +	stats->max_state = count;
>>>> +	stats->freq_table = devm_kcalloc(devfreq->dev.parent,
>>>> +					 count,
>>>> +					 sizeof(*stats->freq_table),
>>>> +					 GFP_KERNEL);
>>>> +	if (!stats->freq_table)
>>>> +		goto err_no_mem;
>>>> +
>>>> +	for (i = 0, freq = 0; i < count; i++, freq++) {
>>>>  		opp = dev_pm_opp_find_freq_ceil(devfreq->dev.parent, &freq);
>>>>  		if (IS_ERR(opp)) {
>>>> -			devm_kfree(devfreq->dev.parent, profile->freq_table);
>>>> -			profile->max_state = 0;
>>>> -			return PTR_ERR(opp);
>>>> +			devm_kfree(devfreq->dev.parent, stats->freq_table);
>>>> +			stats->max_state = 0;
>>>> +			err = PTR_ERR(opp);
>>>> +			goto err_no_mem;
>>>>  		}
>>>>  		dev_pm_opp_put(opp);
>>>> -		profile->freq_table[i] = freq;
>>>> +		stats->freq_table[i] = freq;
>>>>  	}
>>>>  
>>>> -	profile->trans_table = devm_kzalloc(devfreq->dev.parent,
>>>> -					    array3_size(sizeof(unsigned int),
>>>> -							count, count),
>>>> -					    GFP_KERNEL);
>>>> -	if (!profile->trans_table)
>>>> +	stats->trans_table = devm_kzalloc(devfreq->dev.parent,
>>>> +					  array3_size(sizeof(unsigned int),
>>>> +						      count, count),
>>>> +					  GFP_KERNEL);
>>>> +	if (!stats->trans_table)
>>>>  		goto err_no_mem;
>>>>  
>>>> -	profile->time_in_state = devm_kcalloc(devfreq->dev.parent, count,
>>>> -					      sizeof(*profile->time_in_state),
>>>> -					      GFP_KERNEL);
>>>> -	if (!profile->time_in_state)
>>>> +	stats->time_in_state = devm_kcalloc(devfreq->dev.parent, count,
>>>> +					    sizeof(*stats->time_in_state),
>>>> +					    GFP_KERNEL);
>>>> +	if (!stats->time_in_state)
>>>>  		goto err_no_mem;
>>>>  
>>>> -	profile->last_time = get_jiffies_64();
>>>> -	spin_lock_init(&profile->stats_lock);
>>>> +	stats->last_time = get_jiffies_64();
>>>> +	spin_lock_init(&stats->stats_lock);
>>>>  
>>>>  	return 0;
>>>>  err_no_mem:
>>>> -	profile->max_state = 0;
>>>> -	return -ENOMEM;
>>>> +	stats->max_state = 0;
>>>> +	devm_kfree(devfreq->dev.parent, profile->stats);
>>>> +	profile->stats = NULL;
>>>> +	return err;
>>>>  }
>>>>  
>>>>  /**
>>>> @@ -176,7 +185,7 @@ static int set_freq_table(struct devfreq *devfreq)
>>>>   */
>>>>  int devfreq_update_status(struct devfreq *devfreq, unsigned long freq)
>>>>  {
>>>> -	struct devfreq_dev_profile *profile = devfreq->profile;
>>>> +	struct devfreq_stats *stats = devfreq->profile->stats;
>>>>  	unsigned long long cur_time;
>>>>  	int lev, prev_lev, ret = 0;
>>>>  
>>>> @@ -184,22 +193,21 @@ int devfreq_update_status(struct devfreq *devfreq, unsigned long freq)
>>>>  
>>>>  	/* Immediately exit if previous_freq is not initialized yet. */
>>>>  	if (!devfreq->previous_freq) {
>>>> -		spin_lock(&profile->stats_lock);
>>>> -		profile->last_time = cur_time;
>>>> -		spin_unlock(&profile->stats_lock);
>>>> +		spin_lock(&stats->stats_lock);
>>>> +		stats->last_time = cur_time;
>>>> +		spin_unlock(&stats->stats_lock);
>>>>  		return 0;
>>>>  	}
>>>>  
>>>>  	prev_lev = devfreq_get_freq_level(devfreq, devfreq->previous_freq);
>>>>  
>>>> -	spin_lock(&profile->stats_lock);
>>>> +	spin_lock(&stats->stats_lock);
>>>>  	if (prev_lev < 0) {
>>>>  		ret = prev_lev;
>>>>  		goto out;
>>>>  	}
>>>>  
>>>> -	profile->time_in_state[prev_lev] +=
>>>> -			 cur_time - profile->last_time;
>>>> +	stats->time_in_state[prev_lev] += cur_time - stats->last_time;
>>>>  	lev = devfreq_get_freq_level(devfreq, freq);
>>>>  	if (lev < 0) {
>>>>  		ret = lev;
>>>> @@ -207,14 +215,14 @@ int devfreq_update_status(struct devfreq *devfreq, unsigned long freq)
>>>>  	}
>>>>  
>>>>  	if (lev != prev_lev) {
>>>> -		profile->trans_table[(prev_lev *
>>>> -				profile->max_state) + lev]++;
>>>> -		profile->total_trans++;
>>>> +		stats->trans_table[(prev_lev *
>>>> +				stats->max_state) + lev]++;
>>>> +		stats->total_trans++;
>>>>  	}
>>>>  
>>>>  out:
>>>> -	profile->last_time = cur_time;
>>>> -	spin_unlock(&profile->stats_lock);
>>>> +	stats->last_time = cur_time;
>>>> +	spin_unlock(&stats->stats_lock);
>>>>  	return ret;
>>>>  }
>>>>  EXPORT_SYMBOL(devfreq_update_status);
>>>> @@ -504,9 +512,9 @@ void devfreq_monitor_resume(struct devfreq *devfreq)
>>>>  		queue_delayed_work(devfreq_wq, &devfreq->work,
>>>>  			msecs_to_jiffies(profile->polling_ms));
>>>>  
>>>> -	spin_lock(&profile->stats_lock);
>>>> -	profile->last_time = get_jiffies_64();
>>>> -	spin_unlock(&profile->stats_lock);
>>>> +	spin_lock(&profile->stats->stats_lock);
>>>> +	profile->stats->last_time = get_jiffies_64();
>>>> +	spin_unlock(&profile->stats->stats_lock);
>>>>  	devfreq->stop_polling = false;
>>>>  
>>>>  	if (profile->get_cur_freq &&
>>>> @@ -677,7 +685,7 @@ struct devfreq *devfreq_add_device(struct device *dev,
>>>>  	devfreq->data = data;
>>>>  	devfreq->nb.notifier_call = devfreq_notifier_call;
>>>>  
>>>> -	if (!profile->max_state && !profile->freq_table) {
>>>> +	if (!profile->stats) {
>>>>  		mutex_unlock(&devfreq->lock);
>>>>  		err = set_freq_table(devfreq);
>>>>  		if (err < 0)
>>>> @@ -1282,6 +1290,7 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
>>>>  			      const char *buf, size_t count)
>>>>  {
>>>>  	struct devfreq *df = to_devfreq(dev);
>>>> +	struct devfreq_stats *stats = df->profile->stats;
>>>>  	unsigned long value;
>>>>  	int ret;
>>>>  
>>>> @@ -1297,13 +1306,13 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
>>>>  			goto unlock;
>>>>  		}
>>>>  	} else {
>>>> -		unsigned long *freq_table = df->profile->freq_table;
>>>> +		unsigned long *freq_table = stats->freq_table;
>>>>  
>>>>  		/* Get minimum frequency according to sorting order */
>>>> -		if (freq_table[0] < freq_table[df->profile->max_state - 1])
>>>> +		if (freq_table[0] < freq_table[stats->max_state - 1])
>>>>  			value = freq_table[0];
>>>>  		else
>>>> -			value = freq_table[df->profile->max_state - 1];
>>>> +			value = freq_table[stats->max_state - 1];
>>>>  	}
>>>>  
>>>>  	df->min_freq = value;
>>>> @@ -1326,6 +1335,7 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
>>>>  			      const char *buf, size_t count)
>>>>  {
>>>>  	struct devfreq *df = to_devfreq(dev);
>>>> +	struct devfreq_stats *stats = df->profile->stats;
>>>>  	unsigned long value;
>>>>  	int ret;
>>>>  
>>>> @@ -1341,11 +1351,11 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
>>>>  			goto unlock;
>>>>  		}
>>>>  	} else {
>>>> -		unsigned long *freq_table = df->profile->freq_table;
>>>> +		unsigned long *freq_table = stats->freq_table;
>>>>  
>>>>  		/* Get maximum frequency according to sorting order */
>>>> -		if (freq_table[0] < freq_table[df->profile->max_state - 1])
>>>> -			value = freq_table[df->profile->max_state - 1];
>>>> +		if (freq_table[0] < freq_table[stats->max_state - 1])
>>>> +			value = freq_table[stats->max_state - 1];
>>>>  		else
>>>>  			value = freq_table[0];
>>>>  	}
>>>> @@ -1373,14 +1383,15 @@ static ssize_t available_frequencies_show(struct device *d,
>>>>  					  char *buf)
>>>>  {
>>>>  	struct devfreq *df = to_devfreq(d);
>>>> +	struct devfreq_stats *stats = df->profile->stats;
>>>>  	ssize_t count = 0;
>>>>  	int i;
>>>>  
>>>>  	mutex_lock(&df->lock);
>>>>  
>>>> -	for (i = 0; i < df->profile->max_state; i++)
>>>> +	for (i = 0; i < stats->max_state; i++)
>>>>  		count += scnprintf(&buf[count], (PAGE_SIZE - count - 2),
>>>> -				"%lu ", df->profile->freq_table[i]);
>>>> +				"%lu ", stats->freq_table[i]);
>>>>  
>>>>  	mutex_unlock(&df->lock);
>>>>  	/* Truncate the trailing space */
>>>> @@ -1398,9 +1409,10 @@ static ssize_t trans_stat_show(struct device *dev,
>>>>  {
>>>>  	struct devfreq *devfreq = to_devfreq(dev);
>>>>  	struct devfreq_dev_profile *profile = devfreq->profile;
>>>> +	struct devfreq_stats *stats = profile->stats;
>>>> +	unsigned int max_state = stats->max_state;
>>>>  	ssize_t len;
>>>>  	int i, j;
>>>> -	unsigned int max_state = profile->max_state;
>>>>  
>>>>  	if (!devfreq->stop_polling &&
>>>>  			devfreq_update_status(devfreq, devfreq->previous_freq))
>>>> @@ -1411,45 +1423,45 @@ static ssize_t trans_stat_show(struct device *dev,
>>>>  	len = sprintf(buf, "     From  :   To\n");
>>>>  	len += sprintf(buf + len, "           :");
>>>>  
>>>> -	spin_lock(&profile->stats_lock);
>>>> +	spin_lock(&stats->stats_lock);
>>>>  	for (i = 0; i < max_state; i++)
>>>>  		len += sprintf(buf + len, "%10lu",
>>>> -				profile->freq_table[i]);
>>>> +				stats->freq_table[i]);
>>>>  
>>>>  	len += sprintf(buf + len, "   time(ms)\n");
>>>>  
>>>>  	for (i = 0; i < max_state; i++) {
>>>> -		if (profile->freq_table[i] == devfreq->previous_freq)
>>>> +		if (stats->freq_table[i] == devfreq->previous_freq)
>>>>  			len += sprintf(buf + len, "*");
>>>>  		else
>>>>  			len += sprintf(buf + len, " ");
>>>>  
>>>>  		len += sprintf(buf + len, "%10lu:",
>>>> -				profile->freq_table[i]);
>>>> +				stats->freq_table[i]);
>>>>  		for (j = 0; j < max_state; j++)
>>>>  			len += sprintf(buf + len, "%10u",
>>>> -				profile->trans_table[(i * max_state) + j]);
>>>> +				stats->trans_table[(i * max_state) + j]);
>>>>  		len += sprintf(buf + len, "%10llu\n", (u64)
>>>> -			jiffies64_to_msecs(profile->time_in_state[i]));
>>>> +			jiffies64_to_msecs(stats->time_in_state[i]));
>>>>  	}
>>>>  
>>>>  	len += sprintf(buf + len, "Total transition : %u\n",
>>>> -					profile->total_trans);
>>>> -	spin_unlock(&profile->stats_lock);
>>>> +					stats->total_trans);
>>>> +	spin_unlock(&stats->stats_lock);
>>>>  	return len;
>>>>  }
>>>>  static DEVICE_ATTR_RO(trans_stat);
>>>>  
>>>> -static void defvreq_stats_clear_table(struct devfreq_dev_profile *profile)
>>>> +static void defvreq_stats_clear_table(struct devfreq_stats *stats)
>>>>  {
>>>> -	unsigned int count = profile->max_state;
>>>> -
>>>> -	spin_lock(&profile->stats_lock);
>>>> -	memset(profile->time_in_state, 0, count * sizeof(u64));
>>>> -	memset(profile->trans_table, 0, count * count * sizeof(int));
>>>> -	profile->last_time = get_jiffies_64();
>>>> -	profile->total_trans = 0;
>>>> -	spin_unlock(&profile->stats_lock);
>>>> +	unsigned int count = stats->max_state;
>>>> +
>>>> +	spin_lock(&stats->stats_lock);
>>>> +	memset(stats->time_in_state, 0, count * sizeof(u64));
>>>> +	memset(stats->trans_table, 0, count * count * sizeof(int));
>>>> +	stats->last_time = get_jiffies_64();
>>>> +	stats->total_trans = 0;
>>>> +	spin_unlock(&stats->stats_lock);
>>>>  }
>>>>  
>>>>  static ssize_t trans_reset_store(struct device *dev,
>>>> @@ -1459,7 +1471,7 @@ static ssize_t trans_reset_store(struct device *dev,
>>>>  {
>>>>  	struct devfreq *devfreq = to_devfreq(dev);
>>>>  
>>>> -	defvreq_stats_clear_table(devfreq->profile);
>>>> +	defvreq_stats_clear_table(devfreq->profile->stats);
>>>>  
>>>>  	return count;
>>>>  }
>>>> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
>>>> index d9f377912c10..b212aae2bb3e 100644
>>>> --- a/drivers/devfreq/exynos-bus.c
>>>> +++ b/drivers/devfreq/exynos-bus.c
>>>> @@ -496,9 +496,9 @@ static int exynos_bus_probe(struct platform_device *pdev)
>>>>  	}
>>>>  
>>>>  out:
>>>> -	max_state = bus->devfreq->profile->max_state;
>>>> -	min_freq = (bus->devfreq->profile->freq_table[0] / 1000);
>>>> -	max_freq = (bus->devfreq->profile->freq_table[max_state - 1] / 1000);
>>>> +	max_state = profile->stats->max_state;
>>>> +	min_freq = (profile->stats->freq_table[0] / 1000);
>>>> +	max_freq = (profile->stats->freq_table[max_state - 1] / 1000);
>>>>  	pr_info("exynos-bus: new bus device registered: %s (%6ld KHz ~ %6ld KHz)\n",
>>>>  			dev_name(dev), min_freq, max_freq);
>>>>  
>>>> diff --git a/drivers/devfreq/governor_passive.c b/drivers/devfreq/governor_passive.c
>>>> index 58308948b863..b2d87a88335c 100644
>>>> --- a/drivers/devfreq/governor_passive.c
>>>> +++ b/drivers/devfreq/governor_passive.c
>>>> @@ -18,6 +18,8 @@ static int devfreq_passive_get_target_freq(struct devfreq *devfreq,
>>>>  	struct devfreq_passive_data *p_data
>>>>  			= (struct devfreq_passive_data *)devfreq->data;
>>>>  	struct devfreq *parent_devfreq = (struct devfreq *)p_data->parent;
>>>> +	struct devfreq_stats *parent_stats = parent_devfreq->profile->stats;
>>>> +	struct devfreq_stats *stats;
>>>>  	unsigned long child_freq = ULONG_MAX;
>>>>  	struct dev_pm_opp *opp;
>>>>  	int i, count, ret = 0;
>>>> @@ -47,10 +49,14 @@ static int devfreq_passive_get_target_freq(struct devfreq *devfreq,
>>>>  	 * device. And then the index is used for getting the suitable
>>>>  	 * new frequency for passive devfreq device.
>>>>  	 */
>>>> -	if (!devfreq->profile || !devfreq->profile->freq_table
>>>> -		|| devfreq->profile->max_state <= 0)
>>>> +	if (!devfreq->profile || !devfreq->profile->stats ||
>>>> +	    devfreq->profile->stats->max_state <= 0 ||
>>>> +	    !parent_devfreq->profile ||	!parent_devfreq->profile->stats ||
>>>> +	    parent_devfreq->profile->stats->max_state <= 0)
>>>>  		return -EINVAL;
>>>>  
>>>> +	stats = devfreq->profile->stats;
>>>> +	parent_stats = parent_devfreq->profile->stats;
>>>>  	/*
>>>>  	 * The passive governor have to get the correct frequency from OPP
>>>>  	 * list of parent device. Because in this case, *freq is temporary
>>>> @@ -68,21 +74,21 @@ static int devfreq_passive_get_target_freq(struct devfreq *devfreq,
>>>>  	 * Get the OPP table's index of decided freqeuncy by governor
>>>>  	 * of parent device.
>>>>  	 */
>>>> -	for (i = 0; i < parent_devfreq->profile->max_state; i++)
>>>> -		if (parent_devfreq->profile->freq_table[i] == *freq)
>>>> +	for (i = 0; i < parent_stats->max_state; i++)
>>>> +		if (parent_stats->freq_table[i] == *freq)
>>>>  			break;
>>>>  
>>>> -	if (i == parent_devfreq->profile->max_state) {
>>>> +	if (i == parent_stats->max_state) {
>>>>  		ret = -EINVAL;
>>>>  		goto out;
>>>>  	}
>>>>  
>>>>  	/* Get the suitable frequency by using index of parent device. */
>>>> -	if (i < devfreq->profile->max_state) {
>>>> -		child_freq = devfreq->profile->freq_table[i];
>>>> +	if (i < stats->max_state) {
>>>> +		child_freq = stats->freq_table[i];
>>>>  	} else {
>>>> -		count = devfreq->profile->max_state;
>>>> -		child_freq = devfreq->profile->freq_table[count - 1];
>>>> +		count = stats->max_state;
>>>> +		child_freq = stats->freq_table[count - 1];
>>>>  	}
>>>>  
>>>>  	/* Return the suitable frequency for passive device. */
>>>> @@ -109,7 +115,7 @@ static int update_devfreq_passive(struct devfreq *devfreq, unsigned long freq)
>>>>  	if (ret < 0)
>>>>  		goto out;
>>>>  
>>>> -	if (devfreq->profile->freq_table
>>>> +	if (devfreq->profile->stats
>>>>  		&& (devfreq_update_status(devfreq, freq)))
>>>>  		dev_err(&devfreq->dev,
>>>>  			"Couldn't update frequency transition information.\n");
>>>> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
>>>> index 4ceb2a517a9c..8459af1a1583 100644
>>>> --- a/include/linux/devfreq.h
>>>> +++ b/include/linux/devfreq.h
>>>> @@ -64,6 +64,30 @@ struct devfreq_dev_status {
>>>>   */
>>>>  #define DEVFREQ_FLAG_LEAST_UPPER_BOUND		0x1
>>>>  
>>>> +/**
>>>> + * struct devfreq_stats - Devfreq's transitions stats counters
>>>> + * @freq_table:		Optional list of frequencies to support statistics
>>>> + *			and freq_table must be generated in ascending order.
>>>> + * @max_state:		The size of freq_table.
>>>> + * @total_trans:	Number of devfreq transitions
>>>> + * @trans_table:	Statistics of devfreq transitions
>>>> + * @time_in_state:	Statistics of devfreq states
>>>> + * @last_time:		The last time stats were updated
>>>> + * @stats_lock:		Lock protecting trans_table, time_in_state,
>>>> + *			last_time and total_trans used for statistics
>>>> + */
>>>> +struct devfreq_stats {
>>>> +	unsigned long *freq_table;
>>>> +	unsigned int max_state;
>>>> +
>>>> +	/* information for device frequency transition */
>>>> +	unsigned int total_trans;
>>>> +	unsigned int *trans_table;
>>>> +	u64 *time_in_state;
>>>> +	unsigned long long last_time;
>>>> +	spinlock_t stats_lock;
>>>> +};
>>>> +
>>>>  /**
>>>>   * struct devfreq_dev_profile - Devfreq's user device profile
>>>>   * @initial_freq:	The operating frequency when devfreq_add_device() is
>>>> @@ -88,15 +112,7 @@ struct devfreq_dev_status {
>>>>   *			from devfreq_remove_device() call. If the user
>>>>   *			has registered devfreq->nb at a notifier-head,
>>>>   *			this is the time to unregister it.
>>>> - * @freq_table:		Optional list of frequencies to support statistics
>>>> - *			and freq_table must be generated in ascending order.
>>>> - * @max_state:		The size of freq_table.
>>>> - * @total_trans:	Number of devfreq transitions
>>>> - * @trans_table:	Statistics of devfreq transitions
>>>> - * @time_in_state:	Statistics of devfreq states
>>>> - * @last_time:		The last time stats were updated
>>>> - * @stats_lock:		Lock protecting trans_table, time_in_state,
>>>> - *			last_time and total_trans used for statistics
>>>> + * @stats:		Statistics of devfreq states and state transitions
>>>>   */
>>>>  struct devfreq_dev_profile {
>>>>  	unsigned long initial_freq;
>>>> @@ -108,14 +124,7 @@ struct devfreq_dev_profile {
>>>>  	int (*get_cur_freq)(struct device *dev, unsigned long *freq);
>>>>  	void (*exit)(struct device *dev);
>>>>  
>>>> -	unsigned long *freq_table;
>>>> -	unsigned int max_state;
>>>> -	/* information for device frequency transition */
>>>> -	unsigned int total_trans;
>>>> -	unsigned int *trans_table;
>>>> -	u64 *time_in_state;
>>>> -	unsigned long long last_time;
>>>> -	spinlock_t stats_lock;
>>>> +	struct devfreq_stats *stats;
>>>>  };
>>>>  
>>>>  /**
>>>>
>>
>>
> 
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
