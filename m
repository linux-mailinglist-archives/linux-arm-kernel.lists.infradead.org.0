Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05730BEF22
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 11:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+E2WyN8dDo5RgY27g6y4WSLY/yaej/wGD2ldax+TFY=; b=mcJyfjOwc0yOf/
	P4Rkb2MUJvd4fUA0t6FDS1k7uQwhgo6a1bJDWMgKJRD233EaLeEek/8rIxMmqGXieUQcsp4gX+G4d
	GGqITdOCm/XvdMc69bHL0G/R3OM3G7ELwv8PUIQDeyh06XlD4PAAAl8ElDafCfvILXj9UbDa9wDuh
	EMLtk1BrDPqgwNZAgh4+hx9qf8umwy3+FXlFYmGhUccUWVtmlpfc6ZN/1QtKIhjCqc9IiNPeH64Sk
	zqfJ83ru6qpbqMhtzjcYruHUAO34ME5dYGPJlYbtDAoq+SKGhOPyRrKP1PDWEofaEXinmhU1HHOis
	RwJs6pbq0dQrneLMV9Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDQXd-0003hV-Fc; Thu, 26 Sep 2019 09:58:29 +0000
Received: from mail-eopbgr140088.outbound.protection.outlook.com
 ([40.107.14.88] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQXP-0003bn-UZ
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 09:58:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QAwviciHbdrz2B/nWgsQPUcK6xcK/v/YEqEsvIb4HuRo4SdgKNYb5k88e9WLyMbPMZfJuPU/UyFuSrWtg+5ca6NjHQBEhZYjfws4R0RRUxx2s5vtxitTNSXERGJtiOL7Bhj7GZOcScRXVI6CoiPBnG6m/ROjQ/JjItejUu9utxzwN78rLQd2fIWF+v7GDQAEt/bJzxdSOHwLXIC4dRGkTTveUaicmVq7KEcrC4J1XZjzFb9aKHXwJBFa1SQyei5AZ6Ykf+oTh6il5poJTHhRU1+X5PnapXUgSoaS2wRDDCorl98HNQcrsJUwP90XI+86ei67v587h7SdkcAvigqdWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ABe97go+nZCRTI2LKCBRF/WxA3lWz/ryjkHGSZWQAfQ=;
 b=lx9DlK0MSnLx8rDfxZmtoGEJl+MSnl79pKUL7wnGBT8xj8wqJuAQo4ssKkCov6AC0+F1/yMqa2sKVplG/voes1w1HONW2LWZ9A8+YB9moCNUUiViCqWc0PdM+mKT1Knf7q3Nd2Wt4OQG3Nq2SaseHKzZ224EHNgAHDZPPjqmrNZ3T8ESt+IclyjreiwFyMEjHpkNom5oJ8lf9By0ObWq13BjoKLROEmOtTKolL8lidl0T5Y64Pavf2AQ8h4SWZ8T7nS5HWqjPGy661FeFl5Dqu9s2M56oCeikA5Rq/XPCTrQSgpQSHDeSNU8P6U1A4oHr5lbEIgrLY1HCuy9FHBGoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ABe97go+nZCRTI2LKCBRF/WxA3lWz/ryjkHGSZWQAfQ=;
 b=BPly+uU99jIVJeKeykRe0uOHnw+jLK348PRn716v9DMfewcudP81A0dmt+IasFYsJ0jy2SmTJXCwhBzl1elzXxvL9Wk7T3ZUDMZKRWatc4uOLetsfk6Nm/DAglB8BsPQP+RcOgOsdzs4DyPOX9UbxiQ19zvV+wo3IvXnHNkil9E=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB5404.eurprd04.prod.outlook.com (20.178.107.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Thu, 26 Sep 2019 09:58:09 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa%5]) with mapi id 15.20.2284.023; Thu, 26 Sep 2019
 09:58:09 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Biwen Li <biwen.li@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>, Ran Wang
 <ran.wang_1@nxp.com>
Subject: RE: [v4,1/3] soc: fsl: handle RCPM errata A-008646 on SoC LS1021A
Thread-Topic: [v4,1/3] soc: fsl: handle RCPM errata A-008646 on SoC LS1021A
Thread-Index: AQHVdBVe5geLyFI8uEOyK3tYbajH66c9uVxw
Date: Thu, 26 Sep 2019 09:58:09 +0000
Message-ID: <DB7PR04MB4490A0282C3D6173D900B7D98F860@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20190926024118.15931-1-biwen.li@nxp.com>
In-Reply-To: <20190926024118.15931-1-biwen.li@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 305c31e6-d44d-44ba-91cb-08d74268097e
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB7PR04MB5404:|DB7PR04MB5404:
x-ms-exchange-purlcount: 8
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5404BD0757F44A0E42D5737D8F860@DB7PR04MB5404.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(366004)(346002)(376002)(53754006)(199004)(189003)(99286004)(8936002)(14454004)(3846002)(66946007)(6116002)(6636002)(256004)(86362001)(55016002)(9686003)(6306002)(6436002)(33656002)(229853002)(25786009)(52536014)(14444005)(66446008)(4326008)(74316002)(2906002)(76116006)(76176011)(305945005)(7736002)(2501003)(66476007)(66556008)(64756008)(110136005)(54906003)(316002)(7696005)(6246003)(5660300002)(66066001)(81156014)(26005)(186003)(476003)(44832011)(6506007)(11346002)(446003)(102836004)(486006)(966005)(8676002)(71200400001)(71190400001)(81166006)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5404;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CB9KgWpshHa9BiKeyjCZHGSsrD3ZrNArNPWjN+NW0DEaJoVmo9mjIQASptDAp4Z5mh7IrBMmULk9V6chnxg5OJ43vtAVMFDf75ATVPAvuj/A2tT5/eQFfbJQGK3LQQTk1Y/SLmq9JZ8IjN+BYE/LYjcRngqnHSzmtnM0ZmfjPgcrPBh30DJuoApE95Y/YF0HMaZsNUjLEgW2kEdJ15LLYYhi6xEsIMXAKjmcU41N3WzjtvIX3w0hjhi0xLP9TGdg0VstUMm0xRgZvGzRWJNR5fpR1LvwZqYzkMCD0dOh54dIihMR0pOMU503OxY5ppTVS165xfPp3rG8rU4pSxidRaZ9xFhwf/p6WB3GnfZ+rT0jxo7wc8Fer+3rZI75nDkkhfUBYrMzcyzY9uQ99I7ap0s8dsVlshgQq0O7iMdGIFs/kuF/u3oq6UzVnsMAtLmSQcZ5Ukgooy1A/ucD4Ne2SQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 305c31e6-d44d-44ba-91cb-08d74268097e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 09:58:09.7767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZwBfh/a11Ylh4CqA7KaijNTAp8NlBjrZKfqrnlXbMvVjGzZjY0Zr0U4hUsKlN4ggbcWEAPNRF4Vyb89/EeY5JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5404
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_025815_989525_52700AB9 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.88 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
the linux patch depended by RCPM driver,FlexTimer driver and FlexTimer dts, need apply these patches as follows:

1. RCPM driver:

https://patchwork.kernel.org/series/162731/mbox/ (https://patchwork.kernel.org/patch/11105279/)

2. FlexTimer dts:

https://lore.kernel.org/patchwork/series/405653/mbox/ (https://lore.kernel.org/patchwork/patch/1112493/)

3. FlexTimer driver:

https://patchwork.ozlabs.org/series/124718/mbox/ (https://patchwork.ozlabs.org/patch/1145999/)

https://patchwork.ozlabs.org/series/126942/mbox/ (https://patchwork.ozlabs.org/patch/1152085/)

4. Adjust drivers/soc/fsl/Makefile:

   remove the line 'obj-y += ftm_alarm.o' in drivers/soc/fsl/Makefile to resolve a compilation error

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
> 	- fix stype problems
> 
>  drivers/soc/fsl/rcpm.c | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/drivers/soc/fsl/rcpm.c b/drivers/soc/fsl/rcpm.c index
> 82c0ad5e663e..9a29c482fc2e 100644
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
> @@ -29,6 +31,9 @@ static int rcpm_pm_prepare(struct device *dev)
>  	struct rcpm		*rcpm;
>  	u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1], tmp;
>  	int i, ret, idx;
> +	struct regmap *scfg_addr_regmap = NULL;
> +	u32 reg_offset[RCPM_WAKEUP_CELL_MAX_SIZE + 1];
> +	u32 reg_value = 0;
> 
>  	rcpm = dev_get_drvdata(dev);
>  	if (!rcpm)
> @@ -63,6 +68,34 @@ static int rcpm_pm_prepare(struct device *dev)
>  					tmp |= value[i + 1];
>  					iowrite32be(tmp, rcpm->ippdexpcr_base + i * 4);
>  				}
> +				/* Workaround of errata A-008646 on SoC LS1021A:
> +				 * There is a bug of register ippdexpcr1.
> +				 * Reading configuration register RCPM_IPPDEXPCR1
> +				 * always return zero. So save ippdexpcr1's value
> +				 * to register SCFG_SPARECR8.And the value of
> +				 * ippdexpcr1 will be read from SCFG_SPARECR8.
> +				 */
> +				scfg_addr_regmap =
> syscon_regmap_lookup_by_phandle(np,
> +
> "fsl,ippdexpcr1-alt-addr");
> +				if (scfg_addr_regmap && (1 == i)) {
> +					if (of_property_read_u32_array(dev->of_node,
> +					    "fsl,ippdexpcr1-alt-addr",
> +					    reg_offset,
> +					    1 + sizeof(u64)/sizeof(u32))) {
> +						scfg_addr_regmap = NULL;
> +						continue;
> +					}
> +					/* Read value from register SCFG_SPARECR8 */
> +					regmap_read(scfg_addr_regmap,
> +						    (u32)(((u64)(reg_offset[1] << (sizeof(u32) *
> 8) |
> +						    reg_offset[2])) & 0xffffffff),
> +						    &reg_value);
> +					/* Write value to register SCFG_SPARECR8 */
> +					regmap_write(scfg_addr_regmap,
> +						     (u32)(((u64)(reg_offset[1] << (sizeof(u32) *
> 8) |
> +						     reg_offset[2])) & 0xffffffff),
> +						     tmp | reg_value);
> +				}
>  			}
>  		}
>  	} while (ws = wakeup_source_get_next(ws));
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
