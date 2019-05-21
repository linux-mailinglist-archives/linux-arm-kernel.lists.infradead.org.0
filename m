Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EB924AEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3FKocc2A0Sn+stZAkwXaEG3Y/jBBrKgTvgt06n8GHg=; b=L8tec+SlcfK8mb
	Y9+i7ErggYUa9l1qV9KeT/jzvyOextF3C6v40TUNcKuSo5In7WaMZAyW+Iw+aFH7k2etaOjyOz2dK
	PhIWREosB86DnL1snuSbEn1wgYBqsPKhFCNTjgsxA3UDFraqlcJqej3Ug/x0QGDby6xQqopyuw0iv
	0Q7dd9CpaLksGEy8hqrGIBXKX+JZ81Im0XQPVW1nEkFLgXvVkQqPeC7RYOv3pVCZDoMldgat9yU4m
	CWOaUjWJ6A60drWp8Xw98rmYnsOTUFz3ftQCNPiX7g1whMn5wHg5sqWBKVCf1iU1SF2V5FgzAhpkD
	XhQQHXUKnZOd9R3XGHTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0Yv-0005En-Ek; Tue, 21 May 2019 08:55:57 +0000
Received: from mail-eopbgr710079.outbound.protection.outlook.com
 ([40.107.71.79] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0Yn-0005DH-JI
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:55:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VGld3BFtyXO+lO7MDLxqyuy2/Wb43HjfvHdLbJJa5H8=;
 b=pGAOTwHRMgPRi35o/UW3ufMaJNvBGrs/8qTp/gK1sQcMCNlaOnL2nO707Plv7DPG3Ae91XK0KTYWe3Hy1cCKsTbkgAZ11Q6ug3SmHjsdS/4zdybRakBAeXsj+GlRjmFLBAc4xm6QyRWMsCgoWGR/0/cZxc7w41V36VPlf7WveXc=
Received: from SN6PR02CA0018.namprd02.prod.outlook.com (2603:10b6:805:a2::31)
 by BN6PR02MB2674.namprd02.prod.outlook.com (2603:10b6:404:105::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.18; Tue, 21 May
 2019 08:55:47 +0000
Received: from BL2NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by SN6PR02CA0018.outlook.office365.com
 (2603:10b6:805:a2::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.17 via Frontend
 Transport; Tue, 21 May 2019 08:55:46 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; the-dreams.de; dkim=none (message not signed)
 header.d=none;the-dreams.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 BL2NAM02FT057.mail.protection.outlook.com (10.152.77.36) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1900.16
 via Frontend Transport; Tue, 21 May 2019 08:55:46 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:49522
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hT0Yj-00072s-OR; Tue, 21 May 2019 01:55:45 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hT0Ye-0006A6-L4; Tue, 21 May 2019 01:55:40 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x4L8tVpe020978; 
 Tue, 21 May 2019 01:55:31 -0700
Received: from [172.30.17.111] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1hT0YV-000694-CP; Tue, 21 May 2019 01:55:31 -0700
Subject: Re: [PATCH 1/8] MAINTAINERS: add I2C DT bindings to Zynq platform
To: Wolfram Sang <wsa@the-dreams.de>, linux-arm-kernel@lists.infradead.org
References: <20190521082137.2889-1-wsa@the-dreams.de>
 <20190521082137.2889-2-wsa@the-dreams.de>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <997813fc-ca05-3847-7ad1-068e8cb5be57@xilinx.com>
Date: Tue, 21 May 2019 10:55:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521082137.2889-2-wsa@the-dreams.de>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(396003)(136003)(2980300002)(189003)(199004)(2906002)(64126003)(4326008)(36386004)(26005)(6246003)(230700001)(8676002)(81166006)(81156014)(8936002)(9786002)(426003)(478600001)(70586007)(70206006)(77096007)(336012)(4744005)(5660300002)(44832011)(476003)(486006)(126002)(2616005)(316002)(11346002)(446003)(47776003)(305945005)(31696002)(31686004)(50466002)(65956001)(65806001)(356004)(65826007)(229853002)(63266004)(76176011)(2486003)(186003)(106002)(58126008)(36756003)(52146003)(23676004)(107886003)(42866002)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2674; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; MX:1; A:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9a5f0ef5-f843-4e66-b772-08d6ddca1d56
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:BN6PR02MB2674; 
X-MS-TrafficTypeDiagnostic: BN6PR02MB2674:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BN6PR02MB2674060DD1E9C8F5B1CBDAD4C6070@BN6PR02MB2674.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:843;
X-Forefront-PRVS: 0044C17179
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: VdCMD5KCh6RZOnONJtpTipghUtaLzB+B50NZqkMtdVAC3KxfYprquv/KFsXfz77KphXAKcqt3l6aiQykg6XX3kSE6MsauSWaT96f6uHopn035y4/f0PJmxIVgBXi0MSJD99p3YkgarvJPNjwNUDD9BASR9CfrkFGgdNLJAVeYiO5iIGvk8DhhPtVeH87THwUNTsuvHfI5dX4jYqsvllELX45bye8+UoxdL/KWR9gSjjwd8kDGniI2LAlVz/zaPJaNF8s18JabMpV5Qa+MOeSoY3uZnA8OtQjBOSp7hUhvNkApU6nQCqRYmXrhnZfmJezG/B9vlcT19OyjtFxLjYQLjOyxuPHToxzwVsZTtFRHz6wlpOt8cyOPIjshvJVpTQDhEO4WpTFZLzWa+BtJ5yRiHbPCBLC+ywXeEJgLtTZan8=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2019 08:55:46.3127 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a5f0ef5-f843-4e66-b772-08d6ddca1d56
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2674
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_015549_683826_CAF44948 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-i2c@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21. 05. 19 10:21, Wolfram Sang wrote:
> Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
> Cc: Michal Simek <michal.simek@xilinx.com>
> ---
>  MAINTAINERS | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 509a8e6d2dcc..5cb019f8e597 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2532,6 +2532,8 @@ F:	drivers/cpuidle/cpuidle-zynq.c
>  F:	drivers/block/xsysace.c
>  N:	zynq
>  N:	xilinx
> +F:	Documentation/devicetree/bindings/i2c/i2c-cadence.txt
> +F:	Documentation/devicetree/bindings/i2c/i2c-xiic.txt
>  F:	drivers/clocksource/timer-cadence-ttc.c
>  F:	drivers/i2c/busses/i2c-cadence.c
>  F:	drivers/mmc/host/sdhci-of-arasan.c
> 

Reviewed-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
