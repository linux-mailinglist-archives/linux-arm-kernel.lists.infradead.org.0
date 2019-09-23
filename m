Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8552FBBC8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 21:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=MfGdKBxdCdKmPngCeeIXZRkQIH9P9cPfI72CQj1VJiA=; b=ncc7hB3oLUKOx4
	O8FEerKVsLKdTDtmYFZAi9jLDSOMqFmW5LXpOwoD5CTn0qLzMuqPW0OMOwktzuBJUhp9zHulYNQyS
	g1GcTEO1o7SGzNbvANwo8nBNEo6GJ17hjOJhA13fK5so5P3IRd1SQfl3iLR11VDMyExyFySqtUgk3
	1O7N2SavyByzWVrpoLW86UEVfoP/TxMI4cP+FNKnavpWfkxJOwEoMd41z9vgc6g8IVArk9P/dODI+
	u+NW/83GNjqFO295ARf0gAGEunhIpvyhtxrCBNmznhbqHPIYvsoPH2aQPzeWtRZY01XgsPR5fcxzr
	fLKT7TlJIksVK+yQSMhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCUSG-0007gA-Np; Mon, 23 Sep 2019 19:57:04 +0000
Received: from mail-eopbgr30066.outbound.protection.outlook.com ([40.107.3.66]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCUS7-0007fh-0n
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 19:56:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BFgbrMqlr7cel0+orsLJzCxyuSdA1U1k7rT6eH3Iesrj08gaam6NQRn1DvHpfOa5UyPlG+Z//CUwls1pAHPzRq9ZUr9KbCnw1aWBNNyRfJqfD3sk7ye0hP1Pki/zziluJQUXto74dwBALQjMENvQx8bLpEoK3Gfv9G4LP3VHV8pLBaomLB8ThE+B+/uwWGvFdyD8HCe02mS5E8M/MLWu8eoKBvwTHZoreFtsKw9zIBp2VqkjJ4vz+020jwXpOiky0Iq6pZfohCwI8/tgLgIxdog+sUWKh6noC99yA/CNMPGWX2Dx/bFtvo8rlZIcnClwfXpIko07nS/h5UsZVdcQfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hhKkkocm6HK6AXDk7smCIHDE5QWNKiUg2bXdf1/0IFQ=;
 b=L0s7WXkpwmW0GJ3EvErjsDM6VV6DBOlVU5Xs9EceWbFG7Ip4rzYolzebKHPP9KOUm9dJqHyox9xBuHMfcj37HV19jDxdH1UEcL4mqU2dUnsQ6NfpC25on3ZavYXIIUftquWfOJPN2tqB5WMiTtKz+AXPlMcbWxkLY3+44cYFfXJYT8ZH6mlcLgjuQZQNqZwXRXv2mUXF2c+3Ffvm7B/gZInJ9F7J0dj+4NJFHnvWhShRHDzGgg+5nksDdKGTRtKloleaZL6XhAsWlS4JFhjauDbuHi+397qOMgHUeHjHT9rfYOgOrsie76QGSsc5g8bNVl6IucaO+AW+tnogLHo1MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hhKkkocm6HK6AXDk7smCIHDE5QWNKiUg2bXdf1/0IFQ=;
 b=Gl7WUN2SJQ2kFxyfvKgR8AjFwoeRljL0D2REKOPc8CnVXd94+n2/LArjJoCzFCwjapgtqQDMCA9rS1SZkbjwYSMhut13hk4fNPwFw/c7k8ImQrlrkdqFTgeEohfb+gYoyNWCt6AFx7oWkjVBQ7Lcn/fDhlvHsIL3fU2SIPBPvuc=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5934.eurprd04.prod.outlook.com (20.178.205.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Mon, 23 Sep 2019 19:56:52 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 19:56:52 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v6 2/6] PM / devfreq: Move more initialization before
 registration
Thread-Topic: [PATCH v6 2/6] PM / devfreq: Move more initialization before
 registration
Thread-Index: AQHVcia8XApMx2vUsE+43WtJMSpWjg==
Date: Mon, 23 Sep 2019 19:56:51 +0000
Message-ID: <VI1PR04MB7023E58A11DF398FC90F98C7EE850@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569252537.git.leonard.crestez@nxp.com>
 <0ad496507cd7e6731e46249b1499dfdebe205c16.1569252537.git.leonard.crestez@nxp.com>
 <20190923181057.GY133864@google.com>
 <VI1PR04MB7023C94F93C4E0E6E229F80AEE850@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <20190923191111.GE133864@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36c04759-ed1e-4c5c-582f-08d740602d8c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5934; 
x-ms-traffictypediagnostic: VI1PR04MB5934:|VI1PR04MB5934:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5934BC214FA60E5DFFC9D2FDEE850@VI1PR04MB5934.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(396003)(136003)(366004)(199004)(189003)(51914003)(53546011)(6916009)(9686003)(26005)(14454004)(7736002)(186003)(55016002)(76176011)(7416002)(102836004)(81156014)(81166006)(66066001)(71190400001)(71200400001)(8676002)(478600001)(86362001)(476003)(6506007)(3846002)(446003)(6116002)(8936002)(91956017)(25786009)(54906003)(7696005)(66446008)(99286004)(64756008)(66476007)(6246003)(256004)(66556008)(66946007)(486006)(2906002)(6436002)(44832011)(316002)(5660300002)(14444005)(229853002)(52536014)(74316002)(4326008)(33656002)(76116006)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5934;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JPr9XughU5zx91ovYciU5SvA/iYzdhMEuMXlIuKQLnt+tM/aX5VAHexZmSJmy78HWrmdzyX861QZuNTeCxHuHblIhwsriuUnd7Pm8d5tqAti4SVUq1mYpaL9r97aAdmhMhtzJAmFooUIlLkBltqkhNVEfYGWAeATrKpOn0ZpsSvIW1E4LWly2c1L26ls81sn2gprMkN6no9KjK84+lw5e3iTKBrwEocansNEJfXWBGW1ZqEk9000iMi5DwkssWgUssie2F3icpUSFFr2ubvLBNUj2JrzW4Ge/+3c+epjhsInh3wRkPcsOSearwYrmlcOovDkCjl1lUGFZ0sySIAFyVhBDMEqfPszU9F6X8Tp4A9rvX0UXzqoIvOejRYHJ7xxd/fgcpa1wvHESO05Fh3WEf3B+Xd53dGyK/O+UgvaYs4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36c04759-ed1e-4c5c-582f-08d740602d8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 19:56:52.0093 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9gjdHM4T+mTVYgT2Y6siXLy+3bBIO4gO0QddPaVYbrkNRVTYp1gltU9pXNg36DlluifV/EIn0A8hut6YnkJPwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5934
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_125655_282654_6673A879 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23.09.2019 22:11, Matthias Kaehlcke wrote:
> On Mon, Sep 23, 2019 at 06:56:28PM +0000, Leonard Crestez wrote:
>> On 23.09.2019 21:11, Matthias Kaehlcke wrote:
>>> On Mon, Sep 23, 2019 at 06:51:05PM +0300, Leonard Crestez wrote:
>>>> In general it is a better to initialize an object before making it
>>>> accessible externally (through device_register).
>>>>
>>>> This makes it possible to avoid relying on locking a partially
>>>> initialized object.
>>>>
>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>> ---
>>>>    drivers/devfreq/devfreq.c | 43 +++++++++++++++++++++++----------------
>>>>    1 file changed, 25 insertions(+), 18 deletions(-)
>>>>
>>>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>>>> index 323d43315d1e..b4d2bfebb140 100644
>>>> --- a/drivers/devfreq/devfreq.c
>>>> +++ b/drivers/devfreq/devfreq.c
>>>> @@ -587,10 +587,12 @@ static void devfreq_dev_release(struct device *dev)
>>>>    	mutex_unlock(&devfreq_list_lock);
>>>>    
>>>>    	if (devfreq->profile->exit)
>>>>    		devfreq->profile->exit(devfreq->dev.parent);
>>>>    
>>>> +	kfree(devfreq->time_in_state);
>>>> +	kfree(devfreq->trans_table);
>>>>    	mutex_destroy(&devfreq->lock);
>>>>    	kfree(devfreq);
>>>>    }
>>>>    
>>>>    /**
>>>> @@ -670,44 +672,43 @@ struct devfreq *devfreq_add_device(struct device *dev,
>>>>    	devfreq->max_freq = devfreq->scaling_max_freq;
>>>>    
>>>>    	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
>>>>    	atomic_set(&devfreq->suspend_count, 0);
>>>>    
>>>> -	dev_set_name(&devfreq->dev, "devfreq%d",
>>>> -				atomic_inc_return(&devfreq_no));
>>>> -	err = device_register(&devfreq->dev);
>>>> -	if (err) {
>>>> -		mutex_unlock(&devfreq->lock);
>>>> -		put_device(&devfreq->dev);
>>>> -		goto err_out;
>>>> -	}
>>>> -
>>>> -	devfreq->trans_table = devm_kzalloc(&devfreq->dev,
>>>> +	devfreq->trans_table = kzalloc(
>>>>    			array3_size(sizeof(unsigned int),
>>>>    				    devfreq->profile->max_state,
>>>>    				    devfreq->profile->max_state),
>>>>    			GFP_KERNEL);
>>>>    	if (!devfreq->trans_table) {
>>>>    		mutex_unlock(&devfreq->lock);
>>>>    		err = -ENOMEM;
>>>> -		goto err_devfreq;
>>>> +		goto err_dev;
>>>>    	}
>>>>    
>>>> -	devfreq->time_in_state = devm_kcalloc(&devfreq->dev,
>>>> -			devfreq->profile->max_state,
>>>> -			sizeof(unsigned long),
>>>> -			GFP_KERNEL);
>>>> +	devfreq->time_in_state = kcalloc(devfreq->profile->max_state,
>>>> +					 sizeof(unsigned long),
>>>> +					 GFP_KERNEL);
>>>>    	if (!devfreq->time_in_state) {
>>>>    		mutex_unlock(&devfreq->lock);
>>>>    		err = -ENOMEM;
>>>> -		goto err_devfreq;
>>>> +		goto err_dev;
>>>>    	}
>>>>    
>>>>    	devfreq->last_stat_updated = jiffies;
>>>>    
>>>>    	srcu_init_notifier_head(&devfreq->transition_notifier_list);
>>>>    
>>>> +	dev_set_name(&devfreq->dev, "devfreq%d",
>>>> +				atomic_inc_return(&devfreq_no));
>>>> +	err = device_register(&devfreq->dev);
>>>> +	if (err) {
>>>> +		mutex_unlock(&devfreq->lock);
>>>> +		put_device(&devfreq->dev);
>>>> +		goto err_out;
>>>
>>> As per my comment on v5 I think the goto needs to go to 'err_dev'. The
>>> device registration failed, hence devfreq_dev_release() won't be
>>> called to free allocated memory.
>>
>> This code is not modified in the patch, it only shows up as +added
>> because diff got confused but there is an identical -removed chunk
>> higher up.
>>
>> The device_register documentation mentions the following:
>>
>>    * NOTE: _Never_ directly free @dev after calling this function, even
>>    * if it returned an error! Always use put_device() to give up the
>>    * reference initialized in this function instead.
>>
>> Cleanup path then goes like this (from a hacked error in device_add):
>>    dump_stack+0xdc/0x144
>>   
>>
>>    devfreq_dev_release+0x38/0xc0
>>   
>>
>>    device_release+0x34/0x90
>>   
>>
>>    kobject_put+0x8c/0x1f0
>>   
>>
>>    put_device+0x24/0x30
>>   
>>
>>    devfreq_add_device+0x540/0x570
>>   
>>
>>    devm_devfreq_add_device+0x60/0xd0
>>   
>>
>>    imx_ddrc_probe+0x35c/0x4c8
> 
> Good to know, thanks for the pointer!
> 
>> Can I add your "Reviewed-By" for the rest of the series if I fix the nits?
> 
> By now you should have it for most patches. For this one:
> 
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> 
> There is one doubt I have left on "PM / devfreq: Add PM QoS support" that I
> posted on v5:
> 
> "IIUC you rely on the notifiers being removed by devfreq_dev_release().
> Does dev_pm_qos_remove_notifier() behave gracefully if the notifier is
> not initialized/added or do we need to use BLOCKING_NOTIFIER_INIT() or
> similar?"

Sorry for missing that.
> Could you clarify this replying to the thread? Besides that and the
> nits (which are optional to fix) the patch looks good to me.

The blocking_notifier_head structs are managed by PM QoS inside 
dev_pm_qos_constraints_allocate and dev_pm_qos_constraints_destroy. The 
devfreq subsystem only registers a notifier_block, that's a 
NULL-terminated singly-linked list for which zero-initialization from 
kzalloc should be sufficient.

But now that I look at this again I should warn and return NOTIFY_DONE 
from devfreq_qos_notifier_call instead of propagating a negative errno.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
