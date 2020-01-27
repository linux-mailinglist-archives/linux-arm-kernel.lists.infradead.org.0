Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08131149F53
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 08:44:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ObXsGsmDHlcPXoDf/6KLn2ZqcqQgC8tv1A8uU7689+M=; b=NgsMhb035cV0VT
	CYZneEsJzjGT41ZrMWEce+N5KSHuBzYLahzEv6IIlZGe0fLhCLWMPGMWCZJmPnX0bRG52l7kd7RJv
	hMfOqLbFc04Xa6lUI8bbzm2bOln4D3tN78IO7jq4mhpct86uY1bED1gmWRCrusPX49zQrQxLBzkxS
	86I+Qw9Cmyf2qRj8o4597hNug4/MHVpOo0xgv/lGRswybUM1JsJuxxQ7l8c6zCKyJgA8kwLcUztl1
	xNPLJXxefLRZS24FBjVZ5IU6Xa6r8Npbkk0f3X6W5SNY1BqNq6rTP7UMHERdxAd1uuqCyW0n7LaaH
	Yta4eJL8w18SPDBQ3pEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivz47-00061H-V4; Mon, 27 Jan 2020 07:44:11 +0000
Received: from mail-dm6nam10on20617.outbound.protection.outlook.com
 ([2a01:111:f400:7e88::617]
 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivz3x-00060r-JY
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 07:44:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J9/14reeoaR1SzulVyIMWsq5HsGE1oqp77hyGYuMtiUBl4aczY0gMKOJUF0siclTWnRHWKn9bOIp6Te52ccfjKHCHuzlNgjRgttyY5grMpkdXvxkkNGHtUCm0MjqxF5lB8907cDE6qEvf/hzGhdsLWU38sAd3gLPbLpfFP5F6SrQ67nwiJK+vWwHwElB8bVyH2Q8lptEdmuhsPz8vjWk+R05+fTJn8QLpWp8hF31f/p/quHPRb9L0IbkusxVQiQoQF4ZaO1JiocDbTeGUZG8oFwiWFfypVM6QC1BdyIaPmlG6QQentvV/X0Zobi/apHKdWTZgeSgx+e6BuVo8e3sdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g1B+qZ9dfWNERlUgfFFMnX9UV8NdsKDjBLbX91Lwkgs=;
 b=EB1EWxe1c/4T9fwfLgW2zj3u8gRYCHgP1agrd89TUM6WP+a2GjvTJc6S1NWrfYpMu33KPpDu+m4WrFFwwtLri2aOK0ezl5sWTfYxBe+X7wXGaNA+hFIJs06tNQXmJrj96KCFSkXFo/706ZlE7Rcw4QDbaCTmDleUVyWvPa9+m3J2L1QI2RqD42OMqI/IDSe4hSnTcLyiO2EBUCa+lHQMIlUlLR4CP9mWCKsrafSuzpnO2uRmIfsfbL6JIl8h8iOGxz+i1lNp+SJXAxuiaaoOGIEYbS9rpSIoRsUsZe/HqvGVvwA9K3/TdoE3qjrz7ZEE+Kb5DmQ0uHD4GAZ3j25qGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=canonical.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g1B+qZ9dfWNERlUgfFFMnX9UV8NdsKDjBLbX91Lwkgs=;
 b=PKkggIux6jyXjnko7kDgQfN8+AshuZwi1h53WehkssNTSbwjaa4dTxh+w/WP0TUZdNcf0pOEiYEAFUQR/tXuAYVSCCZ5uqZzagDSCgkcdxP2/Ktz409lSc1O1LYjSCoUInqxWC//mEoJqrY5+8xiLg33M7tirsJNVXKj5rdumJQ=
Received: from BN7PR02CA0012.namprd02.prod.outlook.com (2603:10b6:408:20::25)
 by DM6PR02MB4603.namprd02.prod.outlook.com (2603:10b6:5:21::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.24; Mon, 27 Jan
 2020 07:43:58 +0000
Received: from CY1NAM02FT019.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::209) by BN7PR02CA0012.outlook.office365.com
 (2603:10b6:408:20::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.21 via Frontend
 Transport; Mon, 27 Jan 2020 07:43:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; canonical.com; dkim=none (message not signed)
 header.d=none;canonical.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT019.mail.protection.outlook.com (10.152.75.177) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2665.18
 via Frontend Transport; Mon, 27 Jan 2020 07:43:57 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ivz3t-0007hD-BI; Sun, 26 Jan 2020 23:43:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ivz3o-0002hP-7m; Sun, 26 Jan 2020 23:43:52 -0800
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00R7hhGF023667; 
 Sun, 26 Jan 2020 23:43:43 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ivz3e-0002g0-Qt; Sun, 26 Jan 2020 23:43:43 -0800
Subject: Re: [PATCH][next] i2c: xiic: fix indentation issue
To: Colin King <colin.king@canonical.com>,
 Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
References: <20200126154257.41336-1-colin.king@canonical.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <e20558ec-bf4e-9348-f6cb-a37c5dbbb2de@xilinx.com>
Date: Mon, 27 Jan 2020 08:43:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200126154257.41336-1-colin.king@canonical.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(136003)(199004)(189003)(478600001)(44832011)(426003)(9786002)(26005)(31696002)(2616005)(2906002)(186003)(36756003)(336012)(81156014)(8676002)(81166006)(5660300002)(110136005)(316002)(31686004)(8936002)(70586007)(70206006)(356004)(4744005)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4603; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8af5a681-e7f0-4edf-2859-08d7a2fcaae9
X-MS-TrafficTypeDiagnostic: DM6PR02MB4603:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4603C5B944B6E783D1BAD0BFC60B0@DM6PR02MB4603.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-Forefront-PRVS: 02951C14DC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mPCFp7oYvK23gWIsQUxUQG+uIkMLJNLxnt08NFHHHqQz+hqCDrMUcW7uggAbEG23imp1gkVs3IUaf+Li10b2xJFWAYHteKqb/uvJP6YXeoQSfhem3EcmjJHGkQD2JCEZt++dkB4+8g6ssSbqz3rtiMM5VEJnBcFHf857LrKOWLghuaC3TEXLBJ1oXX5jDJLVl9XKEVZ6frAy+6hLczCLbRPUwccuhIOyI8rm6POl5fJZa5iD/CjEYJvUWHQen3OSvNKOWYZ7p1JUeuQLT3+buZmFnxfWd8RniEtcN4mB5HVyaa0OvIkUWZtUBtOwrGUdLlBXVLBk7+cbpZEy6nKAigg4qIP18CE5LlMaKx99MVfpksZoqSXvSk7OL98uH0bs53+x+t+cOXk+NCuXUic/QpPplkJ0UKGueXgEMImbhdND2Yup8tQg2zp+N/JZGAEY
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2020 07:43:57.7798 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8af5a681-e7f0-4edf-2859-08d7a2fcaae9
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4603
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_234401_642905_9512B880 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26. 01. 20 16:42, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a statment that is indented one level too deeply, remove

typo             ^

> the extraneous tab.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/i2c/busses/i2c-xiic.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
> index b17d30c9ab40..90c1c362394d 100644
> --- a/drivers/i2c/busses/i2c-xiic.c
> +++ b/drivers/i2c/busses/i2c-xiic.c
> @@ -261,7 +261,7 @@ static int xiic_clear_rx_fifo(struct xiic_i2c *i2c)
>  		xiic_getreg8(i2c, XIIC_DRR_REG_OFFSET);
>  		if (time_after(jiffies, timeout)) {
>  			dev_err(i2c->dev, "Failed to clear rx fifo\n");
> -				return -ETIMEDOUT;
> +			return -ETIMEDOUT;
>  		}
>  	}

When fixed.

Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal







_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
