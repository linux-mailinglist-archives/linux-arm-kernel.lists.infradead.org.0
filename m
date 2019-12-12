Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B47D11D0C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:18:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOPbFlu2P1OhGGbsqvIpRNj4R5GSjrVSruL62wRhuh8=; b=CThrjitHgh9RfW
	2PrhtWwmedEHgaDoozcsAF+evU5bKmEha7cZvft8iHz7BAbDrj7RCwgNe3Cfq36j//4hRytdMSktE
	9rmTszs4Z1oN5xIqeo9s+jmdIjQl+vv1dddLhtX24dP0WXw+Kdocx98cJ34kVgD2Vt+bgFDFreGk6
	g6qnr2ZWnWIxVi7jDM2PZkZzHIEAIF3OU7xyoDyu41CM+ZmG0XeYwaydJ/KA6ZUvYtPcxvcOvhGuY
	5PJHXL8EI1LEMSxDrtb03QWf6//Yv8OcmbzUp+n4uJoIao07FvZj6STCFbW5xm6/ceiVu4wpLNb/R
	NkYzzWoxfsjZbldTKT3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQEN-0007Nh-PG; Thu, 12 Dec 2019 15:18:19 +0000
Received: from mail-dm6nam12on2055.outbound.protection.outlook.com
 ([40.107.243.55] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQE7-0007GD-JE
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:18:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IzifY30QWT4bXWhBpubSlyun0h4ug2w16ysWyOc3O79SqJz8Fe3oPYqSqQTIcPhcWRMNRXqaifI8wQ0K6Q+9yP0dZ2eMhzhHt25RgRUlTahL1rkM78+dO0WS9yApuBdGkDV91vZrFVrvqV29YRQfYTqb0WSr7H2vgb3bt6kshq5IoNauzTVnIb//exrgrp4+/sL0RYSAazRRzWWInC49yPrdnFt6wHKJ/dx/tjmI+nT3D/YAqn7UvDMak1/q3kwE8MRRL3wm32W7SV9MvqadIy9vdRe54zQ2nMU/urmKLAW0aqXv8R4MFIBrnF/A6vl+JzMIIrsqLP46/XiovnCr1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D6odelPyzSzwCtv2oCBxXwZ7H+im3mZLvKZSI7BzWrE=;
 b=Ai4l/o+c/7jX7itDMYJNbLZLRywgQ7par+mTGRaI2NI8QpVYJnFByQJgybIWP8ollaMw5gflvMZ7S8ok/8E49n+ApiM5blkFrXKjRO/b8ouAuU6nyJ1Pz3x428EK530N3zMhGDgiJbkqNTwd35+AY4McSjz2JWEKNEfMB++MuKckJPxEFo3bDqrWVRlwmYh5PZ26jhBwSEbcAc0WGBKWO4VzBVonxPeFTEqlr9q5Upm5+FhJuNB6n7KBuwwXeG+eIRtZ5u1f/vJYGv7tmvFz57aQy6ozVEKU1TFLmrOcG1uYTDz+f8gmgW/wooBL999VXtYDLLF43QsrOOvDjtOBMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D6odelPyzSzwCtv2oCBxXwZ7H+im3mZLvKZSI7BzWrE=;
 b=J1JOc8eVvR/4F/nbGB2UWLpMXF1ybLFPUo1YLNcfxP7sXcQ3ts8a7sqPa187ZAo0QDfZF8Z1+1zMgJbDLWPx6B3/zXIuAP5FmHDDzM9tg2uD4INnT3XwFunHW1X+F1w3S2TeeEgiyOoUPO9XsRpRyzLjE2Df+A3JVqiCnVLHHXg=
Received: from MWHPR02CA0017.namprd02.prod.outlook.com (2603:10b6:300:4b::27)
 by DM5PR0201MB3430.namprd02.prod.outlook.com (2603:10b6:4:7b::34)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.17; Thu, 12 Dec
 2019 15:18:01 +0000
Received: from CY1NAM02FT020.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::208) by MWHPR02CA0017.outlook.office365.com
 (2603:10b6:300:4b::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.14 via Frontend
 Transport; Thu, 12 Dec 2019 15:18:01 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT020.mail.protection.outlook.com (10.152.75.191) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2538.14
 via Frontend Transport; Thu, 12 Dec 2019 15:18:00 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ifQE4-0000p2-7i; Thu, 12 Dec 2019 07:18:00 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ifQDz-0001CR-6c; Thu, 12 Dec 2019 07:17:55 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ifQDs-0000xF-FY; Thu, 12 Dec 2019 07:17:48 -0800
Subject: Re: [PATCH 3/3] arm64: dts: xilinx: Add the power nodes for zynqmp
To: Rajan Vaja <rajan.vaja@xilinx.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, harini.katakam@xilinx.com,
 jan.kiszka@siemens.com, ulf.hansson@linaro.org, xuwei5@hisilicon.com,
 mripard@kernel.org, heiko@sntech.de
References: <1573119856-13548-1-git-send-email-rajan.vaja@xilinx.com>
 <1573119856-13548-4-git-send-email-rajan.vaja@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <4e0c5cdd-2dd6-e6a1-3541-fcaf37468e35@xilinx.com>
Date: Thu, 12 Dec 2019 16:17:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1573119856-13548-4-git-send-email-rajan.vaja@xilinx.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(376002)(136003)(189003)(199004)(31696002)(2616005)(4744005)(31686004)(44832011)(478600001)(26005)(4326008)(426003)(186003)(9786002)(2906002)(8676002)(36756003)(356004)(336012)(8936002)(81166006)(70206006)(70586007)(5660300002)(81156014)(316002)(7416002)(6666004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0201MB3430; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6a711865-abc6-4f47-ab57-08d77f167a09
X-MS-TrafficTypeDiagnostic: DM5PR0201MB3430:
X-Microsoft-Antispam-PRVS: <DM5PR0201MB3430869874A29E4F88310538C6550@DM5PR0201MB3430.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0249EFCB0B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2nw3s05WoEi/vwbIGt4YsBgpIilrQfDQQ0agcGJdglqmqmO0PeMJ+uI2hfaViUrj62W9zjg0FUHBCoWzR8j6AqhlWUwggW8zpvVBvBpF3CIsht7YXayENI4+6ubyNVG88crW1HA8ddcQA7vemfGa4AYQ4Kjzrc1cmUpb1GBsgatEpFAyWu9GXJmQoJnBU3Jz8MlLMQK8Bzpe4f66SD51XCjEW/J4sMyT8ZlWcoXqwFljzOcQJH5+BgaNLRp80dSl4s+ZdkViLydg8UoIzwLWFvywte2jI3z5weQyNMwJdI1Squ6nb2Ytm/XLZ9XgBYv8yJW5NUqGoZVH5WFkpo++RWzum/GjKsj2uAD1rB0gcfLLKQicH25MzO9q6FKtDEyer8i1gp3QsmBjzF4RhC8a9wbKN3SLj6P8JV2kgzoUqr99m10FWpwwrXlsJOc6TaRqai723M9j+Ohu3ZeBw1IOF6vppcery/gVwVpKF8YS2+W0DcY1Zah9cDwiXawBguoo
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2019 15:18:00.8365 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a711865-abc6-4f47-ab57-08d77f167a09
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0201MB3430
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_071803_665881_D5579A98 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07. 11. 19 10:44, Rajan Vaja wrote:
> Add power domain nodes for zynqmp.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 48 ++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> index 59a547b..f915bc0 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> @@ -12,6 +12,8 @@
>   * the License, or (at your option) any later version.
>   */
>  
> +#include <dt-bindings/power/xlnx-zynqmp-power.h>
> +
>  / {
>  	compatible = "xlnx,zynqmp";
>  	#address-cells = <2>;
> @@ -127,7 +129,14 @@
>  	firmware {
>  		zynqmp_firmware: zynqmp-firmware {
>  			compatible = "xlnx,zynqmp-firmware";
> +			#power-domain-cells = <0x1>;

Applied but here with just 1 instead of 0x1

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
