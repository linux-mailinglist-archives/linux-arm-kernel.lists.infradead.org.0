Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2431AA9BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 16:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRpVnGOict2h79tWEZsEROCXmq9gnDfl7IrZmVSxf98=; b=YtZRhvxmzrX58A
	LwtaLk3dFwRnbyShZsWsKNHSm1696L3pWZL2dk35JJtyTbsMrHuTa1yNS8OvLxI+2RaY3rxoANLzL
	To+oMOdv4FfcecPj5mXcZNoxJVTGIZaq5e1KKPvTOdD0/mCKvEcaxuvp7JwduXVdneoLota8COGQM
	gVcr7M7Aa6Imghh2AypL1WQ+3Lx+U4tDEur5EHus3HbDlbXUm7YACuT83gPola/81idF1MHYq6SkG
	BCwuMPLs2I3fCpd3yV40itgaqEEjyC6V5PRKQOoVVSLNtaJhlCtlDPzwFZJE0Zo5zV5wr3cVzGQe2
	IPFTofNn/sm9Kt+cFGTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOiuQ-0001mT-2p; Wed, 15 Apr 2020 14:20:58 +0000
Received: from mail-eopbgr750054.outbound.protection.outlook.com
 ([40.107.75.54] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOiuJ-0001lN-CO
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 14:20:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m/aDA3TNUudg7b1hiIgupytxTV1iDjIaBHZEV72SWeq+9V0DL/aB/W/ggMgwkKTNWQ93scf3cY2uVskSGlkwd8sAKPq7jHBRpKc4e9JgKnKe/ovl8pi1X7TPbWXAzBS9Vx4gtzEC9T1vl6Ziw7ES+VovWpUb/aW+GyON3ZETb4WHCRuWL4ROMuY8z91afH6jqYyE8PN1LTI1NKm/BCgvy2V/Tq/CdHo9zV5WzabgbnOL9y6vTcsAMa0fch8yYsVYCR9YCnHn954RnmcoWKIzqL99me3cOqDYiZwBmKHwB04i0GDFIr22Neyvd3pmOkB4gEjdpg6aEikTh4jsejk/JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FL+jzdl8rTh5LL7dq+s4TeX25tRK+uLwfWGt38KkSJg=;
 b=L+RH63z7bbQh2d66Zu1PTXD129HFOFn8z4VeubigzeNzrfbiaDVg6lBgG5Hs1hJGBUpR5gEhBMV2+DJVdd4j+eZ5dnE3ffW8SueOis8N1if1fTFZARd8WQYUDwMSzOnjpWtvf0/QWNnwBDFzTSc+y6CXigFve8TEy9L3CtZkMZsqMLpILLtwi/oxFgmPvBYIwGhYPNinkDYG8TgOn0z1DQnpvemtsP1fU1BaUULMRpqjrr4nFpBT+Opc06JduU90Q29YCu+boa1qwvrpjgaQLodHKbSPMTo0NNrV1NaoMlb2qMU5SM/BqTfho1TTwfA6w1FQv+frTd17MUdXbDUf/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FL+jzdl8rTh5LL7dq+s4TeX25tRK+uLwfWGt38KkSJg=;
 b=T/IbR7gKiQW0qVZEPUX+Z/4nXvI1hwZRVuQ9lmj91Ov7tBCWRXxDa4ghxQgWqZwOhsmsc8FaFidr+vWmAeik7erldPvaWFMSFEDBKwRs+s0xAricDLakDlBkG/1LYxMvyy3NARt3vGPKE7E/2lHBXvnkuKUMgWc96BFYUrMtPRk=
Received: from CY4PR1201CA0023.namprd12.prod.outlook.com
 (2603:10b6:910:16::33) by BL0PR02MB4804.namprd02.prod.outlook.com
 (2603:10b6:208:5f::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Wed, 15 Apr
 2020 14:20:49 +0000
Received: from CY1NAM02FT009.eop-nam02.prod.protection.outlook.com
 (2603:10b6:910:16:cafe::2a) by CY4PR1201CA0023.outlook.office365.com
 (2603:10b6:910:16::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Wed, 15 Apr 2020 14:20:49 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT009.mail.protection.outlook.com (10.152.75.12) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Wed, 15 Apr 2020 14:20:48
 +0000
Received: from [149.199.38.66] (port=51885 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jOitZ-0007H5-7J; Wed, 15 Apr 2020 07:20:05 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jOiuG-0004bP-Fr; Wed, 15 Apr 2020 07:20:48 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jOiuB-0004ZC-3K; Wed, 15 Apr 2020 07:20:43 -0700
Subject: Re: [PATCH v2] i2c: cadence: Added slave support
To: Wolfram Sang <wsa@the-dreams.de>, Radu Pirea <radu_nicolae.pirea@upb.ro>
References: <20200106104336.101987-1-radu_nicolae.pirea@upb.ro>
 <20200415125850.GD910@ninjato>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <d7bbb013-aba1-6623-f656-46b3f5689834@xilinx.com>
Date: Wed, 15 Apr 2020 16:20:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200415125850.GD910@ninjato>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(376002)(396003)(46966005)(2616005)(44832011)(356005)(47076004)(81156014)(336012)(31696002)(426003)(8936002)(81166007)(8676002)(4744005)(70206006)(478600001)(186003)(9786002)(82740400003)(70586007)(36756003)(316002)(26005)(5660300002)(107886003)(110136005)(31686004)(4326008)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e3ecc3fe-ddc2-4294-8560-08d7e14831ee
X-MS-TrafficTypeDiagnostic: BL0PR02MB4804:
X-Microsoft-Antispam-PRVS: <BL0PR02MB48046042AC69EBE82D6DC979C6DB0@BL0PR02MB4804.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 0374433C81
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: slt19jyWq6lm1eKpxfml/o371VMS1QpJgRxOsceFAyPFROwkbRoCs/HY9snkPNO3BG+veoEGFXrJlhqUT0JJYpwL1CJ+mKsdKZ+BNz85bivUSxh0nmnUD2zQ/x3hzzcY3dnHivbUlmrICwdpSyquD9saP41bElwZuJOQsb3bsJPecbwI87WwX7Q0fsEJRG8MAnPA2Gr3EazTFUEJHjL7qAlaHOsXF+Ibo9z4MbPq2Tb5zHo+6H0BbNdyZb+vwdIr034XwQg4q9TwSKQts4MbilTY9jNuK/rcjDjWL38ovZrTAvNIJukwoSFqfkpziCe/BxJXTcfZ5tTq/oU9Eq8Ka0ZXHLgTgPGubjuQIuch8kEBUmWhVJJV79yURV1s6RgCZlEmA7R8M4/bVDUT+YiMkfVpz3seSYuSXqrSdMAVRcErnOMXmU/+RT2biCkTCXNKO5JPEUNnkD21fkVFNDnsMEC6wIqOoI+jkZFYkgkyVrWh7nqBDt2EzPzfJW/lOttxmXRO3OkufG/J+j1Tkq2+4g==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 14:20:48.7724 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e3ecc3fe-ddc2-4294-8560-08d7e14831ee
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4804
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_072051_422533_51FFE4B0 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.54 listed in wl.mailspike.net]
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
Cc: Chirag Parekh <chirag.parekh@xilinx.com>, shubhrajyoti.datta@gmail.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15. 04. 20 14:58, Wolfram Sang wrote:
> On Mon, Jan 06, 2020 at 12:43:36PM +0200, Radu Pirea wrote:
>> Added support for I2C slave functionality
>>
>> Signed-off-by: Chirag Parekh <chirag.parekh@xilinx.com>
>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>> Signed-off-by: Radu Pirea <radu_nicolae.pirea@upb.ro>
> 
> Michal, do you want a second look or is your SoB good as-is?

It should be good to go.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
