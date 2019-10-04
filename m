Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E05DCBF19
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0oYfd+pyud2U3X2oELfB/CeA9lxrPjyybiwc6IStKU=; b=Tp0PEN+2DHdn43
	PXlRL/jYlEBfOCOHUCll4yeAXiCFJFnr9iAuYBcSmHUIfQhVc5YK4VotkpW7uFrpTx+2OcUZGdqa/
	mot+wVlGf7fmnBl+8AhymKYBDyBc/i3KZs37HU5VsbPNB2lYImTmnsujfj6J2pVmf/C242b8Wv0zZ
	5PBcG6jKRyHDKPZAjkPFICWJEuPtqcvMHeRCb6wDRieJ3Oy0IgbaNNwLyVBRkEtCg0oHMmGQl5ZTL
	eJMzD5dezq5hmfoW8zEgp7VC6kPeKNk68JZeDfCKsSJuEIbE4enIbyACGySzBhxtCTy4I1aTli7zr
	bRA9x6QhfwEzb0ELqEtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPSl-0005Dk-1k; Fri, 04 Oct 2019 15:25:47 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPSd-0005Cf-1C
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:25:40 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 5frJ9UwRzP7348kfzWvAtx58d+wVjQ9TTzCGCZu3haZm+8MDQquslR2D2umRb1cIP/lwzLBEf3
 li2gRZdgixZ/Zq8aMB+gJInsI1YhPwtvjSNfhFlpZ03o+j4/BO3BOTC0QGipVazzSyDkUz2rpr
 w1A/wZnzBf6AGgqCjZb8rsvKGXEHJ/PWgnHQ8+RrYIRWlK9kEHTlsEzrsQEQ614b/vpRIf1DR2
 aw2R/1waXvuJHqd5DDtzHLEw0MGry2OayyBFWMfWE1tI/gzC87G002TRV2bqjRmMLd6mTOimCX
 ccY=
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="51539823"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Oct 2019 08:25:31 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Oct 2019 08:25:30 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Oct 2019 08:25:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oScLRrG4YOcOqw/sWimg2xlirBGeYhecCyvef84NQ6+88dcDO9o5tqaRN6Xs+1nl2ucBZkwNSVcOEQpPehcV8n4l1N/Rha2nc+ST1aZKWSZ6iejXSQ9/4jffCBHrARx4BKmvKjIhB0CmAFOwaURpVV5tca9LKBXjL8U/0e1DlwjfI6haLOCy5VzNZg2yMVnzXlVM+9gPYfdI43E8O5JyGFaM+G2GzE6jRHuygbRZDqInni6qr5DIvaRfeL4LjY2ff1q/DLFTVlNkMas5wDq067CqKIz9GUJUdrmRNofDwu5SxUPtPCtzc4VtH0HnHhiAQuXtENNI7H/CLvdte6223Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4P0VWht6bGDWatGqup7wrP3H9ZXqsLWLAT9wCLETBps=;
 b=lBtA1DFb2ppUrldcopToldJD7IfiMmYLU37uhIC5Gtr8mIZgxQsuxHouQCuo7MW4Uh0J3S5s1rIM5JhJqo2t7G+iYc48L/RW+yRwozhOoUa8zF6PEjD7FDTpHzQ6mxgCxi5QCk1B7zdMUc8L6MEmx/AdZRlaW0oaG4Ak7EJyzVOBYF87pkUJBeVEPVVrw903FRKnTxvdagH8zPXa7VYyjFXh6wOb/GyKRXBg33tYbFaAbYM5+z0kLMRhR4B8R83+hvUOacCHhEjgZ6ZqBwtBoRTPUrHUwbNgCUqwuyaDXqHANmXlaayye2gL+t/l6ZGYpHLPBknJ5kw+sFpBGRyygw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4P0VWht6bGDWatGqup7wrP3H9ZXqsLWLAT9wCLETBps=;
 b=ka5g6sERIapF+h+ZniY2SUFixKL8O2gsv7N5GcKsxnBw59LBUbMRmOMgzJNBC9X1NR6bW9evDwkRJfcnJ6e4CPiCPMq9GFQEnxXc48YPJ8fyFyOr4ngQeFcKAKxucc8p9L0v18PoyZE+tcX65stmxYaFpwsF3tzNiYHkv7t7kas=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1679.namprd11.prod.outlook.com (10.172.55.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.23; Fri, 4 Oct 2019 15:25:27 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::5d81:aef1:f63:3735]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::5d81:aef1:f63:3735%3]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 15:25:27 +0000
From: <Nicolas.Ferre@microchip.com>
To: <Tudor.Ambarus@microchip.com>, <kamel.bouhara@bootlin.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Topic: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Index: AQHVer3h3w7XtCBnIUqO0cxT2FepoadKkcyAgAAIloA=
Date: Fri, 4 Oct 2019 15:25:27 +0000
Message-ID: <c4af6562-16e4-026a-3c54-bde1d4f1b5c3@microchip.com>
References: <20191004141256.14491-1-kamel.bouhara@bootlin.com>
 <a8c16919-9842-8a2a-81b0-16551c6a7944@microchip.com>
In-Reply-To: <a8c16919-9842-8a2a-81b0-16551c6a7944@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0174.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1c::18) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15159f3e-0026-443a-735f-08d748df1578
x-ms-traffictypediagnostic: MWHPR11MB1679:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB167922EA218622C83B7D2EC2E09E0@MWHPR11MB1679.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(396003)(366004)(39860400002)(189003)(199004)(40224003)(81166006)(81156014)(8936002)(2501003)(305945005)(66066001)(8676002)(3846002)(6116002)(256004)(14444005)(486006)(229853002)(2616005)(476003)(11346002)(6246003)(386003)(6506007)(6512007)(186003)(6436002)(86362001)(53546011)(71190400001)(71200400001)(7736002)(5660300002)(102836004)(6306002)(4326008)(446003)(26005)(6486002)(52116002)(14454004)(76176011)(110136005)(31696002)(36756003)(99286004)(25786009)(66556008)(66476007)(66446008)(64756008)(66946007)(31686004)(2906002)(316002)(966005)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1679;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g5KmD3cJKGBT/l9xw0ncueAth/XMc4I0CZD6NKscbkwbjXLy6uP36+ENorxijJzcrKFO/762CiucpY1vvoqebWj9q6X8+VUtruPs1UKyGfWbkzV4VOihA63rrXv1KafhB1Y6X1RRETlhLB1auZYfTRSu7GAutUzdnb43ZnDevt9kSWYTiTXMBm5FPw8eRZF88HaRredL8ylucc1u5L2oiT+QRNOrm9rrX1Huypq2636hU5uXea3Da6E2FovKF0nSVmzUqApjYZYCvAL/zldp7RqFXf8mEoCLC2dmltkeJczC7zQKW15cRORjqODh2ZJEi6Qq8HETlbFBg6Gykq2lQF/A6UfseKsAO2kDFXXIbQDfgvIeJjrAEPChdvy+7ckQjvKOgq9rBiSWD7pGoiys9AUZQqnpFm38H00joeBNe6ACcFvK7lEcmtFl3UD7qDbhetKIYj06jXeSMy6ddEGp/g==
Content-ID: <B3FDD106DD5E614E819976F113A21472@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 15159f3e-0026-443a-735f-08d748df1578
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 15:25:27.3975 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O60JafAckKT1PR5VmAvb4J6sYhinkIFG2c2awPKzSEZEnIxeFsdRmzjhJ34Cnojv7v7ET/1nakMBwPWkEVHf9A9m4L8iSaMEMN29vm3zziw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1679
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_082539_125055_0494BD00 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/10/2019 at 16:54, Tudor Ambarus - M18064 wrote:
> 
> 
> On 10/04/2019 05:12 PM, Kamel Bouhara wrote:
>> External E-Mail
>>
>>
>> Add support to read SFR's read-only registers providing the SoC
>> Serial Numbers (SN0+SN1) to userspace.
>>
>> ~ #  hexdump -n 8  -e'"%d\n"' /sys/bus/nvmem/devices/atmel-sfr0/nvmem
>> 959527243
>> 371539274
>>
>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
>> ---
>>   Changes in v5:
>>   - Removed the blankline at EOF
>>   - Feeded the entropy pool with the SoC SN using add_device_randomness()
>>     and do it only once at probe().
>>
>>   drivers/soc/atmel/Kconfig  | 11 +++++
>>   drivers/soc/atmel/Makefile |  1 +
>>   drivers/soc/atmel/sfr.c    | 99 ++++++++++++++++++++++++++++++++++++++
>>   3 files changed, 111 insertions(+)
>>   create mode 100644 drivers/soc/atmel/sfr.c
>>
>> diff --git a/drivers/soc/atmel/Kconfig b/drivers/soc/atmel/Kconfig
>> index 05528139b023..50caf6db9c0e 100644
>> --- a/drivers/soc/atmel/Kconfig
>> +++ b/drivers/soc/atmel/Kconfig
>> @@ -5,3 +5,14 @@ config AT91_SOC_ID
>>   	default ARCH_AT91
>>   	help
>>   	  Include support for the SoC bus on the Atmel ARM SoCs.
>> +
>> +config AT91_SOC_SFR
>> +	tristate "Special Function Registers support"
>> +	depends on ARCH_AT91 || COMPILE_TEST
>> +	help
>> +	  This is a driver for the Special Function Registers available on
>> +	  Atmel SAMA5Dx SoCs, providing access to specific aspects of the
>> +	  integrated memory, bridge implementations, processor etc.
>> +
>> +	  This driver can also be built as a module. If so, the module
>> +	  will be called sfr.
>> diff --git a/drivers/soc/atmel/Makefile b/drivers/soc/atmel/Makefile
>> index 7ca355d10553..d849a897cd77 100644
>> --- a/drivers/soc/atmel/Makefile
>> +++ b/drivers/soc/atmel/Makefile
>> @@ -1,2 +1,3 @@
>>   # SPDX-License-Identifier: GPL-2.0-only
>>   obj-$(CONFIG_AT91_SOC_ID) += soc.o
>> +obj-$(CONFIG_AT91_SOC_SFR) += sfr.o
>> diff --git a/drivers/soc/atmel/sfr.c b/drivers/soc/atmel/sfr.c
>> new file mode 100644
>> index 000000000000..145e9af63b4c
>> --- /dev/null
>> +++ b/drivers/soc/atmel/sfr.c
>> @@ -0,0 +1,99 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * sfr.c - driver for special function registers
>> + *
>> + * Copyright (C) 2019 Bootlin.
>> + *
>> + */
>> +#include <linux/mfd/syscon.h>
>> +#include <linux/module.h>
>> +#include <linux/nvmem-provider.h>
>> +#include <linux/random.h>
>> +#include <linux/of.h>
>> +#include <linux/of_device.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/regmap.h>
>> +
>> +#define SFR_SN0		0x4c
>> +#define SFR_SN_SIZE	8
>> +
>> +struct atmel_sfr_priv {
>> +	struct regmap			*regmap;
>> +};
>> +
>> +static int atmel_sfr_read(void *context, unsigned int offset,
>> +			  void *buf, size_t bytes)
>> +{
>> +	struct atmel_sfr_priv *priv = context;
>> +
>> +	return regmap_bulk_read(priv->regmap, SFR_SN0 + offset,
>> +				buf, bytes / 4);
>> +}
>> +
>> +static struct nvmem_config atmel_sfr_nvmem_config = {
>> +	.name = "atmel-sfr",
>> +	.read_only = true,
>> +	.word_size = 4,
>> +	.stride = 4,
>> +	.size = SFR_SN_SIZE,
>> +	.reg_read = atmel_sfr_read,
>> +};
>> +
>> +static int atmel_sfr_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct device_node *np = dev->of_node;
>> +	struct nvmem_device *nvmem;
>> +	struct atmel_sfr_priv *priv;
>> +	u8 sn[SFR_SN_SIZE];
>> +	int ret;
>> +
>> +	priv = devm_kmalloc(dev, sizeof(*priv), GFP_KERNEL);
>> +	if (!priv)
>> +		return -ENOMEM;
>> +
>> +	priv->regmap = syscon_node_to_regmap(np);
>> +	if (IS_ERR(priv->regmap)) {
>> +		dev_err(dev, "cannot get parent's regmap\n");
>> +		return PTR_ERR(priv->regmap);
>> +	}
>> +
>> +	atmel_sfr_nvmem_config.dev = dev;
>> +	atmel_sfr_nvmem_config.priv = priv;
>> +
>> +	nvmem = devm_nvmem_register(dev, &atmel_sfr_nvmem_config);
>> +	if (IS_ERR(nvmem)) {
>> +		dev_err(dev, "error registering nvmem config\n");
>> +		return PTR_ERR(nvmem);
>> +	}
>> +
>> +	ret = atmel_sfr_read(priv, 0, sn, SFR_SN_SIZE);
>> +	if (ret == 0)
>> +		add_device_randomness(sn, SFR_SN_SIZE);
>> +
>> +	return 0;
> 
> 	return ret;
> 
> to not miss a possible error from atmel_sfr_read().
> 
> The code looks good, with this fixed one can add:
> Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> As I told in v3, I have some doubts on the use cases for this driver, but let's
> see what the at91 folks think.

Well, I'm sure to not know all the applications of this feature but 
surely unique serial number (per single chip) is very useful while 
wanting to identify your system precisely: attributing a MAC address, 
pairing with one service or user software, generating unique keys, etc.

What I don't know is if there is special API in the kernel to use it as 
several vendors seem to expose it differently (/proc/cpuinfo being one 
other option). This one in nvmem /sys file is surely a valid one.

Best regards,
   Nicolas

>> +static const struct of_device_id atmel_sfr_dt_ids[] = {
>> +	{
>> +		.compatible = "atmel,sama5d2-sfr",
>> +	}, {
>> +		.compatible = "atmel,sama5d4-sfr",
>> +	}, {
>> +		/* sentinel */
>> +	},
>> +};
>> +MODULE_DEVICE_TABLE(of, atmel_sfr_dt_ids);
>> +
>> +static struct platform_driver atmel_sfr_driver = {
>> +	.probe = atmel_sfr_probe,
>> +	.driver = {
>> +		.name = "atmel-sfr",
>> +		.of_match_table = atmel_sfr_dt_ids,
>> +	},
>> +};
>> +module_platform_driver(atmel_sfr_driver);
>> +
>> +MODULE_AUTHOR("Kamel Bouhara <kamel.bouhara@bootlin.com>");
>> +MODULE_DESCRIPTION("Atmel SFR SN driver for SAMA5D2/4 SoC family");
>> +MODULE_LICENSE("GPL v2");
>> --
>> 2.23.0
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>
>>


-- 
Nicolas Ferre
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
