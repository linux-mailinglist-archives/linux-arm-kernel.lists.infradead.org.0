Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6950918F4BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/VCRjCwOyv7SZZyh2HB08HLMNpLmBL+/lPTX76JxQGc=; b=PjVXUHM6G/qeFh
	GiFNEUknUH9K3M/W+ycVnhdICIL9Hp97m00kTOg+qfSQ4CxewLiNTO9bSgTHseZu84/bC87rhfw1v
	54+c3t+pkjsM/jj79FvSv5zHfWAkr81RnxwXnrMTPHaE+pya10gpHkSMcIsVHd/MeLpV+MJ9cmvG8
	6JNt3P8VeeUN5FSUL4gLTh4KV+7cioV5oDbzdn3ihGRI15wj3GAEJeFrztU4K4BhJBbbxWKz67onh
	pphdxOGv+QoGDM3qXvAoNfn4n0vtXxd/jr0Gxj+IAhh+WTs7iz70aYSTfGXBkzvMoNKCBtHUAW9sI
	HJYEII43HKho/VBxmetw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMIu-0000EF-Lc; Mon, 23 Mar 2020 12:35:40 +0000
Received: from mail-am6eur05on2077.outbound.protection.outlook.com
 ([40.107.22.77] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMIk-0000DR-J1
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:35:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FyWp+VkZJCBxCbNUUNta4F5tTXPITADoUKW0PWITs6rPQgtaH98WGEFcqCsqKPP5giYSkNLJf0LHtZH0IwgAXi0wADAKM1nTgB/vsC8jww++NizX728iIIWUBbsQ10+stFDY5TYNXxmvtt95EhJeH1u3Ckwow9ysO10aA6+PjGuudV9mEudy9nKGO4BGXyTIfyn1SYkh2JVh0fSvltKnijFwOCuNRPuhl3PunSp4OJUzp8zAf8YONL8Mzrh1mNAM5vW7uucbD0jprVgQNNL8sAZ8od7R1byjZiu5nQ9dZSh49Z/EJaBhuajLc8kHrBaiphzjBNzGBgyr1sTJ9v+2hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ktw219g+OxMw4kG2PwLtXK8I/Pq2MPgNezkWwmEIVpQ=;
 b=B6+XDSOduHByCVew+iJqbxbvHjRdNCJwaAIsbZS6cb1lxrKQyHYQ9laxL90FQHnyP7XeKcczLNwNPJZMVyXgMz5nATossnfA1kYJcO+KW5+F26kAGxEwXYN1q6/WnthPGlsLsnIMLk4hPSUBsyU1WdJUrVliJitMXvJEOHJJcBEvTuBsenTFeWkCJvTNQ/Jnfb83EVmxbDMK3m91q8mj+1XhswfL0+lzpyzIuy8gasy81cuw3lUa8s3UxyWXmR5E0wLH4j7rJRRBsibdiFtKoHIRZqVnIG7frDpAKe+Jd9SyKha1aKB68cV9I8b+oQcSTkvIpbHwUK0OBbnbVtW1mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ktw219g+OxMw4kG2PwLtXK8I/Pq2MPgNezkWwmEIVpQ=;
 b=DEf6112DN4KnCnoSQitU1i/llyVqpbtPB0yDXQl13CfIwtItzBG0R8fTdBS48laJ9K4kOmdqQDO9ACHL2RbhZpMokuY7LswVnpWh95XmAgnh0f3SmNo+0yrgZav89iwQLaH1Z0pX36H7EmBIJsB+VzdAFAtxkTBMLjdybuJasNo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB4280.eurprd04.prod.outlook.com (52.135.162.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.20; Mon, 23 Mar 2020 12:35:28 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e%5]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 12:35:28 +0000
Subject: Re: [PATCH 04/10] bus/fsl-mc: Propagate driver_override for a child
 DPRC's children
To: Diana Craciun <diana.craciun@oss.nxp.com>, linux-kernel@vger.kernel.org,
 stuyoder@gmail.com, leoyang.li@nxp.com,
 linux-arm-kernel@lists.infradead.org, bharatb.yadav@gmail.com
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
 <20200319154051.30609-5-diana.craciun@oss.nxp.com>
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Message-ID: <7ac6caed-d467-790c-7b40-c40f33d69435@nxp.com>
Date: Mon, 23 Mar 2020 14:35:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
In-Reply-To: <20200319154051.30609-5-diana.craciun@oss.nxp.com>
Content-Language: en-GB
X-ClientProxiedBy: BY5PR13CA0033.namprd13.prod.outlook.com
 (2603:10b6:a03:180::46) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.213.175.155] (192.88.158.246) by
 BY5PR13CA0033.namprd13.prod.outlook.com (2603:10b6:a03:180::46) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.12 via Frontend
 Transport; Mon, 23 Mar 2020 12:35:23 +0000
X-Originating-IP: [192.88.158.246]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ce574ad2-d13f-451c-8dd0-08d7cf26aab1
X-MS-TrafficTypeDiagnostic: AM6PR04MB4280:|AM6PR04MB4280:|AM6PR04MB4280:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB42809C64B6CA4F5B6281C330ECF00@AM6PR04MB4280.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0351D213B3
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(376002)(136003)(396003)(199004)(36756003)(186003)(4326008)(16526019)(5660300002)(316002)(16576012)(31686004)(54906003)(2906002)(66476007)(44832011)(6666004)(66556008)(53546011)(6486002)(86362001)(26005)(52116002)(2616005)(956004)(478600001)(31696002)(8676002)(81166006)(81156014)(66946007)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4280;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JTFrLaPkV5CbnvGX+t2NOoK2nAwV6XhZb+MJZNEhig6u/4x5QT4wBTCAnnL5q1f2icReDZYu8ONzWegic18zzBDrlGAi9PlzvWUcJkr4/n07drwNajo6aIAYzedPVlTJLi8y6Zsw+2X8aQN1Yy6JZKzlxZhqYk1MSCjuXbZFhgL02xd0lzj+WG3pddDyUccliKRClft/9V1C+EelrhiGoEaGTN6b9/0n2Hem/CU7SChYkYxxL5Ib3DWjaBlrv/mlRWYj87oDzZ7QbWqQpIAKGTTw1Lurm2PojQBLsC9Vqx7cj8LMJ1+P6u2pAqzb0D9o9xte6rb93Cr2FlczY1HO0R/z7Xgo6GGdwt+Y9ISqsq1fONESkOijNIJRv+Jrsuf9lpYj8Iy9p1rNpohIxPkWzKlZfZ4HGqF0aKkCOUe9VuwYnZRzmkoht+F1IaNQyTex
X-MS-Exchange-AntiSpam-MessageData: sh25wau22PybfVz3hDwVg6jA7/wgCsP9tOSVnmO6YEyj0DTCsQf64RWreTiVfJnlO7ubDXsEh1PwJITDAugo09aziCCl3GOoOz1NekAXuPwNuHjebBIi2Ti5afpKy+CFsCGdr3ZYgCZfCqykx92rIQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce574ad2-d13f-451c-8dd0-08d7cf26aab1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2020 12:35:28.0421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6OkuLwjxwzf+kCfhI+5Zr8f4MtGZMNDKbzwS1Z420JlfnKMnaygs92qU4RO8uhjkWSv4Gcf0ae/bXoaQbNElfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4280
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_053530_633270_6E3321A5 
X-CRM114-Status: GOOD (  28.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.77 listed in wl.mailspike.net]
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
Cc: "J . German Rivera" <German.Rivera@freescale.com>,
 Bharat Bhushan <Bharat.Bhushan@nxp.com>, Stuart Yoder <stuart.yoder@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/19/2020 5:40 PM, Diana Craciun wrote:
> From: Bharat Bhushan <Bharat.Bhushan@nxp.com>
> 
> When a child DPRC is bound to the vfio_fsl_mc driver via
> driver_override, its own children should not be bound to corresponding
> host kernel drivers, but instead should be bound to the vfio_fsl_mc
> driver as well.
> 
> Currently, when a child container is scanned by the vfio_fsl_mc
> driver, child devices found are automatically bound to corresponding
> host kernel drivers (e.g., DPMCP and DPBP objects are bound to the
> fsl_mc_allocator driver, DPNI objects are bound to the ldpaa_eth
> driver, etc), Then, the user has to manually unbind these child
> devices from their drivers, set the driver_override sysfs attribute
> to vfio_fsl_mc driver, for each of them and rebind them.
> 
> Signed-off-by: J. German Rivera <German.Rivera@freescale.com>
> Signed-off-by: Stuart Yoder <stuart.yoder@nxp.com>
> Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
> ---
>  drivers/bus/fsl-mc/dprc-driver.c    | 12 ++++++++----
>  drivers/bus/fsl-mc/fsl-mc-bus.c     | 18 +++++++++++++++++-
>  drivers/bus/fsl-mc/fsl-mc-private.h |  2 ++
>  include/linux/fsl/mc.h              |  2 ++
>  4 files changed, 29 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
> index d373b28abe2d..7eaf78900dfc 100644
> --- a/drivers/bus/fsl-mc/dprc-driver.c
> +++ b/drivers/bus/fsl-mc/dprc-driver.c
> @@ -155,6 +155,8 @@ static void check_plugged_state_change(struct fsl_mc_device *mc_dev,
>   * dprc_add_new_devices - Adds devices to the logical bus for a DPRC
>   *
>   * @mc_bus_dev: pointer to the fsl-mc device that represents a DPRC object
> + * @driver_override: driver override to apply to new objects found in the
> + * DPRC, or NULL, if none.
>   * @obj_desc_array: array of device descriptors for child devices currently
>   * present in the physical DPRC.
>   * @num_child_objects_in_mc: number of entries in obj_desc_array
> @@ -164,6 +166,7 @@ static void check_plugged_state_change(struct fsl_mc_device *mc_dev,
>   * in the physical DPRC.
>   */
>  static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
> +				 const char *driver_override,
>  				 struct fsl_mc_obj_desc *obj_desc_array,
>  				 int num_child_objects_in_mc)
>  {
> @@ -188,7 +191,7 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
>  		}
>  
>  		error = fsl_mc_device_add(obj_desc, NULL, &mc_bus_dev->dev,
> -					  &child_dev);
> +					  driver_override, &child_dev);
>  		if (error < 0)
>  			continue;
>  	}
> @@ -214,6 +217,7 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
>   * of the device drivers for the non-allocatable devices.
>   */
>  static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
> +			    const char *driver_override,
>  			    bool alloc_interrupts)
>  {
>  	int num_child_objects;
> @@ -313,7 +317,7 @@ static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
>  	dprc_remove_devices(mc_bus_dev, child_obj_desc_array,
>  			    num_child_objects);
>  
> -	dprc_add_new_devices(mc_bus_dev, child_obj_desc_array,
> +	dprc_add_new_devices(mc_bus_dev, driver_override, child_obj_desc_array,
>  			     num_child_objects);
>  
>  	if (child_obj_desc_array)
> @@ -342,7 +346,7 @@ static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
>  	 * Discover objects in the DPRC:
>  	 */
>  	mutex_lock(&mc_bus->scan_mutex);
> -	error = dprc_scan_objects(mc_bus_dev, true);
> +	error = dprc_scan_objects(mc_bus_dev, NULL, true);
>  	mutex_unlock(&mc_bus->scan_mutex);
>  	if (error < 0) {
>  		fsl_mc_cleanup_all_resource_pools(mc_bus_dev);
> @@ -412,7 +416,7 @@ static irqreturn_t dprc_irq0_handler_thread(int irq_num, void *arg)
>  		      DPRC_IRQ_EVENT_OBJ_DESTROYED |
>  		      DPRC_IRQ_EVENT_OBJ_CREATED)) {
>  
> -		error = dprc_scan_objects(mc_dev, true);
> +		error = dprc_scan_objects(mc_dev, NULL, true);
>  		if (error < 0) {
>  			/*
>  			 * If the error is -ENXIO, we ignore it, as it indicates
> diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
> index baf8259262a9..b9ccac9862b7 100644
> --- a/drivers/bus/fsl-mc/fsl-mc-bus.c
> +++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
> @@ -617,6 +617,7 @@ static void fsl_mc_device_release(struct device *dev)
>  int fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
>  		      struct fsl_mc_io *mc_io,
>  		      struct device *parent_dev,
> +		      const char *driver_override,
>  		      struct fsl_mc_device **new_mc_dev)
>  {
>  	int error;
> @@ -649,6 +650,19 @@ int fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
>  
>  	mc_dev->obj_desc = *obj_desc;
>  	mc_dev->mc_io = mc_io;
> +
> +	if (driver_override) {
> +		/*
> +		 * We trust driver_override, so we don't need to use
> +		 * kstrndup() here
> +		 */
> +		mc_dev->driver_override = kstrdup(driver_override, GFP_KERNEL);
> +		if (!mc_dev->driver_override) {
> +			error = -ENOMEM;
> +			goto error_cleanup_dev;
> +		}
> +	}
> +
>  	device_initialize(&mc_dev->dev);
>  	mc_dev->dev.parent = parent_dev;
>  	mc_dev->dev.bus = &fsl_mc_bus_type;
> @@ -740,6 +754,7 @@ int fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
>  
>  error_cleanup_dev:
>  	kfree(mc_dev->regions);
> +	kfree(mc_dev->driver_override);
>  	kfree(mc_bus);
>  	kfree(mc_dev);
>  
> @@ -980,7 +995,8 @@ static int fsl_mc_bus_probe(struct platform_device *pdev)
>  	obj_desc.irq_count = 1;
>  	obj_desc.region_count = 0;
>  
> -	error = fsl_mc_device_add(&obj_desc, mc_io, &pdev->dev, &mc_bus_dev);
> +	error = fsl_mc_device_add(&obj_desc, mc_io, &pdev->dev, NULL,
> +				 &mc_bus_dev);
>  	if (error < 0)
>  		goto error_cleanup_mc_io;
>  
> diff --git a/drivers/bus/fsl-mc/fsl-mc-private.h b/drivers/bus/fsl-mc/fsl-mc-private.h
> index 21ca8c756ee7..be6bb0fb4603 100644
> --- a/drivers/bus/fsl-mc/fsl-mc-private.h
> +++ b/drivers/bus/fsl-mc/fsl-mc-private.h
> @@ -3,6 +3,7 @@
>   * Freescale Management Complex (MC) bus private declarations
>   *
>   * Copyright (C) 2016 Freescale Semiconductor, Inc.
> + * Copyright 2019-2020 NXP
>   *
>   */
>  #ifndef _FSL_MC_PRIVATE_H_
> @@ -567,6 +568,7 @@ struct fsl_mc_bus {
>  int __must_check fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
>  				   struct fsl_mc_io *mc_io,
>  				   struct device *parent_dev,
> +				   const char *driver_override,
>  				   struct fsl_mc_device **new_mc_dev);
>  
>  void fsl_mc_device_remove(struct fsl_mc_device *mc_dev);
> diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
> index 88095fd30c80..f997f8091408 100644
> --- a/include/linux/fsl/mc.h
> +++ b/include/linux/fsl/mc.h
> @@ -3,6 +3,7 @@
>   * Freescale Management Complex (MC) bus public interface
>   *
>   * Copyright (C) 2014-2016 Freescale Semiconductor, Inc.
> + * Copyright 2019-2020 NXP
>   * Author: German Rivera <German.Rivera@freescale.com>
>   *
>   */
> @@ -161,6 +162,7 @@ struct fsl_mc_obj_desc {
>   * @regions: pointer to array of MMIO region entries
>   * @irqs: pointer to array of pointers to interrupts allocated to this device
>   * @resource: generic resource associated with this MC object device, if any.
> + * @driver_override: Driver name to force a match

This was probably meant to go in the previous patch.

---
Best Regards, Laurentiu

>   *
>   * Generic device object for MC object devices that are "attached" to a
>   * MC bus.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
