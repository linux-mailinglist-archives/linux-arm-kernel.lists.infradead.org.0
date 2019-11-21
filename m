Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A930A104F0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 10:17:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gNKcEWUQp56xjt4FgaocbID6JnoRgdlRAFvrqYvJpY=; b=Cs+mcf64K/oMEh
	FjZG9Fs8ARmGw66+bdr+yT0KiP9/7SqJGhz5/dmoE5bE2bdDiBsKsj4YF3wW8WxtUjYx1cQlfqOhE
	RHaO2oGjozkjA2IOHLoAjvLjIim/7fPT6Ix1nz3TcXEOlfc2VUW8d0uEDMRDxHs5o3o+ZFTIgoye0
	M/Dk/7h/b+NolHHwFHX4VfPGZbuTY+5lklBKJVOod4JPGBNL/tzy4rpp1kyvmdA7zpyb1xhtg6ray
	PaoJfPxbSOwLkWQ3Go+nh/Ss2dYL7IsEYCwC9tq8BkURbO4sK9SFChTYUdU1OaazLEXXKaszqdF9v
	WFE0NRSHn5ZY60DXSYWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXiaz-0006lw-Ee; Thu, 21 Nov 2019 09:17:49 +0000
Received: from mail-eopbgr720078.outbound.protection.outlook.com
 ([40.107.72.78] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXiZk-0005k0-Ty
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 09:16:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U2954OQUQ7wetUfuqcMavhxRH5fe/monk6GNyec01xWB21J9Eq2M4czFwUQALVqKWt1n+D7QzwzRoyzdGlpEOoMcxkfMMvnRQvfUqcSBhLw1BMlc2T8P4nrBC+YmzKQ1Ja4y8YEJCuxAjJbjeYr9qOzzVbjngatSrB0+hBZl5Q1hldwHz17be7zO7sVP1eI3puXW7WAawa8L4u33i6M4OmDL5HmEDIN3Z3r9kuZ//w7VXoIYunirBn/Xs7ofjwe1RaOPxNK7OXPoTv1GSrU314m4LEbNLNMv/0XbPgrYAZ/Rgn2jHRd8S0d7T/LKcL6iTTNUZ/Kfv2VfrmwSsi04YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KxYKKfd9BigIIizbWWlHkYjATGFgHXMh8S/1Uw7vzFY=;
 b=MMqIB+A3VIxJxM0nnQ8f464am9PEEZAtLY4sw9Pu4E+TyZAGKCAh06ui3T6xtoMdIoix+medPIDkaMjQ+wzsBA6Tf2+CpuGULkIJQssWuh0tP4N1couaigAzmZU+FXs9VyWMyAoOtQ6qXKqyw/+0BZvUala1cTRTXGVU1+M4lZ9qZKaFgf1YuKtecNNAeaqwoGusxK/qeZH4+m4EzaVjq7h4F9a6Uew7Xy8aDCtqOQyOyCIMgXzaL1Hdj2L5bQ0sQ2czsV+18SlxJufIj9YjIXF3MFu1JXUfP8Q4ZkamgjPBEA5RpNIdALXK49x+aKbVAxRh1YNEbaZI34G+nDKxYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KxYKKfd9BigIIizbWWlHkYjATGFgHXMh8S/1Uw7vzFY=;
 b=j7EJLd/34pV7RyVr1s4Mk9PGoSkOFVqiqTcX2HQ8+XzdCmmMSzRaWKqO/fU+H+Dbt+8M6OSbidkU/UPVsBbyrrszzvqY6mOsB8upGWN8NPyNnkA5UAblmiwWwdxbfgSZGnJQ9ymvwCjY26YWww88DK+poYCqNI1x8jk6EyPqdJ4=
Received: from DM6PR02CA0117.namprd02.prod.outlook.com (2603:10b6:5:1b4::19)
 by BN6PR02MB2866.namprd02.prod.outlook.com (2603:10b6:404:fe::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.16; Thu, 21 Nov
 2019 09:16:27 +0000
Received: from CY1NAM02FT023.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::209) by DM6PR02CA0117.outlook.office365.com
 (2603:10b6:5:1b4::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20 via Frontend
 Transport; Thu, 21 Nov 2019 09:16:27 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT023.mail.protection.outlook.com (10.152.74.237) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 21 Nov 2019 09:16:27 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iXiZf-00067o-1T; Thu, 21 Nov 2019 01:16:27 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iXiZZ-0002QL-Of; Thu, 21 Nov 2019 01:16:21 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAL9GGU4026768; 
 Thu, 21 Nov 2019 01:16:16 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iXiZT-0002ML-JD; Thu, 21 Nov 2019 01:16:15 -0800
Subject: Re: [PATCH v4] arm64: zynqmp: Add ZynqMP SDHCI compatible string
To: Manish Narani <manish.narani@xilinx.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, liviu.dudau@arm.com,
 treding@nvidia.com, chanho.min@lge.com, matthias.bgg@gmail.com,
 rrichter@cavium.com
References: <1574326274-121890-1-git-send-email-manish.narani@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <4032f1b5-28fc-b472-a534-e4a67c791d74@xilinx.com>
Date: Thu, 21 Nov 2019 10:16:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1574326274-121890-1-git-send-email-manish.narani@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(396003)(136003)(189003)(199004)(229853002)(70586007)(426003)(336012)(7416002)(446003)(31686004)(36756003)(26005)(186003)(36386004)(478600001)(70206006)(44832011)(65956001)(65806001)(966005)(2906002)(305945005)(2616005)(47776003)(356004)(230700001)(6666004)(14444005)(5660300002)(50466002)(11346002)(106002)(316002)(58126008)(4326008)(107886003)(2486003)(23676004)(6306002)(8676002)(81166006)(81156014)(8936002)(76176011)(6246003)(31696002)(9786002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2866; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d241dbe0-39eb-4ad4-4cb5-08d76e637d1c
X-MS-TrafficTypeDiagnostic: BN6PR02MB2866:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <BN6PR02MB28660EC76703E88A0D8BF1A9C64E0@BN6PR02MB2866.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0228DDDDD7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KjNGOOyGELJgFSy5Y0YLfF5he8JyloxSgaAh3iEIaU/Hd2dBK80+Kid93jnIya2PM47DIPPdMSSmzZm4hFP9KVf1cZ+NgJEJ732AKaYUomrCeEW72vaGp3VH0uzRdLZxebmA/ezLjM63vytaKaBRJoMu49Ez8yUpDRBDkwKlPw7MuDvVtr2v0IG3SOnic7j+bw+qGmgLEQMif1MGCqpB/9VZ4ZQr9XFg0pHBE3Vjo5iZbUktHIqOyotEYHu1EIma2cfaJIZTiuUYZiWWn1RMAUVgPzSt6t8m/dOlqYVbLT/w9oOXuQ0giJ7SCFlvn9kxAjx6WTffIyK2Hxbnqw+PImeQente9pLx9qoQWeX88r9oPSeuZeCbDVUh1u9xZ7aFcM17DHZ2ecjwXiCVtIFX6pLS4VU/Aup+N4ZODwM2MdEAokT2mimjvVTjWzz0+oqviAkJcIOxnCNjUcEiTWFVRUb5BZjL6HGuEOxdDcRIp2I=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2019 09:16:27.4747 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d241dbe0-39eb-4ad4-4cb5-08d76e637d1c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2866
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_011632_987591_123AF6F7 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.78 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21. 11. 19 9:51, Manish Narani wrote:
> Add the new compatible string for ZynqMP SD Host Controller for its use
> in the Arasan SDHCI driver for some of the ZynqMP specific operations.
> Add required properties for the same.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
> This patch depends on the below series of patches:
> https://lkml.org/lkml/2019/11/20/366
> 
> Changes in v2:
> 	- Added clock-names for SD card clocks for getting clocks in the driver
> 
> Changes in v3:
> 	- Reverted "Added clock-names for SD card clocks for getting clocks in the driver"
> 
> Changes in v4:
> 	- Removed extra compatible property from v3
> ---
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> index 9aa67340a4d8..de09ebe608e1 100644
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
> +			#clock-cells = <1>;
> +			clock-output-names = "clk_out_sd0", "clk_in_sd0";
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
> +			#clock-cells = <1>;
> +			clock-output-names = "clk_out_sd1", "clk_in_sd1";
>  		};
>  
>  		smmu: smmu@fd800000 {
> 

Better now.

Applied.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
