Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C61E167AE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 11:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0r3PYeAJrseQpZjtNCMyrmToLqgTK6qk6iyXn3s1JnM=; b=uVLYUEPJSjc2l+
	f/K7qAadn4BODtXDKDCF0hYN/LKT+0GQG6Q0VJbRV0LwhvIFTngO7JjKw04fPMGdgcUuI4uRC1llI
	OPWAW9jzeySdWztsLngD7cOWKfqqxdTc0m92/uJm9SaajnClnZHSnUI1lEel6AZ8sSPgtSz2hYWrW
	EDeefR9OJq65KcWqOZmOu9xHbDj1rhSENyfNW2zXtI3HgHoPcCuL9BamzSwpgX3pjTBf6iF4o9hAa
	EDIzeHfq5yXCLoK8H8EV9OBgzAlTa+B6bacqFHPrkZFdWs+ZalmXvhPjjrqZluKmH9VnPmtQfQ+S+
	okOnAQIqEvneW8+uZ80g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j55hP-0005rF-II; Fri, 21 Feb 2020 10:38:23 +0000
Received: from mail-eopbgr680066.outbound.protection.outlook.com
 ([40.107.68.66] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j55hF-0005qu-TV
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 10:38:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iBameH9HRfOY+YQ2eL8Dk+JwyuvxtQj3kGiPGu0TNMUdrI+zBPyTHMUuVzuRrcJqGi7ArZZ4fmeXFF0lBFwhkRZy4y1oHaTVyMaB42iS7MSdu/5gwdQxVgpyGngpTOcrncKp2DpUNfjeW8NKOQKHBE2UJneRIkEM8h1KiF8UIAfMTUkUFXH+HdH6dcYSDD+kZaFknI8vHeLO7+zFSXCvusjY3v2GHi2ALyAdhrKw+G6IDdxwbxjPfA8jnLibVXUn11ev1xJLF97DPHvZf8TaD2/WT7ydX+tTLmIX3SidwNt9rZSHaTVD2HdQMJwcwBTdSLao1p7rlqhX2Um31Z34Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZfV3s13fIpK3/8QTpyNtmderDYRyXLHIXTWSqGsewXk=;
 b=FOABp2buF7PYavC7ZuC3QnODEuEilryM+TbIQoRALqE0cnAPP978he5qUX/+ZMyr/7i/GazrcQK9saaZtxN1HKC2Q5rYQBHCoCLUxuk5GEi3l4VmDe7zqFlffxgJUZJkM2xM217M0SpliEfWBykUlK2t9Mogkmv+/F4+5gkTrZgnLHkuR0bBpQWFqzYEGtppJoyD4sK2GV4mhmi5E/5jXsvArRCd5/YkkeJKTvJhxp8J3iQHvdctUuUf4tse4qpqpvTGgsC5YCIY3uQpuq7cqhirfUYysg9+Cku/KvhxUwZ6y+Xgp2IK2bWEaP2BQCljtQPTBaqOC/R7Tb2EGYqogw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZfV3s13fIpK3/8QTpyNtmderDYRyXLHIXTWSqGsewXk=;
 b=hztYaXlKldGLuXtg9QH5efqkXlQVd4dhQH2/8dArCfyASgFxQDAcwkasUPJcAUsPm8nEYrqC2tJT2WW/95AX24H1xI4L6fFRHnfPQHXHselgl4SCyWsc8wB3UjW73b+cFiLVfkrfxnvN+l4Yvu22krSAb2sV5r2zGPTF95c2tgw=
Received: from DM6PR02CA0110.namprd02.prod.outlook.com (2603:10b6:5:1b4::12)
 by SN6PR02MB4749.namprd02.prod.outlook.com (2603:10b6:805:96::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.22; Fri, 21 Feb
 2020 10:38:11 +0000
Received: from CY1NAM02FT010.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::202) by DM6PR02CA0110.outlook.office365.com
 (2603:10b6:5:1b4::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.17 via Frontend
 Transport; Fri, 21 Feb 2020 10:38:11 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT010.mail.protection.outlook.com (10.152.75.50) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.19
 via Frontend Transport; Fri, 21 Feb 2020 10:38:11 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j55hC-0000GS-Qw; Fri, 21 Feb 2020 02:38:10 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j55h7-0002tt-Ne; Fri, 21 Feb 2020 02:38:05 -0800
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01LAbuBB011144; 
 Fri, 21 Feb 2020 02:37:56 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1j55gx-0002m7-Py; Fri, 21 Feb 2020 02:37:56 -0800
Subject: Re: [PATCH] fpga: zynq: Remove clk_get error message for probe defer
To: Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, git@xilinx.com, Moritz Fischer <mdf@kernel.org>
References: <0060e55f0b8d3a57e129d7eb096267cc96eae846.1581517026.git.michal.simek@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <fddb7796-c761-c6fa-13ff-632d01ffb55a@xilinx.com>
Date: Fri, 21 Feb 2020 11:37:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <0060e55f0b8d3a57e129d7eb096267cc96eae846.1581517026.git.michal.simek@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(39860400002)(136003)(189003)(199004)(70206006)(70586007)(2906002)(31696002)(5660300002)(426003)(2616005)(336012)(186003)(44832011)(26005)(6666004)(356004)(9786002)(8936002)(8676002)(81156014)(81166006)(36756003)(110136005)(31686004)(316002)(15650500001)(4326008)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4749; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 57d5ace2-02a6-4e3e-5c91-08d7b6ba25ff
X-MS-TrafficTypeDiagnostic: SN6PR02MB4749:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <SN6PR02MB4749199E3E5FF0486243B3C1C6120@SN6PR02MB4749.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:242;
X-Forefront-PRVS: 0320B28BE1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FD6pjLYaukqHl4gImAW/QV20UY12ghWT+vLvCLYusEkyClX3rgD9Iqek8Nd+S2SFKjz/Bk8szEH0y6jOrA4luFyayBDZRCOtlRzDDlVaXrXI8+V065InWsiPBPS6OPtcFzh4vcqQacIj10OunkCKcvowVQ1A6ZrFQcH3rBduAjw7IFiZVjipsO+Yx3ZEBrwFQVjxvSfXeEkjNOBOlQiUV/dL/4pbg9yJGtKkNcU23bm2dVmYwv8Y30QQeCkEJZXB2VsNg4gB6mlIWKbteqwZh2B7U23rtvdCN65f29KWdONJhjAt8rAMM+Zbj0LYlzT7iIfCWYdEL+fPKYCEEkb41NFDoKcZs6lWFYXLkJrm7C2Ji+GRX6ARnWGuNJfxq2KVkOD8czEKPriOIuQ/uRsrjATALzWTuOBZGVpvqAifG+JZrK88XSmBz7uYe0XwSd5u
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2020 10:38:11.2598 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 57d5ace2-02a6-4e3e-5c91-08d7b6ba25ff
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4749
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_023813_956033_16EF6C60 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-fpga@vger.kernel.org,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12. 02. 20 15:17, Michal Simek wrote:
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> In probe, the driver checks for devm_clk_get return and print error
> message in the failing case. However for -EPROBE_DEFER this message is
> confusing so avoid it.
> 
> The similar change was done also by commit 28910cee898c
> ("fpga: xilinx-pr-decoupler: Remove clk_get error message for probe defer")
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
> 
>  drivers/fpga/zynq-fpga.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/fpga/zynq-fpga.c b/drivers/fpga/zynq-fpga.c
> index ee7765049607..07fa8d9ec675 100644
> --- a/drivers/fpga/zynq-fpga.c
> +++ b/drivers/fpga/zynq-fpga.c
> @@ -583,7 +583,8 @@ static int zynq_fpga_probe(struct platform_device *pdev)
>  
>  	priv->clk = devm_clk_get(dev, "ref_clk");
>  	if (IS_ERR(priv->clk)) {
> -		dev_err(dev, "input clock not found\n");
> +		if (PTR_ERR(priv->clk) != -EPROBE_DEFER)
> +			dev_err(dev, "input clock not found\n");
>  		return PTR_ERR(priv->clk);
>  	}
>  
> 

Moritz: Any comment on this one?

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
