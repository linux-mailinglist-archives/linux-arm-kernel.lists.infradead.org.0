Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9D4151A0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 12:42:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJxvMX144o6gbnqfTOR4/OCd/0Rv4VZtaPXORDHLV9M=; b=ljcPp5au+WEFmm
	zr8WJMbf0RUYj54oFKYYh3qAX5LgLfyS7e3VarnmQ4+aitqMqwScy3VRj3ysXMpgoPVAOlPHdcqSY
	DxhGWB6yWvNxvlz8+gcQAanoeiCzjlEwxSnVA82mUAngX/HoQMBkZ+RoX37Dki9ZvSBHlraz6mWqB
	pulVjAhfBGCAJo4QP98o+GCAqMQEFY1kz1uA0vXfU8LQEUIP/igzACBBhxd5OXlJb+q6zWuUdlnEJ
	UCxqwbCNe0hQcpJtadv0GZnNfQqaHCA4DapNChH5Mh6fSWZgWw7eO7YK8ytC4kOlFw/AwVKhRG4IO
	wssOrNfBc5tw+yiqpE9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iywb7-0002qN-Bv; Tue, 04 Feb 2020 11:42:29 +0000
Received: from mail-mw2nam10on2044.outbound.protection.outlook.com
 ([40.107.94.44] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iywb0-0002q3-In
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 11:42:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G8Ba+SaHTWikRDYm8eKaEfkxUcvTDec3P8j2nBC7HI5xzWvswUXiVUz3g7sCtum9cWhhcl7uLn0hId/zcHaJN+ytatXk/rNmnOOdOrT9QAU4ADklYA6pEKkMuJyn9h36FME7dihmZNC3NrrTlsG7h+iQC4300JQmoaaFsBEJfjMNylMb1NJKbjDD4NCkrerlrMvP1w55USVFt5k3iP2ea+hRvOHrlVuaTQhCM7jjVXFELdLNETaRn3Yy1bgC7vSiWZcKyyF4Qz9Jva8VBJc6J+nBORMf5j+BrP3RJGN7n1SXoYBkz1EsRKsG+dfyHumP2wWvO2gZMsjEmeNCk1JLqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/cS22fnWaVy8Pq1+U8ogdSiAxzLC4chXId3BGsU8CwM=;
 b=Tia7+okaFfts6KZtKs03bafhRm8U1T4INtBdbvuqH9Xe4Hxasw0R77OUQzGZDW8JcYbsUF78b82I54kIPSUr2s1Ok5Sn8e833Bwd4T+yEqYTJ6B8MscjoZsavn2ZlOL3frxSmYUAhnwQ2HpFbWusdhbECnS9xkzj7RgZbGHV7q0C8f9/zPUgCtJcSz466Czl8qKUodC7MFq3gBehNa1RkZt7dOLa/OIj6E8cG9m5MNbESx0NuhmhV029V6W3l1KnfZeZuu8OJvGgvs11flCO3WnQM36wEveAUqOSujrvRwBaQSewhsGDgNZIDskzBMhC8KHXAQ+yT3ZI3AIUwLPZ+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/cS22fnWaVy8Pq1+U8ogdSiAxzLC4chXId3BGsU8CwM=;
 b=E3SJUBhxyT5P6ynUNjgTxesFl7M2mu0NutdrSQsHZ4GJr7RvMiA9tX8hgyjfHwDioMkfkky72ao5WuGALEg2SyEDyjSjsOQKz4kSJot38NZFlqZAX6yceiaS7JhYoWGgwEDy1lhAsaEXLg+9P2evm9LIa7l2qaCvds3IVawgmpg=
Received: from CY4PR02CA0047.namprd02.prod.outlook.com (2603:10b6:903:117::33)
 by SN4PR0201MB3597.namprd02.prod.outlook.com (2603:10b6:803:45::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.32; Tue, 4 Feb
 2020 11:42:19 +0000
Received: from BL2NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::208) by CY4PR02CA0047.outlook.office365.com
 (2603:10b6:903:117::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.30 via Frontend
 Transport; Tue, 4 Feb 2020 11:42:19 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT047.mail.protection.outlook.com (10.152.77.9) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2686.25
 via Frontend Transport; Tue, 4 Feb 2020 11:42:18 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iywaw-0000V0-6t; Tue, 04 Feb 2020 03:42:18 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iywar-0008T6-31; Tue, 04 Feb 2020 03:42:13 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iywaj-0008Nh-H4; Tue, 04 Feb 2020 03:42:05 -0800
Subject: Re: [PATCH 4/4] sdhci: arasan: Remove quirk for broken base clock
To: Adrian Hunter <adrian.hunter@intel.com>,
 Manish Narani <manish.narani@xilinx.com>, michal.simek@xilinx.com,
 ulf.hansson@linaro.org, jolly.shah@xilinx.com, rajan.vaja@xilinx.com,
 nava.manne@xilinx.com, tejas.patel@xilinx.com
References: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
 <1579602095-30060-5-git-send-email-manish.narani@xilinx.com>
 <99fd3904-37fa-f070-f7ac-e1dcb5bf43de@intel.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <0d7e7a44-91dc-baef-5dcf-4ff683e98581@xilinx.com>
Date: Tue, 4 Feb 2020 12:42:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <99fd3904-37fa-f070-f7ac-e1dcb5bf43de@intel.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(39860400002)(136003)(189003)(199004)(6636002)(26005)(44832011)(426003)(5660300002)(2616005)(31686004)(8936002)(8676002)(110136005)(316002)(81166006)(81156014)(31696002)(356004)(6666004)(70586007)(70206006)(9786002)(4744005)(336012)(53546011)(186003)(478600001)(36756003)(2906002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN4PR0201MB3597; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ec9219d4-353f-4cd4-6c09-08d7a9674a4d
X-MS-TrafficTypeDiagnostic: SN4PR0201MB3597:
X-Microsoft-Antispam-PRVS: <SN4PR0201MB35975CB8BDD94906FD7A4D60C6030@SN4PR0201MB3597.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 03030B9493
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AtZ3l6fEs1pW/zp+IIuEkwLS6ssCW3p7bBtJq5TUNfXkvrQppKDlIG3xzV7ggEhP3Icy5pZ90gWhR5mjwagRKmmkPnvhukiDv/sXAWgu975b9UVRVpTbtn59IY5Xh+4YjxJow21U+zT1ovEA+AcTxqohX/sIOj6CPFy5QghuUMJdUjLwDbat1Nhn4t5VxB6w8fo3eZWDcmtSKO54vQWk6V6Lel7/PD9TlfJANMDFtfOJp5rMrXarxpNs95uKJodXAaL2uBA1HEit0PbVFlwmQoJWJ0v41RJxJGDpwKr0JqK7Gv3l51A7ZU1nHeRYTijY8PX8pau2n0KMBwGXPNnl8ZMaKIqC22b8r0JwcLFakF+vegfin5oK2gs8mK2krW0WTW6dvEBt585g5HM7xwEmrfXWjrjBKchopMBdmJHBqDScFkeumatV1UzNPzIsIkfm
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 11:42:18.7756 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ec9219d4-353f-4cd4-6c09-08d7a9674a4d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0201MB3597
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_034222_618774_7AEFC6C9 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.44 listed in list.dnswl.org]
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
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03. 02. 20 12:31, Adrian Hunter wrote:
> On 21/01/20 12:21 pm, Manish Narani wrote:
>> This patch removes quirk which indicates a broken base clock. This was
>> making the kernel report wrong base clock of ~187MHz instead of 200MHz
>> even as the measurement on the hardware was showing 200MHz.
>>
>> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
>> State: pending
> 
> Huh?

It shouldn't be here. It is internal patch labeling.
Manish: Please send v2 with all lines you got and remove this above.

> 
> Otherwise:
> 
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>

These patches requires firmware changes. Feel free to take it directly
via your tree. If you want me to take it via arm-soc tree please let me
know.

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
