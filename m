Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF40197078
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 23:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zooDA3KlLNpSWUPV/U1PaftVlbuWuUUPEajqQjFE7c=; b=ALQlJXNNKqtkPt
	fexHjTtQ9yKUi2f2R75KsLix+d48Jj+LyI/iVIrYJ4SFaHQyxbImY7RGp1EMbMRwnzoOXSa+pT5ur
	1nvHkXQJKM0yEUFbwoEQzvqguE8B+6PGjdQxQm6LEID52h/qH2XaGtxvi19vb2rFGVx97xEAiThsV
	I93U+3U4u6m2UuErdfaihorb+g4yX8j2z/EPoktM7g79tvfkGa45mjv0A40PVVL3iX9heeuMRDPo2
	O6HbZ9401cgynEWuPQBJKagnebuCtrCLfkJgKw70FE5o/RfcVp9OATXosFqfvKqnF+PpFPaxeGRmT
	5qQjbDmD47hX1ab3uCdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfFS-0007gb-O6; Sun, 29 Mar 2020 21:13:38 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfFJ-0007fP-CO
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 21:13:32 +0000
IronPort-SDR: 3YnJI368AXuc/VZVshnv38KgSstQxiY20u0YKvVNGKtHV7xIx9q8wIucw5iSR7SMeGd7QRHAoC
 jip1068FJgxgm7xlFmNedyqGDu0wa7LlU25aojUcV1ohRtBb8hOzCrqOq70eCh8+v0M4ukQOCm
 UuQDrStXqsOBQabw2DMtL9fhEqAyfgYGFmgDKzVybru6LMpAZmK8hcd2nlqNoLEW7Mh/ZrzT53
 SAU2IMl+V6e1+7eQMJcoW5h8iMst8sxhBSXBADu2YmV2DuXvGmQ5VdXXxT9nXG7xvQdVH44hlU
 SP8=
X-IronPort-AV: E=Sophos;i="5.72,321,1580799600"; 
   d="scan'208";a="7371989"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Mar 2020 14:13:18 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 29 Mar 2020 14:13:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 29 Mar 2020 14:13:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d1Jd2CWMwxnFzp7sh1qmkHtpflNpXFvU+3PPSvQZuMGQTqhoSyZW2bjs/PEGyTMxRCxpY6iXHGiEKlxJPY0PMd7HUQwBtd8lXZA82JFxIfeJXAJi9KOdcPBMZwT27PJKm2TVcA8XrabtiQikljtMU9ghFVngUxcZi0fzaECa6PJu+rKW3uK0mJd++AIaTT/z7RBjt1eVhaFs+6qcZXlnRoJMxpzumUw68v7hvpLr0OsQIypYSK4Vxs8vLvTfuU7TiOAvpUnrMeIjt0Q79bxQdUnnt6LAAQ81EmdKYBnJoQyQ2yHNHwESRDob7D52+B0kW41OQLXlJpYk3bxkFd4NSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vYol5Mg3A5bc2EPTNiaWfh255Cyr1hOpMuXADUe6PM=;
 b=EGqAaQutnpnJLXR4yxg2wHv7RKrnLirIUU5XN7Kzm76u3Dtw6qTdMiVTGBGCXlH7kg7XmeMwNjnSdePiwpr2AUroq0yocB9eFDXyFy7mSzwBjq20hAjwUEGVhXimuQtk9/ZJA+m5lhLj6MKuC48UrUOSAWIbeVuh8G0Mtsd5snQa3wpGhfLsj8GXlQfFuOhiXDnDzQxnc23Jb2QQff7fX0higODj9alIdFen8XeLBApupCIZlIV9iYlcKhsC/w924Ddb6C81yPDAciTi3tVM3sP1LnDm5PJhGDA3n/bP1TLKuQ7tcImu/1fuT2CHQJx+DJbKhdtHlRi7Hk12arsEBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vYol5Mg3A5bc2EPTNiaWfh255Cyr1hOpMuXADUe6PM=;
 b=sV4G2aHR7uPI92G+eAMt3FCs1T+oytJMvCE9BQuq9lbRngYO05+W7/z+hST4vXF7KlRShosyLm3f3ZmtjhHLR31+s1CV7MMLBkOzrVAotJp8PwquQRgHJ0lezcN0FragGBACBfPQUM84eihaChXxX1nA02SXc8WDHZA0QMdfhT8=
Received: from DM6PR11MB2777.namprd11.prod.outlook.com (2603:10b6:5:bf::31) by
 DM6PR11MB4753.namprd11.prod.outlook.com (2603:10b6:5:2ac::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.19; Sun, 29 Mar 2020 21:13:15 +0000
Received: from DM6PR11MB2777.namprd11.prod.outlook.com
 ([fe80::3903:ed89:1141:fca6]) by DM6PR11MB2777.namprd11.prod.outlook.com
 ([fe80::3903:ed89:1141:fca6%5]) with mapi id 15.20.2856.019; Sun, 29 Mar 2020
 21:13:15 +0000
From: <Ludovic.Desroches@microchip.com>
To: <Codrin.Ciubotariu@microchip.com>, <linux-i2c@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 1/4] i2c: at91: Send bus clear command if SDA is down
Thread-Topic: [PATCH v4 1/4] i2c: at91: Send bus clear command if SDA is down
Thread-Index: AQHV6/NVDTMXDOPubUuDjXQVQvQtIqhgRdwA
Date: Sun, 29 Mar 2020 21:13:15 +0000
Message-ID: <3ebaa9a6-73d5-863f-bc40-e38230ab732e@microchip.com>
References: <20200225155012.22764-1-codrin.ciubotariu@microchip.com>
In-Reply-To: <20200225155012.22764-1-codrin.ciubotariu@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ludovic.Desroches@microchip.com; 
x-originating-ip: [92.150.97.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67654b6d-81fe-4125-b6d3-08d7d425ff0a
x-ms-traffictypediagnostic: DM6PR11MB4753:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB47538476BF56A3C50DCFE7DBEFCA0@DM6PR11MB4753.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 035748864E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(396003)(376002)(346002)(39850400004)(136003)(31696002)(6506007)(53546011)(110136005)(2616005)(8676002)(6512007)(6486002)(31686004)(36756003)(86362001)(478600001)(54906003)(5660300002)(81166006)(2906002)(186003)(66446008)(26005)(316002)(66556008)(64756008)(81156014)(8936002)(76116006)(4326008)(71200400001)(66476007)(91956017)(66946007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mn1sBrfvVqB7GzXwnwvYz2Uzrh25TXwMrcCl84B1n9FW/hQ+RNAvleGW25e6H9rdIfCv4ZOkT/20A5+NO++Qfk075n6gjkNhwhTP1dJKhllrrVyjzQSjBImLJcN9q4OL17EWwmdOXFnmeYHDEHo6HJE7JYgJw4NNQq0ucAM6rBr6aAoXrDL8oXNF7GYSG2ife02dSoUe1b38NE65eNi2Hmx1CVHc4791ZllXehI0vqT1p+r05OmspN2kh6S/LVtNfFdaR+08bTb8qrzpk3aTX6x0YE4XIyrMDGlVez4bfSH6qZ0065UTXY13AXuVQReLgHvYbUX5JBS6IGA8sj5x7P5NXBRefwfgkwq7etKVV42c4ObZnfTbtf+XQMGnCmA7ryu+RAU0kYtnqxieqKB96FGPm9sNiINuyvHSAHXU0/0+8tlrhCDexKKxY4t06bJ4
x-ms-exchange-antispam-messagedata: og5+AZS1lzfoHlszNMVJWkGcRJFUr3W19WetmWaH3XfAcaue6SuxbzDcyJTkKIyJdAaJ14zH7Es/OmLXcDrRO0A5XBlu0aGnr8Dq1yQwYTFc53a5UXeX8GwjIs1A4abW1r+/1MHqCyc2yBTdwAbIDA==
Content-ID: <632800FB3723DB43945BCCB99702CD01@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 67654b6d-81fe-4125-b6d3-08d7d425ff0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2020 21:13:15.2626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ejy+JZr/csF+AeZLQ1uF/3nY+v3tN2+QpU++7GzUxeOp7Aq0BK/es51L/RZnWXHnyd2AiCVVGGC53NrLZELYl2fDC8Z8aS/sTMdGpWOd60I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4753
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_141329_585864_EBC8A82B 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, wsa@the-dreams.de, linux@armlinux.org.uk,
 robh+dt@kernel.org, peda@axentia.se
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/25/2020 4:50 PM, Codrin Ciubotariu wrote:
> After a transfer timeout, some faulty I2C slave devices might hold down
> the SDA pin. We can generate a bus clear command, hoping that the slave
> might release the pins.
> If the CLEAR command is not supported, we will use gpio recovery, if
> available, to reset the bus.
> 
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

Sounds good so
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Wolfram, you have accepted the v3 of the recovery support and requested 
these changes. It has been sent as a v4, but, in fact, this patch goes 
on top on v3. It could, should, have been a new patch.

Regards

Ludovic

> ---
> 
> Changes in v4:
>   - moved the HW bus clear command in a recover_bus() function, to be able
>     to just call i2c_recover_bus() if a transfer fails;
>   - recovery gpios are no longer taken if HW bus clear command is
>     supported;
> 
> Changes in v3:
>   - removed unnecessary condition from info print;
>   - removed unneded declarations;
> 
> Changes in v2:
>   - called i2c_recover_bus() after an error occurs, if SDA is down;
>   - release gpios if recovery information is incomplete;
> 
>   drivers/i2c/busses/i2c-at91-core.c   |  2 ++
>   drivers/i2c/busses/i2c-at91-master.c | 49 ++++++++++++++++++++++++----
>   drivers/i2c/busses/i2c-at91.h        |  7 +++-
>   3 files changed, 50 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
> index 3da1a8acecb5..e14edd236108 100644
> --- a/drivers/i2c/busses/i2c-at91-core.c
> +++ b/drivers/i2c/busses/i2c-at91-core.c
> @@ -131,6 +131,7 @@ static struct at91_twi_pdata sama5d2_config = {
>   	.has_dig_filtr = true,
>   	.has_adv_dig_filtr = true,
>   	.has_ana_filtr = true,
> +	.has_clear_cmd = false,	/* due to errata, CLEAR cmd is not working */
>   };
>   
>   static struct at91_twi_pdata sam9x60_config = {
> @@ -142,6 +143,7 @@ static struct at91_twi_pdata sam9x60_config = {
>   	.has_dig_filtr = true,
>   	.has_adv_dig_filtr = true,
>   	.has_ana_filtr = true,
> +	.has_clear_cmd = true,
>   };
>   
>   static const struct of_device_id atmel_twi_dt_ids[] = {
> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
> index 0aba51a7df32..776e95962ab6 100644
> --- a/drivers/i2c/busses/i2c-at91-master.c
> +++ b/drivers/i2c/busses/i2c-at91-master.c
> @@ -480,7 +480,6 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>   	unsigned long time_left;
>   	bool has_unre_flag = dev->pdata->has_unre_flag;
>   	bool has_alt_cmd = dev->pdata->has_alt_cmd;
> -	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
>   
>   	/*
>   	 * WARNING: the TXCOMP bit in the Status Register is NOT a clear on
> @@ -641,11 +640,12 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>   			       AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
>   	}
>   
> -	if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
> -		dev_dbg(dev->dev,
> -			"SDA is down; clear bus using gpio\n");
> -		i2c_recover_bus(&dev->adapter);
> -	}
> +	/*
> +	 * some faulty I2C slave devices might hold SDA down;
> +	 * we can send a bus clear command, hoping that the pins will be
> +	 * released
> +	 */
> +	i2c_recover_bus(&dev->adapter);
>   
>   	return ret;
>   }
> @@ -830,7 +830,7 @@ static void at91_unprepare_twi_recovery(struct i2c_adapter *adap)
>   	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
>   }
>   
> -static int at91_init_twi_recovery_info(struct platform_device *pdev,
> +static int at91_init_twi_recovery_gpio(struct platform_device *pdev,
>   				       struct at91_twi_dev *dev)
>   {
>   	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
> @@ -880,6 +880,41 @@ static int at91_init_twi_recovery_info(struct platform_device *pdev,
>   	return 0;
>   }
>   
> +static int at91_twi_recover_bus_cmd(struct i2c_adapter *adap)
> +{
> +	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
> +
> +	dev->transfer_status |= at91_twi_read(dev, AT91_TWI_SR);
> +	if (!(dev->transfer_status & AT91_TWI_SDA)) {
> +		dev_dbg(dev->dev, "SDA is down; sending bus clear command\n");
> +		if (dev->use_alt_cmd) {
> +			unsigned int acr;
> +
> +			acr = at91_twi_read(dev, AT91_TWI_ACR);
> +			acr &= ~AT91_TWI_ACR_DATAL_MASK;
> +			at91_twi_write(dev, AT91_TWI_ACR, acr);
> +		}
> +		at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_CLEAR);
> +	}
> +
> +	return 0;
> +}
> +
> +static int at91_init_twi_recovery_info(struct platform_device *pdev,
> +				       struct at91_twi_dev *dev)
> +{
> +	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
> +	bool has_clear_cmd = dev->pdata->has_clear_cmd;
> +
> +	if (!has_clear_cmd)
> +		return at91_init_twi_recovery_gpio(pdev, dev);
> +
> +	rinfo->recover_bus = at91_twi_recover_bus_cmd;
> +	dev->adapter.bus_recovery_info = rinfo;
> +
> +	return 0;
> +}
> +
>   int at91_twi_probe_master(struct platform_device *pdev,
>   			  u32 phy_addr, struct at91_twi_dev *dev)
>   {
> diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
> index f57a6cab96b4..7e7b4955ca7f 100644
> --- a/drivers/i2c/busses/i2c-at91.h
> +++ b/drivers/i2c/busses/i2c-at91.h
> @@ -36,6 +36,7 @@
>   #define	AT91_TWI_SVDIS		BIT(5)	/* Slave Transfer Disable */
>   #define	AT91_TWI_QUICK		BIT(6)	/* SMBus quick command */
>   #define	AT91_TWI_SWRST		BIT(7)	/* Software Reset */
> +#define	AT91_TWI_CLEAR		BIT(15) /* Bus clear command */
>   #define	AT91_TWI_ACMEN		BIT(16) /* Alternative Command Mode Enable */
>   #define	AT91_TWI_ACMDIS		BIT(17) /* Alternative Command Mode Disable */
>   #define	AT91_TWI_THRCLR		BIT(24) /* Transmit Holding Register Clear */
> @@ -69,6 +70,8 @@
>   #define	AT91_TWI_NACK		BIT(8)	/* Not Acknowledged */
>   #define	AT91_TWI_EOSACC		BIT(11)	/* End Of Slave Access */
>   #define	AT91_TWI_LOCK		BIT(23) /* TWI Lock due to Frame Errors */
> +#define	AT91_TWI_SCL		BIT(24) /* TWI SCL status */
> +#define	AT91_TWI_SDA		BIT(25) /* TWI SDA status */
>   
>   #define	AT91_TWI_INT_MASK \
>   	(AT91_TWI_TXCOMP | AT91_TWI_RXRDY | AT91_TWI_TXRDY | AT91_TWI_NACK \
> @@ -81,7 +84,8 @@
>   #define	AT91_TWI_THR		0x0034	/* Transmit Holding Register */
>   
>   #define	AT91_TWI_ACR		0x0040	/* Alternative Command Register */
> -#define	AT91_TWI_ACR_DATAL(len)	((len) & 0xff)
> +#define	AT91_TWI_ACR_DATAL_MASK	GENMASK(15, 0)
> +#define	AT91_TWI_ACR_DATAL(len)	((len) & AT91_TWI_ACR_DATAL_MASK)
>   #define	AT91_TWI_ACR_DIR	BIT(8)
>   
>   #define AT91_TWI_FILTR		0x0044
> @@ -118,6 +122,7 @@ struct at91_twi_pdata {
>   	bool has_dig_filtr;
>   	bool has_adv_dig_filtr;
>   	bool has_ana_filtr;
> +	bool has_clear_cmd;
>   	struct at_dma_slave dma_slave;
>   };
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
