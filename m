Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A4A16A3FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 11:36:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLE55huuRNHV8+xdXtTOTOO8ciak8cDNbtQ/25EzFBY=; b=jasEInfOrzah9M
	EgtKLpuM9qnsr/mXvZFiaHgv4S0BiZ4KOAUOluqU85/ch5m+ajEXKJpEmp2zcMy7yEyJzMTt6rw4n
	S4cHAp1HMRf+4vPhnN1jl3kh7vL95bRqoNmq6hRrunIKlTWS8Rc6LZoROFIlxjTMEjrz+gdWtAXIo
	k08fj0N8NaFzagYQ/P/Lij//3559gF2TFCZUgPfXqUp8xqShU+0g5J4LvEFWz1gPOTtD50gVdjHC7
	DIXD2YYJKGT6sOSgmPRhcHOd8YkRmoyvGDCo6jMjWoFbn5qe+W9JkTQA0s+YR6TuhDZXrFLFoasMb
	MmI1oRONAlAgE1q1TbdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6B68-0007np-Lo; Mon, 24 Feb 2020 10:36:24 +0000
Received: from mail-bn8nam11on2049.outbound.protection.outlook.com
 ([40.107.236.49] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6B5z-0007nW-6q
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 10:36:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=laq8JCuWuSKdJtOX9nzSr7ak9dsNgZuf4HO8BGw/8fMdOpeYN0xfT0J2mW5c4GMoGWcKlKy2XrMJjN5y5AtRxPWbRiPbiBRcvuN5+2bBJVAsYSr+IshmboBEXrEri8SeChXCcgEMB3NCdZFIj+MD788e92PAaytMRz/1ddVHW1ZbWpp6em2K/ADgRjboY1b2VukoYoxet+UPaYHKVSugZ1WzUZzGSkeeew0SyKuBMSswJP1pl0P1rGVle1q+kTUIeUagpJhhKKsKkyficlmvEBqDw6d51ewnO38CLOcDGZj0v2i2JPiEARUEWuGpu1cY6+DU0Con4swYgeDi15GZ6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cJUnJD05WfLX1peeQxe+uokUTl0I20TwFlwFA+Y5jE8=;
 b=IMsywlTu/7uWlEk8Cna5WDOtxl+9+f7fdttd7DTs9vJQVI3Ic1f9+5dUOsQmhB8/sD59AXFPKlHTIB451SEwYsh2BzeDbNo3CVtBQWyuT5sTWVeEI6c1+Z1MNaflnU8ljHP64GVfAVoPnoqyHS1DdOFHVbA52DFhUTeU6QnVWU8uzn97rMwAixskdLRhCSnPcBtfOh4SBQEE++xabPXEburmqAFF1tpOwrNC/6LzKr3Pm48rtwwcoMYrN+X8UQFpgZquDQdp8lTHOZFcdE8wP9rmnG8mMVD040nL9Sg/wE52PdtWP9wTE4he+iUYqyQGYzT0lQf3vEUBYCxBVC+wSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cJUnJD05WfLX1peeQxe+uokUTl0I20TwFlwFA+Y5jE8=;
 b=pmXsLciWZp676rPaRl6GOVv007/uqSqA99fMJiTKATIIH82mW5vpkGtQxxX/0dhUCYGQpWmncrIdIw0HKnWIYij/vsFU98eMhGKA7SRb9TOTW25VhaCYi8Jr+pZYFbrbnnUZDUZt0gwVmLwRZINoccMWFV1B1TVUwb5sy5I261k=
Received: from DM6PR02CA0115.namprd02.prod.outlook.com (2603:10b6:5:1b4::17)
 by BY5PR02MB6994.namprd02.prod.outlook.com (2603:10b6:a03:236::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18; Mon, 24 Feb
 2020 10:36:10 +0000
Received: from SN1NAM02FT012.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::201) by DM6PR02CA0115.outlook.office365.com
 (2603:10b6:5:1b4::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.22 via Frontend
 Transport; Mon, 24 Feb 2020 10:36:10 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT012.mail.protection.outlook.com (10.152.72.95) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Mon, 24 Feb 2020 10:36:10 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j6B5t-0004Hi-RR; Mon, 24 Feb 2020 02:36:09 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j6B5o-0007Ei-OQ; Mon, 24 Feb 2020 02:36:04 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01OAZtac010489; 
 Mon, 24 Feb 2020 02:35:55 -0800
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1j6B5e-00077y-Uz; Mon, 24 Feb 2020 02:35:55 -0800
Subject: Re: [PATCH 1/2] include: linux: firmware: Correct config dependency
 of zynqmp_eemi_ops
To: Jolly Shah <jolly.shah@xilinx.com>, ard.biesheuvel@linaro.org,
 mingo@kernel.org, gregkh@linuxfoundation.org, matt@codeblueprint.co.uk,
 sudeep.holla@arm.com, hkallweit1@gmail.com, keescook@chromium.org,
 dmitry.torokhov@gmail.com, michal.simek@xilinx.com
References: <1578596764-29351-1-git-send-email-jolly.shah@xilinx.com>
 <1578596764-29351-2-git-send-email-jolly.shah@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <9a243e65-6f38-96c2-39ed-fc8391c997e8@xilinx.com>
Date: Mon, 24 Feb 2020 11:35:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1578596764-29351-2-git-send-email-jolly.shah@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(376002)(346002)(199004)(189003)(9786002)(186003)(70586007)(70206006)(2906002)(6666004)(26005)(356004)(107886003)(36756003)(478600001)(426003)(31696002)(336012)(81166006)(5660300002)(7416002)(81156014)(8676002)(2616005)(44832011)(316002)(8936002)(31686004)(4326008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6994; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 90d86068-c289-4a27-2daf-08d7b9155d17
X-MS-TrafficTypeDiagnostic: BY5PR02MB6994:
X-Microsoft-Antispam-PRVS: <BY5PR02MB6994E05AD0713B73573D2E23C6EC0@BY5PR02MB6994.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 032334F434
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d0BBVjvOc427VPPTcLPZpgZTfnolrKqDOIBdgCnXPayL7WdylvwRdfZ8LR9ktid0iO+yitruc4973aQmAMRW2pIa+txC0DhJIwMhQT1tPYNX6QeywbYICdhhuJGNhV4PQERf6Za5xuJrsGWCkxVhTmTMOLw7flC4G89JaTf/TJu0lF1L7D9Vah0gaapQkMx/mSYewHmqC4VsxzBUWdXpb2lPcdFG4asCA5JPWn7SAMg63l/hd596MG+omuSMKJuEyjav6aO+V+iopI01RKTKz0wAANv4ZA9J59VKnmnVtyTtMj8YJ1oY1CLTGRiCgNiTWL4hxDzyV14BGrZ2xs/wq/EDXWwR5gXV4vztVUGOmHIJv7u/pxLQ8MjP24kix2L8Yb2MyQkxeBcqlowSUcCZp9mX0UGOi7vWKPZ7d78e/M6yWkXqYfQarDafLJR5AhrOcvt7zdoKMNKTnk4Nd3lflI3H8Hx3AWq1cshj15rM09LxbM1u1XgarXzannDm5Q1j
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 10:36:10.2335 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 90d86068-c289-4a27-2daf-08d7b9155d17
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_023615_250269_615CE47D 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.49 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09. 01. 20 20:06, Jolly Shah wrote:
> From: Tejas Patel <tejas.patel@xilinx.com>
> 
> zynqmp_eemi_ops will be compiled only when CONFIG_ZYNQMP_FIRMWARE is
> enabled. So check for CONFIG_ZYNQMP_FIRMWARE instead of checking for
> CONFIG_ARCH_ZYNQMP.
> 
> Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---
>  include/linux/firmware/xlnx-zynqmp.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
> index e41ad9e..a50a30b 100644
> --- a/include/linux/firmware/xlnx-zynqmp.h
> +++ b/include/linux/firmware/xlnx-zynqmp.h
> @@ -311,7 +311,7 @@ struct zynqmp_eemi_ops {
>  int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
>  			u32 arg2, u32 arg3, u32 *ret_payload);
>  
> -#if IS_REACHABLE(CONFIG_ARCH_ZYNQMP)
> +#if IS_REACHABLE(CONFIG_ZYNQMP_FIRMWARE)
>  const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
>  #else
>  static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
> 

I think that make sense to fix this dependency no matter if 2/2 is
applied. That's why adding it to my queue.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
