Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FE1EFBE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:57:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wD/p70oyyZYHqPlJ3GU9BBTOrgJfzC3YrFM8HXOw3Vc=; b=E4RMY2ztezgig0
	lQls/iqtNWM94UOsbDLuGp4V3OeeZvIOJjAPmX/3I6A6AzwJ5TKS0S21rrgsP19dTzpyPQN8zoCZE
	T7EHcvP3BGnMdCP7SMmhSymylocVsTEy9HiarxUj2ae5ik2f1Nu61ELBE8sYTX5SgN43fL/8YSvW5
	tXNxy20ZtrGPjA1qIcpIUqdaQY7UTE/v129rp6iiSR82wYfDNE3JH8mf0x8YKDXTRpvDbcD6mG0+I
	0bTiGLYxatcHinwusXXQKf76L8CQWw+oNdRTEooXKYCYZW6DT+9SWp+uoFFJej7bFJ6Let127uasx
	URKiyDgkibKLJAam+pcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRwWH-0001C8-A6; Tue, 05 Nov 2019 10:57:05 +0000
Received: from mail-dm3nam03on0623.outbound.protection.outlook.com
 ([2a01:111:f400:fe49::623]
 helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRwWA-0001Bg-Ha
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:56:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HzqWflhnR6622ht0JuYbDTW5J5UpIk3mZ4yZ4E6QZf5uHzldVx/bzmiFnAVBhoT5WDvJSwv+EM3+wa0AqzSoR6gsw2aFyWYmxS4Pd1CLBappOUusUJSeoz8NGmgG2O93kk6SSqB89Sfp2ZYM+bndNSwNDRowSbmZJt5y3FNyQncoFWLq4S/AqTFMN5ktV8GAYC1p0tcoaSj09/cy3/wOvx45/75MAB5938hVUVgWzVRZ0nkpfcwtAiNqHvXLcFrli01XsF8aiKQ+VpqTK+4yqZlvlPa6dFIuXKwU03MPlDFDHYMiKlpOcA9oHUtvE/ltrmsYcxp/AtnIRCLUK8CRaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=waplPMLv6OkWhDp9vnO7NObcDM5fXbYET/jHRHPRByc=;
 b=V8MAsMqcTHRdPurJ03t8jd6acsl4w5Rv58BNWIjsWryjlWS/P0doeyhGFqTtnIYikjOeBNiALZcw4DRfq6wL5v+x4anGhPNpg8tcz5btxTox+xodILyppvelUBQJVEyORVJ86kVypi1jwtl82oXdWS4oRuCnvKWZNk5ocsFTa3l0e8pRcQScciTfISDP2OYdMplVfHMIjfk6P1Bwgl7iJMKRsLg1ttqeGC0iV4OwgS0RzTFPIDNFrwQ7yVLTu9/GhB4kjH+isB1AR/+3DtO3JTZxYTUyxPsKO2eXvcFdP/VPBBEdAXnzWH6teUeB8zW06jrl8DV/M3Ppz3/V73sYKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=waplPMLv6OkWhDp9vnO7NObcDM5fXbYET/jHRHPRByc=;
 b=K0wpIVqMYikqBhAeVFZTKHkQc+l157PvZqkT3199d3UKCwhhhDsiboRiqkzKvXk9to3BxEJXdvMWOJUUnQ44IjBa0WmX1Fq3cHnmaIq2kxmAYKR2kLZKe1bSTXY441rC+qEAF7SkXx3JAlo9fxziLdLAMIkakeNtYSdfFUoCXGk=
Received: from CH2PR02CA0015.namprd02.prod.outlook.com (2603:10b6:610:4e::25)
 by DM6PR02MB5562.namprd02.prod.outlook.com (2603:10b6:5:34::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.24; Tue, 5 Nov
 2019 10:56:55 +0000
Received: from SN1NAM02FT031.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::200) by CH2PR02CA0015.outlook.office365.com
 (2603:10b6:610:4e::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2408.24 via Frontend
 Transport; Tue, 5 Nov 2019 10:56:54 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT031.mail.protection.outlook.com (10.152.72.116) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2387.20
 via Frontend Transport; Tue, 5 Nov 2019 10:56:54 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iRwW6-0002WD-6b; Tue, 05 Nov 2019 02:56:54 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iRwW1-00018v-2r; Tue, 05 Nov 2019 02:56:49 -0800
Received: from [172.30.17.123] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iRwVt-000188-AQ; Tue, 05 Nov 2019 02:56:41 -0800
Subject: Re: [PATCH 60/62] gpio: gpio-zynq: Use new GPIO_LINE_DIRECTION
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 mazziesaccount@gmail.com
References: <cover.1572946015.git.matti.vaittinen@fi.rohmeurope.com>
 <e3a74a28d9c0831fe798909d95695dc978d43030.1572946015.git.matti.vaittinen@fi.rohmeurope.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <2096366f-c2bc-28a2-009c-4a35f6bfc37a@xilinx.com>
Date: Tue, 5 Nov 2019 11:56:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e3a74a28d9c0831fe798909d95695dc978d43030.1572946015.git.matti.vaittinen@fi.rohmeurope.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(39860400002)(136003)(189003)(199004)(81166006)(9786002)(426003)(186003)(44832011)(446003)(26005)(31696002)(229853002)(54906003)(4326008)(47776003)(70206006)(70586007)(126002)(36756003)(336012)(31686004)(65806001)(476003)(6666004)(356004)(65956001)(23676004)(76176011)(2486003)(11346002)(2906002)(50466002)(8676002)(36386004)(81156014)(2616005)(230700001)(8936002)(6246003)(478600001)(106002)(305945005)(316002)(5660300002)(58126008)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5562; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 68e6abcf-50d6-4fac-9851-08d761dedef1
X-MS-TrafficTypeDiagnostic: DM6PR02MB5562:
X-Microsoft-Antispam-PRVS: <DM6PR02MB55622E96CFD3E5E9D5A814B5C67E0@DM6PR02MB5562.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0212BDE3BE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WUmsSg7i47Z9nsPigRn3fNPC/k3zjrxUFE+9UMH4gRTtxjn2C9/jN30w3/Y51GlRBM3Sop0DPmo4JdsopnKCmM6jIYaEOcF7hUh8M3moLg1n4sjwelJ2A4fAdGTmYzB9XL+4+K+tY8+vYT02NwmTRtCBzSD5C/sd7kOJLh/zMf4TNT87vffdxQYLgCbm1aikpGTQorFHZoKcy9TEDK3j5WzC0crleQp7PnQ/Lcu1JxRJJeKW8dUFfGigaVximJFK6aRsNK7cof5nawnybczhaY6Dmu4F1oJGV4LkvN4NNOR3STtEF/GB04fDyZVqtC4BnnGwBbVBX2lTXhL2QsQtpRK1zoDmXUvDuyRMxboUuur4ifFIfwHrx4Fbtmgb1H7tI3MERlyVLd5fB+6TnuttWdc3dNpFVW4Qu72XDYS0DKTiNsaSdgFiKmSSkIlL7mrt
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2019 10:56:54.6102 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 68e6abcf-50d6-4fac-9851-08d761dedef1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5562
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_025658_590098_619A2A4B 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe49:0:0:0:623 listed in]
 [list.dnswl.org]
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
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05. 11. 19 11:40, Matti Vaittinen wrote:
> It's hard for occasional GPIO code reader/writer to know if values 0/1
> equal to IN or OUT. Use defined GPIO_LINE_DIRECTION_IN and
> GPIO_LINE_DIRECTION_OUT to help them out.
> 
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
>  drivers/gpio/gpio-zynq.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
> index cd475ff4bcad..4c3f6370eab4 100644
> --- a/drivers/gpio/gpio-zynq.c
> +++ b/drivers/gpio/gpio-zynq.c
> @@ -360,7 +360,7 @@ static int zynq_gpio_dir_out(struct gpio_chip *chip, unsigned int pin,
>   *
>   * This function returns the direction of the specified GPIO.
>   *
> - * Return: 0 for output, 1 for input
> + * Return: GPIO_LINE_DIRECTION_OUT or GPIO_LINE_DIRECTION_IN
>   */
>  static int zynq_gpio_get_direction(struct gpio_chip *chip, unsigned int pin)
>  {
> @@ -372,7 +372,10 @@ static int zynq_gpio_get_direction(struct gpio_chip *chip, unsigned int pin)
>  
>  	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
>  
> -	return !(reg & BIT(bank_pin_num));
> +	if (reg & BIT(bank_pin_num))
> +		return GPIO_LINE_DIRECTION_OUT;
> +
> +	return GPIO_LINE_DIRECTION_IN;
>  }
>  
>  /**
> 

Reviewed-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
