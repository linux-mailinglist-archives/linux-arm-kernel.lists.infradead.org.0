Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF1910E522
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 05:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=0K53AuVgqlz6a73+t8Y1wd87a7LpPVIJ01xJt8dt7Ks=; b=fl6AlrDj/i+itl
	JTkChsL/PgmwkC2sfRYQGPjSg+z94QrkPa6l5X33dHd5tolnsMx4LNps9tQSGK1XoRE7k6T2qxBis
	EZqXoj2YgCZuwe19B5o+m28daDp6DXo1gYDVtzzxPB6fLT6R5n4xT1ofBMfRDQXNyTlDOY4iijL9P
	cIZ9DvxKPC0TwlnCkyUB3Kfz9UHAxQ/LB9vUMwjmZA1zgdIEaT/SMug6kC+N7ckKKimCWrG8jkr7c
	WWQDXcL0/UEfWuRHdefE0SxK4aJ2nNhz5hG/Arn6OarEJ6RMmqd1PiCEckMluWEThn0uxkzJbFYIr
	TxX8E8RO+x3C5HW/ptYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibdaT-0008Le-TE; Mon, 02 Dec 2019 04:45:29 +0000
Received: from mail-eopbgr30042.outbound.protection.outlook.com ([40.107.3.42]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibdaL-0008KN-TR
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 04:45:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X6PDfgGziIcO6BA2ZbeRkm1orAK9oqRWJHvnDcyOL577LzyexA3dQstt8H2slLT7md08/bbpLL1cVuMMrh7UI4/DNmdl06AQJa6f6yy9UMMgbqfwST5xr9Kl5n1AuzK5KAav2Yt/Kt9s5NR61qB0S8sR/1lepffVCSpIa06KSsGZG0WJetPO0147tH/IjoQtUZ57Bn3S91Vh229+hP2ICL5foVElSNpKFpvARv2BxgYYx3675O52qPylR7ASzvqA+9nEREn+fHzOMKdlzJffisKjAz6yIdVsoWAwnQ0yseNv1Sy2pGHOnUQtGioSZvAZtMvsrDUCApgUFxPaaI6Q/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w2MXlJH49hejZV/XgTE8y8hZg7jNv8TB2HFnRebs/hM=;
 b=fRlTOTJ75SPgwPhjm+PsG8vuVGSm4GCNYi2CwzUIdbf2jffqQBbwmkA+x/vWP4IAf9AUm7zn6Z03HUlQdU4UeNfHSt0V2wr7LE8UisNaaHDLEiwLlGpKFtnqLqBNqNrzMY1PeIl3AWP3GCTsWA8YHo2UqngzdCRRKPVrAa7rdrSQ9vPCz3RzCqjoz7ULJPuFInn9WVYIWk7QVFMa1JiG8aHzNioIFIbwKwc9RbeVKI+UomJC0VeqVAKk4N9zREnXEd8zg04deQSs8t3+mvtnvHWTlEynCe6a2MiPkyeTuAfTp4pNyakK9UwYEZQRqWllh0djbo7XihZqWLAQeJqX6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w2MXlJH49hejZV/XgTE8y8hZg7jNv8TB2HFnRebs/hM=;
 b=Byrl4KssncVCoU33PEkYwgG9kBes+2IP357EHU3A59gtyJNw01wuNuq6Sga/twLyIMGCEgzGnNIidPLcjecZiKTam6yU0rv4WUMj1SFRUpOaUQNQibmGPTyYjQ7At59v01nPlJAPMQ2lFU5P08PLyZH7IBzGs9jYEY2heHJlsIg=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5806.eurprd04.prod.outlook.com (20.178.204.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Mon, 2 Dec 2019 04:45:17 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 04:45:16 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>
Subject: Re: [PATCH 2/5] PM / devfreq: Split device_register usage
Thread-Topic: [PATCH 2/5] PM / devfreq: Split device_register usage
Thread-Index: AQHVmnkb/0VMwHylrEWcL8nyQOOCfQ==
Date: Mon, 2 Dec 2019 04:45:16 +0000
Message-ID: <VI1PR04MB7023135B9D53D86A101F1895EE430@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573686315.git.leonard.crestez@nxp.com>
 <CGME20191113232144epcas1p37b0c4f2d15be4686b4796c6132ef6bbe@epcas1p3.samsung.com>
 <85ccf6afe5db556c610ce2b47ccc38132b6671f6.1573686315.git.leonard.crestez@nxp.com>
 <69d37137-8c7a-ddcc-f692-09546c79ff7d@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6cbe7f32-5daf-42b3-721b-08d776e26d95
x-ms-traffictypediagnostic: VI1PR04MB5806:|VI1PR04MB5806:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5806CBF483374FEBF16EA430EE430@VI1PR04MB5806.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:901;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(39860400002)(396003)(346002)(136003)(189003)(199004)(256004)(8676002)(81156014)(14444005)(25786009)(2906002)(316002)(54906003)(14454004)(81166006)(110136005)(8936002)(76176011)(6116002)(3846002)(478600001)(7696005)(44832011)(446003)(229853002)(76116006)(91956017)(6436002)(33656002)(7736002)(66066001)(305945005)(102836004)(64756008)(66446008)(66556008)(66476007)(66946007)(4326008)(5660300002)(6246003)(53546011)(6506007)(9686003)(99286004)(55016002)(7416002)(186003)(71200400001)(86362001)(71190400001)(26005)(52536014)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5806;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eDn/OBmaUF90xeJtYzahnrd75D0xKkOcxatJO1X41sAl7bzfGLyC2tQIoe8j/jwFaW7as6oBQseEyuvF6zrnLxRlPDB8D0hFSiZ9A83Ev2cZ3hbrE2Ene8WfpklUrNgte/mT+J/ZYLOJpwYtmTCRQjRQ9UuPNNOiP2CYO9jHbDXvQY98l71VK9xMSsUaNsWZTWfhdIHPsanXyakhtZVaozVqluFXNFuRluWyOcH7DUWBntj1algFCZIDW6um+PWNDF2FaObkBApK/7oomYJJ67B9xhF49inNvxGdcsJlrmmNsVP+PGkS1tCLRpvHGmlaA4SPMdUPIPnyFvi1HgbZJ4T/xt9GCafgTyosUJWY3RcVT8K7SgnaXxAwLhRHwdhktfysJS1MB2DjntbnzG6tQnWFwN97qN7UNwvwBCdavKlrCU3Gk44/w4x7wfAKXRfy
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cbe7f32-5daf-42b3-721b-08d776e26d95
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 04:45:16.7928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vKVON5WxNpM3qQ2bycGX9irBbuoEIkrTsQn4Tiu30Kl9Vksaeo+xssRDA9yk9S0yZvs0ccuVkre+XYdFy46Okg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5806
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_204522_147697_B0778FA2 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, dl-linux-imx <linux-imx@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-02 3:02 AM, Chanwoo Choi wrote:
> On 11/14/19 8:21 AM, Leonard Crestez wrote:
>> Splitting device_register into device_initialize and device_add allows
>> devm-based allocations to be performed before device_add.
>>
>> It also simplifies error paths in devfreq_add_device: just call
>> put_device instead of duplicating parts of devfreq_dev_release.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/devfreq/devfreq.c | 10 +++++-----
>>   1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>> index 27af1b95fd23..b89a82382536 100644
>> --- a/drivers/devfreq/devfreq.c
>> +++ b/drivers/devfreq/devfreq.c
>> @@ -689,10 +689,11 @@ struct devfreq *devfreq_add_device(struct device *dev,
>>   	mutex_init(&devfreq->lock);
>>   	mutex_lock(&devfreq->lock);
>>   	devfreq->dev.parent = dev;
>>   	devfreq->dev.class = devfreq_class;
>>   	devfreq->dev.release = devfreq_dev_release;
>> +	device_initialize(&devfreq->dev);
>>   	INIT_LIST_HEAD(&devfreq->node);
>>   	devfreq->profile = profile;
>>   	strncpy(devfreq->governor_name, governor_name, DEVFREQ_NAME_LEN);
>>   	devfreq->previous_freq = profile->initial_freq;
>>   	devfreq->last_status.current_frequency = profile->initial_freq;
>> @@ -726,15 +727,14 @@ struct devfreq *devfreq_add_device(struct device *dev,
>>   	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
>>   	atomic_set(&devfreq->suspend_count, 0);
>>   
>>   	dev_set_name(&devfreq->dev, "devfreq%d",
>>   				atomic_inc_return(&devfreq_no));
>> -	err = device_register(&devfreq->dev);
>> +	err = device_add(&devfreq->dev);
>>   	if (err) {
>>   		mutex_unlock(&devfreq->lock);
>> -		put_device(&devfreq->dev);
>> -		goto err_out;
>> +		goto err_dev;
>>   	}
>>   
>>   	devfreq->trans_table = devm_kzalloc(&devfreq->dev,
>>   			array3_size(sizeof(unsigned int),
>>   				    devfreq->profile->max_state,
>> @@ -789,13 +789,13 @@ struct devfreq *devfreq_add_device(struct device *dev,
>>   
>>   err_init:
>>   	mutex_unlock(&devfreq_list_lock);
>>   err_devfreq:
>>   	devfreq_remove_device(devfreq);
>> -	devfreq = NULL;
>> +	return ERR_PTR(err);
>>   err_dev:
>> -	kfree(devfreq);
>> +	put_device(&devfreq->dev);
>>   err_out:
>>   	return ERR_PTR(err);
>>   }
>>   EXPORT_SYMBOL(devfreq_add_device);
>>   
>>
> 
> As I previously commented, I don't prefer to split out of bodyf of device_register().
> Instead, your first version is better without devm.

Very well, feel free to drop 2-5 of this series then.

Or perhaps I misunderstood and the locking cleanups would be acceptable 
in the variant that removes devm from a few allocations? There's quite a 
bunch of stuff flying around the merge window already so I'll refrain 
from posting until v5.5-rc1 anyway.

I went a little overboard with tricky cleanups and this ended up 
delaying the functionality I wanted to push.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
