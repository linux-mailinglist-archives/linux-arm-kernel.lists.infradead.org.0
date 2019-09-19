Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB82B810A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 20:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=i3fakn23gixa5QLxRUGe44VIgf2gw3XpqVeSJ1zw/7U=; b=MCMs/YCI36khkY
	GY4WJmMhx1UuS5FSUzyZTuexLVMaqUya8QAEEyCY6xhxBWqwUMmoEymb8KwbhX15w1RRA4dOAOoeF
	xgbNPWQUgXFonP/3kgKvkMtdM6Wtyec6K9h4j5IfuMEcEyruPqWoyl82ju37/GmKpi+U0hHMQn7EZ
	57v0jsgIKGLvqQ4Dis0klhxF7zOGTVYhUt/opjslASFZXjoQVY2NhmQSOoTMmUCD9Osk+IWJ4ABYi
	j6E0VYRZ7vyXC06fgWo2umkLWSgBjeYlGrTwmwFiYTrwMqlSNEy27GQ3wEX5Pp0Lh9IxDlVDaxyKQ
	vB84UyUhiQwSyL1LN1Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB1XZ-0004DD-W2; Thu, 19 Sep 2019 18:52:30 +0000
Received: from mail-ve1eur01on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::610]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB1XI-0004Ci-6w
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 18:52:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z4fIhj+90Byu/O03THqBJz5if1fMvQoEEM51mfoflPtGl8ZVpLEXqu3ry2autSpgkjgikYH+CWQBNxngJOurUja/+pj0iqCCarTn1G6vW+FVjBTdCgZ1X/e+hsziTy3IF8qOG/6wYYGW7JEMbHe2h9siSJ+36L5RNDm2VTxphPB7GJJ6wBCiA1tII8gvTKs1IUsKk+CKnyjhBy4LbN7X9Uj4P0/cD3726aoaFwrQfKXn0VwnMhKVCyUKWInoj5/QsuW5QkxMkk/n526Pp3B2R9p3v0lE6C5PImW+L71XAcZsUyr66fQ6SOay9/GayCRrnRHObSbUX/Ip/oMaA4TLRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qateg/ey0AYl1xAX1qXNH/BSjTRGYq1NLWHHpyHP0Nk=;
 b=HbrtHNa5YZ/DKQv5skZgDtlTpnmBxbmnLwotXjhFDDx2OQ5XBCxmxJHDUTUXS9CY5p1tR232RFt1fKBFMrAVDopQVcrnD9uifgveCX3clau7cFhGilIykFGRzvENjsytbbbbS8NYR3icoT0IGcfSJsoZJx3dsnTxpJz1Q6x/kHMQ01shtLcHA4mWPqq4sSiFSQKQqoCBI99irt9AvqlvFDDOgSHe9t3aK/WrRuezYAYnKt80Ef4mOpsa8dHRw8I17M/RJ9+yS983v2OH2pfyLhZuDK+4Bl0fkYGHDkXbbR4DwILNFiQcA2PkEYy/vDQhAOiLC7QGK7wp03ORfXMDWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qateg/ey0AYl1xAX1qXNH/BSjTRGYq1NLWHHpyHP0Nk=;
 b=Eymlb+eNEKqIkzSNNR2b6eEH7/kecUOOxeKbV9FM9+4xn8VSEU73Qh9xLJMv2gfxd043SRGw3v/qBDRQacFRrK60l5Hred5CeNopWRPK1gVWQRNj6c83EXvhPFkVH/x6G9q/ogGw+9AYHkw+YtBTlGrFPgTbUMCB6qe8or/7tz4=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5151.eurprd04.prod.outlook.com (20.177.50.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.21; Thu, 19 Sep 2019 18:52:07 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.009; Thu, 19 Sep 2019
 18:52:07 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matthias Kaehlcke <mka@chromium.org>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 3/8] PM / devfreq: Move more initialization before
 registration
Thread-Topic: [PATCH 3/8] PM / devfreq: Move more initialization before
 registration
Thread-Index: AQHVbnjgwqBFLhrM3E2fNwR3RpKVeg==
Date: Thu, 19 Sep 2019 18:52:07 +0000
Message-ID: <VI1PR04MB702350FA21534747D540C04FEE890@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <59bd0d871fad520eb417ca46943fa7f86ef9186a.1568764439.git.leonard.crestez@nxp.com>
 <20190918232904.GP133864@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7a769a2-8cc0-4cfe-0d16-08d73d327857
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5151; 
x-ms-traffictypediagnostic: VI1PR04MB5151:|VI1PR04MB5151:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5151C1CCF05AD96A73D82738EE890@VI1PR04MB5151.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(39860400002)(366004)(199004)(189003)(6116002)(3846002)(2906002)(14454004)(305945005)(74316002)(33656002)(99286004)(7736002)(478600001)(66066001)(7696005)(26005)(76176011)(25786009)(102836004)(76116006)(91956017)(7416002)(66946007)(186003)(6506007)(53546011)(316002)(110136005)(6246003)(66556008)(64756008)(66476007)(66446008)(54906003)(44832011)(486006)(8676002)(446003)(4326008)(476003)(9686003)(55016002)(14444005)(256004)(6436002)(52536014)(71200400001)(8936002)(71190400001)(86362001)(81166006)(81156014)(5660300002)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5151;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vNaeqSpYB/826HVAlhcrxPY/qL2oYopvebXdzZQxJ9d/TVdO0n3w73W6e9Zc5UurvF+kj7F+NbiFD9FrYpXPXtEkGZvJXFCRvwjIFsjHYB+ACXDJg1OhwhM6aNjIVm1eGmE2I6nzu2RXWNQV4VfZwAiGuOKvScq6EqWPoQVNoRvJqfzd/DB19qNpOShSqhwpu4cyvVrqKOcpYqLihmM+JcnfeihlcSNJ3V7aOcKYqST8CWTMpTfSKEgfEeNaD8Dt/zCY4TcN1o9yzKvNlfyuSAN8D6nqEEhK43akFOezWRThgw5t1GMCN6i176ahGZCmiCGaBgKCb4cY6mUGimBTWxMD5snh0UOZFAzjPTcc+IT/uX8Oljn8Ynzn8rDxaCSd+KmXqTGxji/B08K51aI++wp6nT/f7ZWBEkQix+C6Ehw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7a769a2-8cc0-4cfe-0d16-08d73d327857
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 18:52:07.1783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckG4bzVlCumotpHVk7Ue1YpmZqWo/AGkuIOn5jgjO6NxMoBFfeVjlTR+e6wrWxsoQesbTWZvtGQRlKdNSuXcwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_115212_443522_CCF06EC3 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:610 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
 Viresh Kumar <viresh.kumar@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19.09.2019 02:29, Matthias Kaehlcke wrote:
> Hi Leonard,
> 
> On Wed, Sep 18, 2019 at 03:18:22AM +0300, Leonard Crestez wrote:
>> In general it is a better to initialize an object before making it
>> accessible externally (through device_register).
>>
>> This make it possible to avoid relying on locking a partially
>> initialized object.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/devfreq/devfreq.c | 38 ++++++++++++++++++++------------------
>>   1 file changed, 20 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>> index a715f27f35fd..57a217fc92de 100644
>> --- a/drivers/devfreq/devfreq.c
>> +++ b/drivers/devfreq/devfreq.c
>> @@ -589,10 +589,12 @@ static void devfreq_dev_release(struct device *dev)
>>   
>>   	if (devfreq->profile->exit)
>>   		devfreq->profile->exit(devfreq->dev.parent);
>>   
>>   	mutex_destroy(&devfreq->lock);
>> +	kfree(devfreq->time_in_state);
>> +	kfree(devfreq->trans_table);
>>   	kfree(devfreq);
>>   }
>>   
>>   /**
>>    * devfreq_add_device() - Add devfreq feature to the device
>> @@ -671,44 +673,43 @@ struct devfreq *devfreq_add_device(struct device *dev,
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
>    		goto err_dev;
> 
>> +	}
>> +
>>   	mutex_unlock(&devfreq->lock);
>>   
>>   	mutex_lock(&devfreq_list_lock);
>>   
>>   	governor = try_then_request_governor(devfreq->governor_name);
>> @@ -734,14 +735,15 @@ struct devfreq *devfreq_add_device(struct device *dev,
>>   
>>   	return devfreq;
>>   
>>   err_init:
>>   	mutex_unlock(&devfreq_list_lock);
>> -err_devfreq:
>>   	devfreq_remove_device(devfreq);
>> -	devfreq = NULL;
>> +	return ERR_PTR(err);
> 
> The two return paths in the unwind part are unorthodox, but I
> see why they are needed. Maybe add an empty line between the two paths
> to make it a bit more evident that they are separate.

Old code did "devfreq = NULL" just so that the later kfree did nothing. 
There were already two unwind paths, it's just that the second one was 
less obvious. I will add a comment.

>>   err_dev:
> 
> This code path should include
> 
> 	mutex_destroy(&devfreq->lock);
> 
> That was already missing in the original code though.

Yes, that would be a separate patch.

> Actually with the later device registration the mutex could be
> initialized later and doesn't need to be held. This would
> obsolete the mutex_unlock() calls in the error paths
Next patch already removes mutex_lock before device_register (that's the 
purpose of the cleanup). If you're suggesting to move mutex_init around 
it's not clear what would be gained?

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
