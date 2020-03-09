Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB42417E1D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 15:00:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1mFg6cWz3KwaqqRJY9uDMuiMRyAyrtfaEZGPk/iYJw=; b=Bda1U8hlCalKNS
	IvjvPLUmCnFebli5WOlDgQ6qNM6ZSxY4ktbiLoH+19zNkXicks3vvvu+jwt/UiKByTwEl4You9/D2
	U3l4+wRNnQk/Nh6iSM+FFap3tUwus7Rq+bt8F/zZsiW4m1nETl/oEcmdRS8HBCdhkXhigkdbUINkP
	KdjoAuYwuiYuJVf3VcGsOe5bMKG6Tnr9nXQ2aJ+BIxW9IpkUq+piWBcfxqvoftpEqeWuST8UJNkSx
	NVuOY8HspavianZAqxzeMdQEazx/EfReTTmVlcskyRhX1dQc/zbbMSpAmp97YDjtlsHJNTj3+G9C0
	x9H5WLoOvbBYIbW3xMsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBIwj-00013J-4A; Mon, 09 Mar 2020 13:59:53 +0000
Received: from mail-bn7nam10on2052.outbound.protection.outlook.com
 ([40.107.92.52] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBIwZ-00012c-TL
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 13:59:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=htj4AicrqFaKqvsCvptncdpehgG0lcTsl379Hnd/EutlHKd/SCxRTnGgjIC3VXZbTZ8Vco0G9WLFeQAavcR77k2jh23vSqTfsdYjxbb4t+lXH5YAVT4Xmne0Ux/j9gHtDF4vTOPN0UILEWOvr7w8BjX2SwAsAXUpyhRWXO6iBO4VWpyMeRiIxa6jsfZMN8voS3by1qLi/AehZKUXseXxSotrFzpDnaWqUDTvtO5qztDgJ2tAtOr2Dct+6vdCYkicDpPux8hxFNolmOJpXQyP1hMaqMlYQQyyU/taB7bCsId0DPAozwrTm+9QQcitS5FGjZx1h3PtRjm2z/8WFJD8pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c/yFPanKaBWRVJiEVODE38gVrswQhEqwZuED6CYR1OE=;
 b=GcLddAI8xJ3x1o3xt/LfMvnV6qSwbtaZ9McDTIVS/eDh+qFwx6+AQotA/d921wGwa0zMK5c8wJeMQBCkPcak6k3ju9AUIQ6FO2DSXnnWsZuowoNr1wTqv2xIwv+zTjU5lbjIJFMxnQ2EvGHkBleln4jZW69Iusf1gaxNidBNJKRJ/mOCHJmjVG3vP+QKShKb1xHnLXOCmx+WpnrQxSCHt2eN/Cf7nWCCA8xknYy6O5ePEsD85azJ4rGnRrTa4Fo4nlLsgxbKvbknBpqo8MxnNlfnklRnVNkYm97q8Nt5X/x1ycsxBw5rdDnqXhiKUPkVlvCSlgVBFalocXSAljdCUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c/yFPanKaBWRVJiEVODE38gVrswQhEqwZuED6CYR1OE=;
 b=KQvRs/bMdMR9bTjxe31A1qjfIJ8eJpEEt+sETT9qkMv5fcdJiAtIytBgNwEdUH/82tyLCf1mmNtvzVWGqa+ekUu6fXfalVH6cLAc0IGFYgPa8Hsr98Tc+zoeAWEepodfUQzF4VweZOlPb0BRdD4AiSU/XQ45F9+yAHDmEIh6VHk=
Received: from MN2PR12CA0018.namprd12.prod.outlook.com (2603:10b6:208:a8::31)
 by CH2PR02MB6662.namprd02.prod.outlook.com (2603:10b6:610:aa::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14; Mon, 9 Mar
 2020 13:59:40 +0000
Received: from BL2NAM02FT059.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:a8:cafe::3) by MN2PR12CA0018.outlook.office365.com
 (2603:10b6:208:a8::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16 via Frontend
 Transport; Mon, 9 Mar 2020 13:59:40 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT059.mail.protection.outlook.com (10.152.76.247) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Mon, 9 Mar 2020 13:59:39 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jBIwV-00065e-5u; Mon, 09 Mar 2020 06:59:39 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jBIwQ-0005P2-2v; Mon, 09 Mar 2020 06:59:34 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 029DxPV0013678; 
 Mon, 9 Mar 2020 06:59:25 -0700
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jBIwH-0005O7-8X; Mon, 09 Mar 2020 06:59:25 -0700
Subject: Re: [PATCH] arch: arm64: xilinx: Make zynqmp_firmware driver optional
To: Jolly Shah <jolly.shah@xilinx.com>, ard.biesheuvel@linaro.org,
 mingo@kernel.org, gregkh@linuxfoundation.org, matt@codeblueprint.co.uk,
 sudeep.holla@arm.com, hkallweit1@gmail.com, keescook@chromium.org,
 dmitry.torokhov@gmail.com, michal.simek@xilinx.com
References: <1582675460-26914-1-git-send-email-jolly.shah@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <3d6e9823-d601-bafd-8bf3-8ff857228ec6@xilinx.com>
Date: Mon, 9 Mar 2020 14:59:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1582675460-26914-1-git-send-email-jolly.shah@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39850400004)(346002)(396003)(199004)(189003)(478600001)(2906002)(7416002)(8676002)(5660300002)(426003)(81166006)(4326008)(36756003)(2616005)(44832011)(81156014)(336012)(8936002)(316002)(70206006)(26005)(186003)(356004)(9786002)(6666004)(70586007)(107886003)(31686004)(31696002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6662; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e5a964b5-0a0c-429a-3612-08d7c4321c65
X-MS-TrafficTypeDiagnostic: CH2PR02MB6662:
X-Microsoft-Antispam-PRVS: <CH2PR02MB6662D8B24E07F6354E933EAAC6FE0@CH2PR02MB6662.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0337AFFE9A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H3ZbRJh6fA1RQPdX33TYfOgIyEVWNhqH4/IC1/ij1ER5c/8xVpUenZ/vdmSjoMtk3Yi5CeeoN7ULVI3veBq0b4jZThGZnJall9IJho9QY5nz0dy0XWbmvUI96McTi6e5RGJrq3tC5Y1CsCu2Lat2PmpztcXTfutLwsoDWMpZzd7zMQ8RmxTApRIv/y7vu7veWuGkHbZj9XMBo/gwdQJKyySEwd+qjt8QwrBbYsKTKxnoun50v35XzWNwuPwE29Y0CMspPfLXxwVI2wXItQ8hYfQwTLKPrxu9WWNdvCLnPVYf+7uLjUwWjKppaz9T43shlsaahw7cWblD3xAFr12eoRlMArmWpe+PuTFWFmHrwG4XilsF7wOl/tYE24bd8lMU1H8DfDmOFa2O9XohSQZ9jYeKfarmtTjk18bygUD6mn0kFEDvWIk3yvB+7fjjzkYOvMHAu6BqP4o12TJLPN43fp7KHiss9SqtGvv7nLaUGN/FBWh4lF3AWUyrlCYEpaDQ
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2020 13:59:39.8277 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e5a964b5-0a0c-429a-3612-08d7c4321c65
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6662
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_065943_949024_BF34D5D0 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.52 listed in wl.mailspike.net]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26. 02. 20 1:04, Jolly Shah wrote:
> From: Tejas Patel <tejas.patel@xilinx.com>
> 
> Make zynqmp_firmware driver as optional to disable it, if user don't
> want to use default zynqmp firmware interface.
> 
> Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---
>  arch/arm64/Kconfig.platforms    | 1 -
>  drivers/firmware/xilinx/Kconfig | 2 ++
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index b2b504e..563c93d 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -301,7 +301,6 @@ config ARCH_ZX
>  
>  config ARCH_ZYNQMP
>  	bool "Xilinx ZynqMP Family"
> -	select ZYNQMP_FIRMWARE
>  	help
>  	  This enables support for Xilinx ZynqMP Family
>  
> diff --git a/drivers/firmware/xilinx/Kconfig b/drivers/firmware/xilinx/Kconfig
> index bd33bbf..9a9bd19 100644
> --- a/drivers/firmware/xilinx/Kconfig
> +++ b/drivers/firmware/xilinx/Kconfig
> @@ -6,6 +6,8 @@ menu "Zynq MPSoC Firmware Drivers"
>  
>  config ZYNQMP_FIRMWARE
>  	bool "Enable Xilinx Zynq MPSoC firmware interface"
> +	depends on ARCH_ZYNQMP
> +	default y if ARCH_ZYNQMP
>  	select MFD_CORE
>  	help
>  	  Firmware interface driver is used by different
> 

Applied but with arm64: zynqmp: Prefixes.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
