Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57044113F9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 11:45:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=sm0G7OH6qTP+uJtQ7P07rkjQtz5iGJny4tHp3VQ5B6w=; b=TQgkEkbuHAY7Aj
	6/V3Euft1lsQyGh9QQ4cErCi0dnaPxesFfxzIf5Ja+gk2ssM0alMDCPrJZACwFfTcHc7xucqVUL3z
	hrzjS18FTjbRvTc6BiKljsFf3q4gxPuWBYvfkq6L+l7/s875874kPvqdrawxKp/GqZLv14FiKg734
	tUoFJHNHdSzAL/hpdOBqluuJ9yACz2D9DFKEZxZv0eaIUf2OcbSmqdpOJvOZCVah9Oy8B6G+9UlEM
	P+aDO8Gn9Ecup1/Wephijdq3V8jakmY/j6ohCfZlGHyxZ7nk+GQU14D0RWD8M4hRKpSpFpzMRx3qx
	MvD3rOrC1Rjyq1D0Cfcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icodE-0001LL-0j; Thu, 05 Dec 2019 10:45:12 +0000
Received: from mail-eopbgr80074.outbound.protection.outlook.com ([40.107.8.74]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icocv-0001JS-GM
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 10:44:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lV2UEgtDonKdPZ9qcK9HDo6/S7dgMHXiNmWzlYNVsRY+8qYygKOri5huEiQRbb0jVl+8WDiEQ1KINGMTAhHXPtgiUwla8iLwf48awn0jRO36wOcZXdWAMtAOlqco3EYILZBteJ7jDJLEBxZj9YjgIIfx+jfZZHle6fJGP9OcbI1qvEtdldqRux587kI8myKk77nyGAxL+g8Jws638lFWzkZVDFLoYS+qD5AGUZ2FJfqd9MUqBiniFDvjJd7wApPdaC5UuyyVFZpnhno+z5FM6L4s38PLGtUxO2hLYODiIJB15gagZ8E1pYUxoQqXcbL0Lc17nCkLwxzuC69teUKFVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2uQEZLJvLjeaUfXUCpfoZzFOzk8Tq7nlBZN6oWqYezk=;
 b=XagqdnfFOCb5y8j5ja4weKG1kC+IzzmCBqzbJwtyMmE6Blj04M84edyUBCc7UigtPgpj4hsMdfvOBgn08x9ta86GA1vvQChCAT16mTVbXDxZYesuQjkUOV2AZXBu/+3a05r45A+ni/8bFtCCMX7EMVBwl6Hrp1O5AHXMP+zlXv6dG/EjUPWqvct43G0xYerMXWd+1/fLJgnq19/VT/kmhtLuh1g/Xvy3q4DD8jEsps7cQKrTujscXvPseAfXETgq9dzQVSw05oKRCfTYD6MigMpPMjMDbyQz48zHI+vCGE9pPDG2cAF/p6pE95ijUF5pxG9M+UOCIaz9MutId7XKQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2uQEZLJvLjeaUfXUCpfoZzFOzk8Tq7nlBZN6oWqYezk=;
 b=XqZ9DzCrIzpkMdY2zAtINWRGmR3voWFshtfag3L+p7RigcuEKrOgwoEZurDxRweqzfUm6ss1guDKeycckIxAzM8Pdzx/mGWcpDJPRTUSRVO2jjLrUYLV6Sl05ee43tDSF06hyMGhTv23MpEQTAgvY7So+m7BqmFs6AywwOvh/iI=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4269.eurprd04.prod.outlook.com (52.133.15.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.21; Thu, 5 Dec 2019 10:44:50 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 10:44:50 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Chanwoo Choi
 <cw00.choi@samsung.com>, Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [PATCH v2 0/2] PM / devfreq: Add dev_pm_qos support
Thread-Topic: [PATCH v2 0/2] PM / devfreq: Add dev_pm_qos support
Thread-Index: AQHVq1ODGqHmiL8jsEu7/mnmp5h39g==
Date: Thu, 5 Dec 2019 10:44:50 +0000
Message-ID: <VI1PR04MB7023F70C008F07482DEFD9D5EE5C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1575540224.git.leonard.crestez@nxp.com>
 <CAJZ5v0jEuecAUS_BmxEWVdiMXEKh0ScxH1UW6udONxzqL+c3Vg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5b058152-2c0e-455b-7c4b-08d779702799
x-ms-traffictypediagnostic: VI1PR04MB4269:|VI1PR04MB4269:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB426913C2B4C84705DF4A6C5FEE5C0@VI1PR04MB4269.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(136003)(376002)(346002)(199004)(189003)(66476007)(186003)(102836004)(55016002)(305945005)(5660300002)(9686003)(33656002)(966005)(25786009)(53546011)(76176011)(6506007)(44832011)(71200400001)(26005)(2906002)(52536014)(478600001)(7696005)(45080400002)(71190400001)(4326008)(91956017)(64756008)(99286004)(76116006)(66946007)(110136005)(86362001)(74316002)(7416002)(14454004)(8936002)(66446008)(316002)(81166006)(14444005)(8676002)(81156014)(229853002)(54906003)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4269;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /aP63YP9xvsi3oxqow8ZA6PpzycuinKqf1nOfuIBgxmog7pRyoS00KbzsT2tivQmUPlzqxXzMFWo9DOkIicFzFCXIxPQpeQaBSGgNQWEnrp5mD8Dts2Yv6KRxDhJ2ebK5E/J5uHAHRV5Pf85DC7tXy8BAWPUWQZEYVShwf7mk4mBNUiFmlOvtBt9h9dAqTsf3ZNTWv1scQ33TqorrPsbzXi6DOZYjfVP6oqwfGP+x68tJhiJ5S5rWXLmrHx12M5FkGTxqB+UTeb7FMxt0wB4zMb5fvROsdPSxQ9jmNONxW59hY6nLRI/rqT95+CC4PFA1oy9qXelQe46QEp9AWlOwlxS8073BMOT+hcQCbNRRsoXaEkT3ucHP/tDzK8be2KyzqvV74sdTJSKwaZJ0zsGDjjkYeAzfq0Raz2BEdMSYum1+uPJRec9MBB8hTwmhdJy8H6O9yc2cDbNHyxlwj6ePid+hl0XhcSrVu/XPJqz3TY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b058152-2c0e-455b-7c4b-08d779702799
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 10:44:50.2668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3aeEFi28hpqpcBULXnMr/aJLdyrVjC3bIctdmcYdXkGyYdu8jpwEO951xL7fuexffQ+uyhiCicxvk7l9zHSAZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4269
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_024453_544684_CB29A48F 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jacky Bai <ping.bai@nxp.com>, Linux PM <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-05 12:13 PM, Rafael J. Wysocki wrote:
> On Thu, Dec 5, 2019 at 11:05 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>>
>> Add dev_pm_qos notifiers to devfreq core in order to support frequency
>> limits via dev_pm_qos_add_request.
>>
>> Unlike the rest of devfreq the dev_pm_qos frequency is measured in kHz,
>> this is consistent with current dev_pm_qos usage for cpufreq and
>> allows frequencies above 2Ghz (pm_qos expresses limits as s32).
>>
>> Like with cpufreq the handling of min_freq/max_freq is moved to the
>> dev_pm_qos mechanism. Constraints from userspace are no longer clamped on
>> store, instead all values can be written and we only check against OPPs in a
>> new devfreq_get_freq_range function. This is consistent with the design of
>> dev_pm_qos.
>>
>> Notifiers from pm_qos are executed under a single global dev_pm_qos_mtx and
>> need to take devfreq->lock, this means that calls into dev_pm_qos while holding
>> devfreq->lock are not allowed (lockdep warns about possible deadlocks).
>>
>> Fix this by only adding the qos request and notifiers after devfreq->lock is
>> released inside devfreq_add_device. In theory this means sysfs writes
>> are possible before the min/max requests are initialized so we guard
>> against that explictly. The dev_pm_qos_update_request function would
>> otherwise print a big WARN splat.
>>
>> This series depends on recently accepted series restoring
>> DEV_PM_QOS_MIN/MAX_FREQUENCY inside the pm core:
>>
>>          https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11262633%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7C265c079a936b4c2a9c6608d7796bbc16%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637111375932506745&amp;sdata=uI0if7aNnedxEsMlNQ4sCDOElVBxCp%2B%2BVGaeZC0DaMk%3D&amp;reserved=0
>>
>> It would be great for this to get into 5.5-rc1
> 
> Not at this point.  The earliest realistic target can be -rc2.
> 
> Does this still depend on anything which has not been included into
> the Linus' tree to date?

This series depends on DEV_PM_QOS_MIN/MAX_FREQUENCY and that's already 
in. It also depends on a few other patches from devfreq-next:

https://git.kernel.org/pub/scm/linux/kernel/git/chanwoo/linux.git/commit/?h=devfreq-next&id=1d81785fd070088c952fd9f0d8cb4c47c192122b
https://git.kernel.org/pub/scm/linux/kernel/git/chanwoo/linux.git/commit/?h=devfreq-next&id=a2b3d24b75036c44a5509e9ec3a5c14672e98c73
https://git.kernel.org/pub/scm/linux/kernel/git/chanwoo/linux.git/commit/?h=devfreq-next&id=0f68bfe7d58dfb49972f93768f9fdd97ce205844

It doesn't currently apply on torvalds/master

There are some interconnect patches which depend on this for proper 
functionality but we can figure something out with icc maintainer.

* https://patchwork.kernel.org/cover/11244421/
* https://patchwork.kernel.org/patch/11153917/

I personally always test with linux-next so RC schedules don't affect me 
very much.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
