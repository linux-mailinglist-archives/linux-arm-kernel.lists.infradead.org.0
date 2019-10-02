Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 610D5C952C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 01:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=9pz2RhwKCC3VBTithIYCiS4hWzDPFDN7ikc6WHUQjaM=; b=rQOIuDr9YlfqfD
	U0iowW0BIPFSchBM0MNoLjsxqg55Sixr+HIQ6fuyU6kasUmOws0R9/UlVU1fItyL8sKNY5ZO5qstz
	/AFbblYHOwyo8DONhG9+Zr9+gj1O2B/2ah/xeTG4Bpgm+e4ZkKY1wjQdXQr2GcDaDjJvfqrRR7hhq
	cR1MzuOKPwAwMPrerud3GS+WS18dSm3bVVBsoRdBf7AE4rQ3yz/7MBiX+m06bxcRAlFWUF9KAzeoV
	m1AJYZXTZRKp36A0NNlvsqNlpCrs7/whgON9KondIkDv1qcVL5olLVw5pOfeWFtG04uSJ9tNffIcA
	sCqq4LdV3oMUF44oxKJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFoLV-0000Pu-Bw; Wed, 02 Oct 2019 23:47:49 +0000
Received: from mail-eopbgr70075.outbound.protection.outlook.com ([40.107.7.75]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFoLN-0000PQ-LX
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 23:47:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fs2yIYfyIs+a7pN6kH4zeKNlGogsZlELGb4ID+SL6Zl5prc+Yhfj87T13TuzPF0DCLZFFT+aeuZlnndPq52pqvrfiAkzUZND+Xewb1KadhNhocso3HEFa0bwuNdyQUbrcMrTrmimhGiB9w35L4aIo51+PA5rfSGK4WkN5wLS0wBABk98WB3sZCxeOlYAoRX+JZW+1g76Zp0MnGqD1Xrl0BMUVeRI5oRY4mTPkfDfXKWxGR2wyVWV9s/B7bG8wX1suBqnlhGfn2DHEU+N0ka2bF4jCDoC/IiD0FPuV3FD2sQs3iIEZ6J1mf/fmJ+L2xmEMxMf9aOX4u6W1SFDYc+lyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nl8MMl01vTJ8vUhVXOuyXvN5C+WqYBQhPCPEU62qZZQ=;
 b=mKhzKM7wA8ru1ntWZG/MhmWdmDViY6nQ4GykFubosw6BNsBXLG/baOgbZQ6FZzNiUWS5d3LbwJdGxDiqDvfekR8NxJdYXtCBDWgu+6qx/30q0YJk2PLM2ZuQlaBqoYZkHkqLb+R4fgpHgCQ6HZuvRLBDhsE6RYMruEhn93R0rZ1enWdx+fPlD12k0m5ONKiC7uoITmEEzz8QXq25zZhGr1jajgpRnXs7CHE8q9OV5JipeW73EytxqvP4TPDPYLcf8Wr2RJ4jo//eJkrECgRRX6joPjhEklwFUcxZezs0gkY4xVDkx0E+YgX/cYcAXczyf6ds6/ajlaJjMHZyHO3oog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nl8MMl01vTJ8vUhVXOuyXvN5C+WqYBQhPCPEU62qZZQ=;
 b=FaCWdYlQB9MxCajI6cdWwqLQlZHERxsZvZd/SlDoNl/O4pQ5i2gFRc4DL6Z79aXWMg2d0ThFCq0QeRqWqI5O7Cg1UnuwxILSP9kO7zW19O9s+zVJQqi1b7T7S3jPVXtcPPNa2kOQFlTYpz/8SRTOhyeswXo5ZDkuQIoLSfr//X0=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5247.eurprd04.prod.outlook.com (20.177.51.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Wed, 2 Oct 2019 23:47:35 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2ce6:267:b2a6:9902]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2ce6:267:b2a6:9902%2]) with mapi id 15.20.2305.023; Wed, 2 Oct 2019
 23:47:35 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matthias Kaehlcke <mka@chromium.org>, Viresh Kumar
 <viresh.kumar@linaro.org>
Subject: Re: [PATCH v9 2/8] PM / devfreq: Fix devfreq_notifier_call returning
 errno
Thread-Topic: [PATCH v9 2/8] PM / devfreq: Fix devfreq_notifier_call returning
 errno
Thread-Index: AQHVeVcive2Iv4wdX0S21lWzbVbDKw==
Date: Wed, 2 Oct 2019 23:47:35 +0000
Message-ID: <VI1PR04MB7023EF602656CC360032E720EE9C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <10b1e5f93e7594852aa5cbfe1309bf486f70ecbb.1570044052.git.leonard.crestez@nxp.com>
 <20191002212437.GF87296@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 678f6ee5-eb36-4bdc-8e9f-08d74792e691
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB5247:|VI1PR04MB5247:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB52474D8DE4F8D6B9B592E8A7EE9C0@VI1PR04MB5247.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(366004)(376002)(52314003)(199004)(189003)(256004)(14444005)(446003)(8936002)(71200400001)(71190400001)(110136005)(81156014)(81166006)(476003)(44832011)(486006)(8676002)(316002)(54906003)(14454004)(33656002)(478600001)(25786009)(2906002)(99286004)(9686003)(6436002)(66066001)(3846002)(229853002)(55016002)(5660300002)(6116002)(74316002)(7416002)(7736002)(305945005)(64756008)(66446008)(4326008)(6246003)(76116006)(66556008)(66476007)(66946007)(91956017)(186003)(26005)(52536014)(53546011)(6506007)(102836004)(7696005)(86362001)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5247;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i+4bRtJpvx43QPKEqX+2sOQc67+UcaUFX2Xl3yVUWAQbnMYSJpRQZSOx4BS0MvUncSSzLP3p0d7yDoM3e6OO3IehXeZmJ5IE75o9mvm9lGrHpK++f0mVghv2l3kroL6/3315EXI3d0qs5Jy8/pTmw4Y7lX7+88lYHAOUihO2q7wItO3z4amjwzRnq2WgUcNEb/AsIRZdyHvBa3Qp5h7h9worg49gbt5UhPUDDikLFu+JehhXvmwN9y6VQLeEnIW7glqEo1yzwBkxKEUSOhlTXACknX0kYs5fgkafc4NoGYLw94VNKHfrs47KcPoKFBabMkiUVIXNklTB+gHWa14f+op3zQh8/fGsfaX20i5PUtxIdysDuCDfTd9X/yxtpcjEv96r4oIwC9oh4M17yJyBd2TOqzmyK60EwnbE5FXHSgc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 678f6ee5-eb36-4bdc-8e9f-08d74792e691
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 23:47:35.3449 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qX/ixD997sfRiKarNBU3ijrUY5uO5Rn5BPBQLABtdLRxtBa7Lno4sjTKSQ5J05ChuO5KNz0CZ6+NxfLRcySK2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5247
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_164741_777313_B7F8D6D1 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 2019-10-03 12:24 AM, Matthias Kaehlcke wrote:
> On Wed, Oct 02, 2019 at 10:25:05PM +0300, Leonard Crestez wrote:
>> Notifier callbacks shouldn't return negative errno but one of the
>> NOTIFY_OK/DONE/BAD values.
>>
>> The OPP core will ignore return values from notifiers but returning a
>> value that matches NOTIFY_STOP_MASK will stop the notification chain.
>>
>> Fix by always returning NOTIFY_OK.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/devfreq/devfreq.c | 24 +++++++++++++-----------
>>   1 file changed, 13 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>> index 7dc899da1172..32bbf6e80380 100644
>> --- a/drivers/devfreq/devfreq.c
>> +++ b/drivers/devfreq/devfreq.c
>> @@ -548,30 +548,32 @@ EXPORT_SYMBOL(devfreq_interval_update);
>>    */
>>   static int devfreq_notifier_call(struct notifier_block *nb, unsigned long type,
>>   				 void *devp)
>>   {
>>   	struct devfreq *devfreq = container_of(nb, struct devfreq, nb);
>> -	int ret;
>> +	int err = -EINVAL;
>>   
>>   	mutex_lock(&devfreq->lock);
>>   
>>   	devfreq->scaling_min_freq = find_available_min_freq(devfreq);
>> -	if (!devfreq->scaling_min_freq) {
>> -		mutex_unlock(&devfreq->lock);
>> -		return -EINVAL;
>> -	}
>> +	if (!devfreq->scaling_min_freq)
>> +		goto out;
>>   
>>   	devfreq->scaling_max_freq = find_available_max_freq(devfreq);
>> -	if (!devfreq->scaling_max_freq) {
>> -		mutex_unlock(&devfreq->lock);
>> -		return -EINVAL;
>> -	}
>> +	if (!devfreq->scaling_max_freq)
>> +		goto out;
>> +
>> +	err = update_devfreq(devfreq);
>>   
>> -	ret = update_devfreq(devfreq);
>> +out:
>>   	mutex_unlock(&devfreq->lock);
>> +	if (err)
>> +		dev_err(devfreq->dev.parent,
>> +			"failed to update frequency from OPP notifier (%d)\n",
>> +			err);
> 
> In case an OPP freq can't be found the log doesn't provide clues
> about what the problem could be. I couldn't find a clearly superior
> errno value though, so I guess this is as good as it gets, unless
> you want to have a dedicated message for those errors. Should be a
> rare exception anyway, and previously there was no log at all.

I guess it could happen if all OPPs are disabled after probe?

The devfreq core will attempt to switch away if the current OPP get 
disabled but if nothing else is available then printing an error and 
sticking to the current frequency seems reasonable.

It would indicate a bug somewhere else.

> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
