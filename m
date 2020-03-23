Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0119718F50F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:53:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J75SnPg+W3nlVNZcNXqxVoAs1OyATNldISTzCOKFr9c=; b=EAT+gh6is6N7rab4tzkV8lfYCp
	GiE5ltdY+FK/Vz7aG7KVuZ8UznxeO5mhMeHAeUEaBsg44liJatR7X4cDyCcH6JK7IhuJiSI6VbcN5
	czANuGTdH0qdeVEpXAFwaG38Xr/drGHEW1cwWi7eWxvgjvKRtt7QOB9vmpi2DOOp0DXoguEJqNhJ3
	kUT68LEw8WRuIdULKYzkP02ry+/m/KMl5jJdz3SM4u0Y/1reW5dFVD43+n6iW9j+pHV16K5GMhQY3
	97LJ9jdZKU8g8pULNJ/Vt19ONL5QTR9+FisCSVQE5kI2rLZn88ZLej/EUWMSzrM7Oks7utyPjSwwK
	yAUE/yAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMZr-0000aW-3a; Mon, 23 Mar 2020 12:53:11 +0000
Received: from mail-eopbgr70071.outbound.protection.outlook.com ([40.107.7.71]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMZi-0000a9-St
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:53:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GN5oZTEx0uvjbcouq33XjrTVn6eMpmvEvvIRfgE6pKirPDsDTy82qzynEnkBnJp3lYGav0trTnmAu6WlGsQ7V95+CQEEUINUX8qMZ5h6wAQxx0txWbcGAmQcTsugEFF+0SzMMUApM5cyCQ3EZ3VTCKHEv7Upjw02cJJ/VqyIA+1+jbw682uuuMkroFJ3QN1DD4WGabgCnMWvqPsGooAF1xDqbwEyYlOLDafCDEz/xh5TotWKL3lPNqBTrcIQbK460aLuJ0mRDTZs5zdR2Wk5Bl9QE3n22D1f3/d2GIoOtYF1/MHAqojG6AEcTuHMu41nUn6NTFMFIjGQfsAldHIQgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9F+DRciLefOXZEMyhsAptNtkDNpPWFqNKengWKOBgUE=;
 b=BIDTcGDX/NIanadUj8puzxCCNB8XIV9of//B4TG19hHmJd6B/B/rDxeg5gfW5ceegFuMCKU/N997pnWMoG2HzSEitxaORxjqXINcnvltz8/SReSBPQvF0s7lJAKjsDoGt+j5wtWGvxDNl8S1kPL73ZwgWc9xaqWOd74M+LQk68hQPBQcdxOP7lI8zlNIciAhbERIVlYe8DfQ9r9PbEuMqu5IZ4ExaoSiFIcEXC3WSGzEFOBjhg0A7nAwrD7GQkEo0ZywaMVLLcCExH3X2/Abt3RBeusA8cufvf4NDbo7qNnz+QfzbMS+ByPzFYksNV9SyH7Nhu00hF98I4U6gGBUIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9F+DRciLefOXZEMyhsAptNtkDNpPWFqNKengWKOBgUE=;
 b=Cufwk/RRwp8OX06ngDvE4BPNdRtVZaITEa7G8Rg7AgXpIScBtafIpVHwdHFYIPhuPIuTDQkKIKmE5dVRMP+HB/dz3WFJ1rcA1f1a/W1HNHOx12h743Tj9PBN6YIyiCyyP3K4j6Ot3Cs0mEugm5aYHEJWvkE1GMkIyT+IqYDtb2U=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB6536.eurprd04.prod.outlook.com (20.179.246.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.22; Mon, 23 Mar 2020 12:53:00 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e%5]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 12:53:00 +0000
Subject: Re: [PATCH 08/10] bus/fsl-mc: Export a cleanup function for DPRC
To: Diana Craciun <diana.craciun@oss.nxp.com>, linux-kernel@vger.kernel.org,
 stuyoder@gmail.com, leoyang.li@nxp.com,
 linux-arm-kernel@lists.infradead.org, bharatb.yadav@gmail.com
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
 <20200319154051.30609-9-diana.craciun@oss.nxp.com>
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Message-ID: <67018c5d-4a60-6b15-ea35-37a36c4f9e0f@nxp.com>
Date: Mon, 23 Mar 2020 14:52:49 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
In-Reply-To: <20200319154051.30609-9-diana.craciun@oss.nxp.com>
Content-Language: en-GB
X-ClientProxiedBy: BYAPR01CA0060.prod.exchangelabs.com (2603:10b6:a03:94::37)
 To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.213.175.155] (192.88.158.246) by
 BYAPR01CA0060.prod.exchangelabs.com (2603:10b6:a03:94::37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.19 via Frontend Transport; Mon, 23 Mar 2020 12:52:56 +0000
X-Originating-IP: [192.88.158.246]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e648f32d-b481-4046-8c93-08d7cf291de7
X-MS-TrafficTypeDiagnostic: AM6PR04MB6536:|AM6PR04MB6536:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB6536218E4D19BA4AA275F27CECF00@AM6PR04MB6536.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0351D213B3
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(376002)(136003)(366004)(199004)(86362001)(31696002)(26005)(186003)(478600001)(53546011)(52116002)(31686004)(6486002)(36756003)(16526019)(8936002)(8676002)(81156014)(81166006)(66476007)(44832011)(2906002)(316002)(66556008)(16576012)(6666004)(2616005)(956004)(5660300002)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6536;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 18eoEjY4+MoxaHPaYwTwAzTNiR8yxXc1642dTZcHs1HQQX44TtnF7hQ+aDMS+MB3hWVNHcZ9mNtYyQTG4QF9pqXnxLB+P7y3MIykbjCvUWXApyruCbvjBODAg9UHLqlr9P/4AhXCqIpbxBZc7NLWvDXDMwoieXwXmiHS2KUr26ISdkYFF8BMf4J8Hv5Tk5Zi4nuVkFAEAUJxyhXL6xIQsFYvFGgyqn5aMvBIKx0mU1udLz8MLdXoBiCUfqYAU/cts9ePhkOptGrv93q0nsfSJnughnJIa4U6nYypzUD+EbaOEItPk8D1usPP7jbQOVJyeMfrBKupUKwKc+dOSm4lp+43t2mwIm9+NlP5xEGLfJBHCl7JJ/7ZpYteQTKcqVleyTF+sCvDI6TvMh82vGyitfKIbydlItRecAe0WynHyf18SQYrYvFbJo83Z7E3PA+4
X-MS-Exchange-AntiSpam-MessageData: WhsBiBN/u5qRDf6JTv5KmgK5zpGcuyUvEtYek2St86lx4OdyCSqatPal5O6sRWUvdfcAwKeCu83Ul9eyK1qt3VRt6nu9V9wTAVQhCDGdHFz0IyxLczHr2qLfdrkIN5ABnAX5PVykZlkZvsehXdvQOg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e648f32d-b481-4046-8c93-08d7cf291de7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2020 12:52:59.9946 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FH4KIslcuILRRNiuE8ptNMJCb1ijPMlzAkBxBVJYndSlmENF76lEDg34Zh97uDPZcNIhSMFOdB0E9n4Z+jwHQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6536
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_055302_936406_12DB7384 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.71 listed in list.dnswl.org]
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
> Create and export a cleanup function for DPRC. The function
> is used by the DPRC driver, but it will be used by the VFIO
> driver as well.
> 
> Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
> ---
>  drivers/bus/fsl-mc/dprc-driver.c | 52 ++++++++++++++++++++++++--------
>  include/linux/fsl/mc.h           |  2 ++
>  2 files changed, 41 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
> index 789220f0372a..a655e3fee291 100644
> --- a/drivers/bus/fsl-mc/dprc-driver.c
> +++ b/drivers/bus/fsl-mc/dprc-driver.c
> @@ -725,33 +725,25 @@ static void dprc_teardown_irq(struct fsl_mc_device *mc_dev)
>  }
>  
>  /**
> - * dprc_remove - callback invoked when a DPRC is being unbound from this driver
> + * dprc_cleanup - function that cleanups a DPRC
>   *
>   * @mc_dev: Pointer to fsl-mc device representing the DPRC
>   *
> - * It removes the DPRC's child objects from Linux (not from the MC) and
> - * closes the DPRC device in the MC.
> - * It tears down the interrupts that were configured for the DPRC device.
> + * It closes the DPRC device in the MC.
>   * It destroys the interrupt pool associated with this MC bus.
>   */
> -static int dprc_remove(struct fsl_mc_device *mc_dev)
> +

nit: extra white space?

---
Best Regards, Laurentiu

> +int dprc_cleanup(struct fsl_mc_device *mc_dev)
>  {
>  	int error;
>  	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_dev);
>  
>  	if (!is_fsl_mc_bus_dprc(mc_dev))
>  		return -EINVAL;
> -	if (!mc_dev->mc_io)
> -		return -EINVAL;
>  
> -	if (!mc_bus->irq_resources)
> +	if (!mc_dev->mc_io)
>  		return -EINVAL;
>  
> -	if (dev_get_msi_domain(&mc_dev->dev))
> -		dprc_teardown_irq(mc_dev);
> -
> -	device_for_each_child(&mc_dev->dev, NULL, __fsl_mc_device_remove);
> -
>  	if (dev_get_msi_domain(&mc_dev->dev)) {
>  		fsl_mc_cleanup_irq_pool(mc_bus);
>  		dev_set_msi_domain(&mc_dev->dev, NULL);
> @@ -768,6 +760,40 @@ static int dprc_remove(struct fsl_mc_device *mc_dev)
>  		mc_dev->mc_io = NULL;
>  	}
>  
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(dprc_cleanup);
> +
> +/**
> + * dprc_remove - callback invoked when a DPRC is being unbound from this driver
> + *
> + * @mc_dev: Pointer to fsl-mc device representing the DPRC
> + *
> + * It removes the DPRC's child objects from Linux (not from the MC) and
> + * closes the DPRC device in the MC.
> + * It tears down the interrupts that were configured for the DPRC device.
> + * It destroys the interrupt pool associated with this MC bus.
> + */
> +static int dprc_remove(struct fsl_mc_device *mc_dev)
> +{
> +	int error;
> +	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_dev);
> +
> +	if (!is_fsl_mc_bus_dprc(mc_dev))
> +		return -EINVAL;
> +
> +	if (!mc_bus->irq_resources)
> +		return -EINVAL;
> +
> +	if (dev_get_msi_domain(&mc_dev->dev))
> +		dprc_teardown_irq(mc_dev);
> +
> +	device_for_each_child(&mc_dev->dev, NULL, __fsl_mc_device_remove);
> +
> +	error = dprc_cleanup(mc_dev);
> +	if (error < 0)
> +		dev_err(&mc_dev->dev, "dprc_close() failed: %d\n", error);
> +
>  	dev_info(&mc_dev->dev, "DPRC device unbound from driver");
>  	return 0;
>  }
> diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
> index 2bdd96a482fb..e3ba273a1122 100644
> --- a/include/linux/fsl/mc.h
> +++ b/include/linux/fsl/mc.h
> @@ -480,6 +480,8 @@ int dprc_scan_container(struct fsl_mc_device *mc_bus_dev,
>  		   const char *driver_override,
>  		   bool alloc_interrupts);
>  
> +int dprc_cleanup(struct fsl_mc_device *mc_dev);
> +
>  /*
>   * Data Path Buffer Pool (DPBP) API
>   * Contains initialization APIs and runtime control APIs for DPBP
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
