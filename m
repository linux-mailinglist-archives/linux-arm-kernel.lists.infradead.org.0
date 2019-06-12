Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73F741D2D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PH3RAvFI10X8CoxsFPyRio4XsmF5WHK9KVsBugI6CAI=; b=hwl9xJ+Imlwgp1
	EDluuVdjbpByUHMrh4K81STavxgqtVv0J4r9hkr8MIQhV4u634rvsvk6mymnR9vcs/UyMCRF7Z63m
	Ib46XRK5CbyIDtXa55k/XYjFSetsN3fJgF1E1aNouAtE/WyQXW0mPGZL1eSge/wOntoMcUrqbDEk1
	5eygZVReZKMx1zfPnXzW3mXAOQ5ZpsUAzXWhfOkQZbGatW0/MXd9RYh27NFjqRO7AcKqicIHLe56s
	v92DT7ScjzklCPdaELD6nmmlON+PxQQUu7Tdp/Db1NgnaK1Cp4ZXTAPt3SR3M2E4Bh5A3wdtAlAAv
	aevIwuJXbbr/pGQJFaTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxKN-0006wT-FN; Wed, 12 Jun 2019 07:05:47 +0000
Received: from mail-by2nam05on0606.outbound.protection.outlook.com
 ([2a01:111:f400:fe52::606]
 helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxK5-0006w0-TQ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:05:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I17IDgkM4Qq4q3+Ruo2VPrqvxi1NGyZnRiJB89DlUsg=;
 b=flWx+03L0U8mI0MoI9BccM7jukDniOpDEq/g6d/kvAtVK7HqLdFye0hgBDXOtoD6eh04OkXJwqjwstoBfI1skB09kM9a8U1aK/rX5jlKptNLaFsu//E3vQZkrvVow90ogKr7uR9SRmW1pmeokOCg5ilSGBj1gpBMOPKy0dgzs2w=
Received: from BN6PR02CA0100.namprd02.prod.outlook.com (2603:10b6:405:60::41)
 by DM5PR02MB2683.namprd02.prod.outlook.com (2603:10b6:3:10e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.15; Wed, 12 Jun
 2019 07:05:27 +0000
Received: from BL2NAM02FT009.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by BN6PR02CA0100.outlook.office365.com
 (2603:10b6:405:60::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.14 via Frontend
 Transport; Wed, 12 Jun 2019 07:05:26 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT009.mail.protection.outlook.com (10.152.77.68) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1987.11
 via Frontend Transport; Wed, 12 Jun 2019 07:05:26 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1haxK2-0002Ui-06; Wed, 12 Jun 2019 00:05:26 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1haxJw-0002LO-So; Wed, 12 Jun 2019 00:05:20 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x5C75JnZ008350; 
 Wed, 12 Jun 2019 00:05:19 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1haxJu-0002K4-S6; Wed, 12 Jun 2019 00:05:19 -0700
Subject: Re: [PATCH] arm64: zynqmp: Add ZynqMP SDHCI compatible string
To: Manish Narani <manish.narani@xilinx.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, chanho.min@lge.com,
 rrichter@cavium.com, leoyang.li@nxp.com, amit.kucheria@linaro.org
References: <1560247635-29281-1-git-send-email-manish.narani@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <dd22a1b2-1563-c9ba-d2ca-f17421b8edcf@xilinx.com>
Date: Wed, 12 Jun 2019 09:05:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560247635-29281-1-git-send-email-manish.narani@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(136003)(39860400002)(346002)(396003)(2980300002)(189003)(199004)(476003)(305945005)(186003)(336012)(36756003)(47776003)(356004)(36386004)(64126003)(126002)(6666004)(65806001)(81166006)(4326008)(426003)(8676002)(70586007)(81156014)(31696002)(316002)(58126008)(14444005)(486006)(5660300002)(44832011)(6246003)(230700001)(70206006)(106002)(9786002)(52146003)(76176011)(23676004)(2486003)(229853002)(65956001)(8936002)(6306002)(50466002)(966005)(478600001)(446003)(2616005)(63266004)(77096007)(31686004)(26005)(11346002)(65826007)(2906002)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2683; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3217ec1b-e0ab-4998-7587-08d6ef0458be
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:DM5PR02MB2683; 
X-MS-TrafficTypeDiagnostic: DM5PR02MB2683:
X-MS-Exchange-PUrlCount: 1
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <DM5PR02MB2683236A278195D506809825C6EC0@DM5PR02MB2683.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0066D63CE6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: dm1KzOdJVz3J9/Kk1twiZOVMSBtW263hTG484rO/ld0WWog/nAZs8dW8WmVaqDQu7d4xR9uHf3fTTk5Dg6/FfUGNHZ85UwBEip6iopJgyOFjik29V662rqZ1By56D8iu7b3HR/8Wt6ktL24iA/D9UjhHWLX1hLElJl3zCVinBZMSNRxYqRYWi1vkitmJKglg2ASED0EKQFfFO9Qm7QrXDImWcrLEE9r8A2Z3K7rsrMG5WzlR1y5cBBZWctal/OmA0RRnJi6ktZV21D7JgrdPOdxPH/bDcQvxZ4aDEVaUVXkBQ70twcVazCt95gLT10h7djnz+QdQgAqHbjC803/288bjl8WPqmLvlgcVYfixw7Vtp3PXTj9fsxeJxGxmq7rYdt1sUUaEt+WE/4qh9I/NzSpfE3cKZwE3x9gvk6v1SSU=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2019 07:05:26.5577 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3217ec1b-e0ab-4998-7587-08d6ef0458be
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2683
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_000529_952734_60D07246 
X-CRM114-Status: GOOD (  16.39  )
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

On 11. 06. 19 12:07, Manish Narani wrote:
> Add the new compatible string for ZynqMP SD Host Controller for its use
> in the Arasan SDHCI driver for some of the ZynqMP specific operations.
> Add required properties for the same.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
> This patch depends on the below series of patches:
> https://lkml.org/lkml/2019/6/11/286
> ---
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> index 9aa6734..6da5b82 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> @@ -493,21 +493,25 @@
>  		};
>  
>  		sdhci0: mmc@ff160000 {
> -			compatible = "arasan,sdhci-8.9a";
> +			compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
>  			status = "disabled";
>  			interrupt-parent = <&gic>;
>  			interrupts = <0 48 4>;
>  			reg = <0x0 0xff160000 0x0 0x1000>;
>  			clock-names = "clk_xin", "clk_ahb";
> +			clock-output-names = "clk_sd0";
> +			#clock-cells = <0>;
>  		};
>  
>  		sdhci1: mmc@ff170000 {
> -			compatible = "arasan,sdhci-8.9a";
> +			compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
>  			status = "disabled";
>  			interrupt-parent = <&gic>;
>  			interrupts = <0 49 4>;
>  			reg = <0x0 0xff170000 0x0 0x1000>;
>  			clock-names = "clk_xin", "clk_ahb";
> +			clock-output-names = "clk_sd1";
> +			#clock-cells = <0>;
>  		};
>  
>  		smmu: smmu@fd800000 {
> 

note: I am waiting when binding is acked and then this can go to my tree.

Thanks,
Michal




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
