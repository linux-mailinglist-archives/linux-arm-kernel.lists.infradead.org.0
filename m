Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343481EF629
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 13:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aEv5J2cZydjEedO/cj40hhx6pC4JVOKPw3kvES+Jw94=; b=S3aPQGPgi5RFJV
	OvVcUlbbQq5vwyXyoTkt5F7eNMAloh6Iy8+gLTsEHOAcE9RKzTS6LlmG/+dVEbfa1eGJ/ciRK3ZOC
	e8+btBbUlT7WT/VcgHRZEPz0Aqs72f+CsDRT1JrDZaLR4ic1HuQYlxN+INQTrhcEHer6E9T1qSSYd
	XyBvlryrIQXBhVNqRcU0IiFNPOBAOh2JnehcADLEQQVfUZEoAVkGDEZ2FSRY5zV07ayMxRac9Kurz
	M9zut+6fuNYCmdPT0klWmgn62E1j/LXjI9BNgOCZ5lxXRi8uhhLKtoV5EOi+fUPCeCZs1SUR8QOxf
	h2XXaJhAW/eaQLv/vT3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhACm-00086b-64; Fri, 05 Jun 2020 11:08:08 +0000
Received: from mail-dm6nam10on2080.outbound.protection.outlook.com
 ([40.107.93.80] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhACZ-000850-Dv
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 11:07:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XJ0FcBYZBBRoK0w4futHpKkx6TzPBD5DO84+Q67f8QLkxOP/8YM6qbNBBYy0s6yEQXjGWjdfhZ8TuqTmKw2eAbjygqjps+3QvTOOa59bHcQ1E388HxcRCYOjKo+16jADZbTjmDMHTRQwKExnFQL522kN4u9ZEgTipRPOsVbPGPj0H9Vvk7jlaUlB8ibLviw1yWmKKAB3XZs+el048FAh9s5mV2HVPSdoDuZ51DVA9VlN0gnoGKpFFk1mF2Wq0PLnMowXWUkgvFc6Y5eBPaRFkthjEq4Rf/KjG+I9rzWR9Pg7qF9/nwUoUoeSplK0k/4iZHdHQsu2i02wwu111UUXbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ik0XCRDqVwwOuciP5ij4Sy+ot28ozVbQ7LZbXtfU+Lg=;
 b=FICFou71lDM2xRwHNCsFe//LKUMiCjq0XP/QWMlAzZfqShXv1P6dOhkbNshTpRlexawkqszakDIF/D5D+wMkzPtIxckhkQ9QH9hAYt+4F4yK0Uks7NmkpiUzxMZuk+NesRfz15K9F9bS5kZ43bZ83vQF06CCwFBxI34ieWVDR0JqAn0heV4pwySHAcrIkdSar/rZ7mcNCGQKPAN86lNav7uh0/j3CR2zfCn7JI9mqEZVstrXuYFzLRRQdbcgmpURLpoYJebAcfHHKtImgfR6vDXHMwmw/y9xh5a/cbc9djmxcF0rszFDJpHljBuNXb/WOseCNVHmGJiljYr7V0YxNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ik0XCRDqVwwOuciP5ij4Sy+ot28ozVbQ7LZbXtfU+Lg=;
 b=pplRLbuMxw6LagaibqlPsv9OlqBJ+etddK8cWuoVggeCdOmXC6flSLLF0jnCbTMXWe7HKvjFl/mmbkQIth9+2ZazzPK03t61fnZMjUZujtRTz30YLk/QYPx3S4DGNU56cdZqu9WAxWthZtsUjPaCxdgZZDcwaFuIlP13uf1wQ9U=
Received: from SN6PR01CA0024.prod.exchangelabs.com (2603:10b6:805:b6::37) by
 BY5PR02MB6258.namprd02.prod.outlook.com (2603:10b6:a03:1b1::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Fri, 5 Jun
 2020 11:07:51 +0000
Received: from SN1NAM02FT018.eop-nam02.prod.protection.outlook.com
 (2603:10b6:805:b6:cafe::82) by SN6PR01CA0024.outlook.office365.com
 (2603:10b6:805:b6::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18 via Frontend
 Transport; Fri, 5 Jun 2020 11:07:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT018.mail.protection.outlook.com (10.152.72.122) with Microsoft SMTP
 Server id 15.20.3066.18 via Frontend Transport; Fri, 5 Jun 2020 11:07:51
 +0000
Received: from [149.199.38.66] (port=45043 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jhABi-0000ej-RU; Fri, 05 Jun 2020 04:07:02 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jhACV-0007tP-5u; Fri, 05 Jun 2020 04:07:51 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jhACR-0007t2-Fz; Fri, 05 Jun 2020 04:07:47 -0700
Subject: Re: [PATCH] soc: xilinx: Fix error code in zynqmp_pm_probe()
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Michal Simek <michal.simek@xilinx.com>, Tejas Patel <tejas.patel@xilinx.com>
References: <20200605110020.GA978434@mwanda>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <951de328-3647-ea49-ecec-1f0f98ceb4b1@xilinx.com>
Date: Fri, 5 Jun 2020 13:07:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200605110020.GA978434@mwanda>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(376002)(39860400002)(396003)(46966005)(36756003)(8936002)(336012)(83380400001)(31686004)(426003)(186003)(81166007)(26005)(9786002)(47076004)(31696002)(356005)(2616005)(82310400002)(82740400003)(54906003)(478600001)(44832011)(110136005)(70206006)(2906002)(316002)(4326008)(8676002)(6636002)(6666004)(70586007)(5660300002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a6d2e917-f5c5-4d28-2f0b-08d80940b069
X-MS-TrafficTypeDiagnostic: BY5PR02MB6258:
X-Microsoft-Antispam-PRVS: <BY5PR02MB62587C5F12AD9158C1173602C6860@BY5PR02MB6258.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1468;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hYfliUgxGG6e7BW/A6Yg7frorBlDM2j8FUj/7aXR1PaMJBINYB+h+SSn65ikDOxcPLvizJbnzJiNSEbefA5v5q7aXwipafBways4hgy17WEvaJdqxJUUsM7fn013euGtD+3+T6LO86J0VpRPoP1DjegbuIX3EAkCxl4PjObGxtNb5y9wE9vYUjRiF4a3WuEbQLHPoXG+F+vdY5kePATYGrRlMRS6RVKNQfQxJuKmDaWD0VI1+sGXdYXW8FoRlfzV14L93pvxUuRkDQvw9j9XdSEwUfg11Yo+zeLfwg+Oba1jonYMp4/owVnNqrtWuBYKD6tVPGm9mIgf17DnyC4sg4/w0PKCN0pVgcM08ZJEPDTpJ6ECtN/lfQUs2ZVcr84Nr6WQFbuZRpNTc4OrbNT80soEJaQUyWyoeyL3k1MMlbvhr1j4Tj6BWgpKX4HdlO7d
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 11:07:51.5085 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a6d2e917-f5c5-4d28-2f0b-08d80940b069
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6258
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_040755_465581_20839FBB 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.80 listed in wl.mailspike.net]
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jolly Shah <jolly.shah@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05. 06. 20 13:00, Dan Carpenter wrote:
> This should be returning PTR_ERR() but it returns IS_ERR() instead.
> 
> Fixes: ffdbae28d9d1 ("drivers: soc: xilinx: Use mailbox IPI callback")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/soc/xilinx/zynqmp_power.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/xilinx/zynqmp_power.c b/drivers/soc/xilinx/zynqmp_power.c
> index 31ff49fcd078b..c556623dae024 100644
> --- a/drivers/soc/xilinx/zynqmp_power.c
> +++ b/drivers/soc/xilinx/zynqmp_power.c
> @@ -205,7 +205,7 @@ static int zynqmp_pm_probe(struct platform_device *pdev)
>  		rx_chan = mbox_request_channel_byname(client, "rx");
>  		if (IS_ERR(rx_chan)) {
>  			dev_err(&pdev->dev, "Failed to request rx channel\n");
> -			return IS_ERR(rx_chan);
> +			return PTR_ERR(rx_chan);
>  		}
>  	} else if (of_find_property(pdev->dev.of_node, "interrupts", NULL)) {
>  		irq = platform_get_irq(pdev, 0);
> 

Reviewed-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
