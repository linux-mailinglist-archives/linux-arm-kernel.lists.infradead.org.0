Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDAA18F535
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 14:07:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tXZisDPZSKL6S8fOZt4yNQjx6FZsvfeCo7Z5QkOkv/Y=; b=aTCSVAAxDedDo6po32nA9l1RIF
	5RGrmFOj4qmlJGrW6DoF4Nz8PDJ/NDs0BT9SQFKbJQklon6eCJUesC8mKeQ9OtqhXztGmibuUS3NS
	xqw6+sUX9PQK7htLQM9IrJgvjAD5CIPs+6fjYqVDfM4PsfBlXo4Sr/RrLYHXfLS+DVbCjAO6vTEwv
	+FV3gtlfsS5/UJAIgo34O02FlXbxx5WQVg/hndEtwnlutaGXFq0PsxFjC7VxhO8mFzoaeBqeykvn/
	g2xLZKh0p+oK0XlyKWcx4JYAcmrg0pMvBFbhvfIU85oigoCpbLKDSQaFdrptKTHn8O3Q5W2sVxv4q
	trZA1BlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMmy-0005SZ-MT; Mon, 23 Mar 2020 13:06:44 +0000
Received: from mail-db8eur05on2053.outbound.protection.outlook.com
 ([40.107.20.53] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMmq-0005S3-C6
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 13:06:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O6VEOuX+In9+evVJixUcDKXtl/65terq0txxL08zPcmn313VTAMmjTDepEEzbOMJrbs/FbQRTl6LFNimmgcWEI1ArJenZ3Bs5EAlwOdTKXhceVPE7zrrLqXt4lJBKk5wCe4hqkrPvzs3sNtx8t6a+QfBjhBGM07Fe1UMECfPIQq/NMJfSyHrEStXbrhE+Dz9Yl9rHxYlEzv3svJb0IRqUvKCQtSY1TMFLv3NLnFaGaquK6x5SYEbxlqgdViEM3hMy5sLPLNrKADrVLKaHY2pB3Roo/MIOpvKw6I5+Z9XSYb5Xl0Yr1hHvqoIuxzc/vl2L8wDQ1gA7XVis8WGU3lP7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jQARICbr+DMZlfkeCtmL1Pa5dz4EF4TO/82jyEiiaQU=;
 b=TFj2csfwyZOYf/vunIRwV/rqL5GaIF2lNIfyw7fxwZiiBWbxqjajK6uf9k82MSb8Eq3M572lTHk76qqpd3B1/MoTj+PmO7ggnw1DPa/JgmqcLBNv27Aqzb/zS25gFdPXmPjXdMcTcc7+33ZJWzVkC2ElZuXwtyVhc2/XFfKEcMHsgsOv84rFxKa8S5C7gchbMNbmyVcMiym/qLirX7tE7neqi4BhLtjAxC3m96ivzfuiV0X1QfQd7AO9x4xn6tsbrsFdIi+XjZD6yBSCElsTzQz5LeoSbcLLLuKHIonpB9/7IsEbMZBDIcjl8uHIprZUtF9Un5dhT7DfEJghg0xK4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jQARICbr+DMZlfkeCtmL1Pa5dz4EF4TO/82jyEiiaQU=;
 b=s7a7xGBAF0Ac4fVeVAjbjKR8uVvegoDeTaCr7fVZHOHHjRfjm8YlsYhnGJqDxfattwDbXXIIo10tF4l1kJecM76PrFC1pIGViOpCdm2lcVAsjrgNp8mh186keOL8qII/26MKiyv8HKUw8RwqRW9MD8Hdhhev3qgEp/kPpJ+UfRs=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB4727.eurprd04.prod.outlook.com (20.177.32.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Mon, 23 Mar 2020 13:06:33 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e%5]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 13:06:33 +0000
Subject: Re: [PATCH 09/10] bus/fsl-mc: Add a container setup function
To: Diana Craciun <diana.craciun@oss.nxp.com>, linux-kernel@vger.kernel.org,
 stuyoder@gmail.com, leoyang.li@nxp.com,
 linux-arm-kernel@lists.infradead.org, bharatb.yadav@gmail.com
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
 <20200319154051.30609-10-diana.craciun@oss.nxp.com>
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Message-ID: <f828ffd5-85cb-ed71-b18e-000ca8cf3550@nxp.com>
Date: Mon, 23 Mar 2020 15:06:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
In-Reply-To: <20200319154051.30609-10-diana.craciun@oss.nxp.com>
Content-Language: en-GB
X-ClientProxiedBy: BYAPR06CA0047.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::24) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.213.175.155] (192.88.158.246) by
 BYAPR06CA0047.namprd06.prod.outlook.com (2603:10b6:a03:14b::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.15 via Frontend
 Transport; Mon, 23 Mar 2020 13:06:30 +0000
X-Originating-IP: [192.88.158.246]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 743423fa-6baa-4e44-8c69-08d7cf2b029f
X-MS-TrafficTypeDiagnostic: AM6PR04MB4727:|AM6PR04MB4727:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB472775271F51AC326195729BECF00@AM6PR04MB4727.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 0351D213B3
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(346002)(376002)(366004)(136003)(199004)(36756003)(186003)(2616005)(16526019)(956004)(6666004)(478600001)(44832011)(5660300002)(26005)(8936002)(2906002)(66476007)(81156014)(8676002)(31686004)(81166006)(16576012)(66946007)(66556008)(6486002)(86362001)(53546011)(31696002)(316002)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4727;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q+gariIh4BlibXSc9ue3Q1CpVAFWeitMN4JpXu5Q0zCDZTDb/fQs5xmKv7pbQ/FVJIaJ6fASc+ALkjz36MYG3UrNKzru4j97L9E1kyuQaKKvavn1eKwnUYItGTpeOSRktG70R1dr4iJ9MwJOeFNFkA3LpZRE8KgS+e8Ga2f8pC/SuAbBcp3mK2P4gI7sBQCc0bYJqkk1atp29CLEyGWLcCyl+lcfxuS63LzphiNrQEZWwrDzE/tabQil4AoOIL/ZW6tCc+rXJnRuH4+OADOcrCxkllug8/KJuFdLsUD3T9BJ7bRuwAfQ5M7Bz6tKg0niCEAyoZiIJgykCic42hEiBt07Zh2gGfzXtAy+AetPfLf6sZ/m6zxyJgcZRFopKoKpVFjr3jGPCHEBFL6DxCjB55Ma5ZDLSeyKoAtc7WuliKO5wOXnAIa8htG1ObUR0RwM
X-MS-Exchange-AntiSpam-MessageData: ASwFoa5eRn6PRFFZueMnfUAxZo4SfRycem4/Fw8UXAQNkpZGtFYXHjt2RV+9U2odA4Gj6rhTgVQt4OYHbi6gT/Tf9yLOQ+PS9hVD6I4ZrjCufrCy2caybsaQxDT4ndQgwxJFFp5C3ht3Ef0J4XUYig==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 743423fa-6baa-4e44-8c69-08d7cf2b029f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2020 13:06:33.4426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VSTpTJ+JyNg53ctjYO1qNqkOVwYzsD4R/KtOGUAdtlDMNGk9nBa03q6Mj0ruXqeIUrb0DT+F4XLwZyCxBF4Bsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4727
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_060636_511529_BE45DB31 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.53 listed in list.dnswl.org]
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
> Both DPRC driver and VFIO driver use a initialization code
> for the DPRC. Introduced a new function which groups this
> initialization code. The function is exported and may be
> used by VFIO as well.
> 
> Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
> ---
>  drivers/bus/fsl-mc/dprc-driver.c | 77 +++++++++++++++++++++-----------
>  drivers/bus/fsl-mc/mc-io.c       |  7 ++-
>  include/linux/fsl/mc.h           |  2 +
>  3 files changed, 60 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
> index a655e3fee291..0fe45c301858 100644
> --- a/drivers/bus/fsl-mc/dprc-driver.c
> +++ b/drivers/bus/fsl-mc/dprc-driver.c
> @@ -570,16 +570,15 @@ static int dprc_setup_irq(struct fsl_mc_device *mc_dev)
>  }
>  
>  /**
> - * dprc_probe - callback invoked when a DPRC is being bound to this driver
> + * dprc_setup - opens and creates a mc_io for DPRC
>   *
>   * @mc_dev: Pointer to fsl-mc device representing a DPRC
>   *
>   * It opens the physical DPRC in the MC.
> - * It scans the DPRC to discover the MC objects contained in it.
> - * It creates the interrupt pool for the MC bus associated with the DPRC.
> - * It configures the interrupts for the DPRC device itself.
> + * It configures the DPRC portal used to communicate with MC
>   */
> -static int dprc_probe(struct fsl_mc_device *mc_dev)
> +
> +int dprc_setup(struct fsl_mc_device *mc_dev)
>  {
>  	int error;
>  	size_t region_size;
> @@ -589,12 +588,6 @@ static int dprc_probe(struct fsl_mc_device *mc_dev)
>  	bool msi_domain_set = false;
>  	u16 major_ver, minor_ver;
>  
> -	if (!is_fsl_mc_bus_dprc(mc_dev))
> -		return -EINVAL;
> -
> -	if (dev_get_msi_domain(&mc_dev->dev))
> -		return -EINVAL;
> -
>  	if (!mc_dev->mc_io) {
>  		/*
>  		 * This is a child DPRC:
> @@ -678,35 +671,69 @@ static int dprc_probe(struct fsl_mc_device *mc_dev)
>  		goto error_cleanup_open;
>  	}
>  
> +	return 0;
> +
> +error_cleanup_open:
> +	(void)dprc_close(mc_dev->mc_io, 0, mc_dev->mc_handle);
> +
> +error_cleanup_msi_domain:
> +	if (msi_domain_set)
> +		dev_set_msi_domain(&mc_dev->dev, NULL);
> +
> +	if (mc_io_created) {
> +		fsl_destroy_mc_io(mc_dev->mc_io);
> +		mc_dev->mc_io = NULL;
> +	}
> +
> +	return error;
> +}
> +EXPORT_SYMBOL_GPL(dprc_setup);
> +
> +/**
> + * dprc_probe - callback invoked when a DPRC is being bound to this driver
> + *
> + * @mc_dev: Pointer to fsl-mc device representing a DPRC
> + *
> + * It opens the physical DPRC in the MC.
> + * It scans the DPRC to discover the MC objects contained in it.
> + * It creates the interrupt pool for the MC bus associated with the DPRC.
> + * It configures the interrupts for the DPRC device itself.
> + */
> +static int dprc_probe(struct fsl_mc_device *mc_dev)
> +{
> +	int error;
> +
> +	if (!is_fsl_mc_bus_dprc(mc_dev))
> +		return -EINVAL;
> +
> +	if (dev_get_msi_domain(&mc_dev->dev))
> +		return -EINVAL;
> +
> +	error = dprc_setup(mc_dev);
> +	if (error < 0)
> +		return error;
> +
>  	/*
>  	 * Discover MC objects in DPRC object:
>  	 */
>  	error = dprc_scan_container(mc_dev, NULL, true);
>  	if (error < 0)
> -		goto error_cleanup_open;
> +		goto dprc_cleanup;
>  
>  	/*
>  	 * Configure interrupt for the DPRC object associated with this MC bus:
>  	 */
>  	error = dprc_setup_irq(mc_dev);
>  	if (error < 0)
> -		goto error_cleanup_open;
> +		goto scan_cleanup;
>  
>  	dev_info(&mc_dev->dev, "DPRC device bound to driver");
>  	return 0;
>  
> -error_cleanup_open:
> -	(void)dprc_close(mc_dev->mc_io, 0, mc_dev->mc_handle);
> -
> -error_cleanup_msi_domain:
> -	if (msi_domain_set)
> -		dev_set_msi_domain(&mc_dev->dev, NULL);
> -
> -	if (mc_io_created) {
> -		fsl_destroy_mc_io(mc_dev->mc_io);
> -		mc_dev->mc_io = NULL;
> -	}
> -
> +scan_cleanup:
> +	device_for_each_child(&mc_dev->dev, NULL, __fsl_mc_device_remove);
> +dprc_cleanup:
> +	dprc_cleanup(mc_dev);
>  	return error;
>  }
>  
> diff --git a/drivers/bus/fsl-mc/mc-io.c b/drivers/bus/fsl-mc/mc-io.c
> index 6ae48ad80409..e1dfe4a76519 100644
> --- a/drivers/bus/fsl-mc/mc-io.c
> +++ b/drivers/bus/fsl-mc/mc-io.c
> @@ -129,7 +129,12 @@ int __must_check fsl_create_mc_io(struct device *dev,
>   */
>  void fsl_destroy_mc_io(struct fsl_mc_io *mc_io)
>  {
> -	struct fsl_mc_device *dpmcp_dev = mc_io->dpmcp_dev;
> +	struct fsl_mc_device *dpmcp_dev;
> +
> +	if (!mc_io)
> +		return;
> +
> +	dpmcp_dev = mc_io->dpmcp_dev;

Is this change related to the patch?

---
Best Regards, Laurentiu

>  	if (dpmcp_dev)
>  		fsl_mc_io_unset_dpmcp(mc_io);
> diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
> index e3ba273a1122..59b39c635ec9 100644
> --- a/include/linux/fsl/mc.h
> +++ b/include/linux/fsl/mc.h
> @@ -480,6 +480,8 @@ int dprc_scan_container(struct fsl_mc_device *mc_bus_dev,
>  		   const char *driver_override,
>  		   bool alloc_interrupts);
>  
> +int dprc_setup(struct fsl_mc_device *mc_dev);
> +
>  int dprc_cleanup(struct fsl_mc_device *mc_dev);
>  
>  /*
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
