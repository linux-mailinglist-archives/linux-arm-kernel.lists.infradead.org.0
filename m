Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129E791D5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 08:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRTJlwT6GOXWJHv1FXFbqnxXPN0OpzxHGSMURHV7aPQ=; b=Bw3/MiVzj8JlFr
	vBQl5+7B9EsInI8/me+4cnQ9KLDeuqWr0VgScQhdU6k+/p4RCc9YZ8MfJq6n4Ymg6a5/j70xViZBl
	vmRucD3vNRdNmXfIxurkZStNdMSuv2cis7f4G34E1ghQKjFp2Dqwu7Lvab9nQuaxAWX4XW6jH4nJO
	8qpruW1hakIO++fSzsq1pdHnyPrNqk/KTog0dE8jjtSNF0h384d+WrXwQQLSRBbHoknKBcbss3Y1D
	2WKmQtKB6X8hy6sDTHijSGdBs3VKRTNJ6ES1OdsL05sCcNIu6oCs4L0Vsdc3n6pYNF4PBpnQYWLj/
	KUY1TJ2DZrAd9JV/TJyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzbZX-0000Gv-3U; Mon, 19 Aug 2019 06:55:19 +0000
Received: from mail-eopbgr820053.outbound.protection.outlook.com
 ([40.107.82.53] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzbZ6-0000Fq-PS
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 06:54:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DonQSFhilD0UvftNgyAMqHpT9KMj3VgT90BcGSRSmOX6yUhcUdlBbkzc9c0tXjPQVnWI1t94zcZ1Lq6iEd3S9MqHMxCdiVHpe/4BD7AJoboTzQhUWAOwrjDTOe6qO8NT0mVMlncsNlY4xX/EUcjfV4Hi5yjH4weQrfb/F2Qw2CKTimJ3hzj4JX37MCct9mrGqsmSg3CR+Q7QPPEDxGGD19Ub+bMhjkZSszfl8ttJXLkYZlXb+kf1L9vG9tVx5K42dj0cvD5FFt+EeSCOtmvzxRNTyF05dSx8f9c637p8lYdGztTBNYXwnsr57bTbqH+8MJVE2NpJhxtSrZ1mbyKEpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V3Q8hk3+lFvzE70s6BekRMk4nGrUnX7UrCFhT23cGvs=;
 b=jx8aca/HxzQXiqIrkYEtkNnzLFnrp6Gzj3GmmxyuLqYV5K4NYjkoPN03yA9AzYVf8HbGngPLlaRaWsdmI+LzPkA1aUKSmXKaZr6OlQtSW1II4g13wjjIi604FmcuwfNdkTNFYdheq15uKlQ4uudRgDyBewQw7sGqOjTLil6apqF9v/Q0QBCGsNYk+ZHKagW839TfyaKJitKep2J7rXm1febmLRz4K2I0QOi9/TconHFqsgoc6wl9FcZpKLosRrC5gURlSm4h+scj1NhN1VDr1MK6TqogvwHZ8SR5IguxM6NC8DMaGXbHwv4vT1U7lr5zfFgAVGvxZGFRzoGRwZbPnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V3Q8hk3+lFvzE70s6BekRMk4nGrUnX7UrCFhT23cGvs=;
 b=bUc5CUHbyXQ6+pbawQ3lXvy7gI1iFv4fz9c6bdia8TnW1V60lwTEgrepaweTuwYaDKvL6kOccN2y5JMf6L15nMmVaauf6zRya8M7dES1GF8ySMZBsjB0ZVJ+Zhnkf9elEeDuKffDNKceDM4knyUHcLODgXaNZiNxJWwJhov5vFw=
Received: from MN2PR02CA0018.namprd02.prod.outlook.com (2603:10b6:208:fc::31)
 by SN6PR02MB5312.namprd02.prod.outlook.com (2603:10b6:805:71::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2178.16; Mon, 19 Aug
 2019 06:54:48 +0000
Received: from CY1NAM02FT010.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::208) by MN2PR02CA0018.outlook.office365.com
 (2603:10b6:208:fc::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.13 via Frontend
 Transport; Mon, 19 Aug 2019 06:54:48 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT010.mail.protection.outlook.com (10.152.75.50) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2178.16
 via Frontend Transport; Mon, 19 Aug 2019 06:54:47 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hzbZ1-00064E-2q; Sun, 18 Aug 2019 23:54:47 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hzbYv-00048S-Va; Sun, 18 Aug 2019 23:54:42 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1hzbYm-0003yR-4e; Sun, 18 Aug 2019 23:54:32 -0700
Subject: Re: [PATCH] spi: zynq-qspi: Fix missing spi_unregister_controller
 when unload module
To: Axel Lin <axel.lin@ingics.com>, Mark Brown <broonie@kernel.org>
References: <20190818095113.2397-1-axel.lin@ingics.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <21496235-7fcc-d2bb-407a-5770b11b87d7@xilinx.com>
Date: Mon, 19 Aug 2019 08:54:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190818095113.2397-1-axel.lin@ingics.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39850400004)(376002)(346002)(2980300002)(189003)(199004)(58126008)(23676004)(446003)(5660300002)(44832011)(6246003)(8676002)(2616005)(65826007)(81166006)(229853002)(486006)(52146003)(50466002)(2486003)(4744005)(316002)(65956001)(11346002)(106002)(8936002)(65806001)(9786002)(126002)(110136005)(476003)(47776003)(336012)(36386004)(76176011)(478600001)(305945005)(81156014)(186003)(26005)(64126003)(426003)(31686004)(14444005)(70586007)(36756003)(4326008)(70206006)(2906002)(230700001)(356004)(31696002)(63266004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5312; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 253cd296-03c7-420e-f564-08d724722000
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:SN6PR02MB5312; 
X-MS-TrafficTypeDiagnostic: SN6PR02MB5312:
X-Microsoft-Antispam-PRVS: <SN6PR02MB53120D3C31608556B36D62C8C6A80@SN6PR02MB5312.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:765;
X-Forefront-PRVS: 0134AD334F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: fo2fudFtwkGHTeIYYaHWjMNC/ZegiClXdZhLFM+nPqM+pUvOkLq3CoyZ9QSv8W7rZ6u/lMS3JZ10MeIzU3j5Zk6Byko7d6fk9Gecx0SyWh0yQocixOJRpD8jfExSFfYj0yF0c4EqJ6GETGgoNTCHqeBxtNWD/PMynjJsinfVkssDIa9SLCMLty25MZCA4HKgPCZ+vCFqfkm2nPyy9sYh4JBW2oGbvYTXXreHvsJuXXibncraTXU820+xYqcpBP8EEitr0or+V0i0sgUQgcbzIv4lSj3wrYVibIC6gdVPOzncMMMf8bH5FYUyudxFcgBq8GPKvikJrPGlSmQbIVJdonyoh3V/iCXqwKy5Hp7zvjFEAwzK6VW3uw05ZyHgFwjihozOihJmhIS5d2emnR8kEim3YOmX2b3jgY5cPNva5d8=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2019 06:54:47.5647 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 253cd296-03c7-420e-f564-08d724722000
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5312
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_235452_832295_AD600386 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.53 listed in list.dnswl.org]
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
Cc: Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18. 08. 19 11:51, Axel Lin wrote:
> Use devm_spi_register_controller to fix missing spi_unregister_controller
> when unload module.
> 
> Signed-off-by: Axel Lin <axel.lin@ingics.com>
> ---
>  drivers/spi/spi-zynq-qspi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
> index 3155e2cabb1e..4a5326ccf65a 100644
> --- a/drivers/spi/spi-zynq-qspi.c
> +++ b/drivers/spi/spi-zynq-qspi.c
> @@ -694,7 +694,7 @@ static int zynq_qspi_probe(struct platform_device *pdev)
>  	ctlr->setup = zynq_qspi_setup_op;
>  	ctlr->max_speed_hz = clk_get_rate(xqspi->refclk) / 2;
>  	ctlr->dev.of_node = np;
> -	ret = spi_register_controller(ctlr);
> +	ret = devm_spi_register_controller(&pdev->dev, ctlr);
>  	if (ret) {
>  		dev_err(&pdev->dev, "spi_register_master failed\n");
>  		goto clk_dis_all;
> 

Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
