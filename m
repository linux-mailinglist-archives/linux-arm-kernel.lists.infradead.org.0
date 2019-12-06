Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA8B114AED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 03:32:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXrpEcW8jbySOEJOF8I4s2PfQk2uKgnbjivaX9SUf58=; b=L/objPrtiMKI6N
	LOScAKi4/B0BkE5l57dc7MZ7DlYKoexaPUez7/tRtpDaQeYLXERHoFVT0Tne8XjrfFlzN2HDCf0fW
	1QUZX6dvfc4WeXAlh1TyFLj+Wkht726ktm9we2V2tGWKVYHn2DAROnM2L4Bj6iQZFvAJ69Wn4CbOm
	cRdc+LxGeO/iXCz8fK0ACtNN8mj31acmv5Mt5yWqjF+h9WOueL+YX9TyTlgPMcCbmBsTmuZKXvypW
	ZiS6C0pJ9fs8hOYVHKv1ygvlBLzw/ql7wUu53NsUGkd6DdBb61Jt0NyMZyfIwikSWf2XM5ymip9KA
	5hIcnAZPpMa//AJ/EQxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id3Q9-0000Bv-Up; Fri, 06 Dec 2019 02:32:41 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id3Q1-0000BN-Pw
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 02:32:35 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191206023228epoutp03fdcf3e00f11107ed6a20edd6c22429c3~dp3EPOsor0782007820epoutp03n
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Dec 2019 02:32:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191206023228epoutp03fdcf3e00f11107ed6a20edd6c22429c3~dp3EPOsor0782007820epoutp03n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575599548;
 bh=GPrZ3xgNX3ydCZrc90XnmqkNs+soFlKcYaSr3BFOHJQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Wat/IBte0jijSXBFDfINMHltz+TIRTYIAGgW3nf1tmghdiKUpU8msvgJWWWWaW1EB
 dq59ArISni9rwsFPndZmRe0gOM5ADJ4iyryUQjS4fntwjy0InFdTme/dbcSnBqQlKI
 NW1er0DUDmQUHqEQm2dRm2X799hv4Sbu+vhPxqg0=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191206023228epcas1p4389209cb243ef812d8a59257b75e0502~dp3DvKhAa1568015680epcas1p4-;
 Fri,  6 Dec 2019 02:32:28 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.155]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47Tc7D6d9hzMqYlt; Fri,  6 Dec
 2019 02:32:24 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 AA.23.48019.3BDB9ED5; Fri,  6 Dec 2019 11:32:19 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191206023218epcas1p4a433888be987b966a73de814c736f47e~dp27K2pmP2489224892epcas1p45;
 Fri,  6 Dec 2019 02:32:18 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191206023218epsmtrp152f5ba1c7e64e3aec78f8fa3fa8a24a5~dp27KBLvW1446314463epsmtrp1V;
 Fri,  6 Dec 2019 02:32:18 +0000 (GMT)
X-AuditID: b6c32a38-257ff7000001bb93-62-5de9bdb37d44
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 D0.6E.10238.2BDB9ED5; Fri,  6 Dec 2019 11:32:18 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191206023218epsmtip1e9c48596faaba27e5d1ca19b645809d2~dp262nUs90041300413epsmtip1l;
 Fri,  6 Dec 2019 02:32:18 +0000 (GMT)
Subject: Re: [PATCH v2 2/2] PM / devfreq: Use PM QoS for sysfs min/max_freq
To: Matthias Kaehlcke <mka@chromium.org>, Leonard Crestez
 <leonard.crestez@nxp.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <129c11ff-f808-654e-d571-6248c887c973@samsung.com>
Date: Fri, 6 Dec 2019 11:38:31 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20191205180253.GN228856@google.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFJsWRmVeSWpSXmKPExsWy7bCmru7mvS9jDf5e4rU4dGwru8X0vZvY
 LM42vWG3WHH3I6vFpsfXWC26fq1ktvjce4TR4vOGx4wWtxtXsFmsPneQzeLM6UusFhu/ejjw
 eMxuuMjicefaHjaPzUvqPTa+28HkcfDdHiaPLVfbWTz6tqxi9Pi8SS6AIyrbJiM1MSW1SCE1
 Lzk/JTMv3VbJOzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwfoWCWFssScUqBQQGJxsZK+
 nU1RfmlJqkJGfnGJrVJqQUpOgWWBXnFibnFpXrpecn6ulaGBgZEpUGFCdsbsR4uYC3aoV2y8
 epe9gXGmQhcjJ4eEgInEqg/XWbsYuTiEBHYwSmzrO8cO4XxilPh97DIbhPONUWLyssksMC0P
 n35gBbGFBPYySpybWgtR9J5RouPQfMYuRg4OYQFvie6V/iA1IgKhEr1bv7OA1DALzGOW6Fp3
 hxEkwSagJbH/xQ02EJtfQFHi6o/HYHFeATuJ1u4JYHEWARWJ65c/M4HYogJhEie3tUDVCEqc
 nPkE7CBOAUOJy+dmsIPYzALiEreezGeCsOUltr+dwwyyWEJgE7vEkb/T2ECOkxBwkbi8KBzi
 GWGJV8e3sEPYUhIv+9ug7GqJlSePsEH0djBKbNl/gRUiYSyxf+lkJpA5zAKaEut36UOEFSV2
 /p7LCLGXT+Ld1x5WiFW8Eh1tQhAlyhKXH9xlgrAlJRa3d7JNYFSaheSbWUg+mIXkg1kIyxYw
 sqxiFEstKM5NTy02LDBBjuxNjOB0rGWxg3HPOZ9DjAIcjEo8vDM+v4gVYk0sK67MPcQowcGs
 JMKbzvcyVog3JbGyKrUoP76oNCe1+BCjKTCwJzJLiSbnA3NFXkm8oamRsbGxhYmhmamhoZI4
 L8ePi7FCAumJJanZqakFqUUwfUwcnFINjLE6gRs6xIxVq33/Hbj3JCb7msXUu4pnJ2Xldyh+
 sLzwPtVQOodLVNDm+o2t+hPWZmilmn0tL9S+I6dgEB16KvVHqWDLLpPM56kiMiucA+U+hi2q
 dz4mIlNQmufE+az4Tcqulw4zezfPec4ygyd90Wq59HVC0t9LSnzYRQ/Xc1UZ3n3I7NqgxFKc
 kWioxVxUnAgAEjf0090DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKIsWRmVeSWpSXmKPExsWy7bCSnO6mvS9jDRr69S0OHdvKbjF97yY2
 i7NNb9gtVtz9yGqx6fE1VouuXyuZLT73HmG0+LzhMaPF7cYVbBarzx1kszhz+hKrxcavHg48
 HrMbLrJ43Lm2h81j85J6j43vdjB5HHy3h8ljy9V2Fo++LasYPT5vkgvgiOKySUnNySxLLdK3
 S+DKmP1oEXPBDvWKjVfvsjcwzlToYuTkkBAwkXj49ANrFyMXh5DAbkaJqdfbmCASkhLTLh5l
 7mLkALKFJQ4fLoaoecsoMWvDHiaQuLCAt0T3Sn+QchGBUInP/RvZQWqYBRYwS0y/cZQVJCEk
 0MkkseqYBojNJqAlsf/FDTYQm19AUeLqj8eMIDavgJ1Ea/cEsDiLgIrE9cufwW4QFQiT2Lnk
 MRNEjaDEyZlPWEBsTgFDicvnZrCD2MwC6hJ/5l1ihrDFJW49mc8EYctLbH87h3kCo/AsJO2z
 kLTMQtIyC0nLAkaWVYySqQXFuem5xYYFhnmp5XrFibnFpXnpesn5uZsYwZGppbmD8fKS+EOM
 AhyMSjy8Mz6/iBViTSwrrsw9xCjBwawkwpvO9zJWiDclsbIqtSg/vqg0J7X4EKM0B4uSOO/T
 vGORQgLpiSWp2ampBalFMFkmDk6pBsYJDG/Dwpubv/+sr8iUL5BetWuJ+fdz7m41B7RbH3I/
 eZh9wenUB4GSyedfb9Eo5vGfKyweli8ddEvqolNjmWNl3B2Buo7mKa0X57DV6pjo/025OFHy
 S9ezSSd2alWvq529p1pcxi5me6PJssV8/4O//dmdIW1fHFx5uyTS/dxHIdf2zdN1TyqxFGck
 GmoxFxUnAgD+2cWYyAIAAA==
X-CMS-MailID: 20191206023218epcas1p4a433888be987b966a73de814c736f47e
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191205180259epcas4p3cf54efb95fc13f55b79c1e27c9a9ae0c
References: <cover.1575540224.git.leonard.crestez@nxp.com>
 <2b9eeb4e576c45269c01826f13c7811b876faa57.1575540224.git.leonard.crestez@nxp.com>
 <CGME20191205180259epcas4p3cf54efb95fc13f55b79c1e27c9a9ae0c@epcas4p3.samsung.com>
 <20191205180253.GN228856@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_183234_095105_FF2ED7B4 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/6/19 3:02 AM, Matthias Kaehlcke wrote:
> On Thu, Dec 05, 2019 at 12:05:07PM +0200, Leonard Crestez wrote:
>> Switch the handling of min_freq and max_freq from sysfs to use the
>> dev_pm_qos_request interface.
>>
>> Since PM QoS handles frequencies as kHz this change reduces the
>> precision of min_freq and max_freq. This shouldn't introduce problems
>> because frequencies which are not an integer number of kHz are likely
>> not an integer number of Hz either.
>>
>> Try to ensure compatibility by rounding min values down and rounding
>> max values up.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
>> ---
>>  drivers/devfreq/devfreq.c | 76 ++++++++++++++++++++++++++++++---------
>>  include/linux/devfreq.h   |  9 ++---
>>  2 files changed, 64 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>> index e8b943fc4259..bcb286509547 100644
>> --- a/drivers/devfreq/devfreq.c
>> +++ b/drivers/devfreq/devfreq.c
>> @@ -139,14 +139,10 @@ static void get_freq_range(struct devfreq *devfreq,
>>  	*min_freq = max(*min_freq, (unsigned long)HZ_PER_KHZ * qos_min_freq);
>>  	if (qos_max_freq != PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE)
>>  		*max_freq = min(*max_freq,
>>  				(unsigned long)HZ_PER_KHZ * qos_max_freq);
>>  
>> -	/* Apply constraints from sysfs */
>> -	*min_freq = max(*min_freq, devfreq->min_freq);
>> -	*max_freq = min(*max_freq, devfreq->max_freq);
>> -
>>  	/* Apply constraints from OPP interface */
>>  	*min_freq = max(*min_freq, devfreq->scaling_min_freq);
>>  	*max_freq = min(*max_freq, devfreq->scaling_max_freq);
>>  
>>  	if (*min_freq > *max_freq)
>> @@ -703,10 +699,23 @@ static void devfreq_dev_release(struct device *dev)
>>  					 DEV_PM_QOS_MIN_FREQUENCY);
>>  	if (err && err != -ENOENT)
>>  		dev_warn(dev->parent,
>>  			"Failed to remove min_freq notifier: %d\n", err);
>>  
>> +	if (dev_pm_qos_request_active(&devfreq->user_max_freq_req)) {
>> +		err = dev_pm_qos_remove_request(&devfreq->user_max_freq_req);
>> +		if (err)
>> +			dev_warn(dev->parent,
>> +				"Failed to remove max_freq request: %d\n", err);
>> +	}
>> +	if (dev_pm_qos_request_active(&devfreq->user_min_freq_req)) {
>> +		err = dev_pm_qos_remove_request(&devfreq->user_min_freq_req);
>> +		if (err)
>> +			dev_warn(dev->parent,
>> +				"Failed to remove min_freq request: %d\n", err);
>> +	}
>> +
>>  	if (devfreq->profile->exit)
>>  		devfreq->profile->exit(devfreq->dev.parent);
>>  
>>  	mutex_destroy(&devfreq->lock);
>>  	kfree(devfreq);
>> @@ -776,19 +785,17 @@ struct devfreq *devfreq_add_device(struct device *dev,
>>  	if (!devfreq->scaling_min_freq) {
>>  		mutex_unlock(&devfreq->lock);
>>  		err = -EINVAL;
>>  		goto err_dev;
>>  	}
>> -	devfreq->min_freq = devfreq->scaling_min_freq;
>>  
>>  	devfreq->scaling_max_freq = find_available_max_freq(devfreq);
>>  	if (!devfreq->scaling_max_freq) {
>>  		mutex_unlock(&devfreq->lock);
>>  		err = -EINVAL;
>>  		goto err_dev;
>>  	}
>> -	devfreq->max_freq = devfreq->scaling_max_freq;
>>  
>>  	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
>>  	atomic_set(&devfreq->suspend_count, 0);
>>  
>>  	dev_set_name(&devfreq->dev, "devfreq%d",
>> @@ -825,10 +832,20 @@ struct devfreq *devfreq_add_device(struct device *dev,
>>  
>>  	srcu_init_notifier_head(&devfreq->transition_notifier_list);
>>  
>>  	mutex_unlock(&devfreq->lock);
>>  
>> +	err = dev_pm_qos_add_request(dev, &devfreq->user_min_freq_req,
>> +				     DEV_PM_QOS_MIN_FREQUENCY, 0);
>> +	if (err < 0)
>> +		goto err_devfreq;
>> +	err = dev_pm_qos_add_request(dev, &devfreq->user_max_freq_req,
>> +				     DEV_PM_QOS_MAX_FREQUENCY,
>> +				     PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE);
>> +	if (err < 0)
>> +		goto err_devfreq;
>> +
>>  	devfreq->nb_min.notifier_call = qos_min_notifier_call;
>>  	err = dev_pm_qos_add_notifier(devfreq->dev.parent, &devfreq->nb_min,
>>  				      DEV_PM_QOS_MIN_FREQUENCY);
>>  	if (err)
>>  		goto err_devfreq;
>> @@ -1418,18 +1435,26 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
>>  {
>>  	struct devfreq *df = to_devfreq(dev);
>>  	unsigned long value;
>>  	int ret;
>>  
>> +	/*
>> +	 * Protect against theoretical sysfs writes between
>> +	 * device_add and dev_pm_qos_add_request
>> +	 */
>> +	if (!dev_pm_qos_request_active(&df->user_min_freq_req))
>> +		return -EINVAL;
> 
> The error code -EINVAL is a bit misleading. I guess it's not super
> important, especially since this is a very rare case. In case you
> re-spin you could consider returning -EAGAIN ('Resource temporarily
> unavailable') in this case from min/max_freq_store/show()

I agree. -EAGAIN is better than -EINVAL. I'll change it by myself.

> 
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> Tested-by: Matthias Kaehlcke <mka@chromium.org>
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
