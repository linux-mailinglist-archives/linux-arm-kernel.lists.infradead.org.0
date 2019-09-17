Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E73AB46C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 07:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUFrQL2EXenXaAeRzrBdiydXJa2yEh2f0kuu5BWTpWc=; b=pO2NTQYKuCU24G
	pJ1REcYDiNJvNlKcwqLzOIWoXQVM7APcQL85ha9XkBvl4KTs01/ctG+5ZQTLPN2AFXYJ775QMbVtn
	OqxQT53NibQk44fOaHu5GfMyiSsn12Iz0PDZ9uhMWPfaqyPGNZTwLtJKxAYmXuM9eRMd041NlgJqa
	z/40YnE8baLNc/hJmJJf8wHi6fNXRJNMXCCc1DrDaGN0Hts7+peRyxkMcJGlOWlqo52fBdwdCIO0X
	seeSDo6R790Oln7fFCevsRGb4Fe2yZazm4DEWBqbMbYNTrNt+zOBPVSHW7oO9pjmdg/ulsH/7sz1K
	vkL/oDNAcSfAmEZ31QNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA5tL-0003zl-Lm; Tue, 17 Sep 2019 05:19:07 +0000
Received: from mail-eopbgr80072.outbound.protection.outlook.com ([40.107.8.72]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA5t7-0003zH-3f
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 05:18:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fqeeMWUg+UpTtYIqKlpYGdwrdxBZUiw5zP//AFnSh/4TyQoHGg+NMC/V1IJQJxhNf+9jD6OAHurE1Oa7dBL7EGxJ4xem5DRxxgnpWvRi220cAmOvPACF8JVYH4S0wSfclCvCn5Fb1A/77vSolUye4/gFugfbOzIUtPhf/v1KzrUPulwQm6Fclcmxjw4e5W5IeROT5xD2Rh+3IVNMgsjPHT7qg2hoHLNOYErJVpGW2rnWhQC2hFyEQTiS51PPBb02ZXRgV06BUAIi1zOmSQC0+4OyR+yleuOgj7ud69XnDzgukus0m+varv+JwmIfnimz5AMRdgG5dlpkYzD0GrB7Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MbYt1bA7N9cNT3SN0+tASLXuMT+2pA/VaphvD4aEk2o=;
 b=Ebcc148/EmBGKQ4lYo9B99YkN/wCzGMGq2d9CDkf+7/V/pRfySkzufp1mH8pgjDwFfrmo+xUqkhtuTEQuvnwvcy5PuJXWB/P0aFtG8ajhGI1q4Qu5zNPabVDfF29T3vxn0/fN4Jb3N1pLw1iQjcP/RTeqALx7/lmU2rN+NQPonQnzuONNHTHSjY4WpIBz4QK20z/YT2uTrsGI3IeelAi47jwco+QaeDvGr6INE5cRbjGPXj2nYZsQL6DHssxtbrPEkEdlLwh+uPa5Fm4NG1OcUy+070Bo2aNQFEGSJ/M4YucHRcElKIcPpywa5EECt1ndt4seBoYntt8BxryH/brjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MbYt1bA7N9cNT3SN0+tASLXuMT+2pA/VaphvD4aEk2o=;
 b=AotuozRIU+IdiRpDyBqfY+TzryrEtPdAfERPV8aoGbtC9nr6gWhjcpWSqqTDlwC5OGNX35HAeL2Px3d7X/ZCIrjlKLFkysi3nwEFZsypS6oIERBNCL7HG6Adz4O6DK81SfF75LLDsoE/WBSQ7SxnHUqqlmc9uQv4BIm3rRd4OYY=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4668.eurprd04.prod.outlook.com (52.135.140.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.15; Tue, 17 Sep 2019 05:18:49 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa%5]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 05:18:49 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Biwen Li <biwen.li@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: RE: [v2,1/3] soc: fsl: fix that flextimer cannot wakeup system in
 deep sleep on LS1021A
Thread-Topic: [v2,1/3] soc: fsl: fix that flextimer cannot wakeup system in
 deep sleep on LS1021A
Thread-Index: AQHVbROdoB535Ez3jEqF/pAa+UXLsacvVCeA
Date: Tue, 17 Sep 2019 05:18:49 +0000
Message-ID: <DB7PR04MB4490FE75A61224ACD6B8D75A8F8F0@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20190917044119.21895-1-biwen.li@nxp.com>
In-Reply-To: <20190917044119.21895-1-biwen.li@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f0619266-7d07-475f-7abc-08d73b2e85e5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR04MB4668; 
x-ms-traffictypediagnostic: DB7PR04MB4668:|DB7PR04MB4668:
x-ms-exchange-purlcount: 8
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4668AA6C442319249E759A1D8F8F0@DB7PR04MB4668.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(39860400002)(346002)(396003)(136003)(53754006)(199004)(189003)(74316002)(76116006)(3846002)(6246003)(8936002)(6506007)(71200400001)(6116002)(25786009)(44832011)(2501003)(71190400001)(26005)(305945005)(7736002)(99286004)(256004)(186003)(316002)(66066001)(110136005)(54906003)(102836004)(55016002)(6306002)(486006)(52536014)(64756008)(9686003)(66556008)(66476007)(7696005)(66946007)(476003)(4326008)(5660300002)(14454004)(478600001)(33656002)(86362001)(2906002)(966005)(76176011)(11346002)(81166006)(229853002)(81156014)(8676002)(446003)(6436002)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4668;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qikXGCFbrEVuIThYZhlCg0Yj+50D8VMzYkFzPNMkHpwvEfLIy9BWsnxWVT0h1premlol2olyJUQewwtNA3kOZmAn2Aorq6diTcwL5g1Ny9lhkwJ0i31z3r1wiap6oC8srz5rOBY6jdDWefPeFyYBjdnZcwvKSnXR4X5/9hm40V33l/0PdwqCDL8/hRiECbK+fTR4cKPmzoYgqhHwzGHhOoOP65vHUpEigCVgs+q129tJMfFqJHdAmgtfrPFrIBS7p+wbF+qeNh8uddPs0HdtljswYE2pp+vvoD4kBuItYtaLApqFDDlMTxj8dcRruINCIjYDjhaEZU8eH75IvgzsHmmXwjUzQuA9LAzzCZ5f1MD2epBKOevkqs7zgLI4YuAnNmgI2m42vRthrBY/VpWV8wS5kanhkTxTJDm9QpxFe8E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0619266-7d07-475f-7abc-08d73b2e85e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 05:18:49.5728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 47P5Hew7ProlSrLVNeJq56+JTb72U+2iGw5NIXwbBEUfhOS38zT/O1Kc+t8R5q23MuTaE52Rw/hXFE+5Li/6xA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4668
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_221853_358430_C2F60BCD 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi all,
	the linux patches depended by RCPM driver,FlexTimer driver and FlexTimer dts, need apply these patches as follows:

	1. RCPM driver:

		https://patchwork.kernel.org/series/162731/mbox/ (https://patchwork.kernel.org/patch/11105279/)

	2. FlexTimer dts:

		https://lore.kernel.org/patchwork/series/405653/mbox/ (https://lore.kernel.org/patchwork/patch/1112493/)

	3. FlexTimer driver:

		https://patchwork.ozlabs.org/series/124718/mbox/ (https://patchwork.ozlabs.org/patch/1145999/)

		https://patchwork.ozlabs.org/series/126942/mbox/ (https://patchwork.ozlabs.org/patch/1152085/)

	4. Adjust drivers/soc/fsl/Makefile:

   		remove the line 'obj-y += ftm_alarm.o' in drivers/soc/fsl/Makefile to resolve a compilation error

> Why:
>     - Cannot write register RCPM_IPPDEXPCR1 on LS1021A,
>       Register RCPM_IPPDEXPCR1's default value is zero.
>       So the register value that reading from register
>       RCPM_IPPDEXPCR1 is always zero.
> 
> How:
>     - Save register RCPM_IPPDEXPCR1's value to
>       register SCFG_SPARECR8.(uboot's psci also
>       need reading value from the register SCFG_SPARECR8
>       to set register RCPM_IPPDEXPCR1)
> 
> Signed-off-by: Biwen Li <biwen.li@nxp.com>
> ---
> Change in v2:
> 	- fix stype problems
> 
>  drivers/soc/fsl/rcpm.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/soc/fsl/rcpm.c b/drivers/soc/fsl/rcpm.c index
> 82c0ad5e663e..0b710c24999c 100644
> --- a/drivers/soc/fsl/rcpm.c
> +++ b/drivers/soc/fsl/rcpm.c
> @@ -13,6 +13,8 @@
>  #include <linux/slab.h>
>  #include <linux/suspend.h>
>  #include <linux/kernel.h>
> +#include <linux/regmap.h>
> +#include <linux/mfd/syscon.h>
> 
>  #define RCPM_WAKEUP_CELL_MAX_SIZE	7
> 
> @@ -63,6 +65,31 @@ static int rcpm_pm_prepare(struct device *dev)
>  					tmp |= value[i + 1];
>  					iowrite32be(tmp, rcpm->ippdexpcr_base + i * 4);
>  				}
> +				#ifdef CONFIG_SOC_LS1021A
> +				/* Workaround: There is a bug of register ippdexpcr1,
> +				 * cannot write it but can read it.Tt's default value is zero,
> +				 * then read it will always returns zero.
> +				 * So save ippdexpcr1's value to register SCFG_SPARECR8.
> +				 * And the value of ippdexpcr1 will be read from
> SCFG_SPARECR8.
> +				 */
> +				{
> +					struct regmap *rcpm_scfg_regmap = NULL;
> +					u32 reg_offset[RCPM_WAKEUP_CELL_MAX_SIZE + 1];
> +					u32 reg_value = 0;
> +
> +					rcpm_scfg_regmap =
> syscon_regmap_lookup_by_phandle(np, "fsl,rcpm-scfg");
> +					if (rcpm_scfg_regmap) {
> +						if (of_property_read_u32_array(dev->of_node,
> +						    "fsl,rcpm-scfg", reg_offset,
> rcpm->wakeup_cells + 1)) {
> +							rcpm_scfg_regmap = NULL;
> +							continue;
> +						}
> +						regmap_read(rcpm_scfg_regmap, reg_offset[i + 1],
> &reg_value);
> +						/* Write value to register SCFG_SPARECR8 */
> +						regmap_write(rcpm_scfg_regmap, reg_offset[i +
> 1], tmp | reg_value);
> +					}
> +				}
> +				#endif //CONFIG_SOC_LS1021A
>  			}
>  		}
>  	} while (ws = wakeup_source_get_next(ws));
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
