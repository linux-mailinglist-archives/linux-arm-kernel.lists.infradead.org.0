Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1338E1E073A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 08:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zR9FyzKseU/Wd0BIyJ+dmF4SEfj3lGfxBR8MAjALft8=; b=mPfBBN98crfVYp
	MDwYm9HTYrSEChGlE4yiskdnWAgTBef2gHE8rh5eHNycmtTfJsFdNvhk/hANqq9fp8LihxZRQCPXB
	NiPOQRsXwFFMd7jpWFAkOuTPlyEBOP9qOBRRQI7rg3N5EMmkV0b+SQPgJPP5/H4GZgECTcf9FNG1O
	fsvW3zM0o4t2gXdGxIADX/s4PJduhyVa28UAwgiaDfvYVsL2KW71ppM59IMPSN27o7u6Jzg/9F43Q
	7RO+PrxogmhkygdQkzcGUV4Uxe9HQx1FTn23y2hxI69I6o3LghctrF78ALwmnvgrFpwPbNQm59LU3
	hWWPE+cmOQYs8NpWfWvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd6rQ-0004MG-VB; Mon, 25 May 2020 06:45:20 +0000
Received: from mail-eopbgr760077.outbound.protection.outlook.com
 ([40.107.76.77] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd6r4-0004Ky-5P
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 06:44:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aRL117bu27YJidwGXnhPCeUyxBWCWsChcHV6JxToDk6csOXbSHnnDWfoKUtM1MRN5h6JtCAgdEaQSO6vzTK9UU1Fgf9hqSeM5fAiTnMjIInv8/K/muM3PYJvhvLSBXQAPi+RjRVoMuCM53vGd359p/wqJb/VbAsMAp1nFjER5GZNmOdopoOelmaiO+5MgA8W5KZeiXYeJCy1mwxtcBmoakkoJCTPD6nKblHRmg+iop9v6mYPNEfr8AE9PTQCnuBqa4K6TIdL1saQ49ZI6GiupCHZlMl67EGWH4iJAmIcGpceJGFOKktrDQand5T8rQ8EA9/2mnxXMUsVFDHNjzP9hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RAcSx7O8+89HmzhAJ8rABfIEy8zJ5prhPISvQZykXQw=;
 b=d8vxKa6yCEEnM1Ai17bcZj60LQt3A4tFpom2d7sE8n2h8BwPGaxr5UBmed5N2UsxdYQ3R3hCnRcSGsQ1QSmdSBuWkyJk9gyq3bJr6Uc/fqkACr+vgZo7Lz9Lwv4pjEmR9Onhuuhum/KmIs1P9bPmlVPUw17w/l09RzTO7oSsfOUpdSGFUQdb5nIZuTFKex5Nye7uJxTn2XHa8Lwc8+MJQOyaKuz+5dgAnZytqgwCkOb6cq7pOjqbmNihhNudQ0YSDL/Qq9w4olzGeo3cvmDBnfFQtdKW8/JIUSgGTy1qN/1H1wV4yvmMO9q7PAf/SrUrcJ6HQumtitDilcq9Xkqhdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RAcSx7O8+89HmzhAJ8rABfIEy8zJ5prhPISvQZykXQw=;
 b=fon9mJXj0f+0zQJw0SLNKA/+Aa8wtkOth+B+0p62LuezMYZNKO1ZdP2goEsFxCctndMTMNN2w94wlq4Wk1V6OEaesiux6Lr7gySEq/1/Kcj5DxEEBFOZ3YMghJqiWpHDAxCP1/xUQ9HN8GT1h6zdsZbXy2maVmDjuDlyxooe0V8=
Received: from CY4PR2201CA0024.namprd22.prod.outlook.com
 (2603:10b6:910:5f::34) by SN4PR0201MB3472.namprd02.prod.outlook.com
 (2603:10b6:803:48::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Mon, 25 May
 2020 06:44:56 +0000
Received: from CY1NAM02FT062.eop-nam02.prod.protection.outlook.com
 (2603:10b6:910:5f:cafe::e0) by CY4PR2201CA0024.outlook.office365.com
 (2603:10b6:910:5f::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Mon, 25 May 2020 06:44:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT062.mail.protection.outlook.com (10.152.75.60) with Microsoft SMTP
 Server id 15.20.3021.23 via Frontend Transport; Mon, 25 May 2020 06:44:56
 +0000
Received: from [149.199.38.66] (port=54642 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jd6qU-0003lc-Kf; Sun, 24 May 2020 23:44:22 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jd6r1-0006OS-QH; Sun, 24 May 2020 23:44:55 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 04P6iniX012453; 
 Sun, 24 May 2020 23:44:49 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jd6qv-0006OA-41; Sun, 24 May 2020 23:44:49 -0700
Subject: Re: [PATCH 15/15] PCI: xilinx: Use pci_host_probe() to register host
To: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200522234832.954484-1-robh@kernel.org>
 <20200522234832.954484-16-robh@kernel.org>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <c037bebc-2a86-0064-25e8-6983258291b8@xilinx.com>
Date: Mon, 25 May 2020 08:44:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200522234832.954484-16-robh@kernel.org>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(376002)(136003)(39850400004)(346002)(396003)(46966005)(54906003)(70206006)(70586007)(107886003)(478600001)(4326008)(8936002)(8676002)(47076004)(110136005)(316002)(31686004)(82740400003)(2616005)(2906002)(356005)(31696002)(9786002)(81166007)(336012)(6666004)(44832011)(26005)(36756003)(82310400002)(426003)(5660300002)(186003)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 93516d4c-8a37-4cc5-3c31-08d8007722fb
X-MS-TrafficTypeDiagnostic: SN4PR0201MB3472:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <SN4PR0201MB347297BCF6A5402D46C1AC4AC6B30@SN4PR0201MB3472.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 0414DF926F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Na1N7f55aEK2Hza4eYNj6bvHHCBusWvq4JLrxml5lTHXMnkj3Vjx2E1PlG9EHGwlpUd90GSrAdOoNz9fC3yusXP9Xjwcu99OTHTmECTw8XwGrt2JZwVl6CND0uGH7Weis2G4rKlFtwJ7q5hq5VVak09oRVe5uZsKENuiIPA8C3UkzXhLiaJYgphw/M4RelP42mUoLAGOjLFkfTMhgyTOMLgLwiQTOG14ywoh1ALNWD8r+4cahXJPKODLBJyZoo/K2cJgRBxKsNm9VbjR+0Aj+YAk3om7meTsnfwEGYpRZL2B39cVvK/MjnOmr236JfiX4u7zkXiW/cI5p/WuYCCLeGdGvoBEF7v7uxOb8Mov+d/x0YQTbaIFQvueylO4W1URyYzfGhdtEtOYmJUROU0rQW3vYZUpqxpRcqGyUwftlgtrUdjaJ//1aU11s56BelzH
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2020 06:44:56.0843 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 93516d4c-8a37-4cc5-3c31-08d8007722fb
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0201MB3472
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_234458_209818_D28BD3DA 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.77 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.76.77 listed in wl.mailspike.net]
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Bharat Kumar Gogada <bharatku@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23. 05. 20 1:48, Rob Herring wrote:
> The xilinx host driver does the same host registration and bus scanning
> calls as pci_host_probe, so let's use it instead.
> 
> The only difference is pci_assign_unassigned_bus_resources() was called
> instead of pci_bus_size_bridges() and pci_bus_assign_resources(). This
> should be the same.
> 
> Cc: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/pci/controller/pcie-xilinx.c | 13 +------------
>  1 file changed, 1 insertion(+), 12 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-xilinx.c b/drivers/pci/controller/pcie-xilinx.c
> index 98e55297815b..05547497f391 100644
> --- a/drivers/pci/controller/pcie-xilinx.c
> +++ b/drivers/pci/controller/pcie-xilinx.c
> @@ -616,7 +616,6 @@ static int xilinx_pcie_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct xilinx_pcie_port *port;
> -	struct pci_bus *bus, *child;
>  	struct pci_host_bridge *bridge;
>  	int err;
>  
> @@ -663,17 +662,7 @@ static int xilinx_pcie_probe(struct platform_device *pdev)
>  	xilinx_pcie_msi_chip.dev = dev;
>  	bridge->msi = &xilinx_pcie_msi_chip;
>  #endif
> -	err = pci_scan_root_bus_bridge(bridge);
> -	if (err < 0)
> -		return err;
> -
> -	bus = bridge->bus;
> -
> -	pci_assign_unassigned_bus_resources(bus);
> -	list_for_each_entry(child, &bus->children, node)
> -		pcie_bus_configure_settings(child);
> -	pci_bus_add_devices(bus);
> -	return 0;
> +	return pci_host_probe(bridge);
>  }
>  
>  static const struct of_device_id xilinx_pcie_of_match[] = {
> 


Bharat: Please review.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
