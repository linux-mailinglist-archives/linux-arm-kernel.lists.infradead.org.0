Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E194FBBBDF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=1D9Rrvw6bYl7e8EWRHgGqtPH3n6UUltO6yS53XzDxHg=; b=FuMsj+z/uoagKu
	3dYen8PNmmd2+gfgAfEH6yjD60c3bl6uc15kuOCrF3DpZ42RnWkRAZ6cbexWiEvujcdDptep0llbT
	mFmtqo16mrJhSN6HyfG1+GHzzXBb1JO/3A4Pah6NgbqGYx1elSfu6QDByEV/DQRbCgqdn0zV9Yg+r
	ggEb+KU8Tg8s5jFVWshHt28saT8njQacdYvP6zQl3GSsKTrpkSNaDJTNVXar64+dPBUZiUaV0XZzM
	DA8H6pIqhHRGuxep4WyF0tE2QtmJiAgg8F+SW7KvVrOj+1If4qbGbMFlD/RNL69VcbaMmCg/1WSQu
	avALI4SbPevA+z9VP91A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCTVp-0004NZ-Qg; Mon, 23 Sep 2019 18:56:41 +0000
Received: from mail-eopbgr40044.outbound.protection.outlook.com ([40.107.4.44]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCTVf-0004NE-5x
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:56:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JYFEPmbqTHCioOfh2fSZgkhNJjKxQtugylIvhClGk7gUpbpHdBKWfVYzGydvz6OUctwkC3sAHsECfaeMsilpkdXVKJbKZrEqj2v2zdB2AoZmbJ109IOZuchPmclp7+r4TrWDS2HkzbFkHwXI6/IVvt6i7/PJRxeJtxDufKeJBYTe64Cg8FnmBfLgWYvYAwGwet5p6sv4BhPfGZJpwHVtP3aH4lMutw9PBrF7kaXFoni4uDh8ZUVUkHis99nEYO7KmfMa0SpsHKh1H68WsUiFEFw2xzkRHIDEXyPB68fyOxfPhdg79RI3A7sVmrwu6obUl3L8HQnppbZ6ZeCGk8tiNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFkk/sTehnB22QWwQLvqzdn+0Vf+goQkY1TdiXdzX1I=;
 b=mQmvJ81f4fIkXu/3nI26OcNCpGk71cV8ypUenqho6Fe5yJKPyrzZ/sseGJbX0K+MkWkzuHoc/5PEpwSeSihA55zZ65IOXM36K9lainGCW4WpoXZbnzgzaei6SKM0ahVgiY8ROB5/2MbipXtfdmESWZo9IR9O4hkpc350qZ6Comtlo0UEWtXBU1EGBudxpYpiy8AWYwkHGxKChpBButtXQ7pK0E385OvrrE/P8y9Iqj+lNQtmp0brHrhkRdX0d+fiatSQWEYP7kmpAu57SjKn96pGmPIwCgdnJKTvC7HCb+g0k6uT76upPyqb+/0lGMM1CclktkKhctwIeKUGslPR1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFkk/sTehnB22QWwQLvqzdn+0Vf+goQkY1TdiXdzX1I=;
 b=Cqeg2vy+MXbGZ3WrxKR1IqFCC8IsbgyK/Lr7CtK1j5sMZ0UkqzDpU4HXa+g1BrAbvxIHBHv3pED/1qHFz///gOOBGy3wDMATZ/YjXn8byrGo4udrXMnlWvW0zTTCJhjAg09931SW6jb0JEOQxcHR3azbwMlZ4d5IlogG2OLOY/k=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6094.eurprd04.prod.outlook.com (20.179.25.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.25; Mon, 23 Sep 2019 18:56:28 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 18:56:28 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v6 2/6] PM / devfreq: Move more initialization before
 registration
Thread-Topic: [PATCH v6 2/6] PM / devfreq: Move more initialization before
 registration
Thread-Index: AQHVcia8XApMx2vUsE+43WtJMSpWjg==
Date: Mon, 23 Sep 2019 18:56:28 +0000
Message-ID: <VI1PR04MB7023C94F93C4E0E6E229F80AEE850@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569252537.git.leonard.crestez@nxp.com>
 <0ad496507cd7e6731e46249b1499dfdebe205c16.1569252537.git.leonard.crestez@nxp.com>
 <20190923181057.GY133864@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 330a2769-e418-49d1-64ee-08d74057bdb5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6094; 
x-ms-traffictypediagnostic: VI1PR04MB6094:|VI1PR04MB6094:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6094637D4472C92531634B7EEE850@VI1PR04MB6094.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(366004)(136003)(39860400002)(189003)(199004)(6116002)(6436002)(9686003)(55016002)(26005)(5660300002)(81166006)(81156014)(8676002)(229853002)(44832011)(14444005)(256004)(99286004)(74316002)(66066001)(478600001)(102836004)(8936002)(76176011)(186003)(305945005)(7696005)(7736002)(54906003)(66446008)(64756008)(7416002)(316002)(33656002)(53546011)(6506007)(76116006)(6246003)(52536014)(14454004)(66476007)(91956017)(66946007)(6916009)(66556008)(71190400001)(4326008)(25786009)(446003)(486006)(2906002)(86362001)(3846002)(476003)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6094;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uhvS1d1OIamAJIEmxn18Y5/e1D6ycWd0/NGindV30OEMPEe39bdxpKwCQNYMyjJlh5N6JLpot6RubOzvIzlqdOoVdlBY8dqLSsIZsxDY72oj0jnAwHQFuuyIOo6DeQW9HCSNNBVZrVGTygFxqaba2a5a2I16g83YpB4rTDGUGmnohOPP9DNsoR+ujAkUzxMLH1/sBfSeMUTL13f90KMst14dRno/a0HahKatUwr4wiIHcZyGiyxnb6ut0KihyivVeA0O4NNAZDzI4rMBjuEzI5RMRlBCUqAe/hP+X3tBWCjLcrxEoyKWrWD+nUJ/1UB+R2oNDfA8urvO5lZdGybO7fm6HxnkYNH1enbOHEV7zik3424MLB2sOU49LDe5oX/xTcBoN3ER2jzwEDXxGajdRg4K+bzOKUkdWp5oM4gFoco=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 330a2769-e418-49d1-64ee-08d74057bdb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 18:56:28.4037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: og0JSG+5/H5E9A+wsy3PkaDTx1I7oEcO40ECjpDT6/E0llT31n80BFml9v7apov5HYSI+6A2Wz+8uz2XafgLLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_115631_346813_CCA78228 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.44 listed in wl.mailspike.net]
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

On 23.09.2019 21:11, Matthias Kaehlcke wrote:
> On Mon, Sep 23, 2019 at 06:51:05PM +0300, Leonard Crestez wrote:
>> In general it is a better to initialize an object before making it
>> accessible externally (through device_register).
>>
>> This makes it possible to avoid relying on locking a partially
>> initialized object.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/devfreq/devfreq.c | 43 +++++++++++++++++++++++----------------
>>   1 file changed, 25 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>> index 323d43315d1e..b4d2bfebb140 100644
>> --- a/drivers/devfreq/devfreq.c
>> +++ b/drivers/devfreq/devfreq.c
>> @@ -587,10 +587,12 @@ static void devfreq_dev_release(struct device *dev)
>>   	mutex_unlock(&devfreq_list_lock);
>>   
>>   	if (devfreq->profile->exit)
>>   		devfreq->profile->exit(devfreq->dev.parent);
>>   
>> +	kfree(devfreq->time_in_state);
>> +	kfree(devfreq->trans_table);
>>   	mutex_destroy(&devfreq->lock);
>>   	kfree(devfreq);
>>   }
>>   
>>   /**
>> @@ -670,44 +672,43 @@ struct devfreq *devfreq_add_device(struct device *dev,
>>   	devfreq->max_freq = devfreq->scaling_max_freq;
>>   
>>   	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
>>   	atomic_set(&devfreq->suspend_count, 0);
>>   
>> -	dev_set_name(&devfreq->dev, "devfreq%d",
>> -				atomic_inc_return(&devfreq_no));
>> -	err = device_register(&devfreq->dev);
>> -	if (err) {
>> -		mutex_unlock(&devfreq->lock);
>> -		put_device(&devfreq->dev);
>> -		goto err_out;
>> -	}
>> -
>> -	devfreq->trans_table = devm_kzalloc(&devfreq->dev,
>> +	devfreq->trans_table = kzalloc(
>>   			array3_size(sizeof(unsigned int),
>>   				    devfreq->profile->max_state,
>>   				    devfreq->profile->max_state),
>>   			GFP_KERNEL);
>>   	if (!devfreq->trans_table) {
>>   		mutex_unlock(&devfreq->lock);
>>   		err = -ENOMEM;
>> -		goto err_devfreq;
>> +		goto err_dev;
>>   	}
>>   
>> -	devfreq->time_in_state = devm_kcalloc(&devfreq->dev,
>> -			devfreq->profile->max_state,
>> -			sizeof(unsigned long),
>> -			GFP_KERNEL);
>> +	devfreq->time_in_state = kcalloc(devfreq->profile->max_state,
>> +					 sizeof(unsigned long),
>> +					 GFP_KERNEL);
>>   	if (!devfreq->time_in_state) {
>>   		mutex_unlock(&devfreq->lock);
>>   		err = -ENOMEM;
>> -		goto err_devfreq;
>> +		goto err_dev;
>>   	}
>>   
>>   	devfreq->last_stat_updated = jiffies;
>>   
>>   	srcu_init_notifier_head(&devfreq->transition_notifier_list);
>>   
>> +	dev_set_name(&devfreq->dev, "devfreq%d",
>> +				atomic_inc_return(&devfreq_no));
>> +	err = device_register(&devfreq->dev);
>> +	if (err) {
>> +		mutex_unlock(&devfreq->lock);
>> +		put_device(&devfreq->dev);
>> +		goto err_out;
> 
> As per my comment on v5 I think the goto needs to go to 'err_dev'. The
> device registration failed, hence devfreq_dev_release() won't be
> called to free allocated memory.

This code is not modified in the patch, it only shows up as +added 
because diff got confused but there is an identical -removed chunk 
higher up.

The device_register documentation mentions the following:

  * NOTE: _Never_ directly free @dev after calling this function, even
  * if it returned an error! Always use put_device() to give up the
  * reference initialized in this function instead.

Cleanup path then goes like this (from a hacked error in device_add):
  dump_stack+0xdc/0x144 
 

  devfreq_dev_release+0x38/0xc0 
 

  device_release+0x34/0x90 
 

  kobject_put+0x8c/0x1f0 
 

  put_device+0x24/0x30 
 

  devfreq_add_device+0x540/0x570 
 

  devm_devfreq_add_device+0x60/0xd0 
 

  imx_ddrc_probe+0x35c/0x4c8

Can I add your "Reviewed-By" for the rest of the series if I fix the nits?

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
