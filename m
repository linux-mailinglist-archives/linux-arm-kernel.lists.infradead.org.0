Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D18FC11D0D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:20:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZ/eCzARBq4vcQs8ZBl15aKqJYLsQx1AMIXs4ngQhVo=; b=KJpVMTd1Zd2CkG
	jozw22pPOzz/t6DzIo05P5rjeR15UJjnB4JUHYSne1IM4icKle9YW/HKyZ6DzMICkO8qM6yTEwq8I
	qp4aYE7Pm9FwHMMvunbE7t0Ke9mqmJxH49yv5M5Kb6ggZKrBDOgCC+HMviWmRWN+eZLyWNUF/Wrr6
	8ybfylo29Tv/qp5xUvW9hYAC1kL1sFpNq9cu72e4IDQP0gVZJMBJv5oeq1MFPti85jj0vkI86gbOj
	zXKacpeQ6OuPkpwI+hmh1Ojg3lPSRH27yZEVAaN8883pawY91pQRueiDBJich8iUp2c/tfhEZ4lXd
	VMJ2iEq5sRbvfG16Z2oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQGn-000166-8L; Thu, 12 Dec 2019 15:20:49 +0000
Received: from mail-bl2nam02on0606.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::606]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQGc-00014b-99
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:20:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bZ/+gti7pJhmiaVqI6Eq0LPqsQGO4w7jZ2TDjutZ0MKusVzkQhHfoZXXcG/hn+Qd3ZtOcLPhs8p7P91Ervn2ZkmNDLrObj4GDugZTzQDLLNSgunk75LYw45Kp68WK0ym35jVuhvGwGTxpV9nEWhxTuoQjM0nskLDqufn/x0y4X4zfy9VV+DiiQe/vwL8Z3MXMTzQk8PeSed4uLxBWGGfm+OaKXVTE3sukxsdGKO1lxvOhUnXiipxSdHwEHqAvPrRRkNP/WoC3JQ7rMTtmIUvcgFttzlM5L7mWrveOF6dQfOsJUWBpsbrOwP2ghaxO8uWAoys+t+Lf+3fTbq3ID8xlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G7ZYh05nnimXrzwEyippHh0SjTjSjicYw/pFpoJXIr4=;
 b=Q11sWkKBAkFTFhubm+Mn0j0VsJdW1yLZ+C8eRz21xaxE3FcQIPJu9tq+I4ZjJArYhkzp9eqHZ56/wsWxGsM7ZjBnyErBs0MH/CP0ylNvoiqlLQOh4asK6boswft/vCmcMYNP348JqCCvmd8pfi8lf2bbYsPyfS2pGlGasdJkgvKPMLovK0N5t4xcE0mRXYCFBzvM41T16sNYd0biAbaQRoPBCBSuuCPANrrlpSMV3G/Vo2zartI7KWOSkxWSuESSeiMDXxKRpqKFPxsIH7WcqmLyBGbNjUj1+8R8tz28twv9kezSoOv2AKUCFHbNTQsvAO4Xbqp3q2C9CF08AC76oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G7ZYh05nnimXrzwEyippHh0SjTjSjicYw/pFpoJXIr4=;
 b=cBeRc2H3femmyeyUicKphRIbiUxsmrJ9Sm4K1iiUdvQ6aMyJiSUSMw53wDcvWMHN+FgEBk6VlTL20rOb/BRiwW9SBurYa4JgK2Eq1rfcdXSjuAs2RZWSucoeHmg8rx9RJ3U+D2RMMe1IYYtNt2gepqY0EdBDkgTYDX/p7tIz/T8=
Received: from CY1PR07CA0022.namprd07.prod.outlook.com
 (2a01:111:e400:c60a::32) by BYAPR02MB5416.namprd02.prod.outlook.com
 (2603:10b6:a03:a4::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.18; Thu, 12 Dec
 2019 15:20:32 +0000
Received: from CY1NAM02FT014.eop-nam02.prod.protection.outlook.com
 (2a01:111:e400:c60a:cafe::f4) by CY1PR07CA0022.outlook.office365.com
 (2a01:111:e400:c60a::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.17 via Frontend
 Transport; Thu, 12 Dec 2019 15:20:32 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT014.mail.protection.outlook.com (10.152.75.142) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2538.14
 via Frontend Transport; Thu, 12 Dec 2019 15:20:31 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ifQGV-0000st-78; Thu, 12 Dec 2019 07:20:31 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ifQGQ-00020b-5j; Thu, 12 Dec 2019 07:20:26 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ifQGJ-0001tX-Vj; Thu, 12 Dec 2019 07:20:20 -0800
Subject: Re: [PATCH v3 0/6] clk: zynqmp: Extend and fix zynqmp clock driver
To: Rajan Vaja <rajan.vaja@xilinx.com>, mturquette@baylibre.com,
 sboyd@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 michal.simek@xilinx.com, jolly.shah@xilinx.com, m.tretter@pengutronix.de,
 gustavo@embeddedor.com, tejas.patel@xilinx.com, nava.manne@xilinx.com,
 mdf@kernel.org
References: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <19c5f918-7e00-75e4-10d1-53f0a30748b2@xilinx.com>
Date: Thu, 12 Dec 2019 16:20:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(346002)(189003)(199004)(44832011)(478600001)(5660300002)(356004)(6666004)(316002)(31696002)(2906002)(186003)(7416002)(2616005)(70586007)(70206006)(26005)(81156014)(8676002)(9786002)(31686004)(4326008)(8936002)(81166006)(336012)(426003)(36756003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5416; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 28beec8f-f34d-43d1-aa85-08d77f16d403
X-MS-TrafficTypeDiagnostic: BYAPR02MB5416:
X-Microsoft-Antispam-PRVS: <BYAPR02MB54167FF2CFFAB545DF502865C6550@BYAPR02MB5416.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0249EFCB0B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B0a3WD9sCbd39HX/IL+atXIfZ0uxDGmY2b7xlYgKaHbfW1PRsu+HK40WXC0wFlZUap+MEwFZV5DoOWwHAWMUNr2fpMjRTthENgEy3mddPXAiYqPHWknvT0xrc/PhxRxT2N9Oc82vNeQ121Nxr1wO2nsVtktOvvExQjHRREJVIWELpcWgTgKyMk3OYLmmSFfYf+pggu8Xgh+LazAubl40zAidEJS/h2BfyKftuRwBFvlQ1i8X/vfOGDcIRQdc4vmW34ypNpS5hAYeKJm27+nKIsBvW3SdkJNXD5QdXjkB+35HT7QQA5GwW6QDJKX8VJpR7flfSVR6yVRd4DFiVA0Ks0lpj17BDVSDXWrHi9InWS6VXpb7KHm3RrRdipcC7Hsr+XQXQoClagQVciUxxqMc/tgqqkK31VbdKUjR0czM/jvruQ/bLnbLmqouYDo/alWv4whBFDqG740H6w12TJgiJDw0PSxoidetyMNQVE5gI07FIeuodJbI3pGjJSG1c218
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2019 15:20:31.7921 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 28beec8f-f34d-43d1-aa85-08d77f16d403
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5416
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_072038_321123_2B26FF7E 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05. 12. 19 7:35, Rajan Vaja wrote:
> ZynqMP clock driver can be used for Versal platform also. Add support
> for Versal platform in ZynqMP clock driver.
> 
> Also this patch series fixes divider calculation and adds support for get
> maximum divider, clock with CLK_DIVIDER_POWER_OF_TWO flag and warn user if
> clock users are more than allowed.
> 
> Rajan Vaja (5):
>   dt-bindings: clock: Add bindings for versal clock driver
>   clk: zynqmp: Extend driver for versal
>   clk: zynqmp: Warn user if clock user are more than allowed
>   clk: zynqmp: Add support for get max divider
>   clk: zynqmp: Fix divider calculation
> 
> Tejas Patel (1):
>   clk: zynqmp: Add support for clock with CLK_DIVIDER_POWER_OF_TWO flag
> 
>  .../devicetree/bindings/clock/xlnx,versal-clk.yaml |  64 +++++++++++
>  drivers/clk/zynqmp/clkc.c                          |   3 +-
>  drivers/clk/zynqmp/divider.c                       | 118 +++++++++++++++++++-
>  drivers/clk/zynqmp/pll.c                           |   6 +-
>  drivers/firmware/xilinx/zynqmp.c                   |   2 +
>  include/dt-bindings/clock/xlnx-versal-clk.h        | 123 +++++++++++++++++++++
>  include/linux/firmware/xlnx-zynqmp.h               |   2 +
>  7 files changed, 310 insertions(+), 8 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
>  create mode 100644 include/dt-bindings/clock/xlnx-versal-clk.h
> 

That firmware changes looks good. That's why feel free to add my
Acked-by: Michal Simek <michal.simek@xilinx.com>
to that patches.
If you want me to take it via my tree please let me know.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
