Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B075CF9070
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=foNQz7dW/+sub9ISLRJmAAD3v1KnUP5tC9S1AZACws0=; b=u/pRXnWvQTn0xM
	U8zJd8krn3wHXLuJmODu1NMx+B9VBNiIarscyp/gpyjQmHnEyCPB2tE1MnbT0SjlqXZc5H6DfGaPz
	Ch+x+EzhdiD36cqqG8TOhhGL5uLRd3xi80HzSgViAs43oaDss20e/WrdfU9JsrJ1BVQAS2C4xtGnK
	l2sakR0lXXnm3r1zWmIn6YiYJ3TBu+CR6IW1TwemmG+uXodKAhgjrMrJKHkNppOWHVqcwgmMxxC8Q
	ZrAL2lbnF0q/J3pLkl/t4CtH1WpbfOH50DMKmKk7uC2iv6QjMTPyOppKD1TSV9UX0CXhUZ8s9pkLp
	1Cw6Kn2bCpM0KXq3GTqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUW5F-0000IN-4i; Tue, 12 Nov 2019 13:19:49 +0000
Received: from mail-eopbgr60087.outbound.protection.outlook.com ([40.107.6.87]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUW2x-0006pL-D2
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:17:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IwE//niPuwhMCffUnuBJCbVEbed/cf8dtd842Y2NOl5m77XF1mHEgubFDWkXy+ZAXzYJXm6F/9HlZpuhAGB2550OBajFixnhLtTFnm9KZNNKjuOktn1xe9MelEk9G/HmO/+bBXsr64zqqkCEpVyQ10d6LetHSqVs/0gZU2AVoIP+N2F43NMGfip2eVVKVcZJ3j6esyvqTsW4PN9vxaMi3QuQ4t+Nzfubg6hCNQwfoMfGgwYxYhtCJyxYx+6mPrGWsSaQg/uTWCnIgQ+K7+cCCGMEe967qxpYaWN8rnPgy+CTj0U/feTCY30Ya5ymR8tx6/zMRMVp7ycFit9IsAOPxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AtIVyvNbbQqlo2slNTjT0AC2YJBvBMOR+W5TAxmD/Fw=;
 b=jJSzDyKhZ/N/D93nqLX5Bq28TPGe6e/CpjcA/LGQa+oDREHriXoolfUTg6OtQgkSgYmZcKAlmTWICI8zAzWphiisZA3IprmOi87gC6X+IlDhO6ka1DI6kr70KUHt4dkNNaXtDF8TAdDrbqWSjNA8h5Mdu7fL2iVeJlZ9FjgPB5kQ5KmWDdDh7/eQ26a8F/eM+eMLrmuJajEGjXaA/52gWPKJUTDZH4FNcmFBpp+rYZlX0ws1t/818H9TlrHh8c4rJ77fBv0q2RKDGG8V/3ot+0g6hGLw8pASv8faStPL3NonvGx6K59XXU4Zj0W20Eneb1hNV+E1zjc9YIhqALZ7Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AtIVyvNbbQqlo2slNTjT0AC2YJBvBMOR+W5TAxmD/Fw=;
 b=k/FEzm+bl3nsjstWJ2AcsBRBtbT698rvc4cJuSCOIJw9wnZ1YnUWoeBfFvzJdrg4VZf7AJYw7DhPnG/l7ZnvC7DusB1quzoNTCioQfBY3QUu1rRwCVJEgvAq2ZPGpSG2diaVJ4bLCIpNisa53AlNui5wzyF5SWvI0mImdGzlUm8=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6030.eurprd04.prod.outlook.com (20.179.26.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Tue, 12 Nov 2019 13:17:23 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 13:17:23 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Rob
 Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v4 5/6] PM / devfreq: imx8m-ddrc: Measure bandwidth with
 perf
Thread-Topic: [PATCH v4 5/6] PM / devfreq: imx8m-ddrc: Measure bandwidth with
 perf
Thread-Index: AQHVloV+zGA9oz88V0ShgPz1YTDKzA==
Date: Tue, 12 Nov 2019 13:17:22 +0000
Message-ID: <VI1PR04MB702331A22024C6EDB57AC840EE770@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573252696.git.leonard.crestez@nxp.com>
 <CGME20191108224023epcas1p43cb02d83f5d9b8d8774405dcea03530f@epcas1p4.samsung.com>
 <a25094eac4c0f740e0e33c04af699b39a4226a08.1573252696.git.leonard.crestez@nxp.com>
 <59f37128-45e8-763d-dd48-32baa864d2a6@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e97d41a8-c9e9-4d35-ea7a-08d76772a795
x-ms-traffictypediagnostic: VI1PR04MB6030:|VI1PR04MB6030:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB60305EE46ECF31D685153AF6EE770@VI1PR04MB6030.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(136003)(396003)(346002)(199004)(189003)(51444003)(52314003)(66446008)(33656002)(478600001)(3846002)(6116002)(25786009)(14454004)(316002)(76176011)(6506007)(66556008)(64756008)(53546011)(66476007)(66946007)(7696005)(44832011)(486006)(446003)(229853002)(476003)(74316002)(26005)(6436002)(102836004)(186003)(7736002)(86362001)(8936002)(256004)(14444005)(5024004)(2906002)(91956017)(66066001)(7416002)(8676002)(81166006)(81156014)(76116006)(5660300002)(54906003)(110136005)(9686003)(99286004)(305945005)(52536014)(6246003)(71190400001)(71200400001)(55016002)(4326008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6030;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E7qV8pgzwtsGfkiIZC3Yqo5N/Yf70sDbPYwvbjwZnCWBS9H69/d2you39pXdqz9AR3g0d8cJOFGAr/bMt5NpltZoyVsOkjUi78NweqCc2aE/nJFWvOZbNl1WjpPBpr+Z/Yr/P8GYqm+Ik8ZOk/TM3sSTP1bgRKhE9vBegxvG2vIzaU3x0fwenr+P95m7i41nNFajE9mkpYA0bIAuKQZ6scJtytTh9cAPTY+9SWiScdP2MfHt5SHgO/1COThYfvmjBgL8IzhF3PJaqfsDSZ5hc2Pm+o0oGi2SBou6fnWkcDuBDDbhchFN7ga5KugcEJktwP5PLOQ1OsC7p7POmiRrQB6WAtmrs/1lmZ5mLdW2AgszYWeRnYJVIUCZQcOU0pHVPQOI6O9qhSroAeFwKZJA/NjL6k5W9SCfDdY81/3R2os6Q3vW1gfzxFEAwzirIPEJ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e97d41a8-c9e9-4d35-ea7a-08d76772a795
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 13:17:22.9835 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AKRZjR8zAoOT6Nwb7EonaVbZau059DTJMtyb8VKIWSySU9frZC1uBEfRwvcpx0mXGfw5sw/NzWNyOcgwssabtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_051727_744513_43CF0D77 
X-CRM114-Status: GOOD (  24.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Matthias Kaehlcke <mka@chromium.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11.11.2019 07:13, Chanwoo Choi wrote:
> Hi Leonard,
> 
> On 11/9/19 7:39 AM, Leonard Crestez wrote:
>> The imx8m ddrc has a performance monitoring block attached which can
>> be used to measure bandwidth usage and automatically adjust frequency.
>>
>> There is already a perf driver for that block so instead of implementing
>> a devfreq events driver use the in-kernel perf API to implement
>> get_dev_status directly.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/devfreq/imx8m-ddrc.c | 153 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 153 insertions(+)
>>
>> diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
>> index 51903fee21a7..6372191f72d7 100644
>> --- a/drivers/devfreq/imx8m-ddrc.c
>> +++ b/drivers/devfreq/imx8m-ddrc.c
>> @@ -11,10 +11,13 @@
>>   #include <linux/pm_opp.h>
>>   #include <linux/clk.h>
>>   #include <linux/clk-provider.h>
>>   #include <linux/arm-smccc.h>
>>   
>> +#include <asm/perf_event.h>
>> +#include <linux/perf_event.h>
>> +
>>   #define IMX_SIP_DDR_DVFS			0xc2000004
>>   
>>   /* Values starting from 0 switch to specific frequency */
>>   #define IMX_SIP_DDR_FREQ_SET_HIGH		0x00
>>   
>> @@ -78,10 +81,22 @@ struct imx8m_ddrc {
>>   	struct clk *dram_alt;
>>   	struct clk *dram_apb;
>>   
>>   	int freq_count;
>>   	struct imx8m_ddrc_freq freq_table[IMX8M_DDRC_MAX_FREQ_COUNT];
>> +
>> +	/* For measuring load with perf events: */
>> +	struct platform_device *pmu_pdev;
>> +	struct pmu *pmu;
>> +
>> +	struct perf_event_attr rd_event_attr;
>> +	struct perf_event_attr wr_event_attr;
>> +	struct perf_event *rd_event;
>> +	struct perf_event *wr_event;
>> +
>> +	u64 last_rd_val, last_rd_ena, last_rd_run;
>> +	u64 last_wr_val, last_wr_ena, last_wr_run;
>>   };
>>   
>>   static struct imx8m_ddrc_freq *imx8m_ddrc_find_freq(struct imx8m_ddrc *priv,
>>   						    unsigned long rate)
>>   {
>> @@ -245,10 +260,131 @@ static int imx8m_ddrc_get_cur_freq(struct device *dev, unsigned long *freq)
>>   	*freq = clk_get_rate(priv->dram_core);
>>   
>>   	return 0;
>>   }
>>   
>> +static int imx8m_ddrc_get_dev_status(struct device *dev,
>> +				     struct devfreq_dev_status *stat)
>> +{
>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>> +
>> +	stat->current_frequency = clk_get_rate(priv->dram_core);
>> +
>> +	if (priv->rd_event && priv->wr_event) {
>> +		u64 rd_delta, rd_val, rd_ena, rd_run;
>> +		u64 wr_delta, wr_val, wr_ena, wr_run;
>> +
>> +		rd_val = perf_event_read_value(priv->rd_event,
>> +					       &rd_ena, &rd_run);
>> +		wr_val = perf_event_read_value(priv->wr_event,
>> +					       &wr_ena, &wr_run);
>> +
>> +		rd_delta = (rd_val - priv->last_rd_val) *
>> +			   (rd_ena - priv->last_rd_ena);
>> +		do_div(rd_delta, rd_run - priv->last_rd_run);
>> +		priv->last_rd_val = rd_val;
>> +		priv->last_rd_ena = rd_ena;
>> +		priv->last_rd_run = rd_run;
>> +
>> +		wr_delta = (wr_val - priv->last_wr_val) *
>> +			   (wr_ena - priv->last_wr_ena);
>> +		do_div(wr_delta, wr_run - priv->last_wr_run);
>> +		priv->last_wr_val = wr_val;
>> +		priv->last_wr_ena = wr_ena;
>> +		priv->last_wr_run = wr_run;
>> +
>> +		/* magic numbers, possibly wrong */
>> +		stat->busy_time = 4 * (rd_delta + wr_delta);
>> +		stat->total_time = stat->current_frequency;
>> +	} else {
>> +		stat->busy_time = 0;
>> +		stat->total_time = 0;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int imx8m_ddrc_perf_disable(struct imx8m_ddrc *priv)
>> +{
>> +	/* release and set to NULL */
>> +	if (!IS_ERR_OR_NULL(priv->rd_event))
>> +		perf_event_release_kernel(priv->rd_event);
>> +	if (!IS_ERR_OR_NULL(priv->wr_event))
>> +		perf_event_release_kernel(priv->wr_event);
>> +	priv->rd_event = NULL;
>> +	priv->wr_event = NULL;
>> +
>> +	return 0;
>> +}
>> +
>> +static int imx8m_ddrc_perf_enable(struct imx8m_ddrc *priv)
> 
> Actually, this function have to call the just function for enabling
> the bandwidth monitoring instead of writing the detailed something.
> It looks like that you move the part of the different device driver into here.

This is the code for enabling bandwith monitoring: it creates perf 
counters using in-kernel API. The perf api doesn't seem to expose 
anything else to enable/disable the counter after creation and honestly 
just create/destroy seems fine.

As far as I can tell bandwidth monitoring in devfreq is always enabled 
on probe anyway, no matter which governor is in use. It would be nice if 
devfreq drivers could receive a callback and dynamically acquire/release 
monitoring resources only when the ondemand governor is in used.

Until then this driver will permanently allocate 2 (out of 3) counters 
in ddr pmu hardware.

>> +{
>> +	int ret;
>> +
>> +	priv->rd_event_attr.size = sizeof(priv->rd_event_attr);
>> +	priv->rd_event_attr.type = priv->pmu->type;
>> +	priv->rd_event_attr.config = 0x2a;
>> +
>> +	priv->rd_event = perf_event_create_kernel_counter(
>> +			&priv->rd_event_attr, 0, NULL, NULL, NULL);
>> +	if (IS_ERR(priv->rd_event)) {
>> +		ret = PTR_ERR(priv->rd_event);
>> +		goto err;
>> +	}
>> +
>> +	priv->wr_event_attr.size = sizeof(priv->wr_event_attr);
>> +	priv->wr_event_attr.type = priv->pmu->type;
>> +	priv->wr_event_attr.config = 0x2b;
>> +
>> +	priv->wr_event = perf_event_create_kernel_counter(
>> +			&priv->wr_event_attr, 0, NULL, NULL, NULL);
>> +	if (IS_ERR(priv->wr_event)) {
>> +		ret = PTR_ERR(priv->wr_event);
>> +		goto err;
>> +	}
>> +
>> +	return 0;
>> +
>> +err:
>> +	imx8m_ddrc_perf_disable(priv);
>> +	return ret;
>> +}
>> +
>> +static int imx8m_ddrc_init_events(struct device *dev,
>> +				  struct device_node *events_node)
> 
> ditto.
> 
>> +{
>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>> +	struct device_driver *driver;
>> +
>> +	/*
>> +	 * We need pmu->type for perf_event_attr but there is no API for
>> +	 * mapping device_node to pmu. Fetch private data for imx-ddr-pmu and
>> +	 * cast that to a struct pmu instead.
>> +	 */
>> +	priv->pmu_pdev = of_find_device_by_node(events_node);
>> +	if (!priv->pmu_pdev)
>> +		return -EPROBE_DEFER;
>> +	driver = priv->pmu_pdev->dev.driver;
>> +	if (!driver)
>> +		return -EPROBE_DEFER;
>> +	if (strcmp(driver->name, "imx-ddr-pmu")) {
>> +		dev_warn(dev, "devfreq-events node %pOF has unexpected driver %s\n",
>> +				events_node, driver->name);
>> +		return -ENODEV;
>> +	}
>> +
>> +	priv->pmu = platform_get_drvdata(priv->pmu_pdev);
> 
> It seems that you access the different device driver without
> any standard interface from some linux kernel subsystem.
> 
> For the communication or control between different device drivers,
> we have to use the standard interface instead of direct access or call.
> I think that it make it too tightly coupled driver between them.
> 
> So, I developed the devfreq-event subsystem for this reason
> in order to remove the non-standard direct access to other device driver.
> 
> Unfortunately, I can't agree this approach. I don't prefer to use
> the direct access of other device driver(imx-ddr-pmu). You need to
> use standard interface provided from subsystem. or You need to make
> the new device driver with devfreq-event subsystem.

This could be cleaned-up by adding a new API to "fetch struct pmu* by 
struct device_node*" as available for many other subsystems. The perf 
api is otherwise standard/generic and has a few other in-kernel users.

The perf driver for DDR PMU is already functional and useful for 
profiling and reusing it seem very worthwhile. If you're suggesting I 
implemented an unrelated "devfreq-event" driver then how would it get 
probed? There's only one PMU node in DT.

I wouldn't mind to delay the monitoring part into a second series.

>> +	if (!priv->pmu) {
>> +		dev_err(dev, "devfreq-events device missing private data\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	dev_dbg(dev, "events from pmu %s\n", priv->pmu->name);
>> +
>> +	return imx8m_ddrc_perf_enable(priv);
>> +}
>> +
>>   static int imx8m_ddrc_init_freq_info(struct device *dev)
>>   {
>>   	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>>   	struct arm_smccc_res res;
>>   	int index;
>> @@ -328,17 +464,23 @@ static int imx8m_ddrc_check_opps(struct device *dev)
>>   	return 0;
>>   }
>>   
>>   static void imx8m_ddrc_exit(struct device *dev)
>>   {
>> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>> +
>> +	imx8m_ddrc_perf_disable(priv);
>> +	platform_device_put(priv->pmu_pdev);
>> +
>>   	dev_pm_opp_of_remove_table(dev);
>>   }
>>   
>>   static int imx8m_ddrc_probe(struct platform_device *pdev)
>>   {
>>   	struct device *dev = &pdev->dev;
>>   	struct imx8m_ddrc *priv;
>> +	struct device_node *events_node;
>>   	const char *gov = DEVFREQ_GOV_USERSPACE;
>>   	int ret;
>>   
>>   	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>>   	if (!priv)
>> @@ -350,10 +492,19 @@ static int imx8m_ddrc_probe(struct platform_device *pdev)
>>   	if (ret) {
>>   		dev_err(dev, "failed to init firmware freq info: %d\n", ret);
>>   		return ret;
>>   	}
>>   
>> +	events_node = of_parse_phandle(dev->of_node, "devfreq-events", 0);
>> +	if (events_node) {
>> +		ret = imx8m_ddrc_init_events(dev, events_node);
>> +		of_node_put(events_node);
>> +		if (ret)
>> +			goto err;
>> +		gov = DEVFREQ_GOV_SIMPLE_ONDEMAND;
>> +	}
>> +
>>   	priv->dram_core = devm_clk_get(dev, "core");
>>   	priv->dram_pll = devm_clk_get(dev, "pll");
>>   	priv->dram_alt = devm_clk_get(dev, "alt");
>>   	priv->dram_apb = devm_clk_get(dev, "apb");
>>   	if (IS_ERR(priv->dram_core) ||
>> @@ -390,10 +541,12 @@ static int imx8m_ddrc_probe(struct platform_device *pdev)
>>   	}
>>   
>>   	return 0;
>>   
>>   err:
>> +	imx8m_ddrc_perf_disable(priv);
>> +	platform_device_put(priv->pmu_pdev);
>>   	dev_pm_opp_of_remove_table(dev);
>>   	return ret;
>>   }
>>   
>>   static const struct of_device_id imx8m_ddrc_of_match[] = {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
