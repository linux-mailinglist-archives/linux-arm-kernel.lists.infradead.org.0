Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCBE1B2059
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 09:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wX3ybeir7+AfIrk3Kn79Hs5brgzZSl3a1INH4oIYlfs=; b=EgQ1CgZO4mR0bi
	RRLvCnPzjO/bWzw9gFo1oge7moA7qH/tjgKEwb67wIWBnBci0EexHOs0c8Y+dpkvXIqTU+fOqug78
	j7jNG8WWjV19RTQr1h9YfNYShsOaRoICXMr//Ipu/I4zCVWCHxWukPHLWd0YJvHwKyaLkDlgkEArw
	nnDZDZJQ+7E1vqDLvEOoUh0A+T3Ed36ygRMrRXnn+kCMbcWxFgogxTp+8g1AMHSRC4WrPUeJMLSh6
	Fwn0XQA3HTa/cTKGAwiJzPaG9zioynsL3ksmgH/P+Sir0f0n25w9ryIMhY+9NDxIwKPYvZzXOZNkR
	MpAdDVujAE2jV/AMXcHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnh7-0001RY-Jr; Tue, 21 Apr 2020 07:51:49 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQngj-0001B6-0r
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 07:51:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587455484; x=1618991484;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=cwPZxPqVyP/4/QIK+M3A1diwefFz+dw60qn0D8/bYp4=;
 b=Lb24mcwB6XkuUjx8lfsORo4TvojztGywiMbb43hMjN27o8fdAHGT2e+s
 4VPx6E6Il1Ne98iGiuclBMAYpybHVEG0wqS47VaBbyqwi0b3HiWbm2orw
 vLH1Y7YCQWrZiq+h/nzCbGizZnBYc8+Sxn0pm+X2jiVWbOoUXlF9FU1FG
 KYp2e7BfvmBmOvJLKTlanIc+qCnO/8fr3oJUDLkY8nhzQBJd8lS60r7k0
 lTAkoKHYLRvxMiD/y5ZECX+JOaf6RBySRuapOiKTbFCHdQGCdYX93hptc
 nZPH8aUd2+iV+fKEeMi4gezlhgVM8SkI29KHRifePT0LNJzA3Vr8odL9v w==;
IronPort-SDR: nte4Wy5+hxJqvODic/FHXVtFL8zg+4I6zVhH6vy25FkLDnvUPxgQ7340e3efUVsG0VMYiwapWh
 dEPaEwz26EcbWcRhpyDUusTn9X0HuPcxnG76xhirYU7GYzf+JnpjFGLc4JeFs+LaHPM/tzC2Qt
 i9Fhfulq4IR2Uwsp0RICLxnVqXLmYGSDmPibEI13cUwAST/L1W96OEmKD5nw0zaNyRQMzn3G3f
 tulNX+jrKgya2lNtjj9pGu9Y/U5+AiWcHkyhWuj/2lHRjjaraypfgGtZuFZycBz4j7cjTa2e99
 kMc=
X-IronPort-AV: E=Sophos;i="5.72,409,1580799600"; 
   d="scan'208";a="9874061"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Apr 2020 00:51:16 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 00:50:47 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Apr 2020 00:50:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V0YCgSrnm7PQLmi44Uk8fu214+t9phiVFkxqk9/kzDKPch3h8kHd+bSwnnRUUaPnHA9bf5ygh3r4Jaua+3V4AIXvza5Gkqh17317yYajQdRO3YQ3QG0KZBhGfsVc4FkZgAekdNNq/0d0PexSKdxqGpblMIcJnnCov0sFZxV4Bxu42ZvAiDMpClGk9EeOnhRCo3Pe/FXtrA9yvO4ciVUSh/igWNaekpNwnc05Cnq2ewVBffUYMr4SZUWD/hSVsZy9i167ro8LFZkPHnW858PmRjtenItC2y5CjchqkfAaUW4AJ03ZPZwZKS2hewcTC8hkQzXGSLJgIYh+Zr7y6eeMcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cwPZxPqVyP/4/QIK+M3A1diwefFz+dw60qn0D8/bYp4=;
 b=Hm6XAp7g4Cm/2zTmB34iYUYApH6/kvYVJEAimTTB1ABYH5ou0TNjQneT9++hr3dhx7Ftvsm/0kk9tnKoEYCbwKnocpp/c+MQwzRiF5ihLOUj/Qzx8sM9u/9dww3NGnr6bf9bpRnOfVO/b4mg1iNRXCfwlwQWCWYYuF1W2wTH2BAdA7HZ+JzLPAvtnfAZqVbxhBNVG/b+PxEOR4HA9mo9M1RCTWEPhjSGIZV+IXaiwlLudFMX4GxFG3OWCJu0PN3Cg/nhmH37PQrPdhKUEY4C4fWibAikz5PyyDRX6SRc+jjvr+FN+UGaeOtGAZRI2KUOBE2NxjR14JExHGpfUtKorw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cwPZxPqVyP/4/QIK+M3A1diwefFz+dw60qn0D8/bYp4=;
 b=eLh73GHyPJ3iJIOqhuCwk2NS3iiYrpN4oJ3Wl7kQLaRFnIs17scK2Uidt2kJ32Dkm4L8orxuDNUlsMUtUz94ibQIrpK1+TC3icBpA3qHQ8TShLwPgU0o0NQtzA3+d51GiJpVxLBGTuisDRC9qjVMAVGbv2dKENc4nis3ykYvQ2g=
Received: from CY4PR11MB1688.namprd11.prod.outlook.com (2603:10b6:903:25::23)
 by CY4PR11MB1942.namprd11.prod.outlook.com (2603:10b6:903:125::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Tue, 21 Apr
 2020 07:51:14 +0000
Received: from CY4PR11MB1688.namprd11.prod.outlook.com
 ([fe80::c597:bb37:1406:863b]) by CY4PR11MB1688.namprd11.prod.outlook.com
 ([fe80::c597:bb37:1406:863b%7]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 07:51:14 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <Ludovic.Desroches@microchip.com>, <linux-i2c@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 1/4] i2c: at91: Send bus clear command if SDA is down
Thread-Topic: [PATCH v4 1/4] i2c: at91: Send bus clear command if SDA is down
Thread-Index: AQHV6/NV5SaG2cctME26LBySNXrA26hgRdKAgCNFhQA=
Date: Tue, 21 Apr 2020 07:51:14 +0000
Message-ID: <6f4fab9e-c400-69c9-f52e-3425d608853b@microchip.com>
References: <20200225155012.22764-1-codrin.ciubotariu@microchip.com>
 <3ebaa9a6-73d5-863f-bc40-e38230ab732e@microchip.com>
In-Reply-To: <3ebaa9a6-73d5-863f-bc40-e38230ab732e@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Codrin.Ciubotariu@microchip.com; 
x-originating-ip: [86.121.14.3]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7bce4182-d6fa-415f-6924-08d7e5c8c46a
x-ms-traffictypediagnostic: CY4PR11MB1942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB19420DE6A97784E1587D6B91E7D50@CY4PR11MB1942.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1688.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(39860400002)(346002)(396003)(366004)(136003)(376002)(8676002)(478600001)(91956017)(36756003)(2616005)(71200400001)(2906002)(31696002)(8936002)(86362001)(4326008)(186003)(66476007)(5660300002)(81156014)(66556008)(110136005)(76116006)(54906003)(66946007)(6486002)(316002)(64756008)(66446008)(53546011)(31686004)(26005)(6506007)(6512007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s3AuWcI/HJ+Rs0iUaKzHokHbkcjV7ayW1TmdB4JD3vfq32tJOxMk1Gq8ggWarfEekXRBLXo5BD34qk+2eOcPwK0Wi3KrOOZNztMJZy4MiI4/9gAgu0PQK/f65E5hUIBPAbwKmlAA00Hw9bkvvRJiX7h9FFWqEn40r1pB3CIl71sF/3GtkZvCHbyFdk6uAkqqI2ahicPzJzOS7VPhmROtfD3p2KnZ0OkNXP0a20opO9vJqMaxvNXhNxYWF1Xo4qJo2Db1MRtCU+NKyh/gN8zKpBa84sktFPvor+PrvZcRwB9Fm6mpAvygLm27sq9iUNyPjm38p1zROM8kBcwGnsdeR9ejzYnsuXLz+/EQi2EZ3btudmAmt3Xs6+5cppbenl4tRSKPnVLp+eYtLcprDuIQmW0qRDVqQTG9w3PiCfKCoZV4H6xjDCIO7Xer05ReGFhJ
x-ms-exchange-antispam-messagedata: CII05IrQoS04ed2mO0i5kr3YyDHKu6njAnEXcPT/PTs+flUBbKcarguG+srySn+3SYxcLXBK9OQXbyPVcG0L0QeMeMo0SKmcRKB5CIBU7Y1A3Ti/pE+W7IZkIaW5w8LNKVl7t23Xhh+e7bt/LdFyMA==
Content-ID: <DD929AE3D7F52044A399555D292E4605@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bce4182-d6fa-415f-6924-08d7e5c8c46a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 07:51:14.5293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vNh6DEGeRBKP1633LbPgGkEzwb4cvKmL5dnMgcvSCzIjZeC8JuIVvWX1ZRgrPcXec+TpHhKWnrMFq1IGuaJPXwtjo+ywO82osA6nt9Ff+fk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_005125_154220_F24B161E 
X-CRM114-Status: GOOD (  22.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.belloni@bootlin.com, wsa@the-dreams.de, linux@armlinux.org.uk,
 robh+dt@kernel.org, peda@axentia.se
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30.03.2020 00:13, Ludovic Desroches - M43218 wrote:
> On 2/25/2020 4:50 PM, Codrin Ciubotariu wrote:
>> After a transfer timeout, some faulty I2C slave devices might hold down
>> the SDA pin. We can generate a bus clear command, hoping that the slave
>> might release the pins.
>> If the CLEAR command is not supported, we will use gpio recovery, if
>> available, to reset the bus.
>>
>> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> 
> Sounds good so
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> 
> Wolfram, you have accepted the v3 of the recovery support and requested
> these changes. It has been sent as a v4, but, in fact, this patch goes
> on top on v3. It could, should, have been a new patch.
> 
> Regards
> 
> Ludovic

Hello, any updates on this patch? Do you want me to change anything?

Best regards,
Codrin

> 
>> ---
>>
>> Changes in v4:
>>    - moved the HW bus clear command in a recover_bus() function, to be able
>>      to just call i2c_recover_bus() if a transfer fails;
>>    - recovery gpios are no longer taken if HW bus clear command is
>>      supported;
>>
>> Changes in v3:
>>    - removed unnecessary condition from info print;
>>    - removed unneded declarations;
>>
>> Changes in v2:
>>    - called i2c_recover_bus() after an error occurs, if SDA is down;
>>    - release gpios if recovery information is incomplete;
>>
>>    drivers/i2c/busses/i2c-at91-core.c   |  2 ++
>>    drivers/i2c/busses/i2c-at91-master.c | 49 ++++++++++++++++++++++++----
>>    drivers/i2c/busses/i2c-at91.h        |  7 +++-
>>    3 files changed, 50 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
>> index 3da1a8acecb5..e14edd236108 100644
>> --- a/drivers/i2c/busses/i2c-at91-core.c
>> +++ b/drivers/i2c/busses/i2c-at91-core.c
>> @@ -131,6 +131,7 @@ static struct at91_twi_pdata sama5d2_config = {
>>    	.has_dig_filtr = true,
>>    	.has_adv_dig_filtr = true,
>>    	.has_ana_filtr = true,
>> +	.has_clear_cmd = false,	/* due to errata, CLEAR cmd is not working */
>>    };
>>    
>>    static struct at91_twi_pdata sam9x60_config = {
>> @@ -142,6 +143,7 @@ static struct at91_twi_pdata sam9x60_config = {
>>    	.has_dig_filtr = true,
>>    	.has_adv_dig_filtr = true,
>>    	.has_ana_filtr = true,
>> +	.has_clear_cmd = true,
>>    };
>>    
>>    static const struct of_device_id atmel_twi_dt_ids[] = {
>> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
>> index 0aba51a7df32..776e95962ab6 100644
>> --- a/drivers/i2c/busses/i2c-at91-master.c
>> +++ b/drivers/i2c/busses/i2c-at91-master.c
>> @@ -480,7 +480,6 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>>    	unsigned long time_left;
>>    	bool has_unre_flag = dev->pdata->has_unre_flag;
>>    	bool has_alt_cmd = dev->pdata->has_alt_cmd;
>> -	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
>>    
>>    	/*
>>    	 * WARNING: the TXCOMP bit in the Status Register is NOT a clear on
>> @@ -641,11 +640,12 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>>    			       AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
>>    	}
>>    
>> -	if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
>> -		dev_dbg(dev->dev,
>> -			"SDA is down; clear bus using gpio\n");
>> -		i2c_recover_bus(&dev->adapter);
>> -	}
>> +	/*
>> +	 * some faulty I2C slave devices might hold SDA down;
>> +	 * we can send a bus clear command, hoping that the pins will be
>> +	 * released
>> +	 */
>> +	i2c_recover_bus(&dev->adapter);
>>    
>>    	return ret;
>>    }
>> @@ -830,7 +830,7 @@ static void at91_unprepare_twi_recovery(struct i2c_adapter *adap)
>>    	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
>>    }
>>    
>> -static int at91_init_twi_recovery_info(struct platform_device *pdev,
>> +static int at91_init_twi_recovery_gpio(struct platform_device *pdev,
>>    				       struct at91_twi_dev *dev)
>>    {
>>    	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
>> @@ -880,6 +880,41 @@ static int at91_init_twi_recovery_info(struct platform_device *pdev,
>>    	return 0;
>>    }
>>    
>> +static int at91_twi_recover_bus_cmd(struct i2c_adapter *adap)
>> +{
>> +	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
>> +
>> +	dev->transfer_status |= at91_twi_read(dev, AT91_TWI_SR);
>> +	if (!(dev->transfer_status & AT91_TWI_SDA)) {
>> +		dev_dbg(dev->dev, "SDA is down; sending bus clear command\n");
>> +		if (dev->use_alt_cmd) {
>> +			unsigned int acr;
>> +
>> +			acr = at91_twi_read(dev, AT91_TWI_ACR);
>> +			acr &= ~AT91_TWI_ACR_DATAL_MASK;
>> +			at91_twi_write(dev, AT91_TWI_ACR, acr);
>> +		}
>> +		at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_CLEAR);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int at91_init_twi_recovery_info(struct platform_device *pdev,
>> +				       struct at91_twi_dev *dev)
>> +{
>> +	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
>> +	bool has_clear_cmd = dev->pdata->has_clear_cmd;
>> +
>> +	if (!has_clear_cmd)
>> +		return at91_init_twi_recovery_gpio(pdev, dev);
>> +
>> +	rinfo->recover_bus = at91_twi_recover_bus_cmd;
>> +	dev->adapter.bus_recovery_info = rinfo;
>> +
>> +	return 0;
>> +}
>> +
>>    int at91_twi_probe_master(struct platform_device *pdev,
>>    			  u32 phy_addr, struct at91_twi_dev *dev)
>>    {
>> diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
>> index f57a6cab96b4..7e7b4955ca7f 100644
>> --- a/drivers/i2c/busses/i2c-at91.h
>> +++ b/drivers/i2c/busses/i2c-at91.h
>> @@ -36,6 +36,7 @@
>>    #define	AT91_TWI_SVDIS		BIT(5)	/* Slave Transfer Disable */
>>    #define	AT91_TWI_QUICK		BIT(6)	/* SMBus quick command */
>>    #define	AT91_TWI_SWRST		BIT(7)	/* Software Reset */
>> +#define	AT91_TWI_CLEAR		BIT(15) /* Bus clear command */
>>    #define	AT91_TWI_ACMEN		BIT(16) /* Alternative Command Mode Enable */
>>    #define	AT91_TWI_ACMDIS		BIT(17) /* Alternative Command Mode Disable */
>>    #define	AT91_TWI_THRCLR		BIT(24) /* Transmit Holding Register Clear */
>> @@ -69,6 +70,8 @@
>>    #define	AT91_TWI_NACK		BIT(8)	/* Not Acknowledged */
>>    #define	AT91_TWI_EOSACC		BIT(11)	/* End Of Slave Access */
>>    #define	AT91_TWI_LOCK		BIT(23) /* TWI Lock due to Frame Errors */
>> +#define	AT91_TWI_SCL		BIT(24) /* TWI SCL status */
>> +#define	AT91_TWI_SDA		BIT(25) /* TWI SDA status */
>>    
>>    #define	AT91_TWI_INT_MASK \
>>    	(AT91_TWI_TXCOMP | AT91_TWI_RXRDY | AT91_TWI_TXRDY | AT91_TWI_NACK \
>> @@ -81,7 +84,8 @@
>>    #define	AT91_TWI_THR		0x0034	/* Transmit Holding Register */
>>    
>>    #define	AT91_TWI_ACR		0x0040	/* Alternative Command Register */
>> -#define	AT91_TWI_ACR_DATAL(len)	((len) & 0xff)
>> +#define	AT91_TWI_ACR_DATAL_MASK	GENMASK(15, 0)
>> +#define	AT91_TWI_ACR_DATAL(len)	((len) & AT91_TWI_ACR_DATAL_MASK)
>>    #define	AT91_TWI_ACR_DIR	BIT(8)
>>    
>>    #define AT91_TWI_FILTR		0x0044
>> @@ -118,6 +122,7 @@ struct at91_twi_pdata {
>>    	bool has_dig_filtr;
>>    	bool has_adv_dig_filtr;
>>    	bool has_ana_filtr;
>> +	bool has_clear_cmd;
>>    	struct at_dma_slave dma_slave;
>>    };
>>    
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
