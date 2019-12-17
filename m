Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EE5122FCB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 16:10:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktCTLAwFfWJZbyYq2w50usPMHlR5qes1wdI8hNUvs3s=; b=Y+Be5PNgg53ipm
	QH89QH5/NvQHhmxozaD9VlzzD3VapCeNRVN/WFEO4DlB7gNP+92PjZHGHDysbrbINC+kgCXNMQ5Of
	fIblMq2v+kau2uSG2E4WRA1vV1PHmISv+p6Ms5WJznsUB9/0BeJLLzkL4I1RWtdhySwn/lEZjdtMh
	FSgF/LxygxF1EaAqSs3VtAwjz5M/ds3Ae4yiBv45tdv5BnnEfCfRb9ce/6F/GvwzuI6Gy4Ulc8Z4b
	sc4pYqKS+KYw8hCEGTDmKL0TsIJxEpWHavhDw6fjl6BlrLgFYhLpZMlqSZyduthDCS85/zrul+srl
	o9iQkKJO/ZacmLZ+d3vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihEUO-0008Fy-Ik; Tue, 17 Dec 2019 15:10:20 +0000
Received: from mail-bn8nam12on2058.outbound.protection.outlook.com
 ([40.107.237.58] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihEUE-0007tu-PL
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 15:10:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y/8O/Pg1WUfidmmlyh2Fl29zboEg8LY2zqemvv55gNpg1XR/jCcqTpIwKAQZvo6JUZCmIjoQEc4VsW9/gIPmCo82Z9nvbO85eMBE/TmIqUIJz0dN0E2UUxK2l7ZuA2u+TLlKc6H/W9cpqWsIbDbcoSDYLq9c9NYahRmiFk2EUrKQHhiVZ4grMD9e7nX4/zUnLkGNRKrDJzDiWrNFuzZR+MSXRM25jgrD83VBWh6zWTNDHC/jwAPBb7a2kHPJ9kqyZK+Qp36H8Hsw62BpURbNNx1E/13AxCweuO4MRftWONRPFGbWLovo3AHowT752WO/GWKXfpYP2ekm7zU43AYsjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nnxs+AqOKWiciRH6hd4oTxx7mhTYdlElqpx3JVVf670=;
 b=e0Tp6lMCOaG2T9bFSI5qnW5QtwDd69WSmuOMBuFXOQxL7tjOIA5/Oyqmx57NCwaaAtGtloWAshQJxDqZAIPJRsE3REbonwegyV/iOT1am3XYIrn5bdkhlHlyZMI6ZNcXU/LoXdZguT8FC0D4APL1VuuzL5s6Tojy49suCxOzF22fXkZNL29zdO3c08DlIgjXx6O27ZcoCIJbpKjxyaX8wOwJpO2oSXrY1b+5Yg7a1z+fweS7f7GRpHXXRasCMfLaYlyd18pKWJmcjGtsH6wR02zJzHPqlkeIkWJ6uNtsXpX47EGm0QBDaF5lfEYMbK2dU93dSUcthgkd9Hn3vVar6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nnxs+AqOKWiciRH6hd4oTxx7mhTYdlElqpx3JVVf670=;
 b=fTrln1VxlkToffk70hwgMOv3xldI9rQlMEKL+HBOOk5ohLlE2Zg7SlASIhhjVtFjMnwXCjOfUXokdxwgPUkfLAZv34fhCcRD6VD9dnlpWgudAcmEOW6cqbsrQS5IVt7QuJaPlZvP7KjiD3nlTcu2W1G5ToYN0F0mYy90RKvTD7s=
Received: from CY4PR01CA0021.prod.exchangelabs.com (2603:10b6:903:1f::31) by
 BYAPR02MB5480.namprd02.prod.outlook.com (2603:10b6:a03:9a::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Tue, 17 Dec 2019 15:10:04 +0000
Received: from CY1NAM02FT030.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:1f:cafe::b8) by CY4PR01CA0021.outlook.office365.com
 (2603:10b6:903:1f::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14 via Frontend
 Transport; Tue, 17 Dec 2019 15:10:04 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT030.mail.protection.outlook.com (10.152.75.163) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2538.14
 via Frontend Transport; Tue, 17 Dec 2019 15:10:03 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ihEU7-0000xT-BT; Tue, 17 Dec 2019 07:10:03 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1ihEU2-0004H5-86; Tue, 17 Dec 2019 07:09:58 -0800
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBHF9uXI000328; 
 Tue, 17 Dec 2019 07:09:56 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1ihETz-0004Gq-PJ; Tue, 17 Dec 2019 07:09:55 -0800
Subject: Re: [PATCH] clocksource/drivers: Fix error handling in
 ttc_setup_clocksource
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Navid Emamdoost <navid.emamdoost@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>
References: <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
 <20191023044737.2824-1-navid.emamdoost@gmail.com>
 <CAEkB2ETvi=Zryh+3UnSddrprnB+MzSObAbsms+6LHHLuiRwZjw@mail.gmail.com>
 <26da3a6b-60f3-d09b-6eff-7a3db8234d64@linaro.org>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <ff7aa6a0-3cfd-dab3-f187-7b93131378db@xilinx.com>
Date: Tue, 17 Dec 2019 16:09:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <26da3a6b-60f3-d09b-6eff-7a3db8234d64@linaro.org>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(39860400002)(199004)(189003)(44832011)(2616005)(70206006)(70586007)(2906002)(5660300002)(4744005)(9786002)(336012)(356004)(426003)(186003)(31686004)(36756003)(53546011)(478600001)(26005)(8936002)(31696002)(316002)(110136005)(54906003)(4326008)(81166006)(81156014)(8676002)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5480; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6c81bdcc-e28f-4972-ed79-08d7830331c5
X-MS-TrafficTypeDiagnostic: BYAPR02MB5480:
X-Microsoft-Antispam-PRVS: <BYAPR02MB54800BCD6882887FA8369AB5C6500@BYAPR02MB5480.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 02543CD7CD
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qxknuBnoPeiI4gCj9QupBEpAcXuQJ5+Yr4p3bWoacz4J+WpTjQJS61CCmEhNrD7Lg/Kb1CUaFCpxPoREq+dJnN/V/AYrturc4jY0v4R2vwBTkqBM8sObq3FCznc/uOxYfAUbDABuguedX1Q68cfP08RDyIlMY88Y2X3WWykNAn2QXcThOQy62mzkBUeozF8F0Iu16uR3ignJO8YB/0lLu+vnkrwJ13SvCTSiZj8uWwDPevuZ+HhYEjdP4xiOUrSUOt8YrgSl5ImDgR8xmeSsxy/xeTG5WBJIrk+3gJULh+EZ/nUGKdJhGd/FEc7fxobssRYR8eRuBQCsN/qIar+fW98ywzc8uKsU+xJ/oYZSHq7Jm91vZhXf4Z+6rfXkPDj5XeOdWAsQGnK2K+q5hXhGoluDx4B1x64SSdL/0SqD7EQjV6WZZymJxwZjtUKN+/PokI+pk5c9p4YK/Ro/aCGnyJIxphc5W8PnmcW3Hj00kuku413xWQKvd2BWgGnxQW+u
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2019 15:10:03.8109 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c81bdcc-e28f-4972-ed79-08d7830331c5
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5480
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_071010_823219_743A61B0 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.58 listed in list.dnswl.org]
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Navid Emamdoost <emamd001@umn.edu>,
 LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16. 12. 19 14:41, Daniel Lezcano wrote:
> 
> Hi Navid,
> 
> On 14/12/2019 23:54, Navid Emamdoost wrote:
>> Would you review this patch, please?
> 
> please fix the version number, send without in-reply-to.
> 
> Do the same for the other patch:
> 
> clocksource/drivers: Fix memory leak in ttc_setup_clockevent
> 
> It is a bit confuse what patch is ok or not.

+1 on this. And patch looks good to me but as I said before the same
changes should be done also in ttc_setup_clockevent. It means v2 with
these two things together is the best way to go.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
