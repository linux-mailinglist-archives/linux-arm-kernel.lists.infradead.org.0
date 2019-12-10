Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B0D117D20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 02:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RArij0nfCSUQyyELkEM7z+Py4VZa5ru5IFNF/vGwVqk=; b=J6YJMneohExjI2
	M/iG4RI3ivS9N2bnimsZMCcEEd6ulWQy9OnZDJWozWixs2glqxHIiSoysHK0CCDbdnDBXGx2xdYQJ
	YsnXF63/rTK+XcuX4I+Ak5nhVhu+9YcKjEnPP+Am7AnYaBQi1aXRS+Hpt+QP0t9VSMJI5yrzQRlfC
	8RGHfujaMDUcsLNxwqI7Zh5Ujc8bNkZJedZVuQymQXRP9jRWii3bqSXJHlpPCsjmMeLxgOld1qRcb
	Zgn13QNSSRUHjE2KKJC6fhaN6hRiatuIbD2424VwPtKCy3GZN33wYKdaRLJKezy1atsXGLLC+ym2g
	OCZk5tQ5UIPPOKPXnnKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieUGT-0000ku-7E; Tue, 10 Dec 2019 01:24:37 +0000
Received: from mail-eopbgr70074.outbound.protection.outlook.com ([40.107.7.74]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieUGK-0000kL-At
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 01:24:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=My6udeHiDXR73LR4/2dRbgFODBMmYHL7kcfLSNwGXD2d14vP7/M96Q/vxZq6OzTX4yExLhhoc5Gqvosl0Fe2Y3nV3ipyxoPF/kJd7l7daIxXycejn0JH3HxQM212UZM3oT8LWpxruNKRPoauZ38C8podWnWVM65lQacDQfiCEDuxGG4e0reGRgGzIOdbKsdqhRBgB93x/IbqtwOmZ7iKm26+nhf2nbeaVSv6X/tUqJBHVP3ZxYgxd2eLaCIMPwCNcVeAzDn2+3yvmE7lQFmu7H7+yzvQt6UArGWvfmTvovODFUD5fhsy7OQEw5fLF1Ea0HXb7s0U8lCj/4NcLDgP7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3LB4l1LiUcBXq5/yppo/dUee2V0XuyONoWBTkDx78Vo=;
 b=OkPrdeLBLpGAvZGzHWkHV/g2QDRGCjUJ0ypcANitbCX6appQgJYhSyh1a1+mbKnqj3Y5ztcst6y1J04ACgbYtu8U9VBovgH4UmrMqKH+zGF7asRZT8ffAmbVABAgFi3PWENwJTQT5fvOreJQu1HDHNNnLP2xOoPhj5r56DO/u320oG32CkIjLj2Q0638Hr/SH79m4dxF9NXpY1x9QUI0gf9uyk2zZ/HSJYAHu45VVJNZnRIlEkjO4WKdnlAKoib/WTtxqGlUUazeoRZCz8wywovVXBPNeFzX5jhyYPTuaHBYokcptpArLoEdGpbUnrkMKHorFWF99LS3Z+iPa7oujw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3LB4l1LiUcBXq5/yppo/dUee2V0XuyONoWBTkDx78Vo=;
 b=RKkMeW3Y+hxeIawkU4sOK30zcCPBiQ6cBeGu5iQHepjTBaay056ClJfjDCSAQD619NcQENDZ08KMLyAcTj2Vm1AK79uzOY79D/56xdx+g6vuD833FMecYxcF7wZ5qo1q9NPY82S1LessKS2RVftuiJQn4qf7KtfayqHbCjunDlM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB3024.eurprd04.prod.outlook.com (10.170.230.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Tue, 10 Dec 2019 01:24:21 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 01:24:21 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matthias Kaehlcke <mka@chromium.org>, Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH v2 1/2] PM / devfreq: Add PM QoS support
Thread-Topic: [PATCH v2 1/2] PM / devfreq: Add PM QoS support
Thread-Index: AQHVq1ODNU7t2eWiD0at4NmUUJ8TvQ==
Date: Tue, 10 Dec 2019 01:24:21 +0000
Message-ID: <VI1PR04MB7023E6C648E728BD5D21418FEE5B0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1575540224.git.leonard.crestez@nxp.com>
 <eaef2de34fed598a1b6ffecc9010e281c6f36318.1575540224.git.leonard.crestez@nxp.com>
 <20191205174846.GM228856@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [2a04:241e:500:9200:24ea:1624:6a17:53df]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 51d8e074-039a-4491-c87b-08d77d0faf28
x-ms-traffictypediagnostic: VI1PR04MB3024:|VI1PR04MB3024:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB302407F7AA47A6687E95390FEE5B0@VI1PR04MB3024.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(366004)(199004)(189003)(229853002)(86362001)(9686003)(55016002)(110136005)(54906003)(2906002)(7696005)(186003)(71190400001)(44832011)(478600001)(53546011)(6506007)(71200400001)(81166006)(64756008)(76116006)(52536014)(66556008)(66476007)(66946007)(66446008)(81156014)(7416002)(8936002)(305945005)(4326008)(33656002)(91956017)(8676002)(5660300002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3024;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: is/dnRbA2+R0lU/BgrkEj/HbcLCFumG7q4SDC5Kx84bsQlWolSOQCPJjGLKprLbOILzqd0ULTMTe425dv7NcH2DuomwhVtr/XzP22wepsP4zYQwpCNXeXgGij+vThi3iFVYIwcmMSof8BBnb8zFowuP1gUvJC9hZAgndcUH4fk/1Ul26wgDfV8NOWxTA4XJJkQ2Je3NsSqzGIi8AL5YrfS6mE3Q54gdGXXiyO4hBAg/Y2lhGxZasxMWVEWDvtTQynpElCar50puXZIKDtwcW4CPJY88iikqge1j4ock326evNxhfRHZ3H+8CZn5NnSBoI7b2IPxBIf3SHBxLP0DFni0tJ7ZASOBW2if0F1BN5y2LYhiwKmkm+cr7ZSBkGGT6BlQloGfVNgDBi8ft5Ppo3rDHpEOwV5SSThkv9m4SMHBM+GQjAlKjuG9RfdHIUB5f
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51d8e074-039a-4491-c87b-08d77d0faf28
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 01:24:21.1756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cM4RkZ3pYzefx4winGkgOPHr28RczzNOxco0gBw2WBgb1ab55tMQewE4xoNNqrK60+czcrpLy07VWrmEHfPvlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_172428_472722_7ED7CA76 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jacky Bai <ping.bai@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05.12.2019 19:48, Matthias Kaehlcke wrote:
> On Thu, Dec 05, 2019 at 12:05:06PM +0200, Leonard Crestez wrote:
>> Register notifiers with the PM QoS framework in order to respond to
>> requests for DEV_PM_QOS_MIN_FREQUENCY and DEV_PM_QOS_MAX_FREQUENCY.
>>
>> No notifiers are added by this patch but PM QoS constraints can be
>> imposed externally (for example from other devices).
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
>> ---
>>   drivers/devfreq/devfreq.c | 77 +++++++++++++++++++++++++++++++++++++++
>>   include/linux/devfreq.h   |  5 +++
>>   2 files changed, 82 insertions(+)
>>
>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>> index bdeb4189c978..e8b943fc4259 100644
>> --- a/drivers/devfreq/devfreq.c
>> +++ b/drivers/devfreq/devfreq.c
>> @@ -22,15 +22,18 @@
>>   #include <linux/platform_device.h>
>>   #include <linux/list.h>
>>   #include <linux/printk.h>
>>   #include <linux/hrtimer.h>
>>   #include <linux/of.h>
>> +#include <linux/pm_qos.h>
>>   #include "governor.h"
>>   
>>   #define CREATE_TRACE_POINTS
>>   #include <trace/events/devfreq.h>
>>   
>> +#define HZ_PER_KHZ	1000
>> +
>>   static struct class *devfreq_class;
>>   
>>   /*
>>    * devfreq core provides delayed work based load monitoring helper
>>    * functions. Governors can use these or can implement their own
>> @@ -109,10 +112,11 @@ static unsigned long find_available_max_freq(struct devfreq *devfreq)
>>   static void get_freq_range(struct devfreq *devfreq,
>>   			   unsigned long *min_freq,
>>   			   unsigned long *max_freq)
>>   {
>>   	unsigned long *freq_table = devfreq->profile->freq_table;
>> +	s32 qos_min_freq, qos_max_freq;
>>   
>>   	lockdep_assert_held(&devfreq->lock);
>>   
>>   	/*
>>   	 * Initialize minimum/maximum frequency from freq table.
>> @@ -125,10 +129,20 @@ static void get_freq_range(struct devfreq *devfreq,
>>   	} else {
>>   		*min_freq = freq_table[devfreq->profile->max_state - 1];
>>   		*max_freq = freq_table[0];
>>   	}
>>   
>> +	/* Apply constraints from PM QoS */
>> +	qos_min_freq = dev_pm_qos_read_value(devfreq->dev.parent,
>> +					     DEV_PM_QOS_MIN_FREQUENCY);
>> +	qos_max_freq = dev_pm_qos_read_value(devfreq->dev.parent,
>> +					     DEV_PM_QOS_MAX_FREQUENCY);
>> +	*min_freq = max(*min_freq, (unsigned long)HZ_PER_KHZ * qos_min_freq);
>> +	if (qos_max_freq != PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE)
> 
> The condition shouldn't be needed anymore now that
> PM_QOS_MAX_FREQUENCY_DEFAULT_VALUE is S32_MAX and not -1.

On 32bit architectures S32_MAX * 1000 will overflow so it makes sense to 
keep this. It would also be possible to use u64 for frequencies but most 
code doesn't do that.

It's very odd that OPP frequencies and clock rates are expressed in Hz, 
are there no 32bit chips that run at more than 2ghz and run into issues?

> 
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> Tested-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
