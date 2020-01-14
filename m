Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 851B613A91A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 13:18:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QqGC7q/MjUDowC3+WZANiCAThOHzLe7pF199EbanP9s=; b=uUHog3geawiZscvZQAzkGbf8xs
	+pm0aQIpSmKyvYyB4VC4+H4hBETza0RCs+hjXZJAUCHrAVWutgQwBlOnQX00SVnlnZ+KZ+ATte+IN
	V9wpX+Cg7i8puqvXKnQa+WtLZu3fWrWJAFsPvfrWl9m+LunJ80TN2WDCa68Ls/zdRwSuelaqOAMFm
	ZnHD3Iyj0VnFQ2v1HyR55Dhch2kgZ33pKqlvdS6vhB0gfGwV5pmxmJ6y5lwHXf5tYgFRlvXyzzEQa
	yk5+IfpOYsreYVzVWqrPiDUafJFn9h/+pJiV143SSa0i2SRBVaLVK+h+Mh624n199H3iI7hwqi5o2
	3ua2aqKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irL9V-0001Jb-Kk; Tue, 14 Jan 2020 12:18:33 +0000
Received: from mail-bn8nam12on2069.outbound.protection.outlook.com
 ([40.107.237.69] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irL9J-0001J8-Vb
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 12:18:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DFx7aFvEV2oNPQuc7NA5iJ+gGkQLi/GStdvP8iPA3uIRsYOTNzCMokPJ1Y8mIHMPNrd8wHL08fpuwbnI9rU4KEoOnm2R678dYI4DzerT026XnZ3Z2ZPwUD4ayO4hGKR4gA3QGf7NUym9PWbgkKYqT5TRna14hPLDqUtgpgEL+P/RuYKsADzMg/iSUlLEMW43wQH0oJx7BWcxLSXJiA5sTYFZekYI1RyuIa/Y6ukzqudOfxKfRM8wab4gdv+kHhCWh6tiQONuzTh/o0vLueu4yUOveSQ0ql7PboXfeLFodmLdZYsOQi+hLC82OvDL4dMsP9GLDNlvJw7/5dK2cgUOIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pfKWIGmY+3NKPno9NHxRmdw0Abp3+mkdgPRVhy2UEog=;
 b=eaiUsQJ1ihceDQ1ODLxGVrR3PpeSXIPFtbNX3YluFeF7khb3lzC70o624tttIMsAm007pyf3EdAEia9EylWtm3wLER1lEKGmd16PJc7Q/ri5h6Epl7t022lPCLuHAJSg4cPWQ8BcUA8bri2PviUfEaj8mdqGcNaE6Apas7WdKlpelqijPv/U5X/Xr00JTFHf4QTgXoUbPfflMn/HBR4qPlygo7NvVVRudSBHoxKTE9j7q6KUu7RKB4I1iP88sb8WVv829RF2tJ4x1DTnTBw3+T/pUh8/9ES2+vkAARp5N9if2LJSneNVrSgi8vwMtRpLsQ6UbBTReTnKpBmm/lHvkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=hazent.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pfKWIGmY+3NKPno9NHxRmdw0Abp3+mkdgPRVhy2UEog=;
 b=sdHI1k6ediwatjgrUc6PGe5VWuC9rxuRVZMEOaIiHrCccK47qZt/hpVndVfRcUbElo7ceVtp0+9kEOvbDNZUTzYAUtKroKtGut3kM4z73VEIKkgGR9UNh3UTEGHBpXA3pjhKeOn4hwdEH2B6SiWTyVO+p8eg7dZymrIYnYMMZE0=
Received: from BYAPR02CA0055.namprd02.prod.outlook.com (2603:10b6:a03:54::32)
 by MWHPR0201MB3513.namprd02.prod.outlook.com (2603:10b6:301:77::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.13; Tue, 14 Jan
 2020 12:18:17 +0000
Received: from SN1NAM02FT038.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::203) by BYAPR02CA0055.outlook.office365.com
 (2603:10b6:a03:54::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.15 via Frontend
 Transport; Tue, 14 Jan 2020 12:18:17 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; hazent.com; dkim=none (message not signed)
 header.d=none;hazent.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT038.mail.protection.outlook.com (10.152.72.69) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2623.9
 via Frontend Transport; Tue, 14 Jan 2020 12:18:16 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1irL9E-0008E4-Dw; Tue, 14 Jan 2020 04:18:16 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1irL99-00062L-AF; Tue, 14 Jan 2020 04:18:11 -0800
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00ECI4eT005870; 
 Tue, 14 Jan 2020 04:18:04 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1irL91-0005zf-VQ; Tue, 14 Jan 2020 04:18:04 -0800
Subject: Re: [PATCH] ARM: zynq: add flash memory interfaces, Xilinx efuse and
 missing clocks
To: Alvaro Gamez Machado <alvaro.gamez@hazent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200114120024.19779-1-alvaro.gamez@hazent.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <55db7dc3-ca06-4b01-417d-0b6869cb475a@xilinx.com>
Date: Tue, 14 Jan 2020 13:18:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200114120024.19779-1-alvaro.gamez@hazent.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(136003)(396003)(199004)(189003)(31686004)(36756003)(336012)(31696002)(70586007)(478600001)(26005)(8676002)(81166006)(81156014)(9786002)(316002)(110136005)(44832011)(2906002)(2616005)(5660300002)(6666004)(426003)(356004)(186003)(8936002)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR0201MB3513; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fe27c1e6-da8a-4b4c-afe3-08d798ebd5e7
X-MS-TrafficTypeDiagnostic: MWHPR0201MB3513:
X-Microsoft-Antispam-PRVS: <MWHPR0201MB351353390448A7028764D9D7C6340@MWHPR0201MB3513.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 028256169F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oWDJtKG+d45vWJpljnh6AZQiG8CyB/qm+9YGe5nkWWNE7icGDrZLz3+DYodR2p0AgVu+44YAU9I54lReVthY1EBf12xYnI7kkPWRAJ75UAa53Jxqlz0R0YPQ7gn4hFZUZncyF+9TQ06fiX3t5/40S82nmU+t2HQxJ2TbLCrQj4yaesHg335lXlXRF6KN0wVUeiA1d2Srv8JKIa6qsBTUEggg9n05vhPlOllojUnbXy/0kFXiTfS2rsUeNaEt/0elTNwGghicPx2gd7GECdpTaF6sTAK5hFeTD1jFK6tIfmPnKATwBJGVBT9uvBf2dYGQDY9NKr3GlOz7V+EH6GUPm2hfR3bbDw1bmrPz/0Mz0cGJ6mVipv0N6q/Hnf3Yabq5yYUbWRPMio5LwhpsjvaXqWzd2NCQ9IGhGNMIv9sXLen+DlBdB/Uhk5zD3iZ+U0Cj
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2020 12:18:16.8200 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fe27c1e6-da8a-4b4c-afe3-08d798ebd5e7
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0201MB3513
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_041822_022116_365BF3DF 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.69 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: hazent.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: hazent.com]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alvaro,

here is missing description.

On 14. 01. 20 13:00, Alvaro Gamez Machado wrote:
> Signed-off-by: Alvaro Gamez Machado <alvaro.gamez@hazent.com>
> ---
>  arch/arm/boot/dts/zynq-7000.dtsi | 50 ++++++++++++++++++++++++++++++--
>  1 file changed, 47 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/zynq-7000.dtsi b/arch/arm/boot/dts/zynq-7000.dtsi
> index ca6425ad794c..8358315d7803 100644
> --- a/arch/arm/boot/dts/zynq-7000.dtsi
> +++ b/arch/arm/boot/dts/zynq-7000.dtsi
> @@ -197,6 +197,45 @@ spi1: spi@e0007000 {
>  			#size-cells = <0>;
>  		};
>  
> +		qspi: spi@e000d000 {
> +			clock-names = "ref_clk", "pclk";
> +			clocks = <&clkc 10>, <&clkc 43>;
> +			compatible = "xlnx,zynq-qspi-1.0";
> +			status = "disabled";
> +			interrupt-parent = <&intc>;
> +			interrupts = <0 19 4>;
> +			reg = <0xe000d000 0x1000>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
> +		smcc: memory-controller@e000e000 {
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			status = "disabled";
> +			clock-names = "memclk", "apb_pclk";
> +			clocks = <&clkc 11>, <&clkc 44>;
> +			compatible = "arm,pl353-smc-r2p1", "arm,primecell";
> +			interrupt-parent = <&intc>;
> +			interrupts = <0 18 4>;
> +			ranges ;
> +			reg = <0xe000e000 0x1000>;
> +			nand0: flash@e1000000 {
> +				status = "disabled";
> +				compatible = "arm,pl353-nand-r2p1";

note: Driver is not in mainline but dt binding has been reviewed already.

> +				reg = <0xe1000000 0x1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +			};
> +			nor0: flash@e2000000 {
> +				status = "disabled";
> +				compatible = "cfi-flash";
> +				reg = <0xe2000000 0x2000000>;
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +			};
> +		};
> +
>  		gem0: ethernet@e000b000 {
>  			compatible = "cdns,zynq-gem", "cdns,gem";
>  			reg = <0xe000b000 0x1000>;
> @@ -297,14 +336,19 @@ dmac_s: dmac@f8003000 {
>  
>  		devcfg: devcfg@f8007000 {
>  			compatible = "xlnx,zynq-devcfg-1.0";
> -			reg = <0xf8007000 0x100>;
>  			interrupt-parent = <&intc>;
>  			interrupts = <0 8 4>;
> -			clocks = <&clkc 12>;
> -			clock-names = "ref_clk";
> +			reg = <0xf8007000 0x100>;
> +			clocks = <&clkc 12>, <&clkc 15>, <&clkc 16>, <&clkc 17>, <&clkc 18>;
> +			clock-names = "ref_clk", "fclk0", "fclk1", "fclk2", "fclk3";

This is not the part of dt binding.

>  			syscon = <&slcr>;
>  		};
>  
> +		efuse: efuse@f800d000 {
> +			compatible = "xlnx,zynq-efuse";
> +			reg = <0xf800d000 0x20>;
> +		};

ditto.

> +
>  		global_timer: timer@f8f00200 {
>  			compatible = "arm,cortex-a9-global-timer";
>  			reg = <0xf8f00200 0x20>;
> 


Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
