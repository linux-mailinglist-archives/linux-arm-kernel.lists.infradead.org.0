Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58ACFDC06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 12:13:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/y/aC4r8MYwibmA6uEDiqiOqJ5so5pLIQRlLrp5kvg=; b=E5pvkHAKn1IGyF
	niukHJ9jeWTvywx9E6hi62sod3F6Ft12cxxo+F5C+PPI0ahUMNkY5bBbbRLvkDe9Pw1m0n6FwJ2kt
	HQDR7IhGY3KRYSXMWOo0W/CmWDrdz+t/QmNv2KCLMx65Z7UXHE3Eaumzp9efnbysyVfz0Syty0ZUo
	0Ymi3OykFSn0Jb7Wc3TUTmWA0uEt+Iru8/bLYpmATfr5wZ2VJrOQyKB0SjMzn7mJeB0Nf8ieZ5BxY
	sBUOM3JBjq3lgpISxWB1TbdTICmy8uA5nOA1lli/qpL6lv0gUbor1zzXmuAdOPd+BJtRJGGQwG1+2
	sE0cFevI1BCqbpVheTRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZXr-0005wt-Ea; Fri, 15 Nov 2019 11:13:43 +0000
Received: from mail-eopbgr820041.outbound.protection.outlook.com
 ([40.107.82.41] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZXf-0005wS-W3
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 11:13:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gqwh1vWhhLMWc2wE6DpKHCXPV+xe41QRqWlIItiVvM5RxsuoGP8AvhF/eJUxRoOyfjsADHhckuZ4+aBrVrLVPBEbpaz1L51nPqUomwyyt2swXOpVT/cgAFLckAi0xhX9XjafEIguXvLFueR/iPrlycmbUamOJXwjZd0Jst5Pvastp6dLdlMrq5l7ikvVmGI+pa9JM90sPwlExx5VaXItXw1Es7wy58iVOvbEOOk0XZ0cgl+GKqM/73Pa2Tfo6ZfS7PIvlnXZQlzBAqfFrzbbemGqr79l5z5Ja5joGSetEKf+ClVL2b5h/diaP6x0eTaaDYQlLxD0kbs1RX4DLzyp0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xb/ek0PvBJjIXdS1NiZS0BYVKLP0bpTXQJzeoXcbZwI=;
 b=B2q5dTnDBz/CfvLI95XIx4ghEzOkmZi32kwdkZHoAvytRr+HwEB3fs2i6w8n9tU8QKliCXj9pM/hcTqvC9UwTLVNaOYPSJFZOIRrwBhYr9ce/Wa6XXGGzY8ZlJAMZs1kC1Qmud8OovW5pTp/wVa0DUblDkbaCMfZkYaMEILyeP/feEK2IUctNhvxR4yRgv7AxZDD1h3iPUt/jOtuQwWKiIhZ9BaWlUR4w1vvWYMCl/uYeJZbkwl3Ql22hhCOH8hAF69UKvGiK/UxAiRcnibYjPftAvn6bSt31oZLtfGTJCFOpKEZWcger8sP/800tLJlhqUtvyvr/VMoQ8lu2xsLhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xb/ek0PvBJjIXdS1NiZS0BYVKLP0bpTXQJzeoXcbZwI=;
 b=ZX6AiL+d9N4X5jYRpkge5p7Ys/BcgJtQuOb/pgvbTDDlvlYV3gweoN1AmkxLpwEfg9NODUYYkexhlec+7O8U+/K51drqYF+s+4D3XytjInybOK0RuLZmTmBLciki/iDyr5c/5MgLYCdDkq82zWL/TDFf/DInJBENqpW9+l3tOUY=
Received: from BN7PR02CA0033.namprd02.prod.outlook.com (2603:10b6:408:20::46)
 by BN7PR02MB5155.namprd02.prod.outlook.com (2603:10b6:408:22::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23; Fri, 15 Nov
 2019 11:13:28 +0000
Received: from CY1NAM02FT059.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::204) by BN7PR02CA0033.outlook.office365.com
 (2603:10b6:408:20::46) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.26 via Frontend
 Transport; Fri, 15 Nov 2019 11:13:28 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT059.mail.protection.outlook.com (10.152.74.211) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2451.23
 via Frontend Transport; Fri, 15 Nov 2019 11:13:27 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iVZXb-0006QJ-FK; Fri, 15 Nov 2019 03:13:27 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iVZXW-0004sK-Bj; Fri, 15 Nov 2019 03:13:22 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iVZXN-0004og-6K; Fri, 15 Nov 2019 03:13:13 -0800
Subject: Re: [PATCH] arm64: dts: zynqmp: Use decimal values for drm-clock
 properties
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-arm-kernel@lists.infradead.org
References: <20191108173032.27832-1-laurent.pinchart@ideasonboard.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <2fd6f624-4c1a-93fb-18ae-82816cb5cbc3@xilinx.com>
Date: Fri, 15 Nov 2019 12:13:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108173032.27832-1-laurent.pinchart@ideasonboard.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(39860400002)(376002)(136003)(189003)(199004)(8936002)(44832011)(186003)(81166006)(81156014)(8676002)(36756003)(478600001)(446003)(476003)(486006)(126002)(58126008)(11346002)(31686004)(2616005)(426003)(47776003)(230700001)(50466002)(107886003)(4326008)(65956001)(65806001)(336012)(316002)(305945005)(4744005)(356004)(9786002)(26005)(5660300002)(106002)(36386004)(70206006)(70586007)(31696002)(2486003)(23676004)(6246003)(76176011)(2906002)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB5155; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 75731765-50ff-4701-6194-08d769bcd71d
X-MS-TrafficTypeDiagnostic: BN7PR02MB5155:
X-Microsoft-Antispam-PRVS: <BN7PR02MB51558A077D5C5492D074F9AAC6700@BN7PR02MB5155.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 02229A4115
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pBYthc9c5OoMDW9f4C/vqm/Enifg/eMIz8KlI6JoEHJPVto8R0V0fERPRL8nzquuA9QRh/mnKT5LOLxTDeqyqnRpPRtMyqIM2lE5a5uNhh/X8Ae/TQGUP89NyK7N2KO3yF9SyKqCWojzJ5bLOHcpmSz/uqmpX7kMF/J2ayE3XrsvMhcpbAP+NMgy5Uvy9RAUvkPA8dpVj/VMAM+zJXfXeoDVOG6TMjp2kcZBvh7h9RzssO+CnzGPdMXq9RjtUYaSKEKqkFkzERFODQDg2mIzS+jnMk+eSU47ot3jzb0msKKY72cQU0G2NhhuMyDo2ufTXin5aJB1N+x8rHkpu64y6WCwsBk+QKTUxmzGdatUQTxseDvdh3iaHOtRUMm9ruh41PLGGvbIU2YEpx1JBtEdKaNJfQhqC3WBFFC8x9Q9Ajr5EmgUEyLdCXDfCk2IBoiO
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2019 11:13:27.8718 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 75731765-50ff-4701-6194-08d769bcd71d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB5155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_031332_031690_D234E2B1 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.41 listed in list.dnswl.org]
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
Cc: Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08. 11. 19 18:30, Laurent Pinchart wrote:
> The #clock-cells and clock-accuracy properties are all expressed in
> decimal, except for the drm-clock. Fix it, as decimal is easier to read
> for those properties.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi
> index 2936e5f97f84..22b4bce6431f 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi
> @@ -66,9 +66,9 @@
>  
>  	drm_clock: drm-clock {
>  		compatible = "fixed-clock";
> -		#clock-cells = <0x0>;
> +		#clock-cells = <0>;
>  		clock-frequency = <262750000>;
> -		clock-accuracy = <0x64>;
> +		clock-accuracy = <100>;
>  	};
>  };
>  
> 

Queue for 5.6.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
