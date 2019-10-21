Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC28DF12D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 17:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RopIzmGKWUcGY4F5Mef8hzbyFee09T9+ADaYct623MI=; b=I5Vgx3W/SwFsrM
	+KmVyKAK4txExCBW3bkRAC88xD6xih8sF70bXgCUAJZ6Nv3mFj+ULjNrpnumOuXysXrRCO4U6mdZd
	JiwKhYkDhGDJyrIvKeoUHvne40MxyGMdXFXSeBzyeI0PMGjviNZPo4TxkC9TGkNW7X6fLmDcBu8xr
	TWpm7JvIBrPejpZabDcad6ra6KEV3A2Etuuj7wstMROzhI5ReiD+GeHxJCOuLBB9se/SO8oPDzV36
	PbtF4TYJtM0wCwtzp9Xygzfjafzg9pNQEkF+/+ams+1ilBa0QKay/SVuRJHHBFsKv3p/8/J2CGHH8
	4MPGkhKhJD2PGGKNHSzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZUS-00015C-5l; Mon, 21 Oct 2019 15:21:00 +0000
Received: from mail-eopbgr140132.outbound.protection.outlook.com
 ([40.107.14.132] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZUI-00014W-IW
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 15:20:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RpB3mIPsi8s3jBl1ZMERJOHM0VCFASgH7ObwLKttHTVm6uHmYHqf01Diod4FG0iQDW8n4SabLpou4+awyXzQd/1vKpav4X6e/kfP+zZXx5Z+c1F/MFUWnECyqVvf30BXWgrQMP7EOenkE2rE9qWQX88QdMS7tfgKbeYkeL4OkSYUem+mWeTipf3ADeMHLJEa/S+OtavO77MGbvrzHQKwbTCYyWtGY0gzJttYrunbNEmVsSqBQYNwdoLZu2uZwNUQXaFn67iYbSmIBWbe2baHHyAAQ8jt1iaFDwamuLNq5VMKJoQDGSmHwf3dOXPnOsdyeJtvvSS/UzAUaItI9lkLww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=76ShwPSz2IqcgJODhwTIqS3Hj9czJddBBjiNKAfdNvQ=;
 b=aTIC+4pSu4sKiVMCg0+cuyjQL/ogHG1xJuVwjE/Z6FUm9Ay7WqX+uJQSgzpxX3ASvvH+IFYLCjCPpnQITI/Sn6k3Eoslcmxp+Pn6z4gm0TS0RG7ziMv9Mdqfgu0+8n1nIAo/cb/0KNHaX0xDGE76dUIaS3iqNVRYKgnAxF2H1v7sDi1GkiUxGymvbJapKs64Jp8Y4x0zWAtUNwVBTHpypcwR8b28qZ+YUp+buTGhWftR5155OxsXyIN2RlteZ1mx6wVhuF4bCtFkYkM2BgHReSV93pjB9epleW8DobXvHhaVgDhfORR2Z65usiaBfw4ZqMxjAU/JBKSJbJDtVASTdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=76ShwPSz2IqcgJODhwTIqS3Hj9czJddBBjiNKAfdNvQ=;
 b=Ym+th3QnW4XtDGi8kfR16HE5C7oHW4gnjs4RUISaZS/4AWvfrniLEbWuyFxkEBRj1INT7IKlRA8fe3onUCj+btf6w50PaiWQJETNJOEaA6uujCYXsW5Md7E4sqmFPkWAZGKYkaq0cwZmGxPvckBmAzdbjkQwrOk9xLxgdANrBsw=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3435.eurprd02.prod.outlook.com (52.134.65.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Mon, 21 Oct 2019 15:20:45 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::c5b8:6014:87a4:1afe]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::c5b8:6014:87a4:1afe%7]) with mapi id 15.20.2347.029; Mon, 21 Oct 2019
 15:20:44 +0000
From: Peter Rosin <peda@axentia.se>
To: "Eugen.Hristev@microchip.com" <Eugen.Hristev@microchip.com>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "Ludovic.Desroches@microchip.com"
 <Ludovic.Desroches@microchip.com>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "alexandre.belloni@bootlin.com"
 <alexandre.belloni@bootlin.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH v5 3/9] i2c: add support for filters optional properties
Thread-Topic: [PATCH v5 3/9] i2c: add support for filters optional properties
Thread-Index: AQHVaHpW6NWckaLWlEK4ND0k79ASNKdldToA
Date: Mon, 21 Oct 2019 15:20:44 +0000
Message-ID: <d7172480-0ba3-3412-aebf-353bfe8d6f66@axentia.se>
References: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
 <1568189911-31641-4-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1568189911-31641-4-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR0902CA0016.eurprd09.prod.outlook.com
 (2603:10a6:3:e5::26) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c754882a-b071-4299-ac44-08d7563a3dde
x-ms-traffictypediagnostic: DB3PR0202MB3435:
x-microsoft-antispam-prvs: <DB3PR0202MB3435005AB262E2F422C5D1C2BC690@DB3PR0202MB3435.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(346002)(396003)(136003)(376002)(366004)(199004)(189003)(11346002)(7736002)(31686004)(8936002)(71200400001)(71190400001)(508600001)(31696002)(5660300002)(446003)(86362001)(316002)(476003)(2616005)(305945005)(3846002)(25786009)(7416002)(6116002)(256004)(14444005)(486006)(2906002)(76176011)(52116002)(2501003)(6436002)(58126008)(229853002)(66476007)(66556008)(64756008)(66446008)(99286004)(66066001)(110136005)(65806001)(6486002)(66946007)(36756003)(6512007)(14454004)(26005)(2201001)(81166006)(81156014)(186003)(102836004)(6246003)(53546011)(386003)(65956001)(6506007)(4326008)(8676002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3435;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kNrx0wY9c9k6i0NWt0s75nCLUdA/Mynbt5QUpjaCJgrRsyEBOJCUi03dWaQa5bThZ1BGlz2R3pn7Kvz6iwhkVcEY20nqCJwVq0/4OgIQ4OvO6p1mhgtob/n2NDhNx7AVN7rPNeGrjGaSs7Q/zXJIL/KgqGtNcP/V9zP0Msod7BfXZ/Om54Fb9J/uHUhD9PUqp6JvYI7OGh30AX2sd2hsgMfPyzsEdoZBPA7sZEUzjo7pZB2z8dUBi5TRpg4bM/7mOPCxI+KVODRRHDYa254AACDwfCpGjNid4BuW3N9eJlYbKiU7V1R/E+qJyO1GwHtwgvMXKKJSAQr2zJuQ1SQJb/GpDHkk0ngROEDtw78twvoGUdjzCY2W0ohlcXHKkU03jYS5i+I8KF9XxuCeXf+v1CjF71b6Jc+hT5P5QYHZSK+DkX/ldB+v9xkC46AnCIFf
x-ms-exchange-transport-forked: True
Content-ID: <6E26C7A80CEE0D4A864CA97F250362B5@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: c754882a-b071-4299-ac44-08d7563a3dde
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 15:20:44.6237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xDMbMiuCutJ1QtJiuQUjyCOz16iOAVxg2mYN66hGFEXJyqegeyEi437VAzJj4MVO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3435
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_082050_911567_0B542AD4 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.132 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-11 10:24, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> i2c-digital-filter-width-ns:
> This optional timing property specifies the width of the spikes on the i2c
> lines (in ns) that can be filtered out by built-in digital filters which are
> embedded in some i2c controllers.
> i2c-analog-filter-cutoff-frequency:
> This optional timing property specifies the cutoff frequency of a low-pass
> analog filter built-in i2c controllers. This low pass filter is used to filter
> out high frequency noise on the i2c lines. Specified in Hz.
> Include these properties in the timings structure and read them as integers.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  drivers/i2c/i2c-core-base.c | 6 ++++++
>  include/linux/i2c.h         | 6 ++++++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
> index 9c440fa..c9fcb16 100644
> --- a/drivers/i2c/i2c-core-base.c
> +++ b/drivers/i2c/i2c-core-base.c
> @@ -1658,6 +1658,12 @@ void i2c_parse_fw_timings(struct device *dev, struct i2c_timings *t, bool use_de
>  		t->sda_fall_ns = t->scl_fall_ns;
>  
>  	device_property_read_u32(dev, "i2c-sda-hold-time-ns", &t->sda_hold_ns);
> +
> +	device_property_read_u32(dev, "i2c-digital-filter-width-ns",
> +				 &t->digital_filter_width_ns);
> +
> +	device_property_read_u32(dev, "i2c-analog-filter-cutoff-frequency",
> +				 &t->analog_filter_cutoff_freq_hz);
>  }
>  EXPORT_SYMBOL_GPL(i2c_parse_fw_timings);
>  
> diff --git a/include/linux/i2c.h b/include/linux/i2c.h
> index fa5552c..26ce143 100644
> --- a/include/linux/i2c.h
> +++ b/include/linux/i2c.h
> @@ -575,6 +575,10 @@ struct i2c_lock_operations {
>   * @scl_int_delay_ns: time IP core additionally needs to setup SCL in ns
>   * @sda_fall_ns: time SDA signal takes to fall in ns; t(f) in the I2C specification
>   * @sda_hold_ns: time IP core additionally needs to hold SDA in ns
> + * @digital_filter_width_ns: width in ns of spikes on i2c lines that the IP core
> + *			     digital filter can filter out
> + * @analog_filter_cutoff_freq_hz: threshold frequency for the low pass IP core
> +			      analog filter

The indentation is a little bit excessive and also off. Other comments in the
file just uses a single tab after the asterisk in this scenario. Also, the last
of the new lines is missing that leading asterisk.

Cheers,
Peter

>   */
>  struct i2c_timings {
>  	u32 bus_freq_hz;
> @@ -583,6 +587,8 @@ struct i2c_timings {
>  	u32 scl_int_delay_ns;
>  	u32 sda_fall_ns;
>  	u32 sda_hold_ns;
> +	u32 digital_filter_width_ns;
> +	u32 analog_filter_cutoff_freq_hz;
>  };
>  
>  /**
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
