Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE8019F832
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1TCDhjgbYNDK056GrOfV8zPsrJFHb4Cb+APro6pZ87A=; b=V6sKCi0gTyzSXrz0gL7RK67mX
	DxOZcDYLRG2gFfCMNn3Tk0TlBvXStITf5BFzaiQibs8WCEBjkSajTNiBqy3l9OvCli7qES1BBRgv5
	dcKLRRyAEU4bOo4B7T5MCyJK7j6m/q0ESy59bnn2xIjEKak3vzQxRQMon5RfDGVo+9EymKFf9bb4V
	Bzq9WvZbdUxnM4/eCHC48pCo9roDEd+QChqV93cqytbYHT16hmoTrGeiihOhnGFQtboMW8XIxw9C8
	R28RAjeZ5RsLFTdXn7FK0BBTe1Wy20a9RT/ZG8eMLxbf7Augtov6jwuzvLlYHoH/6ivHMlg4QzVK3
	XBzYphZbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLT1O-0003S5-8i; Mon, 06 Apr 2020 14:46:42 +0000
Received: from mail-eopbgr60061.outbound.protection.outlook.com ([40.107.6.61]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLT1H-0003RV-1y
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:46:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hfFph8eMlDsbyCPoO+k9zplJ/0BRgHEFm7GfboylJ/PFxXBtENwiaNdG17MzJK14ernbUJtosQytprat+9pKjZB/ALop3vdL2HDbGsjMJVEj+zM7TP5gC6ZnbHLE7rlKvuo2k2AKOlz+po0eAFU+4kh+s3jjwXyXeCZtqDa0mqQ2wjD4uiWjG0HDoYxebZ5Aa+m/Zv7gMA/RrGsDLzSSXlRtHMlJVs8ZHHZd1A7Ib2R6e02Auypla0DHzF7qn8gNXyXexng+Onnhj/OBkg7O/jSzVdsmGEgWg3KaqzFpg6ajSG/0z0NBDiW8Wh0V38Wv+Gfwid88H/a0h8bV3iaAFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OPrVRH1FjqZpCjfC3i1Z5KjnbUr1bOagCXTgCdCFyHI=;
 b=WuVG4yBWqZRy3IP17/57ypd18Ua80hxG/uKyt7/ZT6rc+8jx8/GFtqlt3uP865MnwbAIRAMxXQiBSkr5GFsR1M7kDySje4SEklnlvFyaBRYOWY9hbkcD1C06euOnyfEBhSG5vjdC8uAvFQfb/O8+RNRiKVKaRWTNAW2oJ9J1MJOdYE/EufWqiSEHAD8RqONJzSeOzSY+9B+d1vvG6DFXpUPS5lSVPoaPiQ0uTTvNEzRHEQ2F2gy3ZR0SGJ5DN8Z8Dz22sWf0CXzk4nYhd5sENNZ3iEvLr8Q2kmgjAG9tb1oBIk66JicB3o/3x2+Qo3Vi1aHT3yqu9LRHoJftxJD3Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OPrVRH1FjqZpCjfC3i1Z5KjnbUr1bOagCXTgCdCFyHI=;
 b=ZvJQ2F3BImPs11eYTiMKZse2WSRwl69XAyUsJgpkSqqYzQoHg+0UyBBpV5kJGi0oWuMzVKYwxrySqQ2RURzxc7Hs4sFYqNrKvASTLAiK0gVPs1W4OJvAapnPgdQsYBbFqxZ0ppsBj7yZuH68GjnTMQB7Szfj/hq5wi9adJZT2jY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=diana.craciun@oss.nxp.com; 
Received: from VI1PR0402MB2815.eurprd04.prod.outlook.com
 (2603:10a6:800:ae::16) by VI1PR0402MB2798.eurprd04.prod.outlook.com
 (2603:10a6:800:ae::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Mon, 6 Apr
 2020 14:46:29 +0000
Received: from VI1PR0402MB2815.eurprd04.prod.outlook.com
 ([fe80::24fb:6b3f:f0e6:bd9a]) by VI1PR0402MB2815.eurprd04.prod.outlook.com
 ([fe80::24fb:6b3f:f0e6:bd9a%8]) with mapi id 15.20.2878.018; Mon, 6 Apr 2020
 14:46:29 +0000
Subject: Re: [PATCH 01/10] bus/fsl-mc: Do no longer export the total number of
 irqs outside dprc_scan_objects
From: Diana Craciun OSS <diana.craciun@oss.nxp.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>, Leo Li <leoyang.li@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "bharatb.yadav@gmail.com" <bharatb.yadav@gmail.com>
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
 <20200319154051.30609-2-diana.craciun@oss.nxp.com>
Message-ID: <6fbf30f3-9c45-dcef-b143-702c6ba017a6@oss.nxp.com>
Date: Mon, 6 Apr 2020 17:46:19 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
In-Reply-To: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
Content-Language: en-US
X-ClientProxiedBy: AM6P195CA0082.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:86::23) To VI1PR0402MB2815.eurprd04.prod.outlook.com
 (2603:10a6:800:ae::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.122] (86.127.44.112) by
 AM6P195CA0082.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:86::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15 via Frontend Transport; Mon, 6 Apr 2020 14:46:28 +0000
X-Originating-IP: [86.127.44.112]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4a0d37aa-5175-4bf9-2631-08d7da394a49
X-MS-TrafficTypeDiagnostic: VI1PR0402MB2798:|VI1PR0402MB2798:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB2798E18BB382E9F93AB62FA4BEC20@VI1PR0402MB2798.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 0365C0E14B
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB2815.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(346002)(136003)(39860400002)(31686004)(2906002)(81156014)(81166006)(8936002)(478600001)(6666004)(31696002)(52116002)(53546011)(316002)(16576012)(16526019)(26005)(186003)(6486002)(86362001)(66946007)(5660300002)(110136005)(2616005)(66556008)(66476007)(956004)(8676002);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KU3xwswjQRkkpDMdrU+xzny8etvYfpvC0k6aupfyGkix5Mwn716j6D/N1ZPfG9dvp7IUHFa2yS2yOTo1bCzIH9NX51ZUcbdYNA+gtlc7iqo5ODOWbFUsNwyPKaUfp/lmXyLAEBIdaFMyS8YAxYS9K9Ra3oUsQb+kF4BSox3aOwfEPzazNV1WKiVdedyL0vCAGFgeqBvLV+pCzz4myVL2YHEYudksdVm2AtjQdoZVY+7YxLVoCaBFQwfArt1vKaB1QeFNuplFwez4O4yhaW/ezAwQPKGo3qUN7svMJ1MteK/cpolleFKamRLXfU1YX+AVz7EeSq6bx3J3GABUDAtIbtm7AuQfExsDRKNfYCoKxG9f5Se0qKoqN7i9HHMk6AxLGBQ+7PbiiMi+hGif4BM8G2GMf9IFecapA0W5EuCNDQYDrTKHbY5xJozouDu0Aonq
X-MS-Exchange-AntiSpam-MessageData: hjkrtCqCfjaaGrQzQoufzimfgzTT2rj8b3i+pb3M+oL06kXVd/oBV+wkZqSwTIwi08pwvuVlgywTZm45vNlzlBO6bHU7Zr99OT3J+zwEwruT8NyLHDClQV+1JWgj0by6lIyVznsxj3ddKYPhxwcwIA==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a0d37aa-5175-4bf9-2631-08d7da394a49
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2020 14:46:29.6260 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h36jLlphRS1HvRyLgggAN1RIiMuO4dAaPQolxre/qSK9yyRI5mrl/b+uvz1CgQRjHfXZaV7w7u7lsfVLZcaFnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2798
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_074635_155963_DA2E4F23 
X-CRM114-Status: GOOD (  21.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Please ignore these patches. I have sent them again by mistake. I apologize!

Diana

On 4/6/2020 5:27 PM, Diana Craciun wrote:
> The total number of interrupts is only used for some checks
> outside the dprc_scan_objects function. Furthermore, in some
> situations the check is made twice. Move the bounds check inside
> the function for all situations.
>
> Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
> ---
>   drivers/bus/fsl-mc/dprc-driver.c | 30 ++++++++++--------------------
>   1 file changed, 10 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
> index c8b1c3842c1a..035b220779d0 100644
> --- a/drivers/bus/fsl-mc/dprc-driver.c
> +++ b/drivers/bus/fsl-mc/dprc-driver.c
> @@ -3,6 +3,7 @@
>    * Freescale data path resource container (DPRC) driver
>    *
>    * Copyright (C) 2014-2016 Freescale Semiconductor, Inc.
> + * Copyright 2019-2020 NXP
>    * Author: German Rivera <German.Rivera@freescale.com>
>    *
>    */
> @@ -197,8 +198,6 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
>    * dprc_scan_objects - Discover objects in a DPRC
>    *
>    * @mc_bus_dev: pointer to the fsl-mc device that represents a DPRC object
> - * @total_irq_count: If argument is provided the function populates the
> - * total number of IRQs created by objects in the DPRC.
>    *
>    * Detects objects added and removed from a DPRC and synchronizes the
>    * state of the Linux bus driver, MC by adding and removing
> @@ -212,8 +211,7 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
>    * populated before they can get allocation requests from probe callbacks
>    * of the device drivers for the non-allocatable devices.
>    */
> -static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
> -			     unsigned int *total_irq_count)
> +static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev)
>   {
>   	int num_child_objects;
>   	int dprc_get_obj_failures;
> @@ -294,22 +292,21 @@ static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
>   	 * Allocate IRQ's before binding the scanned devices with their
>   	 * respective drivers.
>   	 */
> -	if (dev_get_msi_domain(&mc_bus_dev->dev) && !mc_bus->irq_resources) {
> +	if (dev_get_msi_domain(&mc_bus_dev->dev)) {
>   		if (irq_count > FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS) {
>   			dev_warn(&mc_bus_dev->dev,
>   				 "IRQs needed (%u) exceed IRQs preallocated (%u)\n",
>   				 irq_count, FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
>   		}
>   
> -		error = fsl_mc_populate_irq_pool(mc_bus,
> +		if (!mc_bus->irq_resources) {
> +			error = fsl_mc_populate_irq_pool(mc_bus,
>   				FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
> -		if (error < 0)
> -			return error;
> +			if (error < 0)
> +				return error;
> +		}
>   	}
>   
> -	if (total_irq_count)
> -		*total_irq_count = irq_count;
> -
>   	dprc_remove_devices(mc_bus_dev, child_obj_desc_array,
>   			    num_child_objects);
>   
> @@ -342,7 +339,7 @@ static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
>   	 * Discover objects in the DPRC:
>   	 */
>   	mutex_lock(&mc_bus->scan_mutex);
> -	error = dprc_scan_objects(mc_bus_dev, NULL);
> +	error = dprc_scan_objects(mc_bus_dev);
>   	mutex_unlock(&mc_bus->scan_mutex);
>   	if (error < 0) {
>   		fsl_mc_cleanup_all_resource_pools(mc_bus_dev);
> @@ -411,9 +408,8 @@ static irqreturn_t dprc_irq0_handler_thread(int irq_num, void *arg)
>   		      DPRC_IRQ_EVENT_CONTAINER_DESTROYED |
>   		      DPRC_IRQ_EVENT_OBJ_DESTROYED |
>   		      DPRC_IRQ_EVENT_OBJ_CREATED)) {
> -		unsigned int irq_count;
>   
> -		error = dprc_scan_objects(mc_dev, &irq_count);
> +		error = dprc_scan_objects(mc_dev);
>   		if (error < 0) {
>   			/*
>   			 * If the error is -ENXIO, we ignore it, as it indicates
> @@ -428,12 +424,6 @@ static irqreturn_t dprc_irq0_handler_thread(int irq_num, void *arg)
>   
>   			goto out;
>   		}
> -
> -		if (irq_count > FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS) {
> -			dev_warn(dev,
> -				 "IRQs needed (%u) exceed IRQs preallocated (%u)\n",
> -				 irq_count, FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
> -		}
>   	}
>   
>   out:


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
