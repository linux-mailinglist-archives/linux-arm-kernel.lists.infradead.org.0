Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D34122D25
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 14:40:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkcmVtgT7DC3dmH5y0ak0WlDkOVN8TNmN1b7tLaJnfw=; b=nTLPKQtLP7Ddra
	zUsMuhRAyu8+gatvgOgnbVWvzLTNkT0ZnPNeVH7MDlnrzuz4pen6XrvUeoZxxNRYf/BlRGHgOizI/
	RCp45O9uQtJ06mO56rsLh7Kegba67W3q8GKYtuaei+/SjWPI/32VOrDtnikR8t0RYsX7AKv5KJao6
	maeeZDg+KYKKxca9IR+EBTgD14LAZk0OtrnnOm/sdajvAqSDeFzsvMqSC3J4TfYoXk1OM7JCd/5/1
	pJAzb6NhM6s1l8BVkrRx0gMmdG+Ih3xAwj0hGXUcNzWL5uDCCTqjuoln0sX5E3qDLPS/ylh1iY0ZC
	lzFp/2dbJWEImK+QnGgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihD5P-0002YU-Tv; Tue, 17 Dec 2019 13:40:27 +0000
Received: from mail-eopbgr760077.outbound.protection.outlook.com
 ([40.107.76.77] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihD5H-0002Wz-KQ
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 13:40:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BY3i0y5iSqA6GUyTT91ItczGVwWFALZlPUmiEqbLBbfQjCN+Oyzfg9lgk1PzngoHdPzGYLTmz+qiX9fd3qnhnwZDG22LeHFlieQztlM2BEnRQSPhbj0m4R49f6w6rq0QFoW+gMriG4tp4aeWrlUwZsMMhxd8z4nqyLraZiJ/gHbLxUVyJSYQao/uDpzUh2Jh4kV9imVjNbBpkdJkJz4fR6NKVI+b9F8wShCCWi0FfbgW+yvEShUPJAZ1SLy/jDquEYcBTW1tnagH+RND/UGUJF3FGt3exgEqBCghf2KKJ8wCKnc9pRvppdzOL0Q955N1xqQ+FYC3H2paqxo81nnqAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6I4/TRESJ1IE0o5Z8+a8Z1I/i6193Gvyu8oh9mHdJkY=;
 b=Z2k+rZEpu2WfABBp6J/uJXTFRqXzfu4Y3B3kmMIO5pkdo6rH+MDRV91KFgyVDBfGj8rrxuv3X0clW5oUXz/fe2pdwjg7VHNmj5Il2hxnpDUdyd5bcPkG3n40gfTXsIJNcEkNtW7L8OFuVThwHSOANd1X0OVFO8cUAs+I6GlHlRkkPiVIYStgJrDOAhTDVHRXUr6qNJbAAAZiYdWM1XA/xMjoi9M7csy8IjMeYW2JiF5XagWnou0N4LOSbQiGmgsHEDTAY1syn8O/CZkJo/U9Phoxv0Ad6F/d4/E75vqPzheJ6+pqbrT4VFDwXEwfbIzUYQFZxb5pxdqQutvVhcclCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6I4/TRESJ1IE0o5Z8+a8Z1I/i6193Gvyu8oh9mHdJkY=;
 b=OqqNbjP5bpi5SI6OaHhyrrIEQ5nRvRJh0icOw+RGB1KEfnp9saE+zs5jMEttKrDWkrZ9mGgx1iJCaBcGO6tTobGdf7g410bHtBSdd/JqJEqVqsw8ffpuH8pOvTAF5PY9p1UZvTMtHbrqBqTzncKE0o7OEm/qR66vslXw7AgpYXk=
Received: from MN2PR16CA0022.namprd16.prod.outlook.com (2603:10b6:208:134::35)
 by MWHPR02MB2605.namprd02.prod.outlook.com (2603:10b6:300:42::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.16; Tue, 17 Dec
 2019 13:40:14 +0000
Received: from BL2NAM02FT025.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:134:cafe::33) by MN2PR16CA0022.outlook.office365.com
 (2603:10b6:208:134::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.15 via Frontend
 Transport; Tue, 17 Dec 2019 13:40:13 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT025.mail.protection.outlook.com (10.152.77.151) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2538.14
 via Frontend Transport; Tue, 17 Dec 2019 13:40:13 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ihD5A-0000e8-Oj; Tue, 17 Dec 2019 05:40:12 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ihD55-0000mG-LL; Tue, 17 Dec 2019 05:40:07 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBHDe3Bm010609; 
 Tue, 17 Dec 2019 05:40:04 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ihD51-0000ZE-FN; Tue, 17 Dec 2019 05:40:03 -0800
Subject: Re: [PATCH v3 0/2] drivers: soc: xilinx: Add support for init suspend
To: Rajan Vaja <rajan.vaja@xilinx.com>, sre@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 tejas.patel@xilinx.com
References: <1574412258-17988-1-git-send-email-rajan.vaja@xilinx.com>
 <1575283131-9339-1-git-send-email-rajan.vaja@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <4528868a-d443-b761-a334-b0f6035da790@xilinx.com>
Date: Tue, 17 Dec 2019 14:40:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1575283131-9339-1-git-send-email-rajan.vaja@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(39860400002)(346002)(189003)(199004)(6636002)(15650500001)(478600001)(8676002)(81156014)(2616005)(81166006)(336012)(2906002)(36756003)(70586007)(44832011)(26005)(356004)(426003)(70206006)(4744005)(5660300002)(4326008)(186003)(316002)(9786002)(8936002)(31696002)(31686004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2605; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 00d88661-8ba2-4d89-bb53-08d782f6a4cf
X-MS-TrafficTypeDiagnostic: MWHPR02MB2605:
X-Microsoft-Antispam-PRVS: <MWHPR02MB2605F29836D1FC64C3CE0E65C6500@MWHPR02MB2605.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 02543CD7CD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jvjdYcPCwaINo4HtpFHvJsvzil1FvZslnZaHwZ0d64KUvpQocCanzEzMc2dPaccK4p4A+nkDXGOgzRkj+oDx/DERrBQTmyVR2STvTazKF+gIBDL7AHLKAEBumq4BbntzP+lGNLdPkL3Q3Ktm3r0ckHiHhA4okIuac8huGTullttRs8+fedWbcKmxCEuZugFxaXAx02Nq1l7g2amtrS/d3Ctp3wMtIx88UVQITdnX8kb+58xGxygFmtRwpZNeggnWsbJUsnTQXtb8m7E2pJkuzMXeytDGEaYgCZQj/YGAyKZgWNxeNnYYBOYRV1YSzM6okU+oXRp6bFah4fpwbAhr3DDoQ5B3LgRvtIVDyuFwVslexd937/8TcnPb7pY+WN4RepYtKkG6BtdwIOzaPGJw2PE4ep7v1+fzp00KkE0HqjpwgTd7ksmgTcRv4c8iTuqq
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2019 13:40:13.3116 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 00d88661-8ba2-4d89-bb53-08d782f6a4cf
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2605
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_054019_675384_9A374D35 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.77 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02. 12. 19 11:38, Rajan Vaja wrote:
> Add support for init suspend in xilinx soc driver. Also update
> documentation of zynqmp-power with IPI mailbox property.
> 
> Changes in v3:
>  - [PATCH v2 2/2] :
>    - select MAILBOX and ZYNQMP_IPI_MBOX as it is required in zynqmp
>      power driver.
> Changes in v2:
>  - [PATCH 1/2] :
>    - Correct order of tx and rx in mbox-names property.
>    - Add interrupts property in example.
> 
> Rajan Vaja (1):
>   dt-bindings: power: reset: xilinx: Add bindings for ipi mailbox
> 
> Tejas Patel (1):
>   drivers: soc: xilinx: Use mailbox IPI callback
> 
>  .../bindings/power/reset/xlnx,zynqmp-power.txt     |  43 +++++++-
>  drivers/soc/xilinx/Kconfig                         |   6 +-
>  drivers/soc/xilinx/zynqmp_power.c                  | 119 ++++++++++++++++++---
>  3 files changed, 151 insertions(+), 17 deletions(-)
> 

Queue for v5.6 and added to zynqmp/soc branch.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
