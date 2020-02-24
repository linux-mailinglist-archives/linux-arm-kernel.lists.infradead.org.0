Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB1316A3E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 11:30:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1R76s889zOeHSQEQLKNFWV+qXG504329BNCbmp9i9c=; b=qxoaqY0FPydF42
	gpWl2bUeXW4pj78S1JRPo2roIo/kvToW7CvWyiWonvout6WRCnRJ/j3nbwXoB7gHcwiI6XUmNjTpl
	3dz57zAIKs4TUyAKkRYLZ+OgwHdE8+eZOgnL56syYuvFzSgS5A32fVLwIIi8CsfqoUQBUPY22efh6
	hBCXDBFjCQ83Df0TDRoXhLQc1PlQ7U6O42ZxCGYxgXE0e/49hdDdIiMwLB4/uE4u02lL8g+Hl26vr
	48tMXUto5n8mpmQ8j3HxUTPY2kxX6Zdm86E0Vh3f3vnzjXN8E88SJkdr9xiPUoKRHWlfEGqzpFwL/
	3YckrYr3dyTkQr9Zot0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6B0U-0004s4-B6; Mon, 24 Feb 2020 10:30:34 +0000
Received: from mail-bn8nam12on2082.outbound.protection.outlook.com
 ([40.107.237.82] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6B0K-0004hC-FG
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 10:30:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nhWGjB6bEo93Doe5gMOludA4Df4ZZa+s/mM0EeQ/XW+lQJST+1hbHyQ+qLD6SgrvYgn+ROWdEiRMlzHoYgF56/ocya7EaKlzdmiWKsq8ZOkEDI6hr9IBYhAk/UzV6O1Y7jO695d6ZSROLs9NMtuMM2uOJciN2MKiR6Zm0UkZJnlhYj7m5sMMMN14UxReGUwAB3YewvqyLcMQXxqITXh0W7jjr5nd5ewpfIbsTzmbORrx10A3gqKfuhj4mJnU1+azBKPnR/u2GArjCMnNe/Bz1jxLlm+NymA0S9g68YbKWePDtfiEj1p2SRYJRlPmV5T4AeKgX22AAz0i5guwsyQLPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t3XdV0v5JydAJ5sWiIqi4jh/PhsBqQgaebAZ/9Un8ZI=;
 b=PDYF97tUshWTkUC5aYiJ7S+e+1j3yZoOHsULwIBUZFGGNgMdZhizY/1uuUiChaqYH6lGF4bz1j8pilae/s2iVwrMWoy9s2k5797gv6TnUTwCju2HTPJlveTpwuJEcPYagLyKXpdirQP/+r9HmIiegvP69gOhFpMM9/ASP04W5eKJbhBe9BVrfIsh8vGjk/mR5tFXB5tQq27RFh+WMP5AwxzzAflDi5sz+ec4msQhAKlVRMwQqGmHoBpKfa30ybK7XFwux6Mj9pq0X3wY5cOvzi64T/c9aS6tTfdrRO5m/HtDxnSxzroabIRZGa4Y6e5pbH3DhemoT2z4VIgAiq9hgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t3XdV0v5JydAJ5sWiIqi4jh/PhsBqQgaebAZ/9Un8ZI=;
 b=GrJ+7rKKq1kfgr8dbx1JqJSHPvAA69HVmnfcTOEGi3Zg02n3LSaNGdQgPAcyvh8PNsuDDJWEg4D6bV8jKhAhWbI6/1QdFlBwp01bU+iA/0sKuWdyxTplihMttD9KdweL+qP9lHX+p9guQZqfS+G3gAAD0aOqDdOK3kJC8f0Nw24=
Received: from BYAPR02CA0004.namprd02.prod.outlook.com (2603:10b6:a02:ee::17)
 by SN6PR02MB5646.namprd02.prod.outlook.com (2603:10b6:805:ed::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Mon, 24 Feb
 2020 10:30:19 +0000
Received: from BL2NAM02FT024.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::207) by BYAPR02CA0004.outlook.office365.com
 (2603:10b6:a02:ee::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.29 via Frontend
 Transport; Mon, 24 Feb 2020 10:30:19 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT024.mail.protection.outlook.com (10.152.77.62) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Mon, 24 Feb 2020 10:30:19 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j6B0E-0004GN-7E; Mon, 24 Feb 2020 02:30:18 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j6B09-0004Sp-42; Mon, 24 Feb 2020 02:30:13 -0800
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1j6B08-0004K9-AF; Mon, 24 Feb 2020 02:30:12 -0800
Subject: Re: [PATCH 2/2] sdhci: arasan: Add support for Versal Tap Delays
To: Manish Narani <manish.narani@xilinx.com>, ulf.hansson@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 adrian.hunter@intel.com
References: <1582115313-115667-1-git-send-email-manish.narani@xilinx.com>
 <1582115313-115667-3-git-send-email-manish.narani@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <3a6a96b6-dc7e-1ee0-8871-e5eec185d6e6@xilinx.com>
Date: Mon, 24 Feb 2020 11:30:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1582115313-115667-3-git-send-email-manish.narani@xilinx.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(39850400004)(396003)(189003)(199004)(107886003)(2616005)(31686004)(5660300002)(70206006)(186003)(2906002)(70586007)(26005)(316002)(6666004)(356004)(478600001)(8936002)(81156014)(336012)(9786002)(44832011)(81166006)(8676002)(4326008)(31696002)(36756003)(426003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5646; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5782758f-cb53-4798-abfd-08d7b9148beb
X-MS-TrafficTypeDiagnostic: SN6PR02MB5646:
X-Microsoft-Antispam-PRVS: <SN6PR02MB564649062D3766741CFC699BC6EC0@SN6PR02MB5646.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 032334F434
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P3EL5hGdpVFXfaz6o+5t5DHXVQj89wBXh710hI0nhXp3JY0IObxUhV7Kyx23xAmbWLtI+QaxOBGzWaV4L6DqPOsDhQZyL+pWSI3eR4rqrovDG4+0iVK+zwLocyFXPyoLdgzbYhVyec96eZXhRUfSmEbPEGizWjTOrPgEnRYRbEhgYMwd9P9Myl0xxVnqV27wG0azhCqCPoBLSF0ADlMKYSQJ96+DyKRXrAYt3qIc1UI77JW39OGLnZV+6MsWxWPOGWlTEU+ca5Dq80m+373SLR1kYkk9mxZMlXr5JbZ3xaG/XLpzGJyI5kUrbDn7MLaWtL3KjNXWV6d5gdOIqHpG42wdfsl+myEzQ19PwiHdknbaKuww17+UUlNVE7zHvCVFoC64NNka3DZGzkQTwqqMrdsLR4N9kQ4EVV56oZxdSacIPp+eyNrk2wVC3rdOBUjv
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 10:30:19.1334 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5782758f-cb53-4798-abfd-08d7b9148beb
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5646
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_023024_582340_57DC9957 
X-CRM114-Status: GOOD (  24.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19. 02. 20 13:28, Manish Narani wrote:
> Add support to set tap delays for Xilinx Versal SD controller. The tap
> delay registers have moved to SD controller space in Versal. Make the
> changes accordingly.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 176 ++++++++++++++++++++++++++++-
>  1 file changed, 174 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index 0146d7dd315b..d18280793e5b 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -28,15 +28,26 @@
>  #include "sdhci-pltfm.h"
>  
>  #define SDHCI_ARASAN_VENDOR_REGISTER	0x78
> +
> +#define SDHCI_ARASAN_ITAPDLY_REGISTER	0xF0F8
> +#define SDHCI_ARASAN_OTAPDLY_REGISTER	0xF0FC
> +
>  #define SDHCI_ARASAN_CQE_BASE_ADDR	0x200
>  #define VENDOR_ENHANCED_STROBE		BIT(0)
>  
>  #define PHY_CLK_TOO_SLOW_HZ		400000
>  
> +#define SDHCI_ITAPDLY_CHGWIN		0x200
> +#define SDHCI_ITAPDLY_ENABLE		0x100
> +#define SDHCI_OTAPDLY_ENABLE		0x40
> +
>  /* Default settings for ZynqMP Clock Phases */
>  #define ZYNQMP_ICLK_PHASE {0, 63, 63, 0, 63,  0,   0, 183, 54,  0, 0}
>  #define ZYNQMP_OCLK_PHASE {0, 72, 60, 0, 60, 72, 135, 48, 72, 135, 0}
>  
> +#define VERSAL_ICLK_PHASE {0, 132, 132, 0, 132, 0, 0, 162, 90, 0, 0}
> +#define VERSAL_OCLK_PHASE {0,  60, 48, 0, 48, 72, 90, 36, 60, 90, 0}
> +
>  /*
>   * On some SoCs the syscon area has a feature where the upper 16-bits of
>   * each 32-bit register act as a write mask for the lower 16-bits.  This allows
> @@ -566,6 +577,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
>  		.compatible = "xlnx,zynqmp-8.9a",
>  		.data = &sdhci_arasan_zynqmp_data,
>  	},
> +	{
> +		.compatible = "xlnx,versal-8.9a",
> +		.data = &sdhci_arasan_zynqmp_data,
> +	},
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, sdhci_arasan_of_match);
> @@ -634,7 +649,6 @@ static const struct clk_ops arasan_sampleclk_ops = {
>   * Return: 0 on success and error value on error
>   */
>  static int sdhci_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
> -

nit: unrelated.


>  {
>  	struct sdhci_arasan_clk_data *clk_data =
>  		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
> @@ -706,7 +720,6 @@ static const struct clk_ops zynqmp_sdcardclk_ops = {
>   * Return: 0 on success and error value on error
>   */
>  static int sdhci_zynqmp_sampleclk_set_phase(struct clk_hw *hw, int degrees)
> -

nit: unrelated.

>  {
>  	struct sdhci_arasan_clk_data *clk_data =
>  		container_of(hw, struct sdhci_arasan_clk_data, sampleclk_hw);
> @@ -768,6 +781,151 @@ static const struct clk_ops zynqmp_sampleclk_ops = {
>  	.set_phase = sdhci_zynqmp_sampleclk_set_phase,
>  };
>  
> +/**
> + * sdhci_versal_sdcardclk_set_phase - Set the SD Output Clock Tap Delays
> + *
> + * Set the SD Output Clock Tap Delays for Output path
> + *
> + * @hw:			Pointer to the hardware clock structure.
> + * @degrees		The clock phase shift between 0 - 359.
> + * Return: 0 on success and error value on error
> + */


drivers/mmc/host/sdhci-of-arasan.c:785: info: Scanning doc for
sdhci_versal_sdcardclk_set_phase
drivers/mmc/host/sdhci-of-arasan.c:789: warning: contents before sections
drivers/mmc/host/sdhci-of-arasan.c:794: warning: Function parameter or
member 'degrees' not described in 'sdhci_versal_sdcardclk_set_phase'

Also I see a lot of other kernel-doc warnings.


> +static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
> +{
> +	struct sdhci_arasan_clk_data *clk_data =
> +		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
> +	struct sdhci_arasan_data *sdhci_arasan =
> +		container_of(clk_data, struct sdhci_arasan_data, clk_data);
> +	struct sdhci_host *host = sdhci_arasan->host;
> +	u8 tap_delay, tap_max = 0;
> +	int ret;
> +
> +	/*
> +	 * This is applicable for SDHCI_SPEC_300 and above
> +	 * Versal does not set phase for <=25MHz clock.
> +	 * If degrees is zero, no need to do anything.
> +	 */
> +	if (host->version < SDHCI_SPEC_300 ||
> +	    host->timing == MMC_TIMING_LEGACY ||
> +	    host->timing == MMC_TIMING_UHS_SDR12 || !degrees)
> +		return 0;
> +
> +	switch (host->timing) {
> +	case MMC_TIMING_MMC_HS:
> +	case MMC_TIMING_SD_HS:
> +	case MMC_TIMING_UHS_SDR25:
> +	case MMC_TIMING_UHS_DDR50:
> +	case MMC_TIMING_MMC_DDR52:
> +		/* For 50MHz clock, 30 Taps are available */
> +		tap_max = 30;
> +		break;
> +	case MMC_TIMING_UHS_SDR50:
> +		/* For 100MHz clock, 15 Taps are available */
> +		tap_max = 15;
> +		break;
> +	case MMC_TIMING_UHS_SDR104:
> +	case MMC_TIMING_MMC_HS200:
> +		/* For 200MHz clock, 8 Taps are available */
> +		tap_max = 8;
> +	default:
> +		break;
> +	}
> +
> +	tap_delay = (degrees * tap_max) / 360;
> +
> +	/* Set the Clock Phase */
> +	if (tap_delay) {
> +		u32 regval;
> +
> +		regval = sdhci_readl(host, SDHCI_ARASAN_OTAPDLY_REGISTER);
> +		regval |= SDHCI_OTAPDLY_ENABLE;
> +		sdhci_writel(host, regval, SDHCI_ARASAN_OTAPDLY_REGISTER);
> +		regval |= tap_delay;
> +		sdhci_writel(host, regval, SDHCI_ARASAN_OTAPDLY_REGISTER);
> +	}
> +
> +	return ret;
> +}
> +
> +static const struct clk_ops versal_sdcardclk_ops = {
> +	.recalc_rate = sdhci_arasan_sdcardclk_recalc_rate,
> +	.set_phase = sdhci_versal_sdcardclk_set_phase,
> +};
> +
> +/**
> + * sdhci_versal_sampleclk_set_phase - Set the SD Input Clock Tap Delays
> + *
> + * Set the SD Input Clock Tap Delays for Input path
> + *
> + * @hw:			Pointer to the hardware clock structure.
> + * @degrees		The clock phase shift between 0 - 359.
> + * Return: 0 on success and error value on error
> + */

ditto.

> +static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
> +{
> +	struct sdhci_arasan_clk_data *clk_data =
> +		container_of(hw, struct sdhci_arasan_clk_data, sampleclk_hw);
> +	struct sdhci_arasan_data *sdhci_arasan =
> +		container_of(clk_data, struct sdhci_arasan_data, clk_data);
> +	struct sdhci_host *host = sdhci_arasan->host;
> +	u8 tap_delay, tap_max = 0;
> +	int ret;
> +
> +	/*
> +	 * This is applicable for SDHCI_SPEC_300 and above
> +	 * Versal does not set phase for <=25MHz clock.
> +	 * If degrees is zero, no need to do anything.
> +	 */
> +	if (host->version < SDHCI_SPEC_300 ||
> +	    host->timing == MMC_TIMING_LEGACY ||
> +	    host->timing == MMC_TIMING_UHS_SDR12 || !degrees)
> +		return 0;
> +
> +	switch (host->timing) {
> +	case MMC_TIMING_MMC_HS:
> +	case MMC_TIMING_SD_HS:
> +	case MMC_TIMING_UHS_SDR25:
> +	case MMC_TIMING_UHS_DDR50:
> +	case MMC_TIMING_MMC_DDR52:
> +		/* For 50MHz clock, 120 Taps are available */
> +		tap_max = 120;
> +		break;
> +	case MMC_TIMING_UHS_SDR50:
> +		/* For 100MHz clock, 60 Taps are available */
> +		tap_max = 60;
> +		break;
> +	case MMC_TIMING_UHS_SDR104:
> +	case MMC_TIMING_MMC_HS200:
> +		/* For 200MHz clock, 30 Taps are available */
> +		tap_max = 30;
> +	default:
> +		break;
> +	}
> +
> +	tap_delay = (degrees * tap_max) / 360;
> +
> +	/* Set the Clock Phase */
> +	if (tap_delay) {
> +		u32 regval;
> +
> +		regval = sdhci_readl(host, SDHCI_ARASAN_ITAPDLY_REGISTER);
> +		regval |= SDHCI_ITAPDLY_CHGWIN;
> +		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
> +		regval |= SDHCI_ITAPDLY_ENABLE;
> +		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
> +		regval |= tap_delay;
> +		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
> +		regval &= ~SDHCI_ITAPDLY_CHGWIN;
> +		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
> +	}
> +
> +	return ret;
> +}
> +
> +static const struct clk_ops versal_sampleclk_ops = {
> +	.recalc_rate = sdhci_arasan_sampleclk_recalc_rate,
> +	.set_phase = sdhci_versal_sampleclk_set_phase,
> +};
>  static void arasan_zynqmp_dll_reset(struct sdhci_host *host, u32 deviceid)
>  {
>  	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> @@ -965,6 +1123,16 @@ static void arasan_dt_parse_clk_phases(struct device *dev,
>  		}
>  	}
>  
> +	if (of_device_is_compatible(dev->of_node, "xlnx,versal-8.9a")) {
> +		iclk_phase = (int [MMC_TIMING_MMC_HS400 + 1]) VERSAL_ICLK_PHASE;
> +		oclk_phase = (int [MMC_TIMING_MMC_HS400 + 1]) VERSAL_OCLK_PHASE;
> +
> +		for (i = 0; i <= MMC_TIMING_MMC_HS400; i++) {
> +			clk_data->clk_phase_in[i] = iclk_phase[i];
> +			clk_data->clk_phase_out[i] = oclk_phase[i];
> +		}
> +	}
> +
>  	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_LEGACY,
>  				 "clk-phase-legacy");
>  	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_HS,
> @@ -1025,6 +1193,8 @@ sdhci_arasan_register_sdcardclk(struct sdhci_arasan_data *sdhci_arasan,
>  	sdcardclk_init.flags = CLK_GET_RATE_NOCACHE;
>  	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
>  		sdcardclk_init.ops = &zynqmp_sdcardclk_ops;
> +	else if (of_device_is_compatible(np, "xlnx,versal-8.9a"))
> +		sdcardclk_init.ops = &versal_sdcardclk_ops;
>  	else
>  		sdcardclk_init.ops = &arasan_sdcardclk_ops;
>  
> @@ -1077,6 +1247,8 @@ sdhci_arasan_register_sampleclk(struct sdhci_arasan_data *sdhci_arasan,
>  	sampleclk_init.flags = CLK_GET_RATE_NOCACHE;
>  	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
>  		sampleclk_init.ops = &zynqmp_sampleclk_ops;
> +	else if (of_device_is_compatible(np, "xlnx,versal-8.9a"))
> +		sampleclk_init.ops = &versal_sampleclk_ops;
>  	else
>  		sampleclk_init.ops = &arasan_sampleclk_ops;


I would consider to start to think how to remove these
of_device_is_compatible() calls because at best it should be setup
checked only once.

Thanks,
Michal




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
