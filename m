Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5CFCAF08
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 21:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=1OxU1ruiQA2rjUWmi9tXN1dzu/piauN/xz0sgWnwW5k=; b=bS+8KC4IGK4e+K
	ZsNG1fyehzjnt1m5Moy5A4mwJk6qhRnhGKmJnI9svX4xOTg1Fol2RObu98H6vYyw5VI/9kni/I10O
	vRWlLEkjeqLJX9rgUdnsHA3NyYog0xTTqOb89wY+amuMyWKQooPF14O114+w/mDEIo9LKhpoG1Y9r
	4MzGH5TNSDIGtUmAmtUS001sDX/3MD7Z1fMSCwzm9zt810+8Obs0Cs7jg13va1/7ZMogGOleXitRi
	LmNBtm0P9OmDUDd7fU9NFnzhx+KkmDcNzA6oPxgOoiuIowaP9Z931WXo+ylKOVbDR9+bHqRI6pGt3
	DMU+zh7EbC3voOo57YbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6aH-0008Ei-Ix; Thu, 03 Oct 2019 19:16:17 +0000
Received: from mail-eopbgr80052.outbound.protection.outlook.com ([40.107.8.52]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6a6-0008Ds-Jk
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 19:16:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N4rq2puuBCE70phnSNAi2GJ3kcSZCUIM8XtfsVSUle2Ty04FvaNFO6CvPw/V7d38VOlZHUP0lWdSDhEbsBk262Ty/De9+ZKjwcfgNPqXbzDJMBl5bkxN2F10hp/R6dJUyZ1VN+/RnF52xkYAHqn0wERl/2iCm2cHYd9+iE/YmpKv8Z5/Kb7nKWCcSyknm1rjSEb/85PGhaqGwXoE2LedSKrcFnW0XHsCSzF6kSfYI/QV+b7kG9V/0V0iQx7L9ZXs+6ZidkukGPZr2pEu1VCCIAL3CGAN1t7DMVusyU8jBwjQnYE5MWpn+8OZVQVFRLCb5LSuWSeR+MBFCnkf5NYisA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Mk3oCoJwAwCNTrVSrKy4rpMD5e/bvEKzbz5afmQpgc=;
 b=liNIXhVOC8ZVR0fycG9s49Qqr0Da01zc+Bs7ZGoYWVrHDzFL8gFdVzZQBSWz1vC/JJ+XKz62T+DajyWOkq1QMqNLdQHIil4TfaryklhFjds/pj3gY+pIdn1ww3JLSb/s42MPpoc8Nho7FAs1zVJwK1UMjAoC3OFGDimOxH0xVVPeuUz3cBeszOA+rVLmNuVvyv6KNXUlQxmAxgVRTYgDDxDonM5YI9eN/bVv5yXZ39SIQL+O9sS6iWGQ9rDlqXrhpL/MmVsBOkYUf4GVO+cYaJfHULjDnkZufDoOcrIrfzq73+dTlYVm4EyN3oUuyH4XlrDSqMjTfLOJzsrah++vZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Mk3oCoJwAwCNTrVSrKy4rpMD5e/bvEKzbz5afmQpgc=;
 b=CxYDteC0pZ98wb2pNgbJXQtP8LjWupQ0fjH3thfoVylLZngbiWD/v3T4quNdS21HkxDUbOEHKxiOO9hfaG2fZml939n+gavgZdFuITsTOAhh8ecjj0fX60il8eyFIJhOYLnJx2ro+GAnIZKhFw2MsJ3al/x70SjIv8hGpPcqeJw=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB7040.eurprd04.prod.outlook.com (10.186.156.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Thu, 3 Oct 2019 19:16:03 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2ce6:267:b2a6:9902]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2ce6:267:b2a6:9902%2]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 19:16:03 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matthias Kaehlcke <mka@chromium.org>, Viresh Kumar
 <viresh.kumar@linaro.org>, Saravana Kannan <saravanak@google.com>
Subject: Re: [PATCH v9 6/8] PM / devfreq: Introduce get_freq_range helper
Thread-Topic: [PATCH v9 6/8] PM / devfreq: Introduce get_freq_range helper
Thread-Index: AQHVeVcjG1LoKlXGikmvzB33amMNOQ==
Date: Thu, 3 Oct 2019 19:16:03 +0000
Message-ID: <VI1PR04MB7023F76F9C7BA20CE54058BEEE9F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <c453bb60a74b41a5192e270f286dfc81c1088449.1570044052.git.leonard.crestez@nxp.com>
 <20191003181938.GJ87296@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe206d1e-5bd1-4e87-e03c-08d748362248
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB7040:|VI1PR04MB7040:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB704040284D82B002F7441D40EE9F0@VI1PR04MB7040.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(396003)(376002)(366004)(189003)(199004)(74316002)(4326008)(316002)(6246003)(9686003)(305945005)(102836004)(26005)(7736002)(55016002)(110136005)(54906003)(64756008)(91956017)(66476007)(66556008)(76116006)(6506007)(6436002)(66946007)(53546011)(7416002)(52536014)(5660300002)(76176011)(446003)(229853002)(44832011)(99286004)(186003)(476003)(7696005)(66446008)(486006)(71200400001)(71190400001)(66066001)(6116002)(25786009)(33656002)(3846002)(478600001)(14454004)(14444005)(8936002)(86362001)(2906002)(256004)(8676002)(81156014)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB7040;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E/pgVl0ZAJWlvJn2ZIo7idQJlFuqU6TnyrxA9mbRTEBn1PK1jKc2KrFJ8wsyK985izbCgR3/Jc5uly6kXMVd54K9VSLlJhMgDvtDx51XmRyY8glTX7lAZwBCoO3I9zrEF9fmA7OfU+V60YcSeN8vmaiKOtps2urwEXDCDpaK0TevJ5QUo7AjdIZV+VlWKAt7vKbl1uI/8S57QKkQ5LflV5Z+JFA7uiGCBWVYlpMXcoJkGQ62W9b5xQElVw38Js8ITIoMpnp/eFiYH6c+NpuJNhxGN17bNYLy/Mo3XBGpxZOoZ9v+B6Vq++Dvm5dvN1nWDy3z6HV0oKCuLDFib3VLwOYGqq2sZQfykrdy6VwcVsBrP0GS6GsJ3wwPWCJfld8P3Lg9+yvAwNIZCCxZpvQ/kiPrNVPM8RX8eSvOwa0iG0g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe206d1e-5bd1-4e87-e03c-08d748362248
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 19:16:03.4958 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 85ew5d0vuXUPsBAlCNNSV8tXUjjdjVK7/prTdL/EbvG38XUXklx0vBRHgVv5sapxt7Dv/9fQzOESOAYt6QJ1fA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_121606_779521_AB822C8D 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
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

On 03.10.2019 21:19, Matthias Kaehlcke wrote:
> On Wed, Oct 02, 2019 at 10:25:09PM +0300, Leonard Crestez wrote:
>> Moving handling of min/max freq to a single function and call it from
>> update_devfreq and for printing min/max freq values in sysfs.
>>
>> This changes the behavior of out-of-range min_freq/max_freq: clamping
>> is now done at evaluation time. This means that if an out-of-range
>> constraint is imposed by sysfs and it later becomes valid then it will
>> be enforced.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
>> ---
>>   drivers/devfreq/devfreq.c | 110 +++++++++++++++++++++-----------------
>>   1 file changed, 62 insertions(+), 48 deletions(-)
>>
>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>> index 87eff789ce24..2d63692903ff 100644
>> --- a/drivers/devfreq/devfreq.c
>> +++ b/drivers/devfreq/devfreq.c
>>
>> ...
>>
>>   static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
>>   			     char *buf)
>>   {
>>   	struct devfreq *df = to_devfreq(dev);
>> +	unsigned long min_freq, max_freq;
>>   
>> -	return sprintf(buf, "%lu\n", max(df->scaling_min_freq, df->min_freq));
>> +	mutex_lock(&df->lock);
>> +	get_freq_range(df, &min_freq, &max_freq);
> 
> With this min/max_freq shown aren't necessarily those set through sysfs,
> but the aggregated PM QoS values (plus OPP constraints).
> 
> I did some testing with a WIP patch that converts devfreq_cooling.c to
> PM QoS. When reading sysfs min/max values to double check the limits
> set earlier I found it utterly confusing to see the sysfs min/max values
> fluctuating due to thermal throttling, and not being able to see the
> configured values.

Isn't current devfreq_cooling based on OPP disabling which modifies 
scaling_max_freq? This is not a behavior change: reading back always 
showed the "effective maximum" rather than the value explicitly written 
to max_freq.

This behavior is indeed confusing but can be fixed by adding two new 
files: user_min/max_freq and user_max_freq. These would act like current 
min/max_freq on write but on read would only show the value explicitly 
configured by the user.

> Looks like cpufreq does the same, but I'm not convinced this is a good
> idea. I think we want to display the values set by userspace, as done
> before managing the limits through PM QoS. Viresh, was this change of
> userspace visible behavior done intentionally for cpufreq?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
