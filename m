Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541F61340AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:39:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmqhSEZHkINf4WZKUg8uVbfA+DE0KstEEHyDLkuaLu8=; b=lMSxJo+oHZoBbo
	ZRpga+YEUEeNEGClT1XeV7sAkzuHHQo1kQoxq3xCT+Qy57XAjxTJitQ2CoNVto8kuayhB5z/bhHIs
	f/mYfXtwgm+wd5mf5AihzJLgYjY0L23u5ceRjHtn/0KfdWag8/ceLxOD9XCQqHo0GsVG2ADmPOzz3
	N8MNB4dAKku9DjtTFNWd6XzqbWLk1nwtJDYjDR3mYg5C3avCaeCdFB6tivkJlGBr0kq6pnq+reqx2
	kKAYdItHCMPzBhaGh9+xn1lIXiJF7WUcI2lE/tqptXkxNsHRCWsvJ9oyV72qEh5VCV4fWODHevVus
	iYmJcdo+NNgJ3Yi/tClg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9gV-0003lC-RC; Wed, 08 Jan 2020 11:39:35 +0000
Received: from mail-bn8nam11on2082.outbound.protection.outlook.com
 ([40.107.236.82] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9gM-0003kM-Dh
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:39:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MI4AbdstTkDTHuf3eEnp3JJz8fMnTK2FNAfAPtW0bk3D8v55DPou+GkgKlrfNgwntmk8TCMIOKTqJl/CWtCNXCKdAi7mWWsvExw6xPndffX6Yg7Lf7RGAxuqBERJbIa9kDB4vNhp0yq8YOBBVa+pENI+CXXC+9PMiuwYp+VAwK0DgpnGmoA+00GVk34NKoIAadZd8j/ylaxq003d7vrRJk7djZAa5tiVRZp8aw1h7rqhBCR0H9xHpKTrfCxMeKj1/u2p/Ac7RYwToy9r/qMX4DZ9geBiM4GqfG4BxmMxsWentPQgs+7oe8fa0F2mABJ+lEoCmjkHSxyGN+9UWupU0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=86NCv4S5OfzE8NviR3BBfwuys4CPtDUq8+5VecaOG8Y=;
 b=WdlY1GNX6nqqAGJIQvY2w6rLfnMwjStOttC2p27yUE3imPZcq3DsAhqA2ZJDYdbkuAjEe+SHeRPmxlVbv9OEPKKgEkZgLbwY9/T1QdGM93fBSFlRgwwu/ANpPMPk7TNOsUGYCvi60A/jUFisjunXEigMqm/4FDH+17wyaW6dgaSrkyWgqRGaZSxOYrAmrhECNi/qaexxm3DzgoIp+WqczDLdKMBQHeD8iF5DNPOP7t3Z8v353Cpybhfa0qfRFGTKwg3BNsmYJ7P88pfjT8hxykJvor8QHIi58LLMbCydP/TpxnwN7XPPlwYOl4WiC1hgyvmAOlTgyetlJAv1wrRssw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=sang-engineering.com
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=86NCv4S5OfzE8NviR3BBfwuys4CPtDUq8+5VecaOG8Y=;
 b=jgs0fFBDSdWbtg4IHIL5QlGVgZkD7l5mTUZSCReQW/Xpy/VvnhNDQC5TXesyxWqvX+Tix39I74x0ewsSZ/5WBkfr0XuC6TSRFVMq7pZL/sYH02fJlIbxkYMRsFbWQHsK3QL2eXcYglUd7Flj5vMs0wtHSmBlDf+UBYMOSL1sNIs=
Received: from SN4PR0201CA0007.namprd02.prod.outlook.com
 (2603:10b6:803:2b::17) by BN7PR02MB5122.namprd02.prod.outlook.com
 (2603:10b6:408:2f::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.10; Wed, 8 Jan
 2020 11:39:21 +0000
Received: from SN1NAM02FT025.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::201) by SN4PR0201CA0007.outlook.office365.com
 (2603:10b6:803:2b::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12 via Frontend
 Transport; Wed, 8 Jan 2020 11:39:21 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; sang-engineering.com; dkim=none (message not
 signed) header.d=none;sang-engineering.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT025.mail.protection.outlook.com (10.152.72.87) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2602.11
 via Frontend Transport; Wed, 8 Jan 2020 11:39:20 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ip9gG-0005ma-9b; Wed, 08 Jan 2020 03:39:20 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ip9gA-00077k-DL; Wed, 08 Jan 2020 03:39:14 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 008Bd5nF010571; 
 Wed, 8 Jan 2020 03:39:05 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ip9g0-000737-On; Wed, 08 Jan 2020 03:39:04 -0800
Subject: Re: [PATCH 07/12] i2c: xiic: convert to use i2c_new_client_device()
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org,
 Shubhrajyoti Datta <shubhraj@xilinx.com>
References: <20200107174748.9616-1-wsa+renesas@sang-engineering.com>
 <20200107174748.9616-8-wsa+renesas@sang-engineering.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <b6feec89-3b3c-e0b4-afb7-5af5c4380d31@xilinx.com>
Date: Wed, 8 Jan 2020 12:39:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200107174748.9616-8-wsa+renesas@sang-engineering.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(346002)(136003)(199004)(189003)(478600001)(54906003)(316002)(107886003)(8676002)(186003)(4326008)(426003)(356004)(9786002)(44832011)(81166006)(81156014)(336012)(2616005)(8936002)(2906002)(110136005)(70586007)(4744005)(31696002)(6636002)(26005)(5660300002)(36756003)(31686004)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB5122; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 26675e66-34c0-4f71-73a6-08d7942f66ee
X-MS-TrafficTypeDiagnostic: BN7PR02MB5122:
X-Microsoft-Antispam-PRVS: <BN7PR02MB51224023B1C7794263299B40C63E0@BN7PR02MB5122.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 02760F0D1C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7TywrqFAIPgSeGQPgaVPNIn8/sJ6cah7ft+HA0zKprdLwKSbD+qNfdQp6HfCrv/1DHHuX3tpfk9DFCmAyx1dSvAD6X8b7E8UcsjyYo76wW+Sw0OCEI/aH+KaJqSx45TLaLfEfZhf8Py+Fbd7V0X1BYhPTGdNQQNs2LohXouddB3ocRMpLRjpVtoxpqYblP1FjBDdtxechzsyMo+SqHznNYCePybys/5urpgo1mnG8RxUX8JUqrAhhN2YjrwjXjSvUfN+Ar2p1i2GIUA4Luj+RUYeMICYCh1ZglZKQatPfZmaGrYIutlsRU3rQRVgx/1NLiOz9Xno2OWYId6YxnTLqPKZkFibS3nK+xcdkPMcxrq7gd5Om+A4dievh+m9NzFKgbHzufB9tzyARKUD7sWtLHYQn4rX3RoGy9gueCY3ZHs4dsM0BP17ohnRJ7htDFdl
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2020 11:39:20.6380 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 26675e66-34c0-4f71-73a6-08d7942f66ee
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB5122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_033926_467755_44065AED 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.82 listed in list.dnswl.org]
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
Cc: "git@Xilinx.com" <git@Xilinx.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07. 01. 20 18:47, Wolfram Sang wrote:
> Move away from the deprecated API and return the shiny new ERRPTR where
> useful.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
> Build tested only.
> 
>  drivers/i2c/busses/i2c-xiic.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
> index d8d49f1814c7..61e081b186cc 100644
> --- a/drivers/i2c/busses/i2c-xiic.c
> +++ b/drivers/i2c/busses/i2c-xiic.c
> @@ -806,7 +806,7 @@ static int xiic_i2c_probe(struct platform_device *pdev)
>  	if (pdata) {
>  		/* add in known devices to the bus */
>  		for (i = 0; i < pdata->num_devices; i++)
> -			i2c_new_device(&i2c->adap, pdata->devices + i);
> +			i2c_new_client_device(&i2c->adap, pdata->devices + i);
>  	}
>  
>  	return 0;
> 

Acked-by: Michal Simek <michal.simek@xilinx.com>

Shubhrajyoti: Can you please retest?

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
