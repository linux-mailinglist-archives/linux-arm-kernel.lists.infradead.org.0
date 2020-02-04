Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE31151A04
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 12:40:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDU3A6i0nxbcLnRzQCUzLw0iF9bBiq1tQ5oxa6QjJXI=; b=spaEViY/GOF09/
	mtNflQiPRe2nIcUbtVIjd/RI8grX/GbjgugeDSbFu5uWyvq9bX929MKC91IAd7+0++Ev9SKeNfJaE
	btkn7EZfpMLuJML6224n4nZOhnxcKKA3RXx34dMnYjnj8W0e4eVLQXp9wJjRLtV7uukw2yuaiTNdU
	RVPfaQ0iYJwzEU1ARWJx7DIATN5zkw0TspfgNaOtwD9UsXh+1kL4O8SjxhA/VyAEpnicVYunGfrkk
	AXUZPKagpGOnkIfkmvwfiQWOAyX/iYCozIeIM9oconJI0nm8wzjUSodJCx3o81xYH8DNiZUE1adUg
	8ItKF9wobKFls96otPUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iywZ0-0001fD-E2; Tue, 04 Feb 2020 11:40:18 +0000
Received: from mail-bn7nam10on2088.outbound.protection.outlook.com
 ([40.107.92.88] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iywYj-0001GD-9P
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 11:40:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5xAvYc30++mnkbpG/ukrbirgY9IZw8VONBllqCtHij4Dkk4u4KcMxJkZwuyJfsIA093xR4MHSVkqJeMkYVuMop5gPzjbyDluPomrxGZo3NVE/7kQafruKcsg610SB2wZAumUKrrxJArujIJEc0Pdp5OYDW3Ecs5L9QtCIq8cpSMkRfRuVdC/B9kh8iiobd0BUJ9+YHPx3pNLRICMjvtWxRIjsxOBIm75PWihebRJyey7i3Z/lT/7r2OTr5WVpOlt1O9hAYdp6lKHqem/fb2/Vn7KtH6A20LGTwi69K05RYuQWPwckVr76WcRCI+b3QaeJasTHWejsE4b4uFNiA37A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AK/vSU+WE0j7S6A7Al3TcdpubkIZo6c2nNqgD2WNKqw=;
 b=OU0ZjCOTQSKMOTCTDo5lZ8M6T4bAyQdgjpsDg1LsLuksnp82zFEzxZb1hSdsyPVr2IViqCCpGDWr3PfMa+7scoH/KfrTAdnJhUjg8yAU8VMrDvsnXLte+/7EEZo52TByCr1AVRe9oK4KBwSOeIb+vOTpG/1QfAVr7rgc0/nZoV1qK2NX/irlRjd2w7Fdp0K0NDiedKdlUVpRdUEAF7UZ+uxCOvI8p2Hj3N+63PuS7inPvELdnmN/PShwOBnJy3Or4uWzGaho7JwVk1vIXf3oVt7Eb7i0pKd/VWoKC6obr9oTzTFnd68rXyFp+6K69oSOlMHLKDe4tbxGI1XtW0udzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AK/vSU+WE0j7S6A7Al3TcdpubkIZo6c2nNqgD2WNKqw=;
 b=fhc0RWJhSeNIAo5yG4CwOVZZDVrn5uNh9/ejMKHDgG+QHkLSxkhKRNyQvfY5r0PQM6zO8iiF5E1rg+Ypaw5FMSFv81rUnqJKO02+qpyEkh+F6o9JVqK/LFSGPRmVAytrU0Sbvu/s+erd9IcOEmea7Vytq4vsV2yWviCE0PzMTJE=
Received: from SN4PR0201CA0064.namprd02.prod.outlook.com
 (2603:10b6:803:20::26) by DM5PR02MB3161.namprd02.prod.outlook.com
 (2603:10b6:4:61::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.33; Tue, 4 Feb
 2020 11:39:58 +0000
Received: from BL2NAM02FT016.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by SN4PR0201CA0064.outlook.office365.com
 (2603:10b6:803:20::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.34 via Frontend
 Transport; Tue, 4 Feb 2020 11:39:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT016.mail.protection.outlook.com (10.152.77.171) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2686.25
 via Frontend Transport; Tue, 4 Feb 2020 11:39:57 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iywYf-0000Ts-3r; Tue, 04 Feb 2020 03:39:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iywYa-0007E1-03; Tue, 04 Feb 2020 03:39:52 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iywYV-0007DI-Q8; Tue, 04 Feb 2020 03:39:48 -0800
Subject: Re: [PATCH 2/4] firmware: xilinx: Add DLL reset support
To: Manish Narani <manish.narani@xilinx.com>, michal.simek@xilinx.com,
 adrian.hunter@intel.com, ulf.hansson@linaro.org, jolly.shah@xilinx.com,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com, tejas.patel@xilinx.com
References: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
 <1579602095-30060-3-git-send-email-manish.narani@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <63fa8a5a-d87f-8fdd-3e6d-d95a14f562f2@xilinx.com>
Date: Tue, 4 Feb 2020 12:39:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1579602095-30060-3-git-send-email-manish.narani@xilinx.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(376002)(39860400002)(199004)(189003)(478600001)(70586007)(316002)(70206006)(4326008)(2906002)(6666004)(356004)(426003)(2616005)(26005)(186003)(336012)(44832011)(36756003)(31696002)(6636002)(81166006)(8676002)(81156014)(8936002)(31686004)(9786002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB3161; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4560c51b-5938-488c-0804-08d7a966f635
X-MS-TrafficTypeDiagnostic: DM5PR02MB3161:
X-Microsoft-Antispam-PRVS: <DM5PR02MB3161B4E3BC49F3E386E5CBE6C6030@DM5PR02MB3161.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1775;
X-Forefront-PRVS: 03030B9493
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rAQ1TPViFhqLc4J7kpOg+WyqAf74XQPHWcy6VJF/tNB16UzyNy72hTTqkksrcv1rBwt4BRQIS7ABfgZYIzfQloFr+WlZNtiHaIiKm2hNv75bTw2dJ38kSHt1zgAj5TJ9fc2BfuhDQEVO0WcYbYrDBjWmt1imRdwOLnzfpN+ZEUh3+Npi7XJjv3TRbviqmJgPWc9EPMuoVUuaeK0Jp+YZQ/0N78m47pQRaBCv/sIr8aXEpKDqCYX9IGpJQCXMBDnlYePwU1UDq4PJna6gSSq3PkaNBoGvp/7TVEAaVZ+2LDiFKWpbDDwXrwR/7dZSzZB9Vs76KIPj/jKAo6HH/wJtFwYIEdcLuF2VKEhvtj1J9R1TOiQPRSThYnzV7f0DEQES49L0lyFnbNLUJZkfHqeDTK8wLNAvXhbxdFmpvW1BbrjdIpmB0MPX0qvQQ6FlKlSu
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 11:39:57.6862 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4560c51b-5938-488c-0804-08d7a966f635
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_034001_325298_68C009FC 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.88 listed in list.dnswl.org]
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
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21. 01. 20 11:21, Manish Narani wrote:
> SD DLL resets are required for some of the operations on ZynqMP platform.
> Add DLL reset support in ZynqMP firmware driver for SD DLL reset.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  drivers/firmware/xilinx/zynqmp.c     | 1 +
>  include/linux/firmware/xlnx-zynqmp.h | 9 ++++++++-
>  2 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
> index 89eb198cee5e..165ec0f1e10a 100644
> --- a/drivers/firmware/xilinx/zynqmp.c
> +++ b/drivers/firmware/xilinx/zynqmp.c
> @@ -469,6 +469,7 @@ static int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id)
>  static inline int zynqmp_is_valid_ioctl(u32 ioctl_id)
>  {
>  	switch (ioctl_id) {
> +	case IOCTL_SD_DLL_RESET:
>  	case IOCTL_SET_SD_TAPDELAY:
>  	case IOCTL_SET_PLL_FRAC_MODE:
>  	case IOCTL_GET_PLL_FRAC_MODE:
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index e41ad9e37136..01a6d972b8a8 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -92,7 +92,8 @@ enum pm_ret_status {
>  };
>  
>  enum pm_ioctl_id {
> -	IOCTL_SET_SD_TAPDELAY = 7,
> +	IOCTL_SD_DLL_RESET = 6,
> +	IOCTL_SET_SD_TAPDELAY,
>  	IOCTL_SET_PLL_FRAC_MODE,
>  	IOCTL_GET_PLL_FRAC_MODE,
>  	IOCTL_SET_PLL_FRAC_DATA,
> @@ -262,6 +263,12 @@ enum tap_delay_type {
>  	PM_TAPDELAY_OUTPUT,
>  };
>  
> +enum dll_reset_type {
> +	PM_DLL_RESET_ASSERT,
> +	PM_DLL_RESET_RELEASE,
> +	PM_DLL_RESET_PULSE,
> +};
> +
>  /**
>   * struct zynqmp_pm_query_data - PM query data
>   * @qid:	query ID
> 

Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
