Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B735BD28B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 21:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=PQQlg1iOPXejVCT/+CTIUIkv3fAqOhtHbZoWiAwr+FU=; b=rhe+xjdmrD3k20
	JBXId28vLA7/u3sUNEK3PXPSw34crMPD/IWjhRYyBTaYlQLnolRrjY2xafLRcYD1wZm5YcKNx8vQG
	TUEZbZL47hmjn7/fX/ctaL2R1HP8nGSVPud7F1R//OCYLkr/KmB1Avbmql13V+8r/dkqoUGQkEhB/
	20wLtQBZAtAbQiFDEROtazJNxCxCWfXmZ8UMiZFapy5sSXAJn63Ap87MAw12K+IkshRfrMO8FlGmU
	gnyxzFJj+onRaGmx/8nAdJ35gVWtaOT3WYIkvlItRT/nAsGf+dvDIcKt4engE701dTW6qNuKHLjWu
	uSgRIUq/RlY+x1C2Nixw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCqOS-0000IS-7h; Tue, 24 Sep 2019 19:22:36 +0000
Received: from mail-eopbgr130041.outbound.protection.outlook.com
 ([40.107.13.41] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCqOF-0000I1-2J
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 19:22:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7Lyhio7itcPQHTCUM7upXJ27RBvQjmvGYyudVBMBfogSqdHr1IactZ8WPcz8FClckcpZCl8Bw+8czwtltPf5x22+iJy7Leq2XDDASyw3yakm3GjUtxxrCss8+uv/BgRcsCXTWqdxTBpGNWHD44Sj3SeHCHuuVBNCuTZwKbx8DPDNkvaqfHUFQ1TDFCFff2ZAC+MvnbGXp2k9ajAYLiWFTauEGznSGjeYMpznCl9Kvu0sDnmWPXgtH34qUMTePLYRfl49Laa08iy1gAIoQX9Dl/AdNiIH/DrOeN35YDN9dTvdsbYJqQ1E8R1zW1boh/VcEmF9EjWi5qt5C3kBlcaSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFe5IDomClK8+CJYBVb0Rnq4NkKzwcemU+/vHURjxps=;
 b=JfDTL9vdioyEgkOUXhp8moGwLIrpjkeUFUK0hev0OHTzOk0yYEPHBj0MDnSx+zVhbFnZBj1T3PoXSLyexDlv1Tf3JzGG2+3aDb/73hkffDFQefXDyWzdIft4nm81CUeV456GGqdzmsAfKQLs8X3WXEib1w/g7/anXou8X5fdgwgHRBvt8YJbs4kM9UK5i74x4x0B6SG5ygAK0kABxAHuOzb0e3el9nUR24C/AVvRR+5HDy0VAJhFHivKWwc+f3+dAJsE0g6Mz5ggj4LbvYtd/9OjezUZuNEXrQ/WEHB5Iep4APrLmpKpkSbj4kIrTQ22LsQB1fCwxGDo4l1MmHgzaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFe5IDomClK8+CJYBVb0Rnq4NkKzwcemU+/vHURjxps=;
 b=nkij/jOLa1imk4wmukG4du8ng3+FXUzsOwR7q5gPxz22eSCrPpf6y2KXLtRY5ukK30MbFdq3B+tqJP/9C/hIgcuDlaf3W+r70nD444CxQ7TTaMBPq7yR+9fLRg8GwUXKgfxA2/ic9yDXsdJFge5OS+QHXRY4JhLEtLI4BYOR8SY=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5328.eurprd04.prod.outlook.com (20.177.52.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.23; Tue, 24 Sep 2019 19:22:14 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 19:22:13 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
Thread-Topic: [PATCH v8 5/6] PM / devfreq: Add PM QoS support
Thread-Index: AQHVcsB0h3rfWi61w06V80OWKl85wg==
Date: Tue, 24 Sep 2019 19:22:13 +0000
Message-ID: <VI1PR04MB7023034123415F86CC045CCDEE840@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <58fdd2c226a4e76a3d9427baab7dd5c23af842ab.1569319738.git.leonard.crestez@nxp.com>
 <20190924191124.GJ133864@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f21e0de-088f-495d-b91d-08d741248148
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5328; 
x-ms-traffictypediagnostic: VI1PR04MB5328:|VI1PR04MB5328:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5328916609067B94BA6567FFEE840@VI1PR04MB5328.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(366004)(376002)(396003)(189003)(199004)(7696005)(476003)(86362001)(446003)(7416002)(486006)(25786009)(44832011)(6246003)(256004)(14444005)(99286004)(186003)(8936002)(71200400001)(6916009)(53546011)(305945005)(26005)(6506007)(102836004)(71190400001)(6436002)(4326008)(33656002)(55016002)(74316002)(76176011)(66066001)(6116002)(5660300002)(76116006)(3846002)(81166006)(81156014)(9686003)(7736002)(8676002)(91956017)(66946007)(316002)(66476007)(66556008)(66446008)(64756008)(54906003)(478600001)(14454004)(2906002)(52536014)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5328;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: n0SERXjP+/wo/sPxoB49/eWKo8Y0NLhEJkcV0w/ZBtunPVh3qscfJ7S54RB3PrUnHT1AObW18/GwEwhzyOqbOd5xBBKRn5NS2giDub1mmIALQ9Mg99DoEFTuozEdZoKRtMdM3nED6PHJWfA6dBg4VICY+sRo9QL11K9+XV3UDRiJI/2y7ft6Odf1NzANeHBNaiG3W3lDHQl7Vty0Qompog8de+J1nJ2X3KfYEF+Gn2M6c9OrlXjN22yqzqvPZn3BABXBig6/BnoF7iINyWjYGpS61Ia/8HbDjq1wCcaKXG+OYiyk1NpyiBLn0puGkYrXO4SIUF/GENI/xMFV7sWHqsb4CqU6IGdBFPyGOBjf0p9vkgbKlG46h7kQGzt0JoPJX+waqhY6GXGAaJvjA1EKKEhVfvpFsnl2y4N/CSkUDJI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f21e0de-088f-495d-b91d-08d741248148
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 19:22:13.8758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +PPUscPaaGnL1ygGTyJRPEFKcUCEWp+57pN7MmAcexXlJAV5VLmG5YQIISMLvYKXT9lowYoMnApbUXTgCPODbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5328
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_122223_114640_11A4CEAD 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 24.09.2019 22:11, Matthias Kaehlcke wrote:
> On Tue, Sep 24, 2019 at 01:11:29PM +0300, Leonard Crestez wrote:
>> Register notifiers with the PM QoS framework in order to respond to
>> requests for DEV_PM_QOS_MIN_FREQUENCY and DEV_PM_QOS_MAX_FREQUENCY.
>>
>> No notifiers are added by this patch but PM QoS constraints can be
>> imposed externally (for example from other devices).
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
>> ---
>>   drivers/devfreq/devfreq.c | 75 +++++++++++++++++++++++++++++++++++++++
>>   include/linux/devfreq.h   |  5 +++
>>   2 files changed, 80 insertions(+)
>>
>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>> index eee403e70c84..784f3e40536a 100644
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
>> +	unsigned long qos_min_freq, qos_max_freq;
>>   
>>   	lockdep_assert_held(&devfreq->lock);
>>   
>>   	/*
>>   	 * Init min/max frequency from freq table.
>> @@ -125,10 +129,18 @@ static void get_freq_range(struct devfreq *devfreq,
>>   	} else {
>>   		*min_freq = freq_table[devfreq->profile->max_state - 1];
>>   		*max_freq = freq_table[0];
>>   	}
>>   
>> +	/* constraints from PM QoS */
>> +	qos_min_freq = dev_pm_qos_read_value(devfreq->dev.parent,
>> +					     DEV_PM_QOS_MIN_FREQUENCY);
>> +	qos_max_freq = dev_pm_qos_read_value(devfreq->dev.parent,
>> +					     DEV_PM_QOS_MIN_FREQUENCY); >
> This needs to be DEV_PM_QOS_MAX_FREQUENCY. I missed this in the earlier
> reviews, but stumbled across it when testing.
> 
> !Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

I broke it in v8 while processing comments. Thanks for catching it.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
