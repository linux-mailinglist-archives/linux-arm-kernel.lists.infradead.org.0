Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EA21121BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 04:07:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ea7PEFjunsLguFPjqCaJBFZ7Ngz4rEMWFioxt0vRvXM=; b=ppPSHTBhDJyZc6
	Jtq+7zXCXUPXjFs5gTwiSlehGiz4gRA0OnNVkaFi0n/Y054MW0sJHdieWwwhtPN0Eke6CigfOZheK
	46+PBIHtp0ZJeWeVbJIG0YAMdZ/M75CTFjzPadt0op/DV6TtzhhDp1TBVFm7IEmwazNaqu4I17sWR
	x8RyaorkQLy7mEcoPCo9aPxqEImEByYkfqccZVDvPtfA4ZkTl8Wtb6rltDJsAK7okfCnTTb68JILO
	XjLRde7JHn/3z1EdQAS4hUCSG7e9xSWSLvAkbcVaUwxjv/gPpjjvPyhsGdQ1jjW27v000MjTK0OaT
	Hmnvm1zWlW0WRQwwwl0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icL15-0005H7-1n; Wed, 04 Dec 2019 03:07:51 +0000
Received: from mail-eopbgr80055.outbound.protection.outlook.com ([40.107.8.55]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icL0o-000586-A5
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 03:07:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OT73inbMPAFneFm7OfBT+h/SFHBplUVGyX0fVmR3+LcJzYtnE/oWHOUuxOYdqwdwwt4P9wSrNriQaIMzq3l7/g1kGIIZbmZPdwNFRG5AoKAEI1mllowOkgiW0IYNwbEZd682xgaMryuhO+Z6++JKRKwnWMEFj9oceCiGloIId/Bohp7KJUtD5cS1I2/MVmJM1yymAiSUbXRxZ1IdO01xz/X+4BFVhiy71dsIk2bUcVPlR5bGHtIr6UfWiUkJMvDbWX6mXXL1PktWDZhs9613I0b2waQkSeyzfUFiOvyhNZvRz2ibgCBj5LnDgv2fgoxG/g3jH+jVO/CXedc4HpGeRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5ETdrMXm01AuDMAhP/wWeoy9H4GnLYdPoiI05f0/p08=;
 b=dLjLRGw08G0INYbjmO8ZML5pH4/hG4jTcvtD6XI5u7D8tbTQvcn2dx6ZWaZTa53B/RjMpsxC4DP22NkE2YjpsgSNnS1Xec2bPUSFq+EgBf39/6GTN4gpXkly20VTXhBQBqXek+FQ9pJ/T5U/g7hiuG8Phq6YJw0rui2/OOGjxIRWJ44DdUhC4fwONR9dzqf+AlU+iFs4fpEErh8uPPpyk84J4b8N73ZxcKrtxw8dEX/9sj8Dr9T1N6DL+rrPNgwGhYIZUfHom3icO0IP8ODAI77UFfs7GjE7SomYzQvS/wOqVmlOCDSbLFoBemaIjmUUHQ4xIN4dchUiIDTymp4DUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5ETdrMXm01AuDMAhP/wWeoy9H4GnLYdPoiI05f0/p08=;
 b=Qt4CM0CICS1pmAGucwMMTDVkkfNFXOGWhGFve1OKh3Z+COujHX2YnXpDhM6GTQgC1zKOsAaYReiTCarIvTugdu0PPx6ZXnbW3QYqYPJwE/O+EXS6QGUvkc1oGKYUqWN/qYZuwOmRFVtUGbhM0/Vus8ZrCkY43P0w1F1P7NYpZWo=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4041.eurprd04.prod.outlook.com (52.134.110.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Wed, 4 Dec 2019 03:07:30 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4182:4692:ffbd:43a0]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4182:4692:ffbd:43a0%6]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 03:07:29 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Biwen Li <biwen.li@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>, Ran Wang
 <ran.wang_1@nxp.com>
Subject: RE: [v5 1/3] soc: fsl: handle RCPM errata A-008646 on SoC LS1021A
Thread-Topic: [v5 1/3] soc: fsl: handle RCPM errata A-008646 on SoC LS1021A
Thread-Index: AQHVqdVCo9UDQyyZQEuy2dNMI/fYS6epStNw
Date: Wed, 4 Dec 2019 03:07:29 +0000
Message-ID: <DB7PR04MB4490FBD7321BD39AE83E37D68F5D0@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20191203122818.21941-1-biwen.li@nxp.com>
In-Reply-To: <20191203122818.21941-1-biwen.li@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5288d75e-3d78-4874-f34c-08d778671968
x-ms-traffictypediagnostic: DB7PR04MB4041:|DB7PR04MB4041:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB404133991C6178CDAF5F5BF58F5D0@DB7PR04MB4041.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:785;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(189003)(199004)(53754006)(7736002)(66476007)(55016002)(76116006)(66446008)(66556008)(229853002)(966005)(66946007)(81156014)(316002)(7696005)(74316002)(305945005)(64756008)(8676002)(6636002)(14444005)(256004)(86362001)(6116002)(33656002)(2501003)(3846002)(2906002)(5660300002)(14454004)(71200400001)(52536014)(76176011)(9686003)(8936002)(6306002)(81166006)(4326008)(478600001)(6506007)(446003)(26005)(25786009)(11346002)(6246003)(71190400001)(44832011)(6436002)(102836004)(99286004)(54906003)(110136005)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4041;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JaeS3+MArT0ri0dDm2lhm5ncEyqF5uS8YPgJwzwSigNBpJCner4JtjUd36HBIG1oinXZZGI9DMt/OKPFxjy1uWowDeLrYZsR6CNV2c2OU+QMYtKng+hFun1MFB7I6XzQsXhyVNE1JyJmQLB373sZX0NOccgMJLDbkSmPdvvANrXIEtsREfXrWM6wmgBno/2FIIDQGaBHAXJLACFZoJ5jIOXk/tPluD+tcQKSD9Q+Q7K7MU2F/jtlYLDRYYGt9+i9hF/UNzaSQW0Hcq5+BXNjmDS9NqvTj05e5G9kIaWbsJ/kZGiqgDQDh5fTW7/j0N65eChTn8qop4keM1qidTZv6ktnbwLdrXGiqaKh23eCAlrrwYYOOvFBMI9BTxmGuAOyBIweZ5t611w7IYuwdKCJ81WafnPh1YbJZS/rcaG/PN/Ub7Bgzq6Shm3GuHIL5kZrEdyUgXY0gAKxWEegUKfvFEg8jdoGLzWnq163dFmSUE9D6HWEZ387vS9NMaga3+7aEPwrG5tuNLg7ClE9VQJwS9YLgI5kn3IAZdxsFALBaR8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5288d75e-3d78-4874-f34c-08d778671968
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 03:07:29.8777 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XZC6whAQWB6FYq6rrqyPDEs9DDav07G4mfGPykzUyivXdsngyxdeCxs8Eb+YzOm2RomL3W/Y6Lc4tbzYFyjdhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_190734_371561_1C9C214C 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.55 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

1.Need apply below patches before apply these patches.
1.1 Flextimer dts
https://lore.kernel.org/patchwork/series/405653/mbox/ (https://lore.kernel.org/patchwork/patch/1112493/)
1.2 RCPM driver
https://lore.kernel.org/patchwork/patch/1143809/mbox/ [v10,1/3] PM: wakeup: Add routine to help fetch wakeup source object)
https://lore.kernel.org/patchwork/patch/1143810/mbox/ ([v10,2/3] Documentation: dt: binding: fsl: Add 'little-endian' and update Chassis define)
https://lore.kernel.org/patchwork/patch/1143811/mbox/ ([v10,3/3] soc: fsl: add RCPM driver)

> Subject: [v5 1/3] soc: fsl: handle RCPM errata A-008646 on SoC LS1021A
> 
> Description:
> 	- Reading configuration register RCPM_IPPDEXPCR1
> 	  always return zero
> 
> Workaround:
> 	- Save register RCPM_IPPDEXPCR1's value to
> 	  register SCFG_SPARECR8.(uboot's psci also
> 	  need reading value from the register SCFG_SPARECR8
> 	  to set register RCPM_IPPDEXPCR1)
> 
> Impact:
> 	- FlexTimer module will cannot wakeup system in
> 	  deep sleep on SoC LS1021A
> 
> Signed-off-by: Biwen Li <biwen.li@nxp.com>
> ---
> Change in v5:
> 	- update the patch, because of rcpm driver has updated.
> 
> Change in v4:
> 	- rename property name
> 	  fsl,ippdexpcr-alt-addr -> fsl,ippdexpcr1-alt-addr
> 
> Change in v3:
> 	- update commit message
> 	- rename property name
> 	  fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr
> 
> Change in v2:
>   	- fix stype problems
> 
>  drivers/soc/fsl/rcpm.c | 47
> ++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 45 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/fsl/rcpm.c b/drivers/soc/fsl/rcpm.c index
> a093dbe6d2cb..775c618f0456 100644
> --- a/drivers/soc/fsl/rcpm.c
> +++ b/drivers/soc/fsl/rcpm.c
> @@ -6,13 +6,16 @@
>  //
>  // Author: Ran Wang <ran.wang_1@nxp.com>
> 
> +#include <linux/acpi.h>
>  #include <linux/init.h>
> +#include <linux/kernel.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/module.h>
> -#include <linux/platform_device.h>
>  #include <linux/of_address.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
>  #include <linux/slab.h>
>  #include <linux/suspend.h>
> -#include <linux/kernel.h>
> 
>  #define RCPM_WAKEUP_CELL_MAX_SIZE	7
> 
> @@ -37,6 +40,9 @@ static int rcpm_pm_prepare(struct device *dev)
>  	struct device_node	*np = dev->of_node;
>  	u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1];
>  	u32 setting[RCPM_WAKEUP_CELL_MAX_SIZE] = {0};
> +	struct regmap *scfg_addr_regmap = NULL;
> +	u32 reg_offset[RCPM_WAKEUP_CELL_MAX_SIZE + 1];
> +	u32 reg_value = 0;
> 
>  	rcpm = dev_get_drvdata(dev);
>  	if (!rcpm)
> @@ -90,6 +96,43 @@ static int rcpm_pm_prepare(struct device *dev)
>  			tmp |= ioread32be(address);
>  			iowrite32be(tmp, address);
>  		}
> +		/*
> +		 * Workaround of errata A-008646 on SoC LS1021A:
> +		 * There is a bug of register ippdexpcr1.
> +		 * Reading configuration register RCPM_IPPDEXPCR1
> +		 * always return zero. So save ippdexpcr1's value
> +		 * to register SCFG_SPARECR8.And the value of
> +		 * ippdexpcr1 will be read from SCFG_SPARECR8.
> +		 */
> +		if (device_property_present(dev, "fsl,ippdexpcr1-alt-addr")) {
> +			if (dev_of_node(dev)) {
> +				scfg_addr_regmap =
> syscon_regmap_lookup_by_phandle(np,
> +
> "fsl,ippdexpcr1-alt-addr");
> +			} else if (is_acpi_node(dev->fwnode)) {
> +				dev_err(dev, "not support acpi for rcpm\n");
> +				continue;
> +			}
> +
> +			if (scfg_addr_regmap && (i == 1)) {
> +				if (device_property_read_u32_array(dev,
> +				    "fsl,ippdexpcr1-alt-addr",
> +				    reg_offset,
> +				    1 + sizeof(u64)/sizeof(u32))) {
> +					scfg_addr_regmap = NULL;
> +					continue;
> +				}
> +				/* Read value from register SCFG_SPARECR8 */
> +				regmap_read(scfg_addr_regmap,
> +					    (u32)(((u64)(reg_offset[1] << (sizeof(u32) * 8) |
> +					    reg_offset[2])) & 0xffffffff),
> +					    &reg_value);
> +				/* Write value to register SCFG_SPARECR8 */
> +				regmap_write(scfg_addr_regmap,
> +					     (u32)(((u64)(reg_offset[1] << (sizeof(u32) * 8) |
> +					     reg_offset[2])) & 0xffffffff),
> +					     tmp | reg_value);
> +			}
> +		}
>  	}
> 
>  	return 0;
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
