Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0A116A3C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 11:18:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLkfCDIHwyq0rdFYw6KweURnxpsy23YNnRdF/J3bXnA=; b=BLBLVlIdpPiF6S
	142cXexzO0BW9sb9E9rpOoplzV6jU5KJsCffNk0D97WZlxepZYslH4X8aQAg7Z+CGneoNj2lkI06V
	ogHHpmsrzZHpCqc8JWc0vkWnW2dGu8GKtm+vaIgWGXwQWxhrDqYBe4LNv0quOwLXeSbhsi2L2YHqH
	o1HStG6XiQzpW9rZrXu0nhXQqwny4nOmPvjxo0lkDTwiZHjoNRNR668JwGM0pLXlnHbUk/ZXXXJbo
	jYVlXLyWViR31s1ELf3k+IMhBbWhgxX3pEF4YoSLEyof/dXTpw4FFNbi7+X4WVAulW3gSSRLez+hn
	WdFHP60C59r6t/qjtyhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Aoh-00064y-5b; Mon, 24 Feb 2020 10:18:23 +0000
Received: from mail-bn8nam12on2041.outbound.protection.outlook.com
 ([40.107.237.41] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6AoJ-0005zk-Ok
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 10:18:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NyA/G1bZn1gc/f34dVcvJhZxXqLwUm+CmjobDzj5y+AwB27IRr9laV8L2fGIJx2w2zQ/OwHyWTnrk6VIiIaBrwpCABupNN6wgijLAO4ed8LD0oThd718YvjQ0S8c5ShcLRI0T/7xRrQFpV2zvh9c7WyKDTbEoy0lC24ADZbZk05KLG+njqZidZXGVBq7XeR8pmmHBZ5vM+tjLlmH3QpB2jhTo11sKKJ+DqA4b7v0YBjp381MX3gOqamRIEeA7CQI1n4GkQUe0RK1Xrz/wa257SjD42r+cqt5Ln83aOlf9w9dRGU7b6AfH0SGyI+Lz9QVbfIatV+zmPfhFUMbjC+4Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zVtFvnRZ9VJpMCxxPhvBAs4hb6GT0QuQsyKC2jmna8w=;
 b=lhwtO9CJcWPRTRqRlf4xwlT8ahC0uCfTJmT0gF0GQBXdpk3Naz3FO/e6hjGIzfouD/hbsOE4GlGEoIbMx+hfJbd16K2q1D1DRTD9SmWt2W9/RkSGKGnNMWxO1Y4SAumiFtsglu720g0BQNfAmojxtO5+KcNdwaW5wEKbN1gTqOG9hBJyLBGk6BOt+FTYOYM/m6bmtNWQamJFQih5jNBzUlTALhkaAXxlbPoQHixcFny++9lY3oc6ggxO2x7jnvrEbD6hmNDPZiR9guLR1PNQEs32ZJ/jPi27kcb05lIlneaCCGusiFgwj51jIJeTRP1t5o0wmmDn6chASKtQl2e42Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zVtFvnRZ9VJpMCxxPhvBAs4hb6GT0QuQsyKC2jmna8w=;
 b=jmnDs3bOoQ/rSQAI6OCMWMB1Hv6Aha+sLzzVYIuaD+lUPNAQkf6BfgAnlMEvsQLrLy857jzRAOmC/5p1N9DKZNYhIVaAFtip+n8Y224cKKoP0ubRYXmK5a3CuXFTGjl0sG6DVvsszujSYl50p2RfObLWXGhowQUl7MWoQigRCPo=
Received: from SN4PR0201CA0040.namprd02.prod.outlook.com
 (2603:10b6:803:2e::26) by CY4PR02MB2824.namprd02.prod.outlook.com
 (2603:10b6:903:122::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Mon, 24 Feb
 2020 10:17:56 +0000
Received: from BL2NAM02FT040.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by SN4PR0201CA0040.outlook.office365.com
 (2603:10b6:803:2e::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Mon, 24 Feb 2020 10:17:56 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT040.mail.protection.outlook.com (10.152.77.193) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Mon, 24 Feb 2020 10:17:56 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j6AoF-0004AZ-Ig; Mon, 24 Feb 2020 02:17:55 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j6AoA-0005uU-Fm; Mon, 24 Feb 2020 02:17:50 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01OAHffE001598; 
 Mon, 24 Feb 2020 02:17:41 -0800
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1j6Ao0-0005t5-RW; Mon, 24 Feb 2020 02:17:41 -0800
Subject: Re: [PATCH 1/2] dt-bindings: mmc: arasan: Document 'xlnx, versal-8.9a'
 controller
To: Manish Narani <manish.narani@xilinx.com>, ulf.hansson@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 adrian.hunter@intel.com
References: <1582115313-115667-1-git-send-email-manish.narani@xilinx.com>
 <1582115313-115667-2-git-send-email-manish.narani@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <040f8348-7338-446f-8571-481daa281c93@xilinx.com>
Date: Mon, 24 Feb 2020 11:17:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1582115313-115667-2-git-send-email-manish.narani@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(396003)(136003)(199004)(189003)(186003)(478600001)(4326008)(26005)(2616005)(36756003)(31686004)(107886003)(426003)(70586007)(70206006)(44832011)(336012)(81166006)(316002)(8936002)(5660300002)(6666004)(9786002)(356004)(81156014)(2906002)(8676002)(31696002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2824; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 07fdc851-6839-4768-e714-08d7b912d0fa
X-MS-TrafficTypeDiagnostic: CY4PR02MB2824:
X-Microsoft-Antispam-PRVS: <CY4PR02MB282478D3DFD7DEF3F1DA34CCC6EC0@CY4PR02MB2824.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 032334F434
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DYimMkl99p4Q9eDudgPdLGPM11GvFhjvY6lA/UjfopiOdYo4QWEa3F/WKP/XNF+JNZ5yPyl1sEXzFTICz17ORUpdYUz7fc0+eO8yL2h8IYf6CGsRO15JwgJz3rqJXG1bg9da8iWKsorI1SfjQ9gL1930h9dLU64V8T1bCeuh1huFMFWFjGvI5lvMbgqen5mirea4CoA4kYoUsh58+zaAmttBSxW4dFI2ZqRorH14uysS2pAbko50wcl0ZyFOix9scPM34/p0EzY/I3YdB2u7p5EZdK+kW3hXwcLYgLg1TJuNfbwi+Baij/LgNe4m72mEj2LoLDwUylzpU1z+IZDlrpxIlzCG7/ZnDe2+Sx8YxkYpPoMLLExdNLRaJ0yrHOM9Cl1IcxY/wF3I2LtjBcGipKzQpMDAA5QR7TYQSBIO6VkA4EEpwYeBpmeLebMmU8z5qgy1d30+4ro6SYptyiegByBLjUt5LYNaXfBUsR5ChT0kY9mDc6B73Xh+IDRlM7WZ
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 10:17:56.1117 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 07fdc851-6839-4768-e714-08d7b912d0fa
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2824
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_021759_815749_E7576535 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.41 listed in list.dnswl.org]
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
> Add documentation for 'xlnx,versal-8.9a' SDHCI controller followed by
> example.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  .../devicetree/bindings/mmc/arasan,sdhci.txt      | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> index 428685eb2ded..630fe707f5c4 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> @@ -18,6 +18,9 @@ Required Properties:
>      - "xlnx,zynqmp-8.9a": ZynqMP SDHCI 8.9a PHY
>        For this device it is strongly suggested to include clock-output-names and
>        #clock-cells.
> +    - "xlnx,versal-8.9a": Versal SDHCI 8.9a PHY
> +      For this device it is strongly suggested to include clock-output-names and
> +      #clock-cells.
>      - "ti,am654-sdhci-5.1", "arasan,sdhci-5.1": TI AM654 MMC PHY
>  	Note: This binding has been deprecated and moved to [5].
>      - "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1": Intel LGM eMMC PHY
> @@ -104,6 +107,18 @@ Example:
>  		clk-phase-sd-hs = <63>, <72>;
>  	};
>  
> +	sdhci: mmc@f1040000 {
> +		compatible = "xlnx,versal-8.9a", "arasan,sdhci-8.9a";
> +		interrupt-parent = <&gic>;
> +		interrupts = <0 126 4>;
> +		reg = <0x0 0xf1040000 0x0 0x10000>;
> +		clocks = <&clk200>, <&clk200>;
> +		clock-names = "clk_xin", "clk_ahb";
> +		clock-output-names = "clk_out_sd0", "clk_in_sd0";
> +		#clock-cells = <1>;
> +		clk-phase-sd-hs = <132>, <60>;
> +	};
> +
>  	emmc: sdhci@ec700000 {
>  		compatible = "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1";
>  		reg = <0xec700000 0x300>;
> 

Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
