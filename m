Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB155135774
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:55:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7rSUJOkAY0u/xOpAfqhza6SrxOZmsrmg3Z8NOkd4t8=; b=RCNjmHkldmuQHX
	DtwtSyaJOLnDfeaCquEI92ub+nSl7iadpEHYCnU7hoO4Hc4/9JBoxSkADy6LeMraC/xAXvFgYNYmU
	pBPeE6+d0lRdfgkd+pJj/wox71N4jljinylz56Dp3HxbzMnjmKOskkG0alW/Jj8FE1u/qyZogZ7D0
	vyXsbu9CTp2oQ9IPXK0Oy4KcUl9OhOJ0HnZUQx4v+eb3gkftRMdD9Val8SUguRaZvuQ/ROKvvvgMH
	ECP0+ALge74p36zH0tONNRBp8NyaAgshbUZMAmYZSWGtnsFpOyG4xvuS1RRjugRrIgT4psoqfROZk
	h5DsrsQjXhApGwFCocMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVSq-0002B6-9x; Thu, 09 Jan 2020 10:54:56 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVSe-00029K-Oe
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:54:46 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: O5KPNmGO9vE/6dk3zZoUrbJUD9HzBNoYzbuJkIordsSpyN8cqup+Dz47xjX+7l0yexIbr/QgXX
 PyDjvhBNE69+qusHo/Ye8K/rBnar2bKeIxFvcYLuEoyQoUYuoDVpRfZvhcER1BEDDsONZe2MEA
 q6oPdBaA5ygZLYtJP91ogQmKcZ7ICdY0EVcFBpdyTrNjLVLC1+RnsqVgHVzI59RzuedytbB+2w
 ThNXKSXJHTobN4tyHzLvWVNfYUdbSqdijyFlWsotYP5ceS8WHRP4SXksgan9um5akJ0r6wBOcX
 slU=
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="62703362"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jan 2020 03:54:40 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jan 2020 03:54:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 9 Jan 2020 03:54:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P9dc5MB1pI8XWkAR9h5iZhylr0NHwqEs45EtrAtASHPIk+DkJbbT8GkVRfP4YGjZWjJJQuW5kAshsr2lB72FCshR0gdFU0Rnx5UN99TBVlsOsJqA9ZK+Ywu0o0akBSIJaEZkh49o1S8cebDjJx9is9aboxlyKGIrkGtsImvfjYioQVtF1I2m4+Il5PwixskITcTNUl0Xdq3w8zhqHqvB2xRma+Bs+0L6P55jtk6XFq/SDLZqgr3lQq/5grvBMOXwNH8P7dSQvpRldthMuNX0AvvDBjdv4h0ucJ4a8PmPTlkrf4A4/6RFgTmzVqVNVv8/CPsU7Cwiotf8q7tEXE97Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WqGNCbVUE1ZOLRLlHsVr87aMjr7dsqdBqwKosAbwAVI=;
 b=E6Zfbe/BkKVjYe1hnPPqb9FstdbMoYrj+iR6lj6QxXr4S5bGXs8GUaHwjgn2F/QEqFUWqDnBwIE5avuPHSUeeBvnFOE76BYZmpYAaS3+1jNNGliJbst+YDE+cYEHIf9+26RMlgBmG32dBMg1wO1zLkSohydfenMrLe187pMXjvR7kQJgOG8ddsa1zGalmMlhaCwGT2JyzEjYVPFbxx7dKdsZnyeXyWi69HoLdJzanNcDxJ6P4J8GSN+gOT26hc0Cn4kjYHhmR7dAlym9RbZNhRS4okQzXU+QmDaFCoVJg2FkE3hVj53BusSk2A8Zkfyc167Ivl0z9QAoNZHla6tUtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WqGNCbVUE1ZOLRLlHsVr87aMjr7dsqdBqwKosAbwAVI=;
 b=e7FoTizRUQnC9LyfclSBtHSR3bJu39/I5JQOGRFPi6rzD9Nb0PzVX2R53gFsMYPdmfoisv1wvtsO3FxbsG7pKQieyNcmCApu5bQ+EEdanI+TO3tAWXQ1ebmtALxe+GUn9IAeP57DOis10uCODr2bRlJe1p4BIiffA3oMExniptk=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) by
 BY5PR11MB4212.namprd11.prod.outlook.com (52.132.255.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Thu, 9 Jan 2020 10:54:38 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd%5]) with mapi id 15.20.2623.011; Thu, 9 Jan 2020
 10:54:38 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <kamel.bouhara@bootlin.com>, <wsa@the-dreams.de>,
 <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <robh@kernel.org>
Subject: Re: [PATCH v2 2/6] i2c: at91: implement i2c bus recovery
Thread-Topic: [PATCH v2 2/6] i2c: at91: implement i2c bus recovery
Thread-Index: AQHVwhsKxM62dO/65kaQpOISnuFHxafh/huAgAA0AgA=
Date: Thu, 9 Jan 2020 10:54:37 +0000
Message-ID: <d80b0dae-4310-9464-58c9-30b100dcb630@microchip.com>
References: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
 <20200103094821.13185-3-codrin.ciubotariu@microchip.com>
 <20200109074819.rhlaxg3sgwlng5xm@M43218.corp.atmel.com>
In-Reply-To: <20200109074819.rhlaxg3sgwlng5xm@M43218.corp.atmel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca8b0491-7c3e-447c-9506-08d794f2526f
x-ms-traffictypediagnostic: BY5PR11MB4212:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4212274906EDA0DE3BA18D79E7390@BY5PR11MB4212.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(346002)(39860400002)(376002)(199004)(189003)(2906002)(6506007)(71200400001)(6512007)(53546011)(76116006)(64756008)(91956017)(6486002)(31696002)(2616005)(478600001)(86362001)(66446008)(66946007)(8936002)(36756003)(66476007)(81166006)(81156014)(8676002)(66556008)(5660300002)(186003)(26005)(110136005)(31686004)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4212;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +WXtAlOBvXWRmLq1SI2xgJtMkvFmMtUBWKoFlAzAaORtghCyZxkMODA7ddpodRX+UtvammURYNf5L/gjHpUa29NobaOnISOEtRztObCqKQ01MZ77lgIpCULbYJ5VvCkUx2cyHqpDVM8Zk9JprsvqN0He+CUBQbHhYUlMTD7X9fgC5ivztJsasoyOdmEzbJRxB7WBaeQ0A52TKNfksAfBDIgYcC02wWDDrw2eWz6YwG4UTvfsdlz9lU7ABzYTVtVKQVmQ022Ok8bcD141jpNm3yCEV0ERctJp3e+MHhsQCPu5o1PpL/KC02m1WgTdw0+fbbWUUn8pREXVgA7FSgIGCoT7arfC3JyhdxiXYJryUpdFAYmF/Tp3b9+aUYMCIm3CBbK8RL+UPisUzKH+cVcIeLoNCDCAn0saX3qOSwfBz0qdWYFhfWlhWUJm59WTcIpe
Content-ID: <203E1782E0105E47A8AF6EFA8A148B22@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ca8b0491-7c3e-447c-9506-08d794f2526f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 10:54:37.9397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DXHTT8TwEM8CyO9IzVTrS185aWJNTQf5yWa2nbm2T8jP9HJsr+yDmjZGQRAzDrXfzG8EWV/N32JRnj2YbzvaRWKAEVdDDpF3RFMxLcLsNUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4212
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_025444_872492_A7392860 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09.01.2020 09:48, Ludovic Desroches wrote:
> On Fri, Jan 03, 2020 at 09:49:07AM +0000, Codrin Ciubotariu - M19940 wrote:
>> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
>>
>> Implement i2c bus recovery when slaves devices might hold SDA low.
>> In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
>> until the slave release SDA.
>>
>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
>> [codrin.ciubotariu@microchip.com: release gpios on error; move i2c_recover_bus]
>> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
>> ---
>>
>> Changes in v2:
>>   - called i2c_recover_bus() after an error occurs, if SDA is down;
>>   - release gpios if recovery information is incomplete;
>>
>>   drivers/i2c/busses/i2c-at91-master.c | 79 ++++++++++++++++++++++++++++
>>   drivers/i2c/busses/i2c-at91.h        |  8 +++
>>   2 files changed, 87 insertions(+)
>>
>> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
>> index 7a862e00b475..c55e8ff35201 100644
>> --- a/drivers/i2c/busses/i2c-at91-master.c
>> +++ b/drivers/i2c/busses/i2c-at91-master.c
>> @@ -18,11 +18,13 @@
>>   #include <linux/dma-mapping.h>
>>   #include <linux/dmaengine.h>
>>   #include <linux/err.h>
>> +#include <linux/gpio/consumer.h>
>>   #include <linux/i2c.h>
>>   #include <linux/interrupt.h>
>>   #include <linux/io.h>
>>   #include <linux/of.h>
>>   #include <linux/of_device.h>
>> +#include <linux/pinctrl/consumer.h>
>>   #include <linux/platform_device.h>
>>   #include <linux/platform_data/dma-atmel.h>
>>   #include <linux/pm_runtime.h>
>> @@ -478,6 +480,7 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>>   	unsigned long time_left;
>>   	bool has_unre_flag = dev->pdata->has_unre_flag;
>>   	bool has_alt_cmd = dev->pdata->has_alt_cmd;
>> +	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
>>   
>>   	/*
>>   	 * WARNING: the TXCOMP bit in the Status Register is NOT a clear on
>> @@ -637,6 +640,13 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>>   		at91_twi_write(dev, AT91_TWI_CR,
>>   			       AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
>>   	}
>> +
>> +	if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
>> +		dev_dbg(dev->dev,
>> +			"SDA is down; clear bus using gpio\n");
>> +		i2c_recover_bus(&dev->adapter);
>> +	}
>> +
>>   	return ret;
>>   }
>>   
>> @@ -806,6 +816,71 @@ static int at91_twi_configure_dma(struct at91_twi_dev *dev, u32 phy_addr)
>>   	return ret;
>>   }
>>   
>> +static void at91_prepare_twi_recovery(struct i2c_adapter *adap)
>> +{
>> +	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
>> +
>> +	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_gpio);
>> +}
>> +
>> +static void at91_unprepare_twi_recovery(struct i2c_adapter *adap)
>> +{
>> +	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
>> +
>> +	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
>> +}
>> +
>> +static int at91_init_twi_recovery_info(struct platform_device *pdev,
>> +				       struct at91_twi_dev *dev)
>> +{
>> +	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
>> +
>> +	dev->pinctrl = devm_pinctrl_get(&pdev->dev);
>> +	if (!dev->pinctrl || IS_ERR(dev->pinctrl)) {
>> +		dev_info(dev->dev, "can't get pinctrl, bus recovery not supported\n");
>> +		return PTR_ERR(dev->pinctrl);
>> +	}
>> +
>> +	dev->pinctrl_pins_default = pinctrl_lookup_state(dev->pinctrl,
>> +							 PINCTRL_STATE_DEFAULT);
>> +	dev->pinctrl_pins_gpio = pinctrl_lookup_state(dev->pinctrl,
>> +						      "gpio");
>> +	rinfo->sda_gpiod = devm_gpiod_get(&pdev->dev, "sda", GPIOD_IN);
>> +	if (PTR_ERR(rinfo->sda_gpiod) == -EPROBE_DEFER)
>> +		return -EPROBE_DEFER;
>> +
>> +	rinfo->scl_gpiod = devm_gpiod_get(&pdev->dev, "scl",
>> +					  GPIOD_OUT_HIGH_OPEN_DRAIN);
>> +	if (PTR_ERR(rinfo->scl_gpiod) == -EPROBE_DEFER)
>> +		return -EPROBE_DEFER;
>> +
>> +	if (IS_ERR(rinfo->sda_gpiod) ||
>> +	    IS_ERR(rinfo->scl_gpiod) ||
>> +	    IS_ERR(dev->pinctrl_pins_default) ||
>> +	    IS_ERR(dev->pinctrl_pins_gpio)) {
>> +		dev_info(&pdev->dev, "recovery information incomplete\n");
>> +		if (!IS_ERR(rinfo->sda_gpiod)) {
>> +			gpiod_put(rinfo->sda_gpiod);
>> +			rinfo->sda_gpiod = NULL;
>> +		}
>> +		if (!IS_ERR(rinfo->scl_gpiod)) {
>> +			gpiod_put(rinfo->scl_gpiod);
>> +			rinfo->scl_gpiod = NULL;
>> +		}
>> +		return -EINVAL;
>> +	}
>> +
>> +	dev_info(&pdev->dev, "using scl%s for recovery\n",
>> +		 rinfo->sda_gpiod ? ",sda" : "");
> 
> Is it possible to have scl without sda? From the condition before, if
> there is an error for sda or scl, an error is returned.

No, it's not. We need both sda and scl gpios. I will fix it.

> 
>> +
>> +	rinfo->prepare_recovery = at91_prepare_twi_recovery;
>> +	rinfo->unprepare_recovery = at91_unprepare_twi_recovery;
>> +	rinfo->recover_bus = i2c_generic_scl_recovery;
>> +	dev->adapter.bus_recovery_info = rinfo;
>> +
>> +	return 0;
>> +}
>> +
>>   int at91_twi_probe_master(struct platform_device *pdev,
>>   			  u32 phy_addr, struct at91_twi_dev *dev)
>>   {
>> @@ -838,6 +913,10 @@ int at91_twi_probe_master(struct platform_device *pdev,
>>   						     "i2c-analog-filter");
>>   	at91_calc_twi_clock(dev);
>>   
>> +	rc = at91_init_twi_recovery_info(pdev, dev);
>> +	if (rc == -EPROBE_DEFER)
>> +		return rc;
>> +
>>   	dev->adapter.algo = &at91_twi_algorithm;
>>   	dev->adapter.quirks = &at91_twi_quirks;
>>   
>> diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
>> index 977a67bc0f88..eb335b71e775 100644
>> --- a/drivers/i2c/busses/i2c-at91.h
>> +++ b/drivers/i2c/busses/i2c-at91.h
>> @@ -151,6 +151,10 @@ struct at91_twi_dev {
>>   	u32 fifo_size;
>>   	struct at91_twi_dma dma;
>>   	bool slave_detected;
>> +	struct i2c_bus_recovery_info rinfo;
>> +	struct pinctrl *pinctrl;
>> +	struct pinctrl_state *pinctrl_pins_default;
>> +	struct pinctrl_state *pinctrl_pins_gpio;
>>   #ifdef CONFIG_I2C_AT91_SLAVE_EXPERIMENTAL
>>   	unsigned smr;
>>   	struct i2c_client *slave;
>> @@ -171,6 +175,10 @@ void at91_init_twi_bus_master(struct at91_twi_dev *dev);
>>   int at91_twi_probe_master(struct platform_device *pdev, u32 phy_addr,
>>   			  struct at91_twi_dev *dev);
>>   
> 
> Wrong names here:
> 
>> +void at91_twi_prepare_recovery(struct i2c_adapter *adap);
> at91_prepare_twi_recovery
> 
>> +void at91_twi_unprepare_recovery(struct i2c_adapter *adap);
> at91_unprepare_twi_recovery
> 
>> +void at91_twi_init_recovery_info(struct at91_twi_dev *dev);
> at91_init_twi_recovery_info
> 
> Are these declarations still needed?

No, there is not. They are used only in the master mode of the driver. I 
will remove them.

Thank you for your review Ludovic.

Best regards,
Codrin
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
