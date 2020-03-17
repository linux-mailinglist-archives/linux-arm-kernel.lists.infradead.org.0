Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87439188071
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 12:10:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdtKeUNPuOy0mkY8aX54T+q4/TbdVAsMWcND4n/YRZY=; b=quCP3LdtKnyX5K
	kQUNGRyOqLBlDiOdirx0kPDkrUHEeC3WLXS/W6jee0h3ycTth9wOGhMvk65AZlEH/gNwXzFYfmZ3i
	bf3WhmTgoPajwlNRxUcj4xa5Q7jYB4ykT7jDUgfyRwngwzcyQOBcHmIwqFqOVvOMgefUq0iWVki2A
	tfWtnoGcgjJfCayFQzYSJQeEUI7TEgUY8PpTgSfwCtV3i0m8Ypt/15Ra1G5wKVun1MnJdUB4z3OUA
	LvOwmd+Kw8hkOjGyaRYsocSqbAIIikfFc2SP9ecNrxcRoHtlsK6anGkmz1fuu5hSrfBlCrrUGM5oG
	/D1aiwzS0YeeF2W7u3KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEA6x-0001uj-6D; Tue, 17 Mar 2020 11:10:15 +0000
Received: from mail-dm6nam10on2067.outbound.protection.outlook.com
 ([40.107.93.67] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEA6M-0001b5-IL
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 11:09:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ln8PlCco+45iFOaxfPbN9kTOJ9AXUanoyf+RPioxPkGCmdyQsHO5W0Jpn3SRHZ9ArzoE5IkAV0D9nU07bEmw6qcWiHwTF+U+ubjV0vinRqpWcplzZviKMedgq/xW85SAObFd+vPh5aPvbEFraU+ZC2EXvWr0kTvite1IQDUyN1QUaYmgiIMq9RUmFvPP6gg0ZMnZWBB+Mzr8en9LSzdhB/2f0/2bAS4hGcvKKDNu2xSDHsRIq7nwvtx4vMAR8aG0f2d2EQ9PFWneGRrvcP6Ndgx/1ngEG4uyOBox1wiJy0Xb2iZ66rZNQBEadomz8AUU936U2WpXEtqmG5ywz9OYZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1hvnYKt2+dzi6ZWpoEQrcY6Tv9qZqYSwHdJyRMDYWo0=;
 b=BFFRf0GjPgNWLKqFokGKGL925HZAzBS/h5ZPK6hyA54wTRNQgdrQjkrf+Q+MAa5lxmp5L/hTWeivO1h0rfWFGPAqPm+fy/kQRQdCnkIP1jx+sNVtGD99FERZEMUyHDG/unAEjGvLD1Vw/G9TfkXLe3zZb6PsHzCkmuVDSeGSkoX8FK5TsUXXtya+xQCDxHwh0CV5ppWZyVAMU54FWFPG/gZ1XHhe23OsQshLfX5kLBUT8Mi9Hvg2yum+0UksCExyj1LstA1OHjqgVWzx10oc7DSU270nZDYyDizwSzbHR678T6a/ZDjgJwKxUYplywi8PSYo+m/PFqKI0eeCJIxP6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=pengutronix.de smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1hvnYKt2+dzi6ZWpoEQrcY6Tv9qZqYSwHdJyRMDYWo0=;
 b=orMdNEEhfhP+43Dpi1nf3jBYF/l1kr0r0TzVMcSraW83PEji/vKrsyJvoKp4BctMohGdTkSr6Gg0RSvaxLwmJ7+ORS2MQjmYh6YNibTagOeG8xzIVkNIndts6+ddZc13rAaYFBJxhhAYP6FzsJu3yR2dNRFCUEBkt9eTmUASrbQ=
Received: from SN2PR01CA0042.prod.exchangelabs.com (2603:10b6:804:2::52) by
 BYAPR02MB5957.namprd02.prod.outlook.com (2603:10b6:a03:122::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.22; Tue, 17 Mar
 2020 11:09:34 +0000
Received: from SN1NAM02FT060.eop-nam02.prod.protection.outlook.com
 (2603:10b6:804:2:cafe::72) by SN2PR01CA0042.outlook.office365.com
 (2603:10b6:804:2::52) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21 via Frontend
 Transport; Tue, 17 Mar 2020 11:09:33 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT060.mail.protection.outlook.com (10.152.72.192) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Tue, 17 Mar 2020 11:09:32 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jEA6F-0001ac-VX; Tue, 17 Mar 2020 04:09:31 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jEA6A-0005Yl-SF; Tue, 17 Mar 2020 04:09:26 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 02HB9Nvv030310; 
 Tue, 17 Mar 2020 04:09:24 -0700
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jEA67-0005YE-MG; Tue, 17 Mar 2020 04:09:23 -0700
Subject: Re: [PATCH 0/6] soc: xilinx: vcu: provide interfaces for other drivers
To: Michael Tretter <m.tretter@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20200317094115.15896-1-m.tretter@pengutronix.de>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <94a11283-bf63-d6b0-e7ed-7337d9c3df52@xilinx.com>
Date: Tue, 17 Mar 2020 12:09:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200317094115.15896-1-m.tretter@pengutronix.de>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(376002)(199004)(46966005)(9786002)(316002)(356004)(31696002)(8936002)(81166006)(107886003)(5660300002)(8676002)(81156014)(4326008)(36756003)(2906002)(70586007)(70206006)(26005)(54906003)(186003)(47076004)(44832011)(31686004)(336012)(426003)(2616005)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5957; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fb09dfea-d275-450d-73b3-08d7ca63ab8f
X-MS-TrafficTypeDiagnostic: BYAPR02MB5957:
X-Microsoft-Antispam-PRVS: <BYAPR02MB595708E4D5E52A8111EB840AC6F60@BYAPR02MB5957.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0345CFD558
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Cfqvpi93E3Ki0PAkC3kg3pk2NRTKMIvd+EcwsbSSLXWEnF7o1D1WsSZuQ5X1d3yiRyZFxGBwPhC57Jgkz2CnqdYplvraaqwaV3wADJ586T5B/36iXZgTm9HbBDQYgvjnNdLywzaXZnGEQaIZ5d9mtuMOV9kTtncLGFgS+oSwfyg1RT0Ygdh1JQqWdB4NBlGECba8PKQS6u3M2KNBQt4NqFJMqtJIwGO41Fj+M4d0uNlQh/527dBYBanQUgxCkomcupkExUe8NP7ShxNPrIgL0A4QYraQhrd+vPaf88jwIELv0F3Vnenu2N1zz3otbEkPKLTy/ZxsoGHnrEsjJKk4Fuuz1dMxiclYVpAAfgShl8VNvJ6EI8E9BljKrGJeuFJQQRzuK6mJQ6IQMPs9Rx6ufnzRUMyKak0BZXlQAci5m+Y1QupGxkTbOtrj/AcwJw1vCD85VEyYTAnImp2xTvbnst+qlJKPnLpztPDDKnytx0Z5Iy8wjzRP8/naycBTUzJn
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 11:09:32.3611 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fb09dfea-d275-450d-73b3-08d7ca63ab8f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5957
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_040938_655070_E0C8EB1F 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.67 listed in list.dnswl.org]
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
Cc: Dhaval Shah <dshah@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, kernel@pengutronix.de,
 Rohit Visavalia <rohit.visavalia@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17. 03. 20 10:41, Michael Tretter wrote:
> Hello,
> 
> The Xilinx VCU is glue for integrating the Allegro DVT codec into the ZynqMP
> PL infrastructure. This glue is responsible for generating the clocks for the
> actual codec and provides registers for reading the codec configuration. Other
> drivers, e.g. the allegro-dvt driver, need to interact or at least read
> information from the xlnx_vcu driver.
> 
> Therefore, the xlnx_vcu driver should provide its clocks for other drivers and
> register the generated clocks in the clock tree. This allows other drivers to
> simply get the clock rate via the usual interface.
> 
> It is not so simple for the second register bank (called "logicoreip" in the
> original binding), because there are various registers for the encoder, the
> decoder and common stuff (see PG252, H.264/H.265 Video Codec Unit v1.2, p.
> 14). Therefore, I decided to extract a separate binding for this register
> bank, call it "xlnx,vcu-settings" and use a syscon interface that can be used
> by the xlnx_vcu driver and other drivers that need this information.
> 
> I'm not too happy with this solution, but I couldn't come up with a better
> solution without inventing a new interface, which I really don't want to do
> for that use case.
> 
> I kept the behavior of the xlnx_vcu driver backwards compatible, to avoid
> breaking systems that use device trees with the xlnx,vcu device tree node as
> generated by Vivado, but to be able to use the register bank from other
> drivers, you must use the new binding.
> 
> Michael
> 
> Michael Tretter (6):
>   soc: xilinx: vcu: drop useless success message
>   ARM: dts: define indexes for output clocks
>   soc: xilinx: vcu: implement clock provider for output clocks
>   dt-bindings: soc: xlnx: extract xlnx,vcu-settings to separate binding
>   soc: xilinx: vcu: use vcu-settings syscon registers
>   soc: xilinx: vcu: add missing register NUM_CORE
> 
>  .../soc/xilinx/xlnx,vcu-settings.yaml         |  45 +++++
>  .../bindings/soc/xilinx/xlnx,vcu.txt          |   9 +-
>  drivers/soc/xilinx/Kconfig                    |   3 +-
>  drivers/soc/xilinx/xlnx_vcu.c                 | 163 ++++++++++++------
>  include/dt-bindings/clock/xlnx-vcu.h          |  15 ++
>  include/linux/mfd/syscon/xlnx-vcu.h           |  39 +++++
>  6 files changed, 216 insertions(+), 58 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
>  create mode 100644 include/dt-bindings/clock/xlnx-vcu.h
>  create mode 100644 include/linux/mfd/syscon/xlnx-vcu.h
> 

Rohit: Please take a look at this series and also take a look at missing
pieces we have in soc vendor tree.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
