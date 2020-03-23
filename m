Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB9118F406
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+o/sOsa1cjXbJmp38O8hc8nbeqEvXSXCd/60+rDHjts=; b=XSwO6FJNhQPJ4NyFNY+5KDhblb
	6Y9UYj9y0+mzQEXwTcxobBZ0zRk0Vila6QxbQJRRGYGxd9WKnK6x4C4qOGqcC2kFWneS3AcIhq/6t
	exD3rqFxHqYL89lLPf1ZyImu0Shssv/Pirqcp71w/UOY3qiz25gYJRSnI0r+6ukWdOPMxge1Gicai
	iNir00GCuxFmT50T3R888HF6lUil5yQ7SfG/c9JCl3kXpcaxdwZsq1zM6MKT78JS4ejcBykAB1WOa
	drVSpdFZMzXjw/zE6pJZbi/C/VYtB5Rh7JMF7FCRS1R3imxcpB65940xdmgY/KqH7I1aNrCD8PRMA
	s5qUsJTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGLpR-00012j-5L; Mon, 23 Mar 2020 12:05:13 +0000
Received: from mail-eopbgr60071.outbound.protection.outlook.com ([40.107.6.71]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGLp9-00012B-K3
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:04:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W4BZfobCq0omfcELFoNPWSiD+2PBur2gi/wwZAUYtfbFT4X9H/9yJ6Fv3jp13b7F5xjApWB4JshuWedsGz79FiSwYdNrKnSUIZHdB5prGp9LbDokfGpp9lflD23GpqmqXuzX7U70NHcJoY/rOau0PX4UwtouhTCk7Yg7RRE1Dlc99yhgSa2LhksL0RbHqycQgljbC3vXMIeA8GC1DZbevG/9yXnuctaeKxaDarEDLU/iG46VrbEQN4PnIqySM/4KFvmKhCmEAbzV/MVRMSZFCrLX5MZ13dYHGnongSbqn3DRoYxZpV4rmBsFUkQKZpmLX7Q+In25eVo6bZ87UfX0zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vzyn1DnlS1im4PyS3XrT/wb2yKqXqYwPWUK45hAxa30=;
 b=lEDYpy8WAjdsjtTwJa6YyyAsNi542HTZyCRLrCfNJAKTDvbFhAHx6EmC/eTvBnlGxcIJWcNXJMlLY/Z+i6K2Pn9l13Rw1YQhAXGciddmYVdT57fwdZtGFvwRRs10tOT+w3uYHpO6rIB02pwl/UwGMHzpFa7nBZJaYNdm1nY7JXio7S8VNtz8t85fNcxpe5yt0aH7uX1Ft9LTv0prHCuJQjOkbwPZ5a+fpIt5hglGZFph6SQgs/X9MW59Fd9+1mDyI6Vix4/Sm62bgqyuNtifKJMROy2WqNDQxvwi8SEJwL0RiNjGoIyBOukeja4NYS56CQaHzGPRiM5LXJ4imxXddw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vzyn1DnlS1im4PyS3XrT/wb2yKqXqYwPWUK45hAxa30=;
 b=GCBpI8z8Kzd3v19pjBoudcO4wrEED4K1IRasb9tXnRhLVQtJkHVp9DjvstVyFv7L/E/ZdzGSAYuAdEIOipgTfSwk9JB7aVagYmT6pLIbrxlJYjYG4J5JYqkeY7UjJuDpBcqgJbj6GauQxGimekdR11/Z+s+IpHzCXXt45zEH7P4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB4951.eurprd04.prod.outlook.com (20.177.32.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.22; Mon, 23 Mar 2020 12:04:51 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e%5]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 12:04:50 +0000
Subject: Re: [PATCH 02/10] bus/fsl-mc: Add a new parameter to
 dprc_scan_objects function
To: Diana Craciun <diana.craciun@oss.nxp.com>, linux-kernel@vger.kernel.org,
 stuyoder@gmail.com, leoyang.li@nxp.com,
 linux-arm-kernel@lists.infradead.org, bharatb.yadav@gmail.com
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
 <20200319154051.30609-3-diana.craciun@oss.nxp.com>
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Message-ID: <3f3c46d4-25b4-3a6c-1173-aa33183edc51@nxp.com>
Date: Mon, 23 Mar 2020 14:04:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
In-Reply-To: <20200319154051.30609-3-diana.craciun@oss.nxp.com>
Content-Language: en-GB
X-ClientProxiedBy: BYAPR03CA0021.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::34) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.213.175.155] (192.88.158.246) by
 BYAPR03CA0021.namprd03.prod.outlook.com (2603:10b6:a02:a8::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.19 via Frontend Transport; Mon, 23 Mar 2020 12:04:48 +0000
X-Originating-IP: [192.88.158.246]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5b768603-3b15-4c01-5a1d-08d7cf2263d4
X-MS-TrafficTypeDiagnostic: AM6PR04MB4951:|AM6PR04MB4951:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB4951EF49BA662AB7BA0E49B1ECF00@AM6PR04MB4951.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0351D213B3
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(346002)(376002)(366004)(199004)(186003)(316002)(16526019)(16576012)(31686004)(86362001)(44832011)(6486002)(26005)(81166006)(81156014)(8676002)(8936002)(6666004)(31696002)(478600001)(36756003)(53546011)(66556008)(66476007)(66946007)(956004)(5660300002)(2616005)(52116002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4951;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0VgOLqmzXxWayQgfyO3UomteOzQ3+igxpsR8TGWCPUYCC+mOXDpGr34cUhF75ApoGmtk01G/iaOWgn/od0GdhKZYioipMnlQR6dFFGwYlSoPQNkqTE9Pud/t/NfkU6C7BGqLywenUMtls80bzRsyVmZmuitH8FEpBH3SyFq1tZkGvLq9P2Hgv286vc3VGzaI1oXq3AE/tvFVrQvb8ixIsOjCHBS05G4oTQve3+9L2ah6C7K6X8VKCBC+FB9ycFlCl/WqBJDVfwp1SeANpvhaESRssZi7iF7wvu3UBdctfRqm3vKf9grZHovMSZpE6SAqZc9pMQMMtmOhcVGfVTTPri/0zsgc5Evi1S1LvPCzqkBMwzElBd3eoQPkpIwJjEofjHKs535wQ207Pzw7l6GmZT4AqXdN+Sv24S2B2BMKjRNgUFaUR2afJK725ioe7Vmr
X-MS-Exchange-AntiSpam-MessageData: OXTHL3jm3D0Wal9dayuXt1xD13w2hWEfg7ZT/WCmykax6eab33dLMtbVtxHbmdv0hY3smvNePmult1MSfJ0ge7/jWorBJRwPMRebNJpD2vBR/F3/tmeldmAamAlrlgn2Z9+uRnkoMD4CQL7lWx8QQw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b768603-3b15-4c01-5a1d-08d7cf2263d4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2020 12:04:50.8242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MPbY/OPCduqma51g6WMMYL8xoJ364WZO6B+3TDCcs/3PEUXv/SKWA676VRcwRvHUU5NizmvehaMoW5HxbeihxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4951
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_050455_770466_9231D8C7 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.71 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/19/2020 5:40 PM, Diana Craciun wrote:
> Prepare the dprc_scan_objects function to be used by
> the VFIO mc driver code. The function is used to scan the mc
> objects by the bus driver. The same functionality is
> needed by the VFIO mc driver, but in this case the
> interrupt configuration is delayed until the userspace
> configures the interrupts. In order to use the same function
> in both drivers add a new parameter.
> 
> Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
> ---
>  drivers/bus/fsl-mc/dprc-driver.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
> index 035b220779d0..d373b28abe2d 100644
> --- a/drivers/bus/fsl-mc/dprc-driver.c
> +++ b/drivers/bus/fsl-mc/dprc-driver.c
> @@ -198,7 +198,9 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
>   * dprc_scan_objects - Discover objects in a DPRC
>   *
>   * @mc_bus_dev: pointer to the fsl-mc device that represents a DPRC object
> - *
> + * @alloc_interrupts: if true the function allocates the interrupt pool,
> + * otherwise the interrupt allocation is delayed
> +

nit: missing * here.

---
Best Regards, Laurentiu

>   * Detects objects added and removed from a DPRC and synchronizes the
>   * state of the Linux bus driver, MC by adding and removing
>   * devices accordingly.
> @@ -211,7 +213,8 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
>   * populated before they can get allocation requests from probe callbacks
>   * of the device drivers for the non-allocatable devices.
>   */
> -static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev)
> +static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
> +			    bool alloc_interrupts)
>  {
>  	int num_child_objects;
>  	int dprc_get_obj_failures;
> @@ -299,7 +302,7 @@ static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev)
>  				 irq_count, FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
>  		}
>  
> -		if (!mc_bus->irq_resources) {
> +		if (alloc_interrupts && !mc_bus->irq_resources) {
>  			error = fsl_mc_populate_irq_pool(mc_bus,
>  				FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
>  			if (error < 0)
> @@ -339,7 +342,7 @@ static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
>  	 * Discover objects in the DPRC:
>  	 */
>  	mutex_lock(&mc_bus->scan_mutex);
> -	error = dprc_scan_objects(mc_bus_dev);
> +	error = dprc_scan_objects(mc_bus_dev, true);
>  	mutex_unlock(&mc_bus->scan_mutex);
>  	if (error < 0) {
>  		fsl_mc_cleanup_all_resource_pools(mc_bus_dev);
> @@ -409,7 +412,7 @@ static irqreturn_t dprc_irq0_handler_thread(int irq_num, void *arg)
>  		      DPRC_IRQ_EVENT_OBJ_DESTROYED |
>  		      DPRC_IRQ_EVENT_OBJ_CREATED)) {
>  
> -		error = dprc_scan_objects(mc_dev);
> +		error = dprc_scan_objects(mc_dev, true);
>  		if (error < 0) {
>  			/*
>  			 * If the error is -ENXIO, we ignore it, as it indicates
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
