Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF3118F49E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJt5UwvZ7jMZIPCHFCV5nJ7Rq376GZuAvd9fHII2fCc=; b=qKxcp4DPva8gcz
	Uze3hW4oAK4IcWKgY0blH6lJpRHc4UNOVdYUynIWJDVRLTpTld2ODmtGllf3+uLfTRR2vNLq6/iGe
	hpe+oNHgiuu9von/tVp1e02kDfwSuO88rsWctfNGLvzP9l1yA6jY56m9p3PlATAoa3rOHpqQf0GSr
	lk8v4+YJ6YtV93dDQTWeo+QIEDt3ryQjOe4YmVQg2WK8+rcJ14kEDoq4f+Tc3pUYy1ldEpkFTKU1g
	6oxvvbAsuGwa17xA1RD3o3w9/lrGzBzCNQNY6Sv6YkXSfZK58AAiaPiOuclHZwJT7XV5g0eirXy5k
	LbAMFHsvawcL0qkzC62Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMEY-0006YP-VA; Mon, 23 Mar 2020 12:31:11 +0000
Received: from mail-eopbgr30085.outbound.protection.outlook.com ([40.107.3.85]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMEP-0006Xk-CZ
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:31:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AkQwYLKjRtUudNx7vmJG2h2w8FQ/AfF1Q1PjCx0/piB60146DkePsm2flb5GFDcHo0QDFSuNnIwQAjawvhU8pRtIYJHoz0uTQf6DTTc2q4hvzugWlWdG66dMiiT6P9RppfTlwbrIzrEqNLex7tdKKEtTbMPuM6Qtg3w6qx6+MFSz/+WhUwE2ZoBxfU54Z1K2ZykRXyVgOwfTWjtJFpZ7SWzKrSbnMo4Ycbll0SBRDU2xqicTBG/WxGOqqiHPVVzzU4YLeHoMnw9ZLxaLmpgVguSk/vLlmDDM9XeqPPeitPS7qkwwfOrHys0n5lbgx+aT/MejtglSbTYlOCYgBAnCdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5so9viG1dd8HI/hADL7eqqQfiAxBST22N/GIJ+2T2Ds=;
 b=AxexCIsk7boQPkZFKGlfpJ96J1rVxXL0x3qIjYQdD7i5Osx3gCZtX7PMjnHXKT7mqTi1wGTNskgFGM/NgoKKPzu2jkIdqnws7XrAJ90quN+ttuG9wdd8APtJSSEFDm2xaoceZsfe5BdOCxgZHNl5A534l+iAnYXwoeboUzhARyXqi5ZYp7HZU6kCrjkMc/6g2qwePlkDxldZuVG6z2Ph1U0pS4+1JpGQzbsY6fV+o2FBUIcgjWHCeQdis5+kCkJwm07hHHMoeeUo+qrRhcpKtPrfd1/hWHkS8WHlGxqcFBKFgTfRfVYylenPMIkHzVjrPqaPRX0FqDyOxr5ga/woxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5so9viG1dd8HI/hADL7eqqQfiAxBST22N/GIJ+2T2Ds=;
 b=VVht3xDQ0PRYH6ldsJzGbQ4+5/ZTRVQ6zekTrQEFYC+bX6T++ZJRSU8dhtIHdco5qtEl46JkrdQc0bDPAdoGKYkkF7uI+kzem20zk2niXfo+4ykbQhz5SDct17IilecPMtxZ4AfSjOjifJXYMzWt2U+kT437NN1h/iFSR/i7TMI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB4280.eurprd04.prod.outlook.com (52.135.162.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.20; Mon, 23 Mar 2020 12:30:56 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e%5]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 12:30:56 +0000
Subject: Re: [PATCH 03/10] bus/fsl-mc: add support for 'driver_override' in
 the mc-bus
To: Diana Craciun <diana.craciun@oss.nxp.com>, linux-kernel@vger.kernel.org,
 stuyoder@gmail.com, leoyang.li@nxp.com,
 linux-arm-kernel@lists.infradead.org, bharatb.yadav@gmail.com
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
 <20200319154051.30609-4-diana.craciun@oss.nxp.com>
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Message-ID: <99ef2746-6be8-5427-26af-0a34c17f8fd2@nxp.com>
Date: Mon, 23 Mar 2020 14:30:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
In-Reply-To: <20200319154051.30609-4-diana.craciun@oss.nxp.com>
Content-Language: en-GB
X-ClientProxiedBy: BY5PR03CA0028.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::38) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.213.175.155] (192.88.158.246) by
 BY5PR03CA0028.namprd03.prod.outlook.com (2603:10b6:a03:1e0::38) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20 via Frontend
 Transport; Mon, 23 Mar 2020 12:30:52 +0000
X-Originating-IP: [192.88.158.246]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 97ddb2cb-47fe-4f04-3bbf-08d7cf260892
X-MS-TrafficTypeDiagnostic: AM6PR04MB4280:|AM6PR04MB4280:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB428008BEE8D3D83077FB3259ECF00@AM6PR04MB4280.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0351D213B3
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(376002)(136003)(396003)(199004)(36756003)(186003)(4326008)(16526019)(5660300002)(316002)(16576012)(31686004)(2906002)(66476007)(44832011)(6666004)(66556008)(53546011)(6486002)(86362001)(26005)(52116002)(2616005)(956004)(478600001)(31696002)(8676002)(81166006)(81156014)(66946007)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4280;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qGvRSmDlL3yAMjMthxoHNh3NLzNZJR/YHDCEXSwHjHUU/rTl20tJwGNO37TGgjMGyfSF7wvSWdEh3XhcDHxn8LhENXY1GBHzbVJsB1ZlNKJFk1F0mWGf6DSvRPlONwFMzSWqb621Us1FQSOBkquUo2EtNoampe0rggL9qwQI/wpSUc4vG12N+zsMQDQc9qItosu7RR0pQ4iYmV/7RjnNhBpRgFmabAflBlLvqMJzt2zXTaqYhYzUeCpnqLoTVipq7fO4rGtPWyLcXSoCDI3St0IoBymzrcF5risxznTps71Zy6ieC78zKp8TviIB0DMa73+GcIhexvkBxEyPP1o26y4M5rR9b34rdGd33vl9kQ9x6RH4J5SE4MH5eeJtz9fF5WSsfXcoL3+hgq4V3oPrJSDYAqI4VMdMmlE8um1FPALXWRDzbTZWg6qsUYSuf6oe
X-MS-Exchange-AntiSpam-MessageData: bwn0Q8ezTbWLQH0xF9xaXR6THiG0pToFENrhsiEx1CAg7O2oCup6LDk96lFbuOPVJ/HpfnmVr0s+tQpPRK+0tZhzdwNvliidZQ3pC3XjEsNAn+h1sQju/QeyYAHSI2uVBJGmKLZFhsvii4YDaLOI3w==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97ddb2cb-47fe-4f04-3bbf-08d7cf260892
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2020 12:30:55.8491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: INVMLx/O81ypnF8knnoA6QdBXGp1WphXsfUMMRhmsC5FA69OXcXM2qlcv3KcD/lglF9Vd9GHHflDU72wQBNC+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4280
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_053101_438279_08243CC4 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Bharat Bhushan <Bharat.Bhushan@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/19/2020 5:40 PM, Diana Craciun wrote:
> From: Bharat Bhushan <Bharat.Bhushan@nxp.com>
> 
> This patch is required for vfio-fsl-mc meta driver to successfully bind
> layerscape container devices for device passthrough. This patch adds
> a mechanism to allow a layerscape device to specify a driver rather than
> a layerscape driver provide a device match.
> 
> Example to allow a device (dprc.1) to specifically bind
> with driver (vfio-fsl-mc):-
>  - echo vfio-fsl-mc > /sys/bus/fsl-mc/devices/dprc.1/driver_override
>  - echo dprc.1 > /sys/bus/fsl-mc/drivers/fsl_mc_dprc/unbind
>  - echo dprc.1 > /sys/bus/fsl-mc/drivers/vfio-fsl-mc/bind
> 
> Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
> ---
>  drivers/bus/fsl-mc/fsl-mc-bus.c | 54 +++++++++++++++++++++++++++++++++
>  include/linux/fsl/mc.h          |  1 +
>  2 files changed, 55 insertions(+)
> 
> diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
> index c78d10ea641f..baf8259262a9 100644
> --- a/drivers/bus/fsl-mc/fsl-mc-bus.c
> +++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
> @@ -3,6 +3,7 @@
>   * Freescale Management Complex (MC) bus driver
>   *
>   * Copyright (C) 2014-2016 Freescale Semiconductor, Inc.
> + * Copyright 2019-2020 NXP
>   * Author: German Rivera <German.Rivera@freescale.com>
>   *
>   */
> @@ -83,6 +84,12 @@ static int fsl_mc_bus_match(struct device *dev, struct device_driver *drv)
>  	struct fsl_mc_driver *mc_drv = to_fsl_mc_driver(drv);
>  	bool found = false;
>  
> +	/* When driver_override is set, only bind to the matching driver */
> +	if (mc_dev->driver_override) {
> +		found = !strcmp(mc_dev->driver_override, mc_drv->driver.name);

I think we can use sysfs_streq() here and ...


> +		goto out;
> +	}
> +
>  	if (!mc_drv->match_id_table)
>  		goto out;
>  
> @@ -147,8 +154,52 @@ static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
>  }
>  static DEVICE_ATTR_RO(modalias);
>  
> +static ssize_t driver_override_store(struct device *dev,
> +				     struct device_attribute *attr,
> +				     const char *buf, size_t count)
> +{
> +	struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
> +	const char *driver_override, *old = mc_dev->driver_override;
> +	char *cp;
> +
> +	if (WARN_ON(dev->bus != &fsl_mc_bus_type))
> +		return -EINVAL;
> +
> +	if (count >= (PAGE_SIZE - 1))
> +		return -EINVAL;
> +
> +	driver_override = kstrndup(buf, count, GFP_KERNEL);
> +	if (!driver_override)
> +		return -ENOMEM;
> +
> +	cp = strchr(driver_override, '\n');
> +	if (cp)
> +		*cp = '\0';

drop this strchr() ...

> +	if (strlen(driver_override)) {
> +		mc_dev->driver_override = driver_override;
> +	} else {
> +		kfree(driver_override);
> +		mc_dev->driver_override = NULL;
> +	}
> +
> +	kfree(old);
> +
> +	return count;
> +}
> +
> +static ssize_t driver_override_show(struct device *dev,
> +				    struct device_attribute *attr, char *buf)
> +{
> +	struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
> +
> +	return snprintf(buf, PAGE_SIZE, "%s\n", mc_dev->driver_override);

and also the terminating '\n' here.

> +}
> +static DEVICE_ATTR_RW(driver_override);
> +
>  static struct attribute *fsl_mc_dev_attrs[] = {
>  	&dev_attr_modalias.attr,
> +	&dev_attr_driver_override.attr,
>  	NULL,
>  };
>  
> @@ -704,6 +755,9 @@ EXPORT_SYMBOL_GPL(fsl_mc_device_add);
>   */
>  void fsl_mc_device_remove(struct fsl_mc_device *mc_dev)
>  {
> +	kfree(mc_dev->driver_override);
> +	mc_dev->driver_override = NULL;
> +
>  	/*
>  	 * The device-specific remove callback will get invoked by device_del()
>  	 */
> diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
> index 54d9436600c7..88095fd30c80 100644
> --- a/include/linux/fsl/mc.h
> +++ b/include/linux/fsl/mc.h
> @@ -194,6 +194,7 @@ struct fsl_mc_device {
>  	struct fsl_mc_device_irq **irqs;
>  	struct fsl_mc_resource *resource;
>  	struct device_link *consumer_link;
> +	const char *driver_override;

We probably don't want const here.

---
Best Regards, Laurentiu

>  };
>  
>  #define to_fsl_mc_device(_dev) \
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
