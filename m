Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8961F9258
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rn2JMbvHuKjQzAR++yo6nES/WWjPkqMUEJ/hBaRlEYU=; b=MxuXKMpzAm5ZPg
	M8tKMjEpgONbuVoEVbPdWoLBNTjL129s5z2AK1plQkT0Qf1N9W5t/lhfvOUBpFvxSNN2RA8XGOvQM
	T3T3kyS+WucuOxmMcsOIUOXuaz1Z1y8OCts0Dd4VWNrXgf3ltMW6oQG2UOiHy12FW8HlWTnazrMJ+
	NuRmyKHJUZEuFNNdKl6/CXU/PAf+8/5gQLj6inh76o/wRyeFvetottoq2xbvXOndLs8QUz/kuJaz3
	nxyyHIvt3mvriMY1B1ehcOXjyhUbxk+c6DsXJdix8G1qxOmZhMPBhLX2fuBI3P+uPrs6EcD38EPbp
	oAugP5+8nApRAHz9C3lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkua-000227-MY; Mon, 15 Jun 2020 08:56:12 +0000
Received: from mail-bn8nam12on2074.outbound.protection.outlook.com
 ([40.107.237.74] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkuJ-0001zg-Mx
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:55:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zt8BREdVhwAeVzCmv5MwlFTumq5+sMJRIdPzRHSiulQhPoSfYh8LBwa3ZR9qz+GJp11fFQe1fHaa56HepVGYV+k1ExMnZ7BoUS4LLGA+lw3+Vpc6sKo+aaLJc4UZ1NDqksuFLJzD1QmA8IMcn2CIbl4/gqOks7knZWUruobEaedAWvHe1n5+puIkG30ljhH4rRi03yYkfrfPav/UsNsWmRBOWO1H5/Bv4iHJtqhILmSwqolsvU9pzYWpuk0EMK9B6jA3rznvgxW5XMRt/Ha/TxCc0ktBkn595W4efsEAvguEJkzv3wMp/3mj4HFNmvdfWY7yT58Kh5fpSqd+PsD+nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X3PzevvFwGCx8aQpkl021dctWbE4retiBmRf7+rmtDg=;
 b=QsVb8RlVzxKELFVI1IHTTEQ/fkCCMId/0KZ8RcH2ZxBFhCB9q3gUzRZPAwW1Q7dg7ysRIcTRyC+huLzvTxTsZ2bc6pqG75z5vJlQzpkETSJUbsrZhQ7e/w9ao7QQhziG/fHLgBxPZp9ca33584S3Thrm6A5x+x6FzX4W1fxR2jgiOcXF9mnEeOF5V9KfwbJbUK3vOacUUO8ru3C3tlIcRTgc7onYjYBgVmnLpdIs9fjPhLX5IoQnHXX8zeatl/etlVCQ6pJKP3CZi+BCoZeQcUziBqQRMo/CbXQAI/SbddWqyZ5vVwiZeJDAhI0d6CKxhtgORqxhYlXRrytJB0bwTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=canonical.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X3PzevvFwGCx8aQpkl021dctWbE4retiBmRf7+rmtDg=;
 b=f6i/VNPOhwh6/DM2+j1ARnA0m2eOPlUnsQNwdFo6JKEpoWHYWQAzE1aCCwMSgXGpE/V/y/0htfnDeMB16Wug67pG4IJ45J5hSR/pCDNlMb2im8uP9PJSRArLhxBl/9vdSWyebDyw9B4DFXic7sNfP1VstSqUYZfCvr7CxFZlM64=
Received: from SN2PR01CA0036.prod.exchangelabs.com (2603:10b6:804:2::46) by
 DM5PR02MB2316.namprd02.prod.outlook.com (2603:10b6:3:53::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.24; Mon, 15 Jun 2020 08:55:52 +0000
Received: from SN1NAM02FT035.eop-nam02.prod.protection.outlook.com
 (2603:10b6:804:2:cafe::6) by SN2PR01CA0036.outlook.office365.com
 (2603:10b6:804:2::46) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.19 via Frontend
 Transport; Mon, 15 Jun 2020 08:55:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; canonical.com; dkim=none (message not signed)
 header.d=none;canonical.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT035.mail.protection.outlook.com (10.152.72.145) with Microsoft SMTP
 Server id 15.20.3088.18 via Frontend Transport; Mon, 15 Jun 2020 08:55:52
 +0000
Received: from [149.199.38.66] (port=60206 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jkktG-0005zI-7P; Mon, 15 Jun 2020 01:54:50 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jkkuF-0002Zh-NJ; Mon, 15 Jun 2020 01:55:51 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 05F8tjFL030054; 
 Mon, 15 Jun 2020 01:55:45 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jkku9-0002Y4-HZ; Mon, 15 Jun 2020 01:55:45 -0700
Subject: Re: [PATCH] net: axienet: fix spelling mistake in comment "Exteneded"
 -> "extended"
To: Colin King <colin.king@canonical.com>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200615082911.7252-1-colin.king@canonical.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <1e0ddd7d-5fd5-ec2a-2cda-ab3924de4762@xilinx.com>
Date: Mon, 15 Jun 2020 10:55:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200615082911.7252-1-colin.king@canonical.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(396003)(346002)(136003)(376002)(39860400002)(46966005)(47076004)(2906002)(31696002)(31686004)(336012)(426003)(316002)(186003)(26005)(81166007)(9786002)(82310400002)(8676002)(2616005)(8936002)(83380400001)(356005)(82740400003)(4326008)(6666004)(478600001)(36756003)(70206006)(70586007)(110136005)(5660300002)(44832011)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8618f19c-3bc3-4668-e4b7-08d81109e82e
X-MS-TrafficTypeDiagnostic: DM5PR02MB2316:
X-Microsoft-Antispam-PRVS: <DM5PR02MB23168C7C2B98E156B1642CE3C69C0@DM5PR02MB2316.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2582;
X-Forefront-PRVS: 04359FAD81
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DQgRVmHKucv/9MWwRADJvJzOJpWIBOT6mu6Ebt8zLDHxvEIljZNiPVTshe5QSIwfCbbMZomGOsxkCe0USJn2b1SAXsbeNvPQsVZ6XY+8FSrPDO3ih/8os88jXf5moiS2NkOOohLzIH0rYFmOOZpVxax5neh9DneTmFPySBVT26LCPEPQzGHR9TD6fSDb3JnMQ4pQXgiAYd+ERSLhi1Jabfn3a89IrKW+TcgKTYO8wNg/mkdRawHJSL/znRm3qtPj3N9DoasM6U6Us/PGl1KDuAqOU/C61duTKAUN3xRv9UizN2qkz5bme6rjW5QYjGEIhBWZzP9HDA//c5PeTgo4ZqH3AFrqc8xJWK3oq7TC6+JTQFwgv8W4BrHdBUn6oRH85UuFgeQ++Bq1Bg7tjeKkPeCckpETDWzJWTRn09seoXbTjFwG+aOYWOzVsZMXonEq
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2020 08:55:52.0590 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8618f19c-3bc3-4668-e4b7-08d81109e82e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2316
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_015555_785175_3228A61F 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.74 listed in wl.mailspike.net]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15. 06. 20 10:29, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a comment. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/net/ethernet/xilinx/xilinx_axienet.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet.h b/drivers/net/ethernet/xilinx/xilinx_axienet.h
> index fbaf3c987d9c..f34c7903ff52 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet.h
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet.h
> @@ -186,7 +186,7 @@
>  #define XAE_RAF_TXVSTRPMODE_MASK	0x00000180 /* Tx VLAN STRIP mode */
>  #define XAE_RAF_RXVSTRPMODE_MASK	0x00000600 /* Rx VLAN STRIP mode */
>  #define XAE_RAF_NEWFNCENBL_MASK		0x00000800 /* New function mode */
> -/* Exteneded Multicast Filtering mode */
> +/* Extended Multicast Filtering mode */
>  #define XAE_RAF_EMULTIFLTRENBL_MASK	0x00001000
>  #define XAE_RAF_STATSRST_MASK		0x00002000 /* Stats. Counter Reset */
>  #define XAE_RAF_RXBADFRMEN_MASK		0x00004000 /* Recv Bad Frame Enable */
> 

Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
