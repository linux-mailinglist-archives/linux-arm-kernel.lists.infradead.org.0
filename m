Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8348CCEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 09:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2ErlTF0HYZfemItbnWdNEYWH/EsGyYDi+cwKQHsmSs=; b=BnfFsWw/LqTdsv
	Ct0dsNv51VAHtoFQJ8zrBVelEmdDUz5aUczQ36/qy3gGZz9XwIJ0KXjglE8IjlO0vE/8tlLOk2XbQ
	dzU8KmUSEraMFRtHCiwCTdmi+8c0R+cJTK/KiBy+44ZfratdoFWqgGhcgzHACCJtgq7BmLA1I99F0
	EUzI6iW8VyJFqMoAXOjNon5W8CNFims6WxVKMehs1kfbguJV36Cw3SoiJJyD6WWplb9+HHRd3B1u7
	mybPZ6WMp/JDgb7xgvxOB3tyEkTTbcoX/mXBD6SHONURPfe8bGszlRadDIsM2c6Od2RPJTq0YL757
	sDDaPiPtxNESca5OKFLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxnmp-0007rQ-6Y; Wed, 14 Aug 2019 07:33:35 +0000
Received: from mail-eopbgr750043.outbound.protection.outlook.com
 ([40.107.75.43] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxnmS-0007r0-7f
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 07:33:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VyXVxLdKZ8FXMSJSCLkxC1Qw/geASkO+s9GqBbYDM2bl1M4ND1zgngo0nBagGTsHj4Zyg5t+JksgDDUuLTwts2RJyIuMRDVR/JDpr5XeqcMkx0r34vTYPjzqBhiNUW4kFXpzUP0bnnVgFnNSGB3cR6sn6LxJhHVib8TXL6t2r1MuZ5eke8SiZoZgasHqc1WSK8FTgoLCmdyRt1DXWRB7EdRTBBQpdu9vI3EYjpADDWWuLSWCvr2fdn2jsmeakBw5Ls/T4jjGB+euoQNe4i3Wt9FZviYqiOpjqGyyIGv02PXSw3MCbTA2DOzo/rGTOAKq4mETpC9SEAQn3qKWT0eIsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fFrGQvCJFlu19/qWI8WtMszBIy8CygzG4wJJpLg3cLI=;
 b=j4KM8jQYhUNlzz/QLWG4SM4j6c0E/0HGZa88qjvnjEjBHXyQOF23ygOUl2fHJ1y9KQ1NJrjiZAbKS3U/uylrj6kqzKtAI4GHI3AIP2LzgDRt0k8m3oMN0dGHz2pS5wJX0/C8wUlUVwq7jKU8qDNBrKCW6GC04T5phyzMQrg12T6Sni6hpmW9oZgJHc3s1V/JMg4YBTlW/+1J6GkqTnAtyF5UReGHWXkV/sDGUAVfdB0Yi4WajwLnXmxlWcumVPVsvoLUgYawXcAY3YLXfsbCHKqZ9X6bioEzl1vxMBbGbZvbXTs9e8+oc2WRq+F1sw/0G8LjU8GLIbCqXWg3ry5Nzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fFrGQvCJFlu19/qWI8WtMszBIy8CygzG4wJJpLg3cLI=;
 b=CSHNcbQTHH5GRJ03xr1s+0Vfq1t/byt9Ubd57y1sh6HkRCOb2B1FJw5UGmAIBBOqzRp1wIeWLFCLI2KxMkELywG0sfkQxfRGzXXFvENva+KLo7RyZf1aoZNGQPYryY64Q1Wwh8Uoc9Sc85Grz06776y7/FbjfGyalGWBDFcqV8M=
Received: from DM6PR02CA0124.namprd02.prod.outlook.com (2603:10b6:5:1b4::26)
 by MW2PR02MB3803.namprd02.prod.outlook.com (2603:10b6:907:3::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.16; Wed, 14 Aug
 2019 07:33:08 +0000
Received: from SN1NAM02FT020.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::206) by DM6PR02CA0124.outlook.office365.com
 (2603:10b6:5:1b4::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.14 via Frontend
 Transport; Wed, 14 Aug 2019 07:33:08 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT020.mail.protection.outlook.com (10.152.72.139) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2178.16
 via Frontend Transport; Wed, 14 Aug 2019 07:33:07 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hxnmN-0004fI-0i; Wed, 14 Aug 2019 00:33:07 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hxnmH-0001yI-SH; Wed, 14 Aug 2019 00:33:01 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x7E7WvV3028655; 
 Wed, 14 Aug 2019 00:32:57 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1hxnmC-0001ww-Ug; Wed, 14 Aug 2019 00:32:57 -0700
Subject: Re: [PATCH] soc: xilinx: Set CAP_UNUSABLE requirement for versal
 while powering down domain
To: Jolly Shah <jolly.shah@xilinx.com>, matthias.bgg@gmail.com,
 andy.gross@linaro.org, shawnguo@kernel.org, geert+renesas@glider.be,
 bjorn.andersson@linaro.org, sean.wang@mediatek.com,
 m.szyprowski@samsung.com, michal.simek@xilinx.com
References: <1565290836-18204-1-git-send-email-jolly.shah@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <d775ff32-5004-b01b-e9a6-b2f947317ed8@xilinx.com>
Date: Wed, 14 Aug 2019 09:32:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565290836-18204-1-git-send-email-jolly.shah@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(376002)(346002)(2980300002)(199004)(189003)(31686004)(47776003)(229853002)(8676002)(5660300002)(186003)(26005)(4326008)(63266004)(107886003)(36756003)(6246003)(65956001)(305945005)(65806001)(316002)(106002)(230700001)(81156014)(76176011)(478600001)(64126003)(6666004)(356004)(2486003)(23676004)(58126008)(8936002)(31696002)(81166006)(36386004)(70586007)(486006)(70206006)(44832011)(50466002)(426003)(476003)(446003)(11346002)(336012)(126002)(2616005)(54906003)(14444005)(65826007)(52146003)(9786002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR02MB3803; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8ca89710-5c58-4ff4-3dbb-08d72089a6e6
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:MW2PR02MB3803; 
X-MS-TrafficTypeDiagnostic: MW2PR02MB3803:
X-Microsoft-Antispam-PRVS: <MW2PR02MB38038DE6C5EA680F8C9EE008C6AD0@MW2PR02MB3803.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 01294F875B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: xsWW4Idy8GehgySll5q0uBCFYjpLAudAxeM3eeQU6EtcWlveqXRISx5trJ+5mJmom/buKnQAdurs2LujBtTBRfFIP4vfdItVYWLShG2IjPkLFFUUNcLjVnnuRnLUB+yU59ftCGAAaH7Uth7yAexUSjVuH58GeqNvfSKYybmv9RkiAR00bft068k685lBiy5smKojV6E4W+Fza9MLl3bCaNkrNATqzh09aGwH0gPEmmrdhqe1UH8zIoT6L8HOobTXcV9rL5yyg6Q5KUoxHBnJFfWeJpy7a08sJ4q/eQ0spwsWlWOYG8VMYkNMkAdZ35XfPctc1hZVEt15s+JqfaOrGk1YdlBPWsDbs2zX3OZkIober4v21LLqiIT9cHufbQt6ZJdzfmx6gxwOl5r72frpcIikBXXeDcew3beOqGKvv9g=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 07:33:07.4906 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ca89710-5c58-4ff4-3dbb-08d72089a6e6
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR02MB3803
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_003312_273516_ECC8E1D6 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Jolly Shah <jollys@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08. 08. 19 21:00, Jolly Shah wrote:
> From: Tejas Patel <tejas.patel@xilinx.com>
> 
> For "0" requirement which is used to inform firmware that
> device is not required currently by master, Versal LibPM disables

This could be the first time when LibPM is mentioned in connection to
Versal. That's why you should also say what's that and when it runs to
make it clear.

> clock, power it down and reset the device. genpd_power_off()
> is being called during runtime suspend also. So, if any device
> goes to runtime suspend state during resumes it needs to be
> re-initialized again. It is possible that drivers do not
> reinitialize device upon resume from runtime suspend every time.
> 
> In LibPM new PM_CAP_UNUSABLE capability is added, which disables
> clock only and avoids power down and reset.
> So, set CAPABILITY_UNUSABLE requirement during zynqmp_gpd_power_off()
> if platform is other than zynqmp.
> 
> Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> Signed-off-by: Jolly Shah <jollys@xilinx.com>
> ---
>  drivers/soc/xilinx/zynqmp_pm_domains.c | 10 ++++++++--
>  include/linux/firmware/xlnx-zynqmp.h   |  3 ++-
>  2 files changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/soc/xilinx/zynqmp_pm_domains.c b/drivers/soc/xilinx/zynqmp_pm_domains.c
> index 600f57c..23d90cb 100644
> --- a/drivers/soc/xilinx/zynqmp_pm_domains.c
> +++ b/drivers/soc/xilinx/zynqmp_pm_domains.c
> @@ -2,7 +2,7 @@
>  /*
>   * ZynqMP Generic PM domain support
>   *
> - *  Copyright (C) 2015-2018 Xilinx, Inc.
> + *  Copyright (C) 2015-2019 Xilinx, Inc.
>   *
>   *  Davorin Mista <davorin.mista@aggios.com>
>   *  Jolly Shah <jollys@xilinx.com>
> @@ -25,6 +25,8 @@
>  
>  static const struct zynqmp_eemi_ops *eemi_ops;
>  
> +static int min_capability;
> +
>  /**
>   * struct zynqmp_pm_domain - Wrapper around struct generic_pm_domain
>   * @gpd:		Generic power domain
> @@ -106,7 +108,7 @@ static int zynqmp_gpd_power_off(struct generic_pm_domain *domain)
>  	int ret;
>  	struct pm_domain_data *pdd, *tmp;
>  	struct zynqmp_pm_domain *pd;
> -	u32 capabilities = 0;
> +	u32 capabilities = min_capability;
>  	bool may_wakeup;
>  
>  	if (!eemi_ops->set_requirement)
> @@ -283,6 +285,10 @@ static int zynqmp_gpd_probe(struct platform_device *pdev)
>  	if (!domains)
>  		return -ENOMEM;
>  
> +	if (!of_device_is_compatible(dev->parent->of_node,
> +				     "xlnx,zynqmp-firmware"))
> +		min_capability = ZYNQMP_PM_CAPABILITY_UNUSABLE;
> +
>  	for (i = 0; i < ZYNQMP_NUM_DOMAINS; i++, pd++) {
>  		pd->node_id = 0;
>  		pd->gpd.name = kasprintf(GFP_KERNEL, "domain%d", i);
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index 778abbb..b8a7c22 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -2,7 +2,7 @@
>  /*
>   * Xilinx Zynq MPSoC Firmware layer
>   *
> - *  Copyright (C) 2014-2018 Xilinx
> + *  Copyright (C) 2014-2019 Xilinx
>   *
>   *  Michal Simek <michal.simek@xilinx.com>
>   *  Davorin Mista <davorin.mista@aggios.com>
> @@ -46,6 +46,7 @@
>  #define	ZYNQMP_PM_CAPABILITY_ACCESS	0x1U
>  #define	ZYNQMP_PM_CAPABILITY_CONTEXT	0x2U
>  #define	ZYNQMP_PM_CAPABILITY_WAKEUP	0x4U
> +#define ZYNQMP_PM_CAPABILITY_UNUSABLE	0x8U

Please align it with other macros (or fix that macros).

Other then two small nits patch is fine.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
