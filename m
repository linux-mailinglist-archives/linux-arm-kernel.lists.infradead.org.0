Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE09B80FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 20:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=REkbtpvbDB2ZThhlflo6747zspqbz9ZQkRbN10Kcktw=; b=H4OBaKTjeC2rgt
	a9ytSwcWiFYduMFYIzr06Z3hlm2qQ9nuVDF2AlMg5mMQqyDp/LgVwpYEvEzHYqR8kWUsMyw/Syhn4
	ZLOeO09NQfrbluG5KIbCNp/YhvU+YgMljbmf8pekp/AMHG6Br83IdcETn1nAt9gA/hAvqKB6rqK/a
	opwegd8vAYFA+Y9oV9bX7NJxKdpKAWcHrpm3livj4aiBqqZGSMa5CXqa30LxA+5b5WXyJDfzZ754O
	6Ex2Bgv8pFP1LLZ2kOmwJuCzx766bgGkpPnj+CjUgN4blkDWX0ssMOQ2SMKS2orHv2LELCFCjRKRV
	jH21Tmz77oqE28fDZ9Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB1OL-000123-13; Thu, 19 Sep 2019 18:42:57 +0000
Received: from mail-eopbgr70054.outbound.protection.outlook.com ([40.107.7.54]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB1Nr-00011g-Cx
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 18:42:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W3r95Iaxd5XILeai9fruN5fngN2NQ+ZYMhw+y2SYx28TnnroJn0U2Af2dojfJ4laKIQ41jLvzGfZZcgo+cyd0r4LqLBuqgUL0Z/deOrxAuzF27bSTkzoCj4UMkFZh9AZhNcls4AZXfCsEH6Ed8aj0XQ60ZSybTwuFF+akfY8q+cU4j+Gz9qTg5+tpvQSddCqYu41NHe2zj6VD5VH2U6BwUmXhWONdb2cpaNDOQCfaIyGXMOLHXe5D1q54zga7YT6tUGmZ7npAvKF+yHsfqJqhKNVZJDvUMl8rs7TNlVtBz77tkC3vnutmUZWT57JBL6G5JL2Di1khBAeuk0HcT7RWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+3oHqafuJr6+oSXQpBEfxJ2Jer5JbL1zvC8vNVb7BlA=;
 b=MwyNrvmuze+RALLH+3xTd/4sT7QJhE5dYzcX/Sv14knlgM3fPK/efk3ME2moVlXuDE0hzNUmw8+Nv53CgIUJhyvmKexU0nIGG2Gz257p6zrILZqQjYQ14j0fGrhlAjeb/dhvw/Oxnx9At4+RPY0dAhJIb/JBIwQd7kSkyl1uNMDNIeCWwozLAzb3iWq2aR4K5MLsc+cmLjfSfz6hnOtq+iyb7prCnClwtr4ZXE7FO8Ccath24kZaPLo2UQ13Lej5I2KAUGEAVZSZ0envVGiwxxgGLOJtdzGgs55P1Nc78TwPZO1HVZU5nDS7M/EXiyiS3mwSg4GL4C5ypg27W25uDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+3oHqafuJr6+oSXQpBEfxJ2Jer5JbL1zvC8vNVb7BlA=;
 b=iJdpAzOnwNsEbUcQf+3D0RMWFud+zG4M83ZPyHCAvEIn53JXouD7VZgwPo09sEQ9NoIpNes4afPhtk25lyLKYp7xPHdn694N6ICObFRNPDI2+tntocuMDo4flXFzQrNJkax0WpAhjMLYvCcbMrYgtJ4SiDhR84G72qvmd4j9sqA=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6814.eurprd04.prod.outlook.com (52.133.247.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 19 Sep 2019 18:42:22 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.009; Thu, 19 Sep 2019
 18:42:22 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matthias Kaehlcke <mka@chromium.org>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 1/8] PM / devfreq: Lock devfreq in trans_stat_show
Thread-Topic: [PATCH 1/8] PM / devfreq: Lock devfreq in trans_stat_show
Thread-Index: AQHVbmgLE1zUOGCnkUS9rw+ShZOINw==
Date: Thu, 19 Sep 2019 18:42:22 +0000
Message-ID: <VI1PR04MB7023CAC70C08BF3963301A67EE890@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <7d8f4d5c608d45ba19cdd52068fe6ffe30de67c1.1568764439.git.leonard.crestez@nxp.com>
 <20190918212836.GN133864@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b591bb06-c9ba-4674-7167-08d73d311bcb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6814; 
x-ms-traffictypediagnostic: VI1PR04MB6814:|VI1PR04MB6814:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB68147B1950622EFACF53DF37EE890@VI1PR04MB6814.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(136003)(366004)(346002)(199004)(189003)(66446008)(66556008)(81166006)(55016002)(5660300002)(8676002)(81156014)(8936002)(52536014)(25786009)(486006)(9686003)(4326008)(71200400001)(71190400001)(44832011)(66946007)(66476007)(76116006)(33656002)(91956017)(6246003)(2906002)(478600001)(3846002)(6116002)(446003)(64756008)(476003)(66066001)(186003)(26005)(110136005)(14444005)(256004)(76176011)(7696005)(54906003)(7416002)(229853002)(99286004)(316002)(74316002)(6506007)(305945005)(7736002)(53546011)(6436002)(14454004)(86362001)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6814;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Jb4B1PFTzzJXenHC3jU/aQfHzWdxD00r6St50R7o1hfTSDpxIFeWCicE2F7SBvXRxnrAcoJ9e5RsQuV/Y9k8BTYTwFJt1MXsOrjU74I8/z8QAuwF1L/6fot4US48Hr8t5tjpaYF1vzpzGl4bRdK+0XlcfPjbiK3M5pwtn6iCNF9lqdM16Ve4LreN743DJXAhI37vrzFaQtgJMsdk2lbm2sENmg1c8DpeiAqlM149BPypCRK4Z0+H2dU8FzJGPJHLSsKz2lc3f5yYzWMdAVFNZLvPBXrfAonMZ/fQs8q9pLH5feCeo389AMg1JIc6c09i4NyuK9iY1USGomS5JE16JmLM9IyNg/pelV6ngPqPPQ9cnJ3iJr6HnfEx5CWahw63/wLRjtrkuMqfQjxWevO5KGg6c9bR3t4q44bX1Cy/gYQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b591bb06-c9ba-4674-7167-08d73d311bcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 18:42:22.3702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /L+qoeWdlUJGLXm8zoEpbZNGAy1KMBH+wnd/A0xdkXosbWalfDcMGIu9IpAdOyRq+gJdXnv+OMiHyxTBRGJZgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6814
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_114227_526884_ACDA21BD 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On 19.09.2019 00:28, Matthias Kaehlcke wrote:
> Hi Leonard,
> 
> this series doesn't indicate the version, from the change history in
> the cover letter I suppose it is v5.

Sorry about that, I forgot --subject-prefix. It is indeed v5

> On Wed, Sep 18, 2019 at 03:18:20AM +0300, Leonard Crestez wrote:
>> There is no locking in this sysfs show function so stats printing can
>> race with a devfreq_update_status called as part of freq switching or
>> with initialization.
>>
>> Also add an assert in devfreq_update_status to make it clear that lock
>> must be held by caller.
> 
> This and some other patches look like generic improvements and not
> directly related to the series "PM / devfreq: Add dev_pm_qos
> support". If there are no dependencies I think it is usually better to
> send the improvements separately, it keeps the series more focussed
> and might reduce version churn. Just my POV though ;-)

The locking cleanups are required in order to initialize pm_qos request 
and notifiers without introducing lockdep warnings.

pm_qos calls notifiers under dev_pm_qos_mtx and those notifiers needs to 
take &devfreq->lock. This means initializing pm_qos notifiers and 
requests must be done outside &devfreq->lock which needs some cleanups 
in devfreq_add_device.

This particular patch is a more loosely related bugfix. Devfreq 
maintainers: would it help to post it separately?

>> @@ -1415,15 +1416,20 @@ static ssize_t trans_stat_show(struct device *dev,
>>   	struct devfreq *devfreq = to_devfreq(dev);
>>   	ssize_t len;
>>   	int i, j;
>>   	unsigned int max_state = devfreq->profile->max_state;
>>   
>> +	mutex_lock(&devfreq->lock);
>>   	if (!devfreq->stop_polling &&
>> -			devfreq_update_status(devfreq, devfreq->previous_freq))
>> -		return 0;
>> -	if (max_state == 0)
>> -		return sprintf(buf, "Not Supported.\n");
>> +			devfreq_update_status(devfreq, devfreq->previous_freq)) {
>> +		len = 0;
> 
> you could assign 'len' in the declaration instead, but it's just
> another option, it'ss fine as is
>> +		goto out;
>> +	}
>> +	if (max_state == 0) {
>> +		len = sprintf(buf, "Not Supported.\n");
>> +		goto out;
>> +	}
> 
> This leaves the general structure of the code as is, which is great,
> but since you are already touching this part you can consider to
> improve it: 'max_state' is constant after device creation, hence the
> check could be done at the beginning, which IMO would be clearer, it
> could also save an unnecessary devfreq_update_status() call and it
> wouldn't be necessary to hold the lock (one goto less).

Now that I look at this more closely &devfreq->lock only really needs to 
be held during the stats update, it can be released during sprintf.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
