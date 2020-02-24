Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602C316A436
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 11:44:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leUO/W3XPjwTidSVKNldMPiqfbOVmDbVDKxA1osOENs=; b=Gb9DwlI/nTJ6wS
	maxQ8tXBoCqhjYKhWZ3hgwy6hHiA8JQANiGG3ErYEqQIQXawgWOZC/R9nP2arwnmFlUoxIGIOVZwv
	wLCUG+eRVzKuAd/NKztI4LMoyNkJOZ28QibEXyUqgmHPPJAH+5/am1w1A+HKYCBU0VLGjpOUhfbXJ
	VRrhDJGimYifX9EZ2MaGBcYpfQpem/QlzjmVpLFr5+fx4SBeX2lcw61Pt8RkolslpwcsXhECzX2jf
	3/zY62OKSauiDoFkRFroKMrauM+vId7XaYkgzfXblbKetvgcXbEYuQyFKZB1DAsLFKisj1foVM6Vz
	enY51VIx6qWnTOQ7u74A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6BDY-0001p7-Oy; Mon, 24 Feb 2020 10:44:04 +0000
Received: from mail-co1nam11on2069.outbound.protection.outlook.com
 ([40.107.220.69] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6BDP-0001oM-Cf
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 10:43:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=InIcyf/f3h0uKiAwqciaV8WgDFr2Ah9dwUedCSA1fRKEVlLc4vIUGICxEqnfujncwUgUGacLDp92cTg4q4taRqylf/cBmcsruoyg8Dx8WgYtOeZjY2X25sEnqKfsFknL2Wokyq9du/NyXnIeXy2I+DNci34asZc7LaQJ7zyz9j2/kH3Ec3LwvRUo7fNFZuJKRzvS1/ZmZ+ULRw8/1Aq65VDL51XoTvYjUN0OtfZTOwY4XkSD4xtBvgnHlCfojg7DiZRHGngQptoBmnl4t4BUlv26dddm6yYAGaR8wZ8emu3v/lAlj6oUFC8meewqXLnwKM+24SucBycXlPrg2D9wPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xLyHCXlw0vEstX3sZEb/nCTTlRO94eC6l+z+fGiaCW0=;
 b=eTTovClw+luNM+uCbMEYsstcl+/3bKC9kQ0BOsWvnLHCd0SmYznp14OzKtLpaUjiBYX/5UGB/vQdeIvSIc+HCci4vYDc1YoIVm8fZSeRH0/bi7El57Fj8iXU1uekj+F9hRgC7XoFRufVjayzTZ/TLm6TZmdgWXzfRvdArBBkkWVhUCRUjJtfqhM/Et52Bc2bjiePiLl54HuMX2kzO/RPgchpGXJoYudJimuvATM/aPhWIuYQ6GvYbw4V9Yqd8++pCY8AAX0tR98IPwOeAs3szI0pvFZe/evd7VLAWB4pq5gUeMgDcugV0Wq294PcTIXbZs9eMT6LV+2yar4ewTwL2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xLyHCXlw0vEstX3sZEb/nCTTlRO94eC6l+z+fGiaCW0=;
 b=jkBqrT/S+P25tL6vf0XOF2htpbKEigWSq5SdwApU7vT8bR+ACj8QoZpES6TB2TMEO5aUcfbFmLbivR3Nv28KV06hEp/pKPDpputxcXC2dMCECXV3ETrdo5T37ABP407n9IbldT3XvfRpLvWlNkMS/6mD4AwsPi/WEwI6jT+KIuM=
Received: from SN4PR0201CA0011.namprd02.prod.outlook.com
 (2603:10b6:803:2b::21) by DM6PR02MB4186.namprd02.prod.outlook.com
 (2603:10b6:5:9a::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Mon, 24 Feb
 2020 10:43:52 +0000
Received: from CY1NAM02FT038.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::200) by SN4PR0201CA0011.outlook.office365.com
 (2603:10b6:803:2b::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.17 via Frontend
 Transport; Mon, 24 Feb 2020 10:43:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT038.mail.protection.outlook.com (10.152.74.217) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Mon, 24 Feb 2020 10:43:51 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j6BDL-0004JU-FA; Mon, 24 Feb 2020 02:43:51 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j6BDG-0002hQ-C0; Mon, 24 Feb 2020 02:43:46 -0800
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1j6BDC-0002fe-29; Mon, 24 Feb 2020 02:43:42 -0800
Subject: Re: [PATCH 2/2] arch: arm64: xilinx: Make zynqmp_firmware driver
 optional
To: Jolly Shah <jolly.shah@xilinx.com>, ard.biesheuvel@linaro.org,
 mingo@kernel.org, gregkh@linuxfoundation.org, matt@codeblueprint.co.uk,
 sudeep.holla@arm.com, hkallweit1@gmail.com, keescook@chromium.org,
 dmitry.torokhov@gmail.com, michal.simek@xilinx.com
References: <1578596764-29351-1-git-send-email-jolly.shah@xilinx.com>
 <1578596764-29351-3-git-send-email-jolly.shah@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <e17afc7e-c070-6134-29cb-9fa7b855bf96@xilinx.com>
Date: Mon, 24 Feb 2020 11:43:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1578596764-29351-3-git-send-email-jolly.shah@xilinx.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(189003)(199004)(336012)(186003)(6666004)(5660300002)(31696002)(70586007)(7416002)(70206006)(8936002)(356004)(4326008)(36756003)(107886003)(31686004)(26005)(316002)(8676002)(2616005)(2906002)(478600001)(44832011)(81156014)(81166006)(9786002)(426003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4186; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 42b4c8c4-2eca-4577-5e9c-08d7b9167047
X-MS-TrafficTypeDiagnostic: DM6PR02MB4186:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4186B7D7F569CFCA0D809E08C6EC0@DM6PR02MB4186.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 032334F434
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qcqv0Z6+k8Nm7GPxjYZhXGXbs91/G9cyFTVoxhw+aXrmgFuMSJl7Am0/Yl0djdPzg3FUOZ9Q30QdHgF5gz4BuoGGn/1lCc1DOSMH1Dm3giJiBaYdD/xivPp7mubItoeQ2fMn4pNEvUcKR4pz6KDol7/nRs3BZHn/o3BAcTIfMZEorIppLTGMl0tVcOunHWyqgi0akryjAk1VAPdN8nrKbSHcK+/Cxxf7l0H/ZLfslLGqoTahnsyV6i9A7YkJA9ACgiZX9GoNWRNqonVDZApeYZ0g3hGFBsdEnrRkkqQV9up0CFeur9CgwQlMK1MQzxWybLIUHoy2YLGNQvOybs1bWxLImqmEPr8HQxPQmNA2rBOdySPALhcqB9z3ksUgoh3OXCMdxsQ8vJJhHXW/Hca6Qo+IN4gRdkgdc3c3Nd9F8vBC6OJBTsxQPIDFFZo4O8G54fwolw5VkxxITlASaU95PeGijYKRa5/xKIXxS1grPBwRktRU5YrkQv2r7ddu9JOF
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 10:43:51.9078 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 42b4c8c4-2eca-4577-5e9c-08d7b9167047
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4186
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_024355_433680_63737A9B 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.69 listed in wl.mailspike.net]
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
> Zynqmp firmware driver requires firmware to be present in system.
> Zynqmp firmware driver will crash if firmware is not present in system.
> For example single arch QEMU, may not have firmware, with such setup
> Linux booting fails.


I think that moving it to firmware Kconfig is good solution. What it is
wrong is that description above where I agree with Sudeep.
It means.
1. User should have option to disable zynqmp firmware driver which is
what this patch allows. It means if someone decides to use different
firmware mechanism it can do it directly by simply y/n option.

2. Autodetection of PMUFW presence is another feature which could be
implemented to have this driver enabled but different mechanism can be
used.

3. Doing this because of missing feature in QEMU is IMHO wrong. QEMU
should be fixed and then you don't have any issue if this should be used
or not.

Just a summary. Remove that QEMU example from commit message and talk to
Edgar to fix single QEMU solution to have that regs mapped all the time.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
