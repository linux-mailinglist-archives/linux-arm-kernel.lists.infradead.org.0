Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0641E810E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 16:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQSO58k9Y4Y5L8QY2XW/57PgeFKUCkbfyCGTa5o0dWo=; b=BWkAne0wV9WNCF
	4yPYc35u/5yCkbIVlgxnlvmSm8kyY/M967l4Cy6JF/YMYLd4kLDGXaSp5FkOJ5CeclE2sHk+N4S3l
	SSy0N3/LoZFbwbVG+bb5A+AhzRRqGCQANcRCQE+XFQYKLISNvHdI16jL/dmNTNlYD21X1dL0zTWlD
	IGZ/A3zyyK0LKYyQImA97GNEZw28KrPVtqscjgR/ufjnJV8FzVW+hDwBb/pNkP4dD89fz4zRNbN/Y
	zq8QNwaRWnxh0WjJN7JmNBoRS3Fws2lKUIbFAT61vbo8zJTaPkm1ZxuovNEfsBtY9HWMjILA/z/O7
	pCG8JYmjTXFEcADAkYkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegTB-0000Un-8d; Fri, 29 May 2020 14:58:49 +0000
Received: from mail-eopbgr00055.outbound.protection.outlook.com ([40.107.0.55]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegT0-0000UF-Ft
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 14:58:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tGFuXhr5k01jQrnm8x20Uxrfo293zxbJkC2MSelhQi8=;
 b=gCMnvlGCdufNYFw/z4y05TpDtZwPW8EN5oE651T+HxmXSidaNOlK5EqLuPdrOy4bJpIlpHwtOttjqGj/ESCoIsqNJn1fru8+1PHOoVe5er/ShuonYQiye5KfDezogoON6KMwrN8cAKOgo3OLnht12ZwYzvC/2tG8AGEjhd3IxA8=
Received: from AM6P193CA0056.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:8e::33)
 by AM6PR08MB3125.eurprd08.prod.outlook.com (2603:10a6:209:46::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Fri, 29 May
 2020 14:58:33 +0000
Received: from AM5EUR03FT047.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:8e:cafe::e6) by AM6P193CA0056.outlook.office365.com
 (2603:10a6:209:8e::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19 via Frontend
 Transport; Fri, 29 May 2020 14:58:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT047.mail.protection.outlook.com (10.152.16.197) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Fri, 29 May 2020 14:58:33 +0000
Received: ("Tessian outbound 952576a3272a:v57");
 Fri, 29 May 2020 14:58:33 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 764973754e6a1542
X-CR-MTA-TID: 64aa7808
Received: from d0089fa8eddc.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 AD825346-518B-43C2-8EA8-2881A86F301D.1; 
 Fri, 29 May 2020 14:58:27 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d0089fa8eddc.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 29 May 2020 14:58:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oGQpj73k2GapxSi9mlBZ9mDp0akDwhxlhGQYDdVsFwxhyDz9PnsEtiV20NlToW9wCBfaKrdWe4tnODO+QtHK6sHOZ6D4zaO6MJwXlpvGuf017PpOF2Wv68fIfil2HSJ4jV2RWBvmqYRNqoDxHMvMKZ73iCQ2XIQqhuej/NHUxFhuH3eQcLND9wsLhEzY+J2ZZDikYVgivSFpiEpIVEfhMh4KX2BV7apcLU2+LJjSGa2ninA1IiIUhLvYlOmbbcptZMH8FiS8YDaqADvG4jpqn44XxO2XflfhY7viv1APK7RGbd6PpjqZzjmfY9PEbLwVh3ZiJEhiWeDH++xRK+ci2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tGFuXhr5k01jQrnm8x20Uxrfo293zxbJkC2MSelhQi8=;
 b=LgDd3HA5ym55o+Q6nnHzRxzX87NgClfAsFA0dSsR3ndE2+I+EoMfUlFPKvU4lTaJ5wRaPuZ6EiVX2z+0sw0Mz3bIrmE7IOd9gslB46lIwILGwUOv5DNFOF3nvv26NHxln1YKRojdmpgS69aLtb1k+DNZStQAhDCRzqYGpuuOdZANV3KfMVXYS0Jpebb84bqoxDYHcS84HVSaubMkN4xVjGQFkGpMqgwgvB3oX6TvtFRT1KOldDdE8vd1Ojf3Cho1NDmNwgJ7vV1Wn2qGcKOGnUaUZIb/6cMLcKwHkii/P5fGZYxxl1P1CBQeuagHyjzX8LFJVRqIp8Pd78yK5VJi9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tGFuXhr5k01jQrnm8x20Uxrfo293zxbJkC2MSelhQi8=;
 b=gCMnvlGCdufNYFw/z4y05TpDtZwPW8EN5oE651T+HxmXSidaNOlK5EqLuPdrOy4bJpIlpHwtOttjqGj/ESCoIsqNJn1fru8+1PHOoVe5er/ShuonYQiye5KfDezogoON6KMwrN8cAKOgo3OLnht12ZwYzvC/2tG8AGEjhd3IxA8=
Authentication-Results-Original: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=arm.com;
Received: from DB8PR08MB5019.eurprd08.prod.outlook.com (2603:10a6:10:e0::21)
 by DB8PR08MB5451.eurprd08.prod.outlook.com (2603:10a6:10:113::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Fri, 29 May
 2020 14:58:25 +0000
Received: from DB8PR08MB5019.eurprd08.prod.outlook.com
 ([fe80::1c60:ea21:1382:c81b]) by DB8PR08MB5019.eurprd08.prod.outlook.com
 ([fe80::1c60:ea21:1382:c81b%7]) with mapi id 15.20.3045.018; Fri, 29 May 2020
 14:58:25 +0000
Subject: Re: [PATCH v7 0/3] perf arm-spe: Add support for synthetic events
To: Will Deacon <will@kernel.org>, Leo Yan <leo.yan@linaro.org>
References: <20200504115625.12589-1-leo.yan@linaro.org>
 <20200522030919.GE32389@leoy-ThinkPad-X240s>
 <20200526102602.GA27166@willie-the-truck>
 <20200526104337.GA7154@leoy-ThinkPad-X240s>
 <20200526195438.GC2206@willie-the-truck>
From: James Clark <james.clark@arm.com>
Message-ID: <3a80a66f-b991-ec55-77a5-a8fc4fa69e5e@arm.com>
Date: Fri, 29 May 2020 15:58:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <20200526195438.GC2206@willie-the-truck>
Content-Language: en-US
X-ClientProxiedBy: LNXP265CA0029.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5c::17) To DB8PR08MB5019.eurprd08.prod.outlook.com
 (2603:10a6:10:e0::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.57.46.28] (217.140.99.251) by
 LNXP265CA0029.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:5c::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19 via Frontend Transport; Fri, 29 May 2020 14:58:24 +0000
X-Originating-IP: [217.140.99.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9664a282-89ab-4cda-87bf-08d803e0c1da
X-MS-TrafficTypeDiagnostic: DB8PR08MB5451:|AM6PR08MB3125:
X-LD-Processed: f34e5979-57d9-4aaa-ad4d-b122a662184d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB3125B4594CB0DC4A8478C7C0E28F0@AM6PR08MB3125.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;OLM:9508;
X-Forefront-PRVS: 04180B6720
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: IRCSmuVX1yAaHGWOAU+8MkTisQTCJ3SZzRkHskihfprsyHSko/UZ5cXZPSSjIJBM6KYhAGJqSq+XBLHGRduzNPXuKnkOGSHWGV4q2ywUhtoQ5zbvWAjXY0lR4WjcoP3+BeGFJZVkUuBMCzLBqMfcJzWfxgkOf99hs2vBVIB1WbSkshuYpOORwjVN16FU7yYGUEYWfbbSNla18eLiS4gEQ4ytpPK8Bzd9+wwX1AkFlXa2if3GDOBKX+lLF7+Kn1QMsp6eTJAwidUQGZYL6eIym8mV5q3VOljF6zJ09lIa7adpbaJ7bHRFft0rMqhap3QLpjzP86pitD8Fbyxk8Qwjt2pOESEfroUD/dwAKhS594aNvP8dFtd1lxP7vR11lRLt
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DB8PR08MB5019.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(346002)(396003)(376002)(366004)(39860400002)(136003)(52116002)(2906002)(36756003)(4326008)(956004)(316002)(54906003)(8936002)(110136005)(44832011)(478600001)(86362001)(2616005)(8676002)(186003)(26005)(16526019)(31696002)(16576012)(83380400001)(7416002)(53546011)(31686004)(5660300002)(66556008)(66946007)(66476007)(6486002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 8X6MQuHf3zbAMwlh0vZsYoL1znld2GSbmYFYybY9MxsWyAWnYkaStRiEjacdgO8/lEny1NxlIu141onyi3E0WOF9B5EN/1kRhyLekgwkJyaMLnlZJ0MKMlQg3VCkaaORcZjVVTYn/hm5ECvxVX0GnetaRh+1rTjQyD4BaGRMMwmPSjhG3kdaJKcxXFk9sqW2NhJG2Y2bXMGgjLzBA7qzf98GU/LNn798EG/g8/sYoxmWUCljRzbR1Wo67GyLGSUX+EbwqRQvSrwHXVvrk2aBTYyjqRRCuhgqHJtdpVndz8O9FD8VU1ggr5XQ7Xm46Op54AmpIxq93xksJAEIrl/QE+CHJK84B6ibsnNwesqRucM0P7tHlGb8gReGFrmlMgEbLlwYJQ768ya0jQ9GUKZMda0NwIlIhFm753WuiB2Y7/AMalxGmMko1v/ZXCBCjqIJ2SU0Q3hOqUOe/dquJBiYhWJNYa86Fhe1lgCPcVSDgs0UwCMy/YTbm3ud3/FYA1D4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5451
Original-Authentication-Results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT047.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(396003)(39860400002)(46966005)(5660300002)(70586007)(70206006)(8676002)(8936002)(4326008)(336012)(107886003)(186003)(16526019)(6486002)(82740400003)(110136005)(36906005)(356005)(2906002)(31696002)(2616005)(478600001)(956004)(86362001)(83380400001)(44832011)(53546011)(47076004)(82310400002)(316002)(26005)(16576012)(36756003)(81166007)(54906003)(31686004)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 7efdd61f-3436-4195-2d7d-08d803e0bd1a
X-Forefront-PRVS: 04180B6720
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MuX0/z1ssbPYi5/hQxJVTSOoUUBoMQteP6qDgyk/7Da6lS47YKNqqtJnziz65wSN5cglJNeWUgY9SLCbR0vDPadiUEXWOG4CXdl3UaoeGunINbRtjgyj23cQyLD75wvKzBhgwpeRGLPYvJErwVqGfrdNT+BkOVaTMnGPkhYjyfpfYINFcpPXPChPcuKOQC6sb53ddIkQrzMHExh4wCmDEb6Wy6elKtGp0wjdjc6/RSWh9kvScuQxY3wmyWd2skJ+s1vFShjQP/SMHeOxYe2WhLr1CFUm1X0aTbAyhcpxvi6OmunUBGab1N2fj0PVUgGXhl+IskxU+EAgULwJpq/vQVL7LYOxRJzYm2CNbfrRxThsT1fYgcM288DBFoIZ4eDGHSYfQf6fGBPOx18Up/GtpsXTuIt0gUSVNRqlf9ONRWdj2oFVb8aGGfZMZTdE7hpo
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2020 14:58:33.2187 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9664a282-89ab-4cda-87bf-08d803e0c1da
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_075838_610146_54679CDA 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.55 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.55 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will and Leo,

I've tested this on an Arm N1 machine and it looks good to me.


James

On 26/05/2020 20:54, Will Deacon wrote:
> On Tue, May 26, 2020 at 06:43:37PM +0800, Leo Yan wrote:
>> On Tue, May 26, 2020 at 11:26:03AM +0100, Will Deacon wrote:
>>> On Fri, May 22, 2020 at 11:09:19AM +0800, Leo Yan wrote:
>>>> On Mon, May 04, 2020 at 07:56:22PM +0800, Leo Yan wrote:
>>>>> This patch set is to support synthetic events with enabling Arm SPE
>>>>> decoder.  Since before Xiaojun Tan (Hisilicon) and James Clark (Arm)
>>>>> have contributed much for this task, so this patch set is based on their
>>>>> privous work and polish for the version 7.
>>>>>
>>>>> The main work in this version is to polished the core patch "perf
>>>>> arm-spe: Support synthetic events", e.g. rewrite the code to calculate
>>>>> ip, packet generation for multiple types (L1 data cache, Last level
>>>>> cache, TLB, remote access, etc).  It also heavily refactors code for
>>>>> data structure and program flow, which removed unused fields in
>>>>> structure and polished the program flow to achieve neat code as
>>>>> possible.
>>>>>
>>>>> This patch set has been checked with checkpatch.pl, though it leaves
>>>>> several warnings, but these warnings are delibarately kept after
>>>>> reviewing.  Some warnings ask to add maintainer (so far it's not
>>>>> necessary), and some warnings complaint for patch 02 "perf auxtrace:
>>>>> Add four itrace options" for the text format, since need to keep the
>>>>> consistency with the same code format in the source code, this is why
>>>>> this patch doesn't get rid of checkpatch warnings.
>>>>
>>>> Gentle ping ...
>>>>
>>>> It would be appreciate if can get some review for this patch set.
>>>
>>> I was hoping that James Clark would have a look, since he was the last
>>> person to go near the userspace side of SPE.
>>
>> Yes, I have offline synced with James and James has verified this
>> patch set at his side.
>>
>> I don't want to rush to ask Arnaldo to merge patches, so just
>> want to get wider reviewing if possible; otherwise, I will rebase this
>> patch set and resend to ML.
> 
> One thing that might be useful is if James could offer his Tested-by or
> Acked-by on the public mailing list. Neither Arnaldo nor I have details
> about your offline sync!
> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
