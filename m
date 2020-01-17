Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8AB140A72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 14:11:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMEyfbRO4t6s4lB8pJcq2T62UsfuFU+C1SOsQgVsOtQ=; b=QyCSiYMtFgo0KW
	/v+FcA87uO7tAa0AlypxN+eSc7x4w0jZrkyxDPhwhOJMlJaZwXnTeTme+xpWkFTjUdAqcYPzXaov4
	7Gos1Ow+8Kr5P43ayButBApTG/2fNVM2x6DuKxoS3hSEbOG8frpqXuRrNj5+XP5DcAXHhMtq2Jybs
	wSEfidyjfMF0MjbWEcbqfCobZZkTZU8olGmT7ccwG4Cr9+v1uvusYYVqDszId3CI8iL/g8b/uKtVH
	31vikIowsH4IbPstDhlAnYdz2UpnWeKhfUbZRSYX7sZeqKZT0oR7pQOjtjcGwZO2WrMvEHyrMZJmB
	0pPzcaHtweGR9Twe+v1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isRPb-0003fk-0a; Fri, 17 Jan 2020 13:11:43 +0000
Received: from mail-vi1eur05on2070.outbound.protection.outlook.com
 ([40.107.21.70] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isRPN-0003di-4m
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 13:11:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UdARaZoCgpNi+0ha2mfPyAMMVMaHGQrx17p7N11OXoo=;
 b=8iKe08hj7Uz5IJM210bTFSpQFFfiUmuhX0ymD7hv2DRE/RSabVeQVz7uVTKCu9i/yBojKxvXnkF9/0ki5Z9VKiVEyz3LL2eBeCc3ZqSolHn5rj+JqEn6qiYKB7iaplqX7syiHvwZKYpXNHHFn5i4i8uedDoOUN5Q0UxArLiSSdU=
Received: from VI1PR0802CA0042.eurprd08.prod.outlook.com
 (2603:10a6:800:a9::28) by VI1PR08MB5550.eurprd08.prod.outlook.com
 (2603:10a6:803:f3::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.20; Fri, 17 Jan
 2020 13:11:24 +0000
Received: from VE1EUR03FT041.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::205) by VI1PR0802CA0042.outlook.office365.com
 (2603:10a6:800:a9::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.18 via Frontend
 Transport; Fri, 17 Jan 2020 13:11:24 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT041.mail.protection.outlook.com (10.152.19.163) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Fri, 17 Jan 2020 13:11:24 +0000
Received: ("Tessian outbound 4f3bc9719026:v40");
 Fri, 17 Jan 2020 13:11:23 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 4ef89b0dfeedf5f2
X-CR-MTA-TID: 64aa7808
Received: from def48f88f6e5.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 76DFF247-C165-4922-B8BA-D334A25034F9.1; 
 Fri, 17 Jan 2020 13:11:18 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id def48f88f6e5.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 17 Jan 2020 13:11:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TI6f/b979GZWZ86hqenHMnW6llGnsXB4+0bGHy5/KLgfKFqgMfh4ImigIBbXwaZQTqFxJVJgnCjk3i0WjXDyxr3WuiDAPWsJmWB5QJ7yI8oEdgnHHn04qB0iarsTksIZM0iH6eJI5hcI1xMI9+c/E9np6aC5H0AzfTY5UFsbzkgt7vcu5ndZUL3cu3ZE4lKBem9dcVp2az5oR9gYhl6T8ahm52Fh7vY6bAnyiu7l9IFqqLXEw7AYiZYjzsOYjGbTwo0inPElFDl+fd+G/snTRMbXXPp4R622kXbuZOG6XWucdk76IlVuZxmpYW49Cqn8ptsCFMs3QCM9JPQzD4hXlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UdARaZoCgpNi+0ha2mfPyAMMVMaHGQrx17p7N11OXoo=;
 b=f1dbfc6qpJBIg3AMnNAhL1DUJfSphq9iar4N3CIabl1eTCHh+0LdjBaUlGAS+sUWqP9DjpDZR/4qUh9BjZpcD/wMoOyWVSSBl2apxgmIvMpsSUMD2PKEnB8JBPq3hCYzcIOTAGoFUyrmbOGaHkCsuM2Zvpal923ltSyI5X4dt4qOx+WUY5AYlvu/2xyxh4D/Hb2QV8N+F1YkY2nqpLZW6/cyAAmmbMVMQRLw+p2C/H3qpF/OSTlXc13Cb3myLMlGlWzhavNDGwDTkM5uPiJy4vIzA6NCuErhdVfNIb/06Qks25UdS4heWlzbhRHLiWVFp7Ra3rRHgBFYbDqk5s3f1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UdARaZoCgpNi+0ha2mfPyAMMVMaHGQrx17p7N11OXoo=;
 b=8iKe08hj7Uz5IJM210bTFSpQFFfiUmuhX0ymD7hv2DRE/RSabVeQVz7uVTKCu9i/yBojKxvXnkF9/0ki5Z9VKiVEyz3LL2eBeCc3ZqSolHn5rj+JqEn6qiYKB7iaplqX7syiHvwZKYpXNHHFn5i4i8uedDoOUN5Q0UxArLiSSdU=
Received: from DB6PR0801MB1638.eurprd08.prod.outlook.com (10.169.225.144) by
 DB6PR0801MB1639.eurprd08.prod.outlook.com (10.169.227.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Fri, 17 Jan 2020 13:11:17 +0000
Received: from DB6PR0801MB1638.eurprd08.prod.outlook.com
 ([fe80::f937:8a25:91c6:fe33]) by DB6PR0801MB1638.eurprd08.prod.outlook.com
 ([fe80::f937:8a25:91c6:fe33%8]) with mapi id 15.20.2644.021; Fri, 17 Jan 2020
 13:11:17 +0000
Received: from [10.32.36.146] (217.140.106.40) by
 LO2P123CA0027.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19 via Frontend Transport; Fri, 17 Jan 2020 13:11:16 +0000
From: James Clark <James.Clark@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/1] Return EINVAL when precise_ip perf events are
 requested on Arm
Thread-Topic: [PATCH 1/1] Return EINVAL when precise_ip perf events are
 requested on Arm
Thread-Index: AQHVy5LeO0vQVupKYkmqxxzraShD1qfuzyKAgAAHXwCAAAGLgA==
Date: Fri, 17 Jan 2020 13:11:16 +0000
Message-ID: <1fea63d9-9b8d-d5ff-d043-a1e8f6b9b862@arm.com>
References: <20200115105855.13395-1-james.clark@arm.com>
 <20200115105855.13395-2-james.clark@arm.com>
 <20200117123920.GB8199@willie-the-truck>
 <20200117130543.GA9093@willie-the-truck>
In-Reply-To: <20200117130543.GA9093@willie-the-truck>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.40]
x-clientproxiedby: LO2P123CA0027.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600::15)
 To DB6PR0801MB1638.eurprd08.prod.outlook.com
 (2603:10a6:4:38::16)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=James.Clark@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b7c67cd7-ba4c-46ec-94fd-08d79b4ec0f8
X-MS-TrafficTypeDiagnostic: DB6PR0801MB1639:|DB6PR0801MB1639:|VI1PR08MB5550:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB555098E99EF02A58A5DEB61FE2310@VI1PR08MB5550.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: True
x-ms-oob-tlc-oobclassifiers: OLM:5236;OLM:5236;
x-forefront-prvs: 0285201563
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39850400004)(376002)(366004)(396003)(136003)(189003)(199004)(4744005)(6916009)(5660300002)(81166006)(81156014)(7416002)(52116002)(8676002)(186003)(8936002)(16526019)(53546011)(26005)(4326008)(2616005)(956004)(6486002)(478600001)(31686004)(44832011)(36756003)(2906002)(54906003)(31696002)(66556008)(66946007)(86362001)(71200400001)(316002)(16576012)(66446008)(66476007)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0801MB1639;
 H:DB6PR0801MB1638.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: TSn+aKk4mNXef9XdZxKmL/na0O9BXi3/pEiqXcH6fTq3h0wROCDMsADNB6KSPvc/is9mLbu8FllPYLqDNgsLJnPrKObUHod9eJi8oYHEQGxsWVZ4lsbMXBtHiNOhUD5FqaS86o36yallZUgUg9daKYLYh+bCEied74dKEquXg+timmuqUTleoIbQeHiLNiqnyTCTkHbwxPjzgHJLn3nJlRyn15fIfJzJ/ATkIyZh4p9eei+F8XuSWYvQxgcfgq8gqbBaeiavnqgmXy8/MYyX3dyf6Arx4Jz3cW8hCh8EYmy6zlSNl9y52N0fU0Bz7tpjAwSVtvmaUSFL3we46Unzp35+HUjUFV/l7RPbv97ILV+5mblvx+zbWl+JCC8asmpjKY1dAMsSj1M4dU+nNckpSCihbv2kH3xjq9FRseDfko0q/8rcMjhYLQDVlZ7sAnA5
Content-ID: <C3C7D8FEB2AFBD4986EA5EAEA968FCA5@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1639
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=James.Clark@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT041.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(396003)(376002)(136003)(346002)(199004)(189003)(70206006)(36906005)(2616005)(316002)(70586007)(956004)(16576012)(31686004)(53546011)(356004)(336012)(16526019)(26005)(5660300002)(4744005)(186003)(54906003)(36756003)(6862004)(4326008)(2906002)(31696002)(86362001)(107886003)(478600001)(8936002)(81156014)(81166006)(26826003)(8676002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB5550;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 9580083b-8f4e-4c66-f737-08d79b4ebc71
X-Forefront-PRVS: 0285201563
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TSAwhDN0OobT/iU9xAbjfsyU+1ew5Y3lbdKNlglbxbOab+0JlNfVCas8+B3S4l/7JjDsyVNniVha0uZU5PYAkYqnyhezcFTxBv9vvMEqRiy9oJA1GstHcUElSt+9qyK44ezZs6IgdD6FgyBIc7oWtuPwK2j6Hmrny4M+M9q9whZLfwREadt43X5Q1SAKXzRK24Xju4t/o4Fh+a9QADwsedSkxLlZI3dIvDDFE4LWFKD51irz8AxCNNeA3o+sEpZuu5WLP3M+ddhlOdgP9HiiogMyKjEGyi5J3gQrNlo+uLtzsylj1ZmLOodXA6lqS1zOqvhigkx4vNF2LJ2RX2ML/C5nEDiWZkPM0pkjvQOCs1HW7/9x2DyKYne8VGXAzAyFB73QkJ372cixRRNWt7CRxJ8YAoDbk7F/cu/cBZ9hc3K58KRNR8wPZs/C98REJDy8
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2020 13:11:24.2254 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b7c67cd7-ba4c-46ec-94fd-08d79b4ec0f8
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB5550
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_051129_242761_1A759EAF 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Al Grant <Al.Grant@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Tan Xiaojun <tanxiaojun@huawei.com>,
 Namhyung Kim <namhyung@kernel.org>, nd <nd@arm.com>,
 Jiri Olsa <jolsa@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Yes you're right, I've somehow managed to post a version of the patch
from before I built and tested it.

I will repost it shortly with the other change split out as well.


Thanks
James 

On 17/01/2020 13:05, Will Deacon wrote:
>> On Wed, Jan 15, 2020 at 10:58:55AM +0000, James Clark wrote:
>>> diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
>>> index df352b334ea7..4ddbdb93b3b6 100644
>>> --- a/drivers/perf/arm_pmu.c
>>> +++ b/drivers/perf/arm_pmu.c
>>> @@ -102,6 +102,9 @@ armpmu_map_event(struct perf_event *event,
>>>  	u64 config = event->attr.config;
>>>  	int type = event->attr.type;
>>>  
>>> +	if (event->attr.precise)
>>> +		return -EINVAL;
> 
> Also, does this field even exist? Guessing you mean 'precise_ip', but
> then that means this hasn't even seen a compiler :(
> 
> Will
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
