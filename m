Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EB2127298
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 01:54:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBReHjfeYCsJ0pU65kVVhJTAiXk6ReDdo8+qm0ff/gw=; b=D6bKA1F1eUq2sS
	2fe/LanwUw3UMIvtROYlBGL269X0TjeBVkIqUUdyWcSSX5FxXXvztSNblNAvIpQPzTdG9rsAILnGx
	IByAOtThTDR5Ilbnm7jyTMHE/4htR+ORt0u1a4/xrnRk7icelL0IOlcJpFn7K1xSz7zOjWdFyPMDX
	XcNK8Sirm2kY7vzQJTj3JHW+RJ24B+GFHL+mGUtcQrOTHiNySJ4Pmpa44JxRrFmFEGmmic0QkLpjS
	24BCed7/MJcYxYwscwjmvywf4Kc4EFDXakeRVcPzFVnbEkcDZtTNvkGveqEaBljORfqLcqp8rLb/O
	zH1x9FgihDEbY/cVimdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii6Yv-0005bK-7d; Fri, 20 Dec 2019 00:54:37 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii6Yj-0005Zo-Mm
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 00:54:27 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191220005419epoutp0363987602c4fe1e06f65675a1eb2df568~h7jXwFQJH1029110291epoutp03T
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 00:54:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191220005419epoutp0363987602c4fe1e06f65675a1eb2df568~h7jXwFQJH1029110291epoutp03T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576803260;
 bh=V7U3VumFo0nUAtyifHEmVEByUWo4iAOoKH8fKt6nBCI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=nPjJUqFxCQT5v12h0Q6PhyRxR+2ths3iAkaLE8M9cbtokV5mbc1cvzSZL8OsPKcHS
 YL2YRYYJB3z+Kp8TtZIxoNN/ssxU/LZ+c9mYq2RpCTOKt7vQ0v1poIzCQEh0x5MtTI
 cLZ+Zzz2grBXAT1w+UoOaf/sJoScoAoJny9Qudmg=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191220005419epcas1p49978660954303b810a10a1733e7e9090~h7jXLTk4o2694726947epcas1p4m;
 Fri, 20 Dec 2019 00:54:19 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.157]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47f9HX2QpbzMqYm7; Fri, 20 Dec
 2019 00:54:16 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 BD.CF.51241.4BB1CFD5; Fri, 20 Dec 2019 09:54:12 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191220005412epcas1p191afcc20fc8ff95891f1570cb9d85df7~h7jQUv8v72171721717epcas1p1d;
 Fri, 20 Dec 2019 00:54:12 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191220005411epsmtrp1076b9711cd356ce46c27b46087643a85~h7jQTlkkV0350703507epsmtrp1w;
 Fri, 20 Dec 2019 00:54:11 +0000 (GMT)
X-AuditID: b6c32a39-14bff7000001c829-c4-5dfc1bb481dc
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 17.9D.10238.3BB1CFD5; Fri, 20 Dec 2019 09:54:11 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191220005411epsmtip2b05ce6a0164691926ba3490dfbb2733a~h7jQB03gQ3127531275epsmtip2G;
 Fri, 20 Dec 2019 00:54:11 +0000 (GMT)
Subject: Re: [PATCH v2 02/11] PM / devfreq: Remove
 devfreq_get_devfreq_by_phandle function
To: Leonard Crestez <leonard.crestez@nxp.com>, "krzk@kernel.org"
 <krzk@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <46e629e0-fee4-21a6-3baa-f347ff6417d8@samsung.com>
Date: Fri, 20 Dec 2019 10:00:43 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB70235291D8E40CB6225A0AF0EE2D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrAJsWRmVeSWpSXmKPExsWy7bCmge4W6T+xBgd2m1jcn9fKaDH/yDlW
 i/+PXrNa9D9+zWxx/vwGdouzTW/YLVbc/chqsenxNVaLy7vmsFl87j3CaPHpwX9mixnn9zFZ
 LGxqYbdYe+Quu8XS6xeZLG43rmCzaN17hN1B0GPNvDWMHptWdbJ5bF5S77Hx3Q4mj74tqxg9
 tl+bx+zxeZNcAHtUtk1GamJKapFCal5yfkpmXrqtkndwvHO8qZmBoa6hpYW5kkJeYm6qrZKL
 T4CuW2YO0AdKCmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKUnALLAr3ixNzi0rx0veT8
 XCtDAwMjU6DChOyME7fa2AvWaVXsXfGGvYHxiFIXIyeHhICJRMvqFYxdjFwcQgI7GCVONO1l
 h3A+MUp8nzcdKvONUeL8mwYghwOs5cmeMoj4XqCiFy+YIZz3jBJLrv9gBZkrLBAj8XHhBlaQ
 BhGBEIkjB9NAapgFbrJJXLg1hQmkhk1AS2L/ixtsIDa/gKLE1R+PGUFsXgE7iU0Pm8HiLAKq
 EqeOzgWzRQXCJE5ua4GqEZQ4OfMJC4jNKRArsXPaYjCbWUBc4taT+UwQtrzE9rdzwI6TEDjH
 LtHw4xELxNMuEj3rbkPZwhKvjm9hh7ClJF72t0HZ1RIrTx5hg2juYJTYsv8CK0TCWGL/0slM
 IJ8xC2hKrN+lDxFWlNj5ey4jxGI+iXdfe1ghocUr0dEmBFGiLHH5wV0mCFtSYnF7J9sERqVZ
 SN6ZheSFWUhemIWwbAEjyypGsdSC4tz01GLDAlPk2N7ECE7dWpY7GI+d8znEKMDBqMTD65D2
 O1aINbGsuDL3EKMEB7OSCO/tjp+xQrwpiZVVqUX58UWlOanFhxhNgaE9kVlKNDkfmFfySuIN
 TY2MjY0tTAzNTA0NlcR5OX5cjBUSSE8sSc1OTS1ILYLpY+LglGpglNrdvODx55KgW+Eb2XuT
 j9yIfd562Z3xXdPqhrn/Y1WMamU32rdcLf50abNAb/3XZdGhGy7WbQgP3VdrHrdJ5sibCTw6
 Du0d3geDL4kvN2hWbmEMVY53+7TLg315v/qmAA+NyvKLfCkZrYFTOzY96xfZwCtTemTTy73V
 ntG7H4if2Lst4/osJZbijERDLeai4kQACubJ+vMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFIsWRmVeSWpSXmKPExsWy7bCSvO5m6T+xBht/mFvcn9fKaDH/yDlW
 i/+PXrNa9D9+zWxx/vwGdouzTW/YLVbc/chqsenxNVaLy7vmsFl87j3CaPHpwX9mixnn9zFZ
 LGxqYbdYe+Quu8XS6xeZLG43rmCzaN17hN1B0GPNvDWMHptWdbJ5bF5S77Hx3Q4mj74tqxg9
 tl+bx+zxeZNcAHsUl01Kak5mWWqRvl0CV8aJW23sBeu0KvaueMPewHhEqYuRg0NCwETiyZ6y
 LkYuDiGB3YwSzRO3snUxcgLFJSWmXTzKDFEjLHH4cDFEzVtGiU2XDzKB1AgLxEh8XLiBFcQW
 EQiR6H+7mAWkiFngLpvEl53/mUESQgKTmCTa15aC2GwCWhL7X9wAW8AvoChx9cdjRhCbV8BO
 YtPDZrA4i4CqxKmjc8FsUYEwiZ1LHjNB1AhKnJz5hAXE5hSIldg5bTGYzSygLvFn3iVmCFtc
 4taT+UwQtrzE9rdzmCcwCs9C0j4LScssJC2zkLQsYGRZxSiZWlCcm55bbFhgmJdarlecmFtc
 mpeul5yfu4kRHMNamjsYLy+JP8QowMGoxMPrkPY7Vog1say4MvcQowQHs5II7+2On7FCvCmJ
 lVWpRfnxRaU5qcWHGKU5WJTEeZ/mHYsUEkhPLEnNTk0tSC2CyTJxcEo1MKpHvd711etDram2
 3RzN6YqrD9w//z2q2/3Evvvy89UXb3rF8+bPrJ5JrIZW5sUnzMukEyew65/bqGagtOvYOhGT
 r4+vx5sXOL9a9IJfbRXLPKXIQ0yH1VWfbF8klCcsNXXnu1n+z3/yB4ZlZv/7FNDtO2Wf3/ZP
 P2/VLn4W4/R9TW+qy1/Pd3ZKLMUZiYZazEXFiQACGwif3QIAAA==
X-CMS-MailID: 20191220005412epcas1p191afcc20fc8ff95891f1570cb9d85df7
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191220001759epcas1p4ce1c2017937a35de84eab720b9732df0
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p4ce1c2017937a35de84eab720b9732df0@epcas1p4.samsung.com>
 <20191220002430.11995-3-cw00.choi@samsung.com>
 <VI1PR04MB70235291D8E40CB6225A0AF0EE2D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_165426_160470_13CB436B 
X-CRM114-Status: GOOD (  23.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "a.swigon@samsung.com" <a.swigon@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
 "lukasz.luba@arm.com" <lukasz.luba@arm.com>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/20/19 9:46 AM, Leonard Crestez wrote:
> On 20.12.2019 02:18, Chanwoo Choi wrote:
>> Previously, devfreq core support 'devfreq' property in order to get
>> the devfreq device by phandle. But, 'devfreq' property name is not proper
>> on devicetree binding because this name doesn't mean the any h/w attribute.
>>
>> The devfreq core hand over the right to decide the property name
>> for getting the devfreq device on devicetree. Each devfreq driver
>> will decide the property name on devicetree binding and then get
>> the devfreq device by using devfreq_get_devfreq_by_node().
>>
>> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
>> ---
>>   drivers/devfreq/devfreq.c    | 35 -----------------------------------
>>   drivers/devfreq/exynos-bus.c | 12 +++++++++++-
>>   include/linux/devfreq.h      |  8 --------
>>   3 files changed, 11 insertions(+), 44 deletions(-)
>>
>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>> index cb8ca81c8973..c3d3c7c802a0 100644
>> --- a/drivers/devfreq/devfreq.c
>> +++ b/drivers/devfreq/devfreq.c
>> @@ -991,48 +991,13 @@ struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>>   
>>   	return ERR_PTR(-ENODEV);
>>   }
>> -
>> -/*
>> - * devfreq_get_devfreq_by_phandle - Get the devfreq device from devicetree
>> - * @dev - instance to the given device
>> - * @index - index into list of devfreq
>> - *
>> - * return the instance of devfreq device
>> - */
>> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
>> -{
>> -	struct device_node *node;
>> -	struct devfreq *devfreq;
>> -
>> -	if (!dev)
>> -		return ERR_PTR(-EINVAL);
>> -
>> -	if (!dev->of_node)
>> -		return ERR_PTR(-EINVAL);
>> -
>> -	node = of_parse_phandle(dev->of_node, "devfreq", index);
>> -	if (!node)
>> -		return ERR_PTR(-ENODEV);
>> -
>> -	devfreq = devfreq_get_devfreq_by_node(node);
>> -	of_node_put(node);
>> -
>> -	return devfreq;
>> -}
>> -
>>   #else
>>   struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>>   {
>>   	return ERR_PTR(-ENODEV);
>>   }
>> -
>> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
>> -{
>> -	return ERR_PTR(-ENODEV);
>> -}
>>   #endif /* CONFIG_OF */
>>   EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_node);
>> -EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_phandle);
>>   
>>   /**
>>    * devm_devfreq_remove_device() - Resource-managed devfreq_remove_device()
>> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
>> index 7f5917d59072..1bc4e3c81115 100644
>> --- a/drivers/devfreq/exynos-bus.c
>> +++ b/drivers/devfreq/exynos-bus.c
>> @@ -86,6 +86,16 @@ static int exynos_bus_get_event(struct exynos_bus *bus,
>>   	return ret;
>>   }
>>   
>> +static struct devfreq *exynos_bus_get_parent_devfreq(struct device_node *np)
>> +{
>> +	struct device_node *node = of_parse_phandle(np, "devfreq", 0);
>> +
>> +	if (!node)
>> +		return ERR_PTR(-ENODEV);
>> +
>> +	return devfreq_get_devfreq_by_node(node);
> 
> You need to call of_node_put(node) here and in several other places.
> 
> The old devfreq_get_devfreq_by_phandle API handled this internally but 
> devfreq_get_devfreq_by_node doesn't.

Thanks. I'll fix it.

> 
> Maybe the _by_phandle API could be kept and just take the property name 
> instead of always using "devfreq"?

Do you mean like below?
devfreq_get_devfreq_by_phandle(struct device *dev, int index)
-> devfreq_get_devfreq_by_phandle(struct device *dev, char *property_name, int index)

In case of devfreq-event.c,
struct devfreq_event_dev *devfreq_event_get_edev_by_phandle(
						struct device *dev,
						char property_name,
						int index)
int devfreq_event_get_edev_count(struct device *dev, char *property_name)

> 
>> +}
>> +
>>   /*
>>    * devfreq function for both simple-ondemand and passive governor
>>    */
>> @@ -353,7 +363,7 @@ static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
>>   	profile->exit = exynos_bus_passive_exit;
>>   
>>   	/* Get the instance of parent devfreq device */
>> -	parent_devfreq = devfreq_get_devfreq_by_phandle(dev, 0);
>> +	parent_devfreq = exynos_bus_get_parent_devfreq(dev->of_node);
>>   	if (IS_ERR(parent_devfreq))
>>   		return -EPROBE_DEFER;
>>   
>> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
>> index 1dccc47acbce..a4351698fb64 100644
>> --- a/include/linux/devfreq.h
>> +++ b/include/linux/devfreq.h
>> @@ -254,8 +254,6 @@ extern void devm_devfreq_unregister_notifier(struct device *dev,
>>   				struct notifier_block *nb,
>>   				unsigned int list);
>>   extern struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node);
>> -extern struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
>> -						int index);
>>   
>>   #if IS_ENABLED(CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND)
>>   /**
>> @@ -413,12 +411,6 @@ static inline struct devfreq *devfreq_get_devfreq_by_node(struct device_node *no
>>   	return ERR_PTR(-ENODEV);
>>   }
>>   
>> -static inline struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
>> -							int index)
>> -{
>> -	return ERR_PTR(-ENODEV);
>> -}
>> -
>>   static inline int devfreq_update_stats(struct devfreq *df)
>>   {
>>   	return -EINVAL;
>>
> 
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
