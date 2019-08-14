Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 056098CD12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 09:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+AVCMMjPaxmPnGKySOiZyN+RhufsF3fF9YN/VBpy8o=; b=BKO5H7t6d8KWuO
	WXDv/tDZkLBSgDcpA5OwG1jHHKdGeueHAxOaMz80OK8vmxAFzFWNY8g03JR/TpLIKbnTq085NDZJ8
	CrQIzeftC4e+v7MkgUooua0iX4SMMvxclDUtjM1CmhIwA39o6tJT17wfKEoOK97gJVQczEiJprozL
	6r1iczb7Lo7eWETYg9IEJg9o38CYL22FqXtZT0kIcgnkkknyFEQvCz0fz7G/yCF3EIiXsBjW42cXT
	wpMWIpdR53wBCJH0YBJwlK8CWkqqJaSZvwzANdTR+AVUEggSfUOEKk6QJVO3b6ft6lGe+VaCSKSUb
	47sEQIuWGIJxUQKgKeiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxnuS-0002g7-NL; Wed, 14 Aug 2019 07:41:28 +0000
Received: from mail-eopbgr780052.outbound.protection.outlook.com
 ([40.107.78.52] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxnuC-0002ff-EY
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 07:41:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lNUxU4LOxDzKawdqR5/knA3VnnYgnYzZp3D/hz+n/xb5g3PWT0FFhIaSpREXnHS6OG5tzB86asGdi3zAOyH9shg2A6XAy1DKvntzKTXFCpVsxkl+8IdPoaFH5s39Pk2WsxQD9NI92ybSIi71dv9wztQYGJMFFTrtsZnIZvcrt/gjrHDUlrBOB6B1dnMmEPIR0w43pCiQrub45610Vh2o9dIczr4kXDLNynaSUGLArtJjC1uKPsCNoiT+b3JjvU3Dlc2pqge6ka7RI8U5BsdUF75A9c/N4RXYaYEGmaLSOyN+ZCuFvFbyQ8V0fEUO1WfX9DAY5s8bm9ARtPI4BR8DNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bLfo2CjkEY7ylZLI3aWjhazVKEjuABE38FZq/bSGjbw=;
 b=Ex4YaIiN4ascsBUwNpOrf+wccSS+l0LtLLN7MnB83yoV7ggjQstjppk7LTB6tx0RbvWyAv8kkqRNqS9WXRAjioiO/pkIkY2bM/fHAbv3POPB3HDTEXlCEHxArGDNotWzQQXvLQqE/aswxx8sGAOeClN1GN/x81RAbnCoE5SQR+zUB3I0PxYWcsg6m/GmFIJ1jXgldPJo5ZVBlgfgRZW7ZNCweC0t49xvkX6x8IVCkcnKJHy8JLIZBJ6lVMnFeb5sZoobgMs1SYtITmn8mh7FP8sQv2Gpt6BRuYevEpbqNHFHJlsAJ+gduxlo+MOeFUOaduM34cwDGr1nizMdIs1uqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.100) smtp.rcpttodomain=gmail.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bLfo2CjkEY7ylZLI3aWjhazVKEjuABE38FZq/bSGjbw=;
 b=SD/bc6ep6VzJflh/UzkkCOWdCcB05KrDa2xPt3UGyE/GBtaqamnmk7Ph4iDMAECTN0WE2ZrlXF1DGSF/sAu47xgZRqmII41rrEw+WsPf1s+q1ePExDjXycOvZxe6xXTFq8nubT7PPELgamxHhAYScZJ2hx/Q4Xzk9EtucZc1/iM=
Received: from MWHPR0201CA0045.namprd02.prod.outlook.com
 (2603:10b6:301:73::22) by BL0PR02MB4817.namprd02.prod.outlook.com
 (2603:10b6:208:52::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.18; Wed, 14 Aug
 2019 07:41:10 +0000
Received: from BL2NAM02FT016.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by MWHPR0201CA0045.outlook.office365.com
 (2603:10b6:301:73::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.16 via Frontend
 Transport; Wed, 14 Aug 2019 07:41:09 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 BL2NAM02FT016.mail.protection.outlook.com (10.152.77.171) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2157.15
 via Frontend Transport; Wed, 14 Aug 2019 07:41:09 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:34625
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hxnu8-0007cq-Lk; Wed, 14 Aug 2019 00:41:08 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1hxnu3-0004Vl-IR; Wed, 14 Aug 2019 00:41:03 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x7E7esxo026250; 
 Wed, 14 Aug 2019 00:40:54 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1hxntu-0004TJ-Ia; Wed, 14 Aug 2019 00:40:54 -0700
Subject: Re: [PATCH v2 0/2] ARM: zynq: smp improvements
To: Luis Araneda <luaraneda@gmail.com>, linux@armlinux.org.uk,
 michal.simek@xilinx.com
References: <20190808125243.31046-1-luaraneda@gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <3412069e-430a-5154-7cba-e11c237e6930@xilinx.com>
Date: Wed, 14 Aug 2019 09:40:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808125243.31046-1-luaraneda@gmail.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(2980300002)(199004)(189003)(65826007)(8936002)(305945005)(316002)(106002)(36386004)(446003)(426003)(336012)(31696002)(70586007)(2616005)(70206006)(44832011)(9786002)(11346002)(476003)(58126008)(230700001)(486006)(126002)(76176011)(81166006)(186003)(5660300002)(50466002)(229853002)(47776003)(81156014)(478600001)(4326008)(356004)(2486003)(23676004)(8676002)(26005)(4744005)(36756003)(52146003)(6246003)(31686004)(65806001)(63266004)(64126003)(65956001)(2906002)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4817; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; A:1; MX:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cb081787-1a6b-4994-b458-08d7208ac5e3
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BL0PR02MB4817; 
X-MS-TrafficTypeDiagnostic: BL0PR02MB4817:
X-Microsoft-Antispam-PRVS: <BL0PR02MB4817681CECE1CF531AE9CAADC6AD0@BL0PR02MB4817.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1265;
X-Forefront-PRVS: 01294F875B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: toReuA5k2m6mBWY6rBd+ewyhhuMCpAFFbOZ/cVQzgUnrQ51leWK6aicEMRhIrZWIhtakARdFrm/gohlr0565mRiXs7OP41DNKGeV0KCawYFXEY/OmtBtAGDU0GZ0lbme/zE9pE0lf+d91SmLMm/Q1lDX4mw9ys3mMrjGrj+3RiTS9Z5gZgdHf3WN2YrWk2XRwGaSNvCG/L/ciBhXKfuF+hmncfJ6FIXolVRpf/cK9WOVqFGyUoV6KGSCm9XpH6AGD+h3W3u2JqZm4dbVTphDrk4MC8vMeaIGXGRfx8H8QeBaBd4TuiOhkRefTpO7K0DNeI9eGhBK4rP9PhHgLam/yzjLC/yB9fS4slOynr1ZZfcgqXiGg7MS62WZt5kIqBX3LWt1breTPuZerpiB+QxY6npZh6PpO2p/8vRdH/+xTfM=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 07:41:09.2073 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cb081787-1a6b-4994-b458-08d7208ac5e3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4817
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_004112_495659_DF53141D 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.52 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08. 08. 19 14:52, Luis Araneda wrote:
> This series adds support for kernel compiled in Thumb mode
> and fixes a kernel panic on smp bring-up when FORTIFY_SOURCE
> is enabled.
> 
> The series started with the second patch as an RFC, and
> the first patch were suggested on the review to complement
> the fix.
> 
> The changes were run-tested on a Digilent Zybo Z7 board
> ---
> Changes:
> v1 -> v2:
> - Reword commit messages to include related commits
> - Add Fixes tag to relevant commits
> - Add Cc to stable to relevant commits
> 
> 
> Luis Araneda (2):
>   ARM: zynq: support smp in thumb mode
>   ARM: zynq: Use memcpy_toio instead of memcpy on smp bring-up
> 
>  arch/arm/mach-zynq/headsmp.S | 2 ++
>  arch/arm/mach-zynq/platsmp.c | 4 ++--
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 

Applied both.
M

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
