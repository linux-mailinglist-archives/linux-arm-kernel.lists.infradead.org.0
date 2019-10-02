Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EF2C86F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 13:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2NpdtmrGGmjCkxcUufqE3/3NMa4RQHtEqN+jxZOYbg=; b=mkitl4h0witwX2
	KBUhpn35S/wcIr5qtlW8lscPakfmww6fkoRrP3xtVSAfmlpcaz9VeuruQb0olQn3dUdRi9zlCtTrG
	kpAd4cq9qwlQtWzWSEPVHvI7pjlPpoMMzx0nOZfEweVq3htKOxxpmlUeebQtHAP7aPIyvlSbHu1qS
	pb5LPe3/BE92khWuwoJ4wT6CUNuIfgEumb59aINKfz0LOMAJ2b4h9WeU4rw8DEHDuCZjuKeMHSIYn
	+Ht1qgx5VC7hb45SZmLRkUbknbtLYsp8+OUBSYuW+88PN5YqbcR1qOcL++0KAgG6Pq+zNEcw152m/
	4vGuEfFQFKdzrkTuQUPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFcUX-0006YJ-L4; Wed, 02 Oct 2019 11:08:21 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFcUL-0006Wb-Jv
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 11:08:14 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: oOQfZez7gL0osqW6PWf2jWVFDtQHp765g7eqqRv74LRcYXd/YCGTkS2pB7zo32X4xmRTM0Vg4I
 UDqDeEzpcAyYTOvOlGaMqG51dRoFu88k9SYKA2GKgIxKogWdIYpqUnTXIQ3pjLVjIIcA7g1l/U
 u/ZnbN/OtrGHnlzkCncHs+5Kp0yEn3DthPLK3o30jj8ejLvTyXeyJUAMsgqV8yAgBGhNcPSGcX
 Q+qdzIV/gt0B9U5u8M9m98WLULfA7rWpK4k736tgm0EVyVVM2Yxg31hb44kr/vEdCjlVSE8/N7
 hJM=
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="51164848"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Oct 2019 04:08:00 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Oct 2019 04:07:59 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 2 Oct 2019 04:08:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eAwG6RsDQx0PNySRa3lg5VzCdKqwydWVFuCvvaWIXu/Tt81NEC8KWdTSVnUHBG3ozKa2yOfvnL6kM3YvScClpNyZOBbS1YWQKQp6H0KFr5x709bIzsi118W4xS3vOlaqcuMjxSN7O1S89OILLHgvG5YDh2XcuPQ71fPjEvUNlYLHwKb5U9b0hw0G3z9BLSvQPuedhXSx/ndKx+KFXhu5emrMpVVb3vkqM8NbEbVtrbVHDCnsPbRI/ItZuY5l3rJHv0JfIcySx+DUbxnOmpGJj6inlCqRgO6gMFDwVMKfFmPwakwaDLgOz0n9M0oqzpQnZIOfk4/puBsZhrZGGjlDHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nQVAKd8f71YjVL0/Sc+dwo/DLcILNXS41S1pN51R4as=;
 b=jy7HXt0fPfQ+jrZWWmtsAwXtqhCDTXi0Z9xhSmLXQvA//b0lTyTS3+Ut71pnlbjP9HdVHqUKA6hdhoLoae0X8Qs00JWDrHsct5UQGxXAI+UAgxInm/8NyWMk53X6xzHHjYVT5UtovvPU2GkHP5Ny2lt5jlmT+W+WfInqzL8H68U+5REoO7aJS6T7ToorHB1z+10TNES1ufbVVUIZd1Vhj8A3Bg9OwEJ0DJz/30H2Xe2wCQcqcfEjg5OYLgND6GDPZAuziXX0Mzsyhsh/XP99SZ3WGNuK/tC9Qe62ZZD+b7V4s+hbT21nCCel5dpePL50Rud9MMlHDmawSWDohhb4DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nQVAKd8f71YjVL0/Sc+dwo/DLcILNXS41S1pN51R4as=;
 b=heOJtX+JR6wuv2HVLL8456zQLmgwDlcwIxoLsiVwFLTPYKR0GI1VL6mFopEppnD0CuXarH75iunT20Ve6iM8LNluPDTfuftpzk53ueO3D3EBR+7/Bm3TKmr2YMeRTLjCDLiOL+joxMZGqiapxZ0OSEILuVSkvDKm6GZW25C9FMw=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1994.namprd11.prod.outlook.com (10.168.105.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Wed, 2 Oct 2019 11:07:59 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::b125:76c1:c9b1:34f4]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::b125:76c1:c9b1:34f4%10]) with mapi id 15.20.2305.023; Wed, 2 Oct 2019
 11:07:59 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 2/3] watchdog: sam9x60_wdt: introduce sam9x60 watchdog
 timer driver
Thread-Topic: [PATCH 2/3] watchdog: sam9x60_wdt: introduce sam9x60 watchdog
 timer driver
Thread-Index: AQHVePP1mVCAVHNqYEKA4n6lujXEMadHJRSAgAAKu4A=
Date: Wed, 2 Oct 2019 11:07:58 +0000
Message-ID: <41dc5cc8-4ce3-62ee-132f-e8117190b850@microchip.com>
References: <1570001371-8174-1-git-send-email-eugen.hristev@microchip.com>
 <1570001371-8174-2-git-send-email-eugen.hristev@microchip.com>
 <20191002102343.GL4106@piout.net>
In-Reply-To: <20191002102343.GL4106@piout.net>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0501CA0009.eurprd05.prod.outlook.com
 (2603:10a6:800:92::19) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191002140219962
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85933053-0e87-40ce-2c31-08d74728c86f
x-ms-traffictypediagnostic: DM5PR11MB1994:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1994DDD2E3F42DABB47416DCE89C0@DM5PR11MB1994.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(396003)(346002)(376002)(199004)(189003)(26005)(486006)(3846002)(476003)(25786009)(5660300002)(6116002)(11346002)(76176011)(446003)(186003)(102836004)(99286004)(4326008)(2616005)(66946007)(14454004)(36756003)(52116002)(386003)(53546011)(6506007)(478600001)(66446008)(86362001)(2906002)(64756008)(66556008)(66476007)(54906003)(305945005)(7736002)(107886003)(6486002)(6512007)(31686004)(229853002)(6436002)(316002)(6916009)(71200400001)(31696002)(8936002)(71190400001)(8676002)(81156014)(6246003)(81166006)(66066001)(14444005)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1994;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d5utXEF6fjAf0THJo48WVbut5mU6TEJqh3h08fkBlGczECGgeGLK5wssYSvgu3VImunUHX3hK2ShuDIKtuRe+mt9PFT08FE25yVgH0Y5zFUgnElXVZS60VaqiFhRUDhO3TYY6apT2j+uD5v4tbk9LA9ntxjh6FqPcDo35KoGZgkIKCRK2b4MXnvq0e//agLvTDRXxOzaH8YWBkSZyXu9ZLfgDjnBgBCvmciRQ/eFegvqqxoa9XTXb9t2uFZJPfzAUXQVZRWIXc6S6b5s02nyAl9u8nB5CPVZb0uVlU5ubFrkvIQ3Pi6RxXJP4dUnQD9qOppYfvHCdorXMCj8wjpaQoBSKGQM9fksx3oOzp3xZam+mmI/jN5tww0GTGEiwBvl1BdSLyGrGXTKMQyuv2fydYwla29J752e4ltKevONafM=
Content-ID: <DD8BAB5E16639445A6C662787A1A0435@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 85933053-0e87-40ce-2c31-08d74728c86f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 11:07:58.9144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wTwrlDMwXfmbIhp8is+a9Fhqtq6PMkiTRkGNhnaci48kYUrxWqL6sCKefpLStCsmpOBuXGrBwKmT23FX2j5AeS0hwtor+ULxTPBEEkWmzqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_040809_769440_7B4093E8 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, wim@linux-watchdog.org,
 linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02.10.2019 13:23, Alexandre Belloni wrote:

> Hi,
> 
> On 02/10/2019 07:35:26+0000, Eugen.Hristev@microchip.com wrote:
>> +static void wdt_write(struct sam9x60_wdt *wdt, u32 field, u32 val)
>> +{
>> +	/*
>> +	 * WDT_CR and WDT_MR must not be modified within three slow clock
>> +	 * periods following a restart of the watchdog performed by a write
>> +	 * access in WDT_CR.
>> +	 */
>> +	while (time_before(jiffies, wdt->last_ping + WDT_DELAY))
>> +		usleep_range(30, 125);
>> +	writel_relaxed(val, wdt->reg_base + field);
>> +	wdt->last_ping = jiffies;
>> +}
>> +
>> +static void wdt_write_nosleep(struct sam9x60_wdt *wdt, u32 field, u32 val)
>> +{
>> +	if (time_before(jiffies, wdt->last_ping + WDT_DELAY))
>> +		usleep_range(123, 250);
> 
> So you have a _nosleep function that does sleep?
> 
>> +	writel_relaxed(val, wdt->reg_base + field);
>> +	wdt->last_ping = jiffies;
>> +}
>> +
>> +static int sam9x60_wdt_start(struct watchdog_device *wdd)
>> +{
>> +	struct sam9x60_wdt *wdt = watchdog_get_drvdata(wdd);
>> +
>> +	wdt->mr &= ~AT91_WDT_WDDIS;
>> +	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
>> +	wdt_write_nosleep(wdt, AT91_WDT_IER, wdt->ir);
> 
> I don't think AT91_WDT_IER needs to be protected, you can probably write
> it directly. Also, you certainly need to do that before starting the
> watchdog to avoid race conditions.
> 
>> +
>> +	return 0;
>> +}
>> +
>> +static int sam9x60_wdt_stop(struct watchdog_device *wdd)
>> +{
>> +	struct sam9x60_wdt *wdt = watchdog_get_drvdata(wdd);
>> +
>> +	wdt->mr |= AT91_WDT_WDDIS;
>> +	wdt_write(wdt, AT91_WDT_MR, wdt->mr);
>> +	wdt_write_nosleep(wdt, AT91_WDT_IDR, wdt->ir);
>> +
> 
> I don't think AT91_WDT_IDR needs to be protected.
> 
>> +	return 0;
>> +}
>> +
>> +static int sam9x60_wdt_ping(struct watchdog_device *wdd)
>> +{
>> +	struct sam9x60_wdt *wdt = watchdog_get_drvdata(wdd);
>> +
>> +	wdt_write(wdt, AT91_WDT_CR, AT91_WDT_KEY | AT91_WDT_WDRSTT);
>> +
>> +	return 0;
>> +}
>> +
>> +static int sam9x60_wdt_set_timeout(struct watchdog_device *wdd,
>> +				   unsigned int timeout)
>> +{
>> +	struct sam9x60_wdt *wdt = watchdog_get_drvdata(wdd);
>> +
>> +	wdt_write(wdt, AT91_WDT_WLR,
>> +		  AT91_WDT_SET_COUNTER(WDT_SEC2TICKS(timeout)));
>> +
> 
> I don't think AT91_WDT_WLR needs to be protected.
> 
>> +	wdd->timeout = timeout;
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct watchdog_info sam9x60_wdt_info = {
>> +	.options = WDIOF_SETTIMEOUT | WDIOF_MAGICCLOSE | WDIOF_KEEPALIVEPING,
>> +	.identity = "Microchip SAM9X60 Watchdog",
>> +};
>> +
>> +static const struct watchdog_ops sam9x60_wdt_ops = {
>> +	.owner = THIS_MODULE,
>> +	.start = sam9x60_wdt_start,
>> +	.stop = sam9x60_wdt_stop,
>> +	.ping = sam9x60_wdt_ping,
>> +	.set_timeout = sam9x60_wdt_set_timeout,
>> +};
>> +
>> +static irqreturn_t sam9x60_wdt_irq_handler(int irq, void *dev_id)
>> +{
>> +	struct sam9x60_wdt *wdt = platform_get_drvdata(dev_id);
>> +
>> +	if (wdt_read(wdt, AT91_WDT_ISR)) {
>> +		pr_crit("Microchip Watchdog Software Reset\n");
>> +		emergency_restart();
>> +		pr_crit("Reboot didn't succeed\n");
>> +	}
> 
> I'm not really convinced by the software restart use case but I guess it
> is to be able to shut down while still flushing data to the storage.
> This would not protect against kernel issues then.

Hi Alexandre,

That's correct. It is to do a software shutdown instead of hard reboot 
by hardware. It has it;s use cases, so I preserved the same level of 
functionality as in sama5d4_wdt

> 
>> +
>> +	return IRQ_HANDLED;
>> +}
>> +
>> +static int of_sam9x60_wdt_init(struct device_node *np, struct sam9x60_wdt *wdt)
>> +{
>> +	const char *tmp;
>> +
>> +	wdt->mr = AT91_WDT_WDDIS;
>> +
>> +	if (!of_property_read_string(np, "atmel,watchdog-type", &tmp) &&
>> +	    !strcmp(tmp, "software"))
>> +		wdt->ir = AT91_WDT_PERINT;
>> +	else
>> +		wdt->mr |= AT91_WDT_PERIODRST;
>> +
>> +	if (of_property_read_bool(np, "atmel,idle-halt"))
>> +		wdt->mr |= AT91_WDT_WDIDLEHLT;
>> +
>> +	if (of_property_read_bool(np, "atmel,dbg-halt"))
>> +		wdt->mr |= AT91_WDT_WDDBGHLT;
>> +
>> +	return 0;
>> +}
>> +
>> +static int sam9x60_wdt_init(struct sam9x60_wdt *wdt)
>> +{
>> +	u32 reg;
>> +	/*
>> +	 * When booting and resuming, the bootloader may have changed the
>> +	 * watchdog configuration.
>> +	 * If the watchdog is already running, we can safely update it.
>> +	 * Else, we have to disable it properly.
>> +	 */
>> +	if (wdt_enabled) {
>> +		wdt_write_nosleep(wdt, AT91_WDT_MR, wdt->mr);
>> +		wdt_write_nosleep(wdt, AT91_WDT_IER, wdt->ir);
>> +		wdt_write(wdt, AT91_WDT_WLR,
>> +			  AT91_WDT_SET_COUNTER(WDT_SEC2TICKS(WDT_DEFAULT_TIMEOUT)));
>> +
>> +	} else {
>> +		reg = wdt_read(wdt, AT91_WDT_MR);
>> +		if (!(reg & AT91_WDT_WDDIS))
>> +			wdt_write_nosleep(wdt, AT91_WDT_MR,
>> +					  reg | AT91_WDT_WDDIS);
>> +	}
>> +	return 0;
>> +}
>> +
>> +static int sam9x60_wdt_probe(struct platform_device *pdev)
>> +{
>> +	struct watchdog_device *wdd;
>> +	struct sam9x60_wdt *wdt;
>> +	struct resource *res;
>> +	void __iomem *regs;
>> +	u32 irq = 0;
>> +	int ret;
>> +
>> +	wdt = devm_kzalloc(&pdev->dev, sizeof(*wdt), GFP_KERNEL);
>> +	if (!wdt)
>> +		return -ENOMEM;
>> +
>> +	wdd = &wdt->wdd;
>> +	wdd->timeout = WDT_DEFAULT_TIMEOUT;
>> +	wdd->info = &sam9x60_wdt_info;
>> +	wdd->ops = &sam9x60_wdt_ops;
>> +	wdd->min_timeout = MIN_WDT_TIMEOUT;
>> +	wdd->max_timeout = MAX_WDT_TIMEOUT;
>> +	wdt->last_ping = jiffies;
>> +
>> +	watchdog_set_drvdata(wdd, wdt);
>> +
>> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> +	regs = devm_ioremap_resource(&pdev->dev, res);
>> +	if (IS_ERR(regs))
>> +		return PTR_ERR(regs);
>> +
>> +	wdt->reg_base = regs;
>> +
>> +	irq = irq_of_parse_and_map(pdev->dev.of_node, 0);
>> +	if (!irq)
>> +		dev_warn(&pdev->dev, "failed to get IRQ from DT\n");
>> +
>> +	ret = of_sam9x60_wdt_init(pdev->dev.of_node, wdt);
>> +	if (ret)
>> +		return ret;
>> +
>> +	if ((wdt->ir & AT91_WDT_PERINT) && irq) {
>> +		ret = devm_request_irq(&pdev->dev, irq, sam9x60_wdt_irq_handler,
>> +				       IRQF_SHARED | IRQF_IRQPOLL |
>> +				       IRQF_NO_SUSPEND, pdev->name, pdev);
>> +		if (ret) {
>> +			dev_err(&pdev->dev,
>> +				"cannot register interrupt handler\n");
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	watchdog_init_timeout(wdd, wdt_timeout, &pdev->dev);
>> +
>> +	ret = sam9x60_wdt_init(wdt);
>> +	if (ret)
>> +		return ret;
>> +
>> +	watchdog_set_nowayout(wdd, nowayout);
>> +
>> +	ret = watchdog_register_device(wdd);
>> +	if (ret) {
>> +		dev_err(&pdev->dev, "failed to register watchdog device\n");
>> +		return ret;
>> +	}
>> +
>> +	platform_set_drvdata(pdev, wdt);
>> +
>> +	dev_info(&pdev->dev, "initialized (timeout = %d sec, nowayout = %d)\n",
>> +		 wdd->timeout, nowayout);
>> +
>> +	return 0;
>> +}
>> +
>> +static int sam9x60_wdt_remove(struct platform_device *pdev)
>> +{
>> +	struct sam9x60_wdt *wdt = platform_get_drvdata(pdev);
>> +
>> +	sam9x60_wdt_stop(&wdt->wdd);
>> +
>> +	watchdog_unregister_device(&wdt->wdd);
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct of_device_id sam9x60_wdt_of_match[] = {
>> +	{ .compatible = "microchip,sam9x60-wdt", },
>> +	{ }
>> +};
>> +MODULE_DEVICE_TABLE(of, sam9x60_wdt_of_match);
>> +
>> +#ifdef CONFIG_PM_SLEEP
> 
> Most of the logic has been copy/pasted from sama5d4_wdt.c and this
> already miss some improvement that have been made between the time you
> copied it and now.

I will fix accordingly. As I said in the commit message, sama5d4_wdt is 
used as a starting point so yes, all the functionality is the same, 
except the actual hardware interaction.

> 
> Are you sure both drivers shouldn't be merged? I feel like this will be a
> maintenance hell if we don't do that now.

It could be merged, but we should do so ?
Could have two compatibles, with platform data, selectable, and with 
different functions, that can be selected.. either this or that.
You think that's a better way to handle this new IP block ?
I would like to avoid having a big driver covering multiple different 
hardware pieces, but that's just my preference. I can rework this into a 
single driver if it's better that way.

Eugen

> 
>> +static int sam9x60_wdt_resume(struct device *dev)
>> +{
>> +	struct sam9x60_wdt *wdt = dev_get_drvdata(dev);
>> +
>> +	/*
>> +	 * FIXME: writing MR also pings the watchdog which may not be desired.
>> +	 * This should only be done when the registers are lost on suspend but
>> +	 * there is no way to get this information right now.
>> +	 */
>> +	sam9x60_wdt_init(wdt);
>> +
>> +	return 0;
>> +}
>> +#endif
>> +
>> +static SIMPLE_DEV_PM_OPS(sam9x60_wdt_pm_ops, NULL,
>> +			 sam9x60_wdt_resume);
>> +
>> +static struct platform_driver sam9x60_wdt_driver = {
>> +	.probe		= sam9x60_wdt_probe,
>> +	.remove		= sam9x60_wdt_remove,
>> +	.driver		= {
>> +		.name	= "sam9x60_wdt",
>> +		.pm	= &sam9x60_wdt_pm_ops,
>> +		.of_match_table = sam9x60_wdt_of_match,
>> +	}
>> +};
>> +module_platform_driver(sam9x60_wdt_driver);
>> +
>> +MODULE_AUTHOR("Eugen Hristev");
>> +MODULE_DESCRIPTION("Microchip SAM9X60 Watchdog Timer driver");
>> +MODULE_LICENSE("GPL v2");
>> -- 
>> 2.7.4
>>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
