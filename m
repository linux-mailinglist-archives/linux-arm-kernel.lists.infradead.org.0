Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5D6140D2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 16:01:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/nwFvHnIZXLs9nQXlrH92OHWcrki0FDXD2AwsUXcFI=; b=SawPREpJBGrhNX
	fMlkOAKbcH4q0BGCYJH7YNlLXrXHL5chaQfxvn+qLW0bFhbGfs9YiaWB/5vXGtegDQZrezIJEG86s
	/7oqLSAvPXrP221mkLjZHNvZ8c6Zu07UEpvs/IvW5Tojerm5Sv7zXdKWrAJchP1LcWSwV275h2rzG
	+tbp1NnIUk69LOVGILYz8c5Tu0Btxy4p1DJXFUPYiV+7zyhqs0jbj+DfTB1sNzVOcR9WHF3Zp8ugH
	4UMzEMAzmBcLpIOtnBDRYFVIsDdy0WkPBNgmdu6QxvVfzDhSOUa1GcAoMvvURWkqaeFuGx29PAAaM
	Z8AFq8f/CllxXldNjgxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isT7N-0002B9-R1; Fri, 17 Jan 2020 15:01:01 +0000
Received: from mail-vi1eur05on20618.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::618]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isT7B-0002AW-2B
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 15:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kdwHladTKtuNAu3YvL+dRm4XdEBsdqWx+A3DHMGTl9c=;
 b=P2DtWjX+0aT5LKGHLzMMJ7+3fpLO3E9MOVGtk0HR5MZ8uVF+eKVRenKgObnoMtlV8aYefGFJ00VM3A5zcJoKLKLUWZ21++Phu0SWUl5IbVT8S6NWDjPOqOaTFDmRLDbJVzV3H0KNloRGLxLn25EPR6xb0OwBX5GvCF/M4YRsAnk=
Received: from VI1PR08CA0105.eurprd08.prod.outlook.com (2603:10a6:800:d3::31)
 by VI1PR0801MB2063.eurprd08.prod.outlook.com (2603:10a6:800:8c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19; Fri, 17 Jan
 2020 15:00:45 +0000
Received: from DB5EUR03FT040.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::200) by VI1PR08CA0105.outlook.office365.com
 (2603:10a6:800:d3::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19 via Frontend
 Transport; Fri, 17 Jan 2020 15:00:45 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT040.mail.protection.outlook.com (10.152.20.243) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Fri, 17 Jan 2020 15:00:45 +0000
Received: ("Tessian outbound e09e55c05044:v40");
 Fri, 17 Jan 2020 15:00:44 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ce0c058230d43667
X-CR-MTA-TID: 64aa7808
Received: from a7140a881193.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 5CD18B9C-0264-41EF-BD55-55969B52A574.1; 
 Fri, 17 Jan 2020 15:00:39 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a7140a881193.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 17 Jan 2020 15:00:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gyjDe9MitMEkv3RAC7sNjn73x+kE6i3PIjyH57AyM3fZbP2vhlbIhUTAU7+KH4dVbhCqxZxtf+Ueg5oZ8cMzqfOPP9Wu89p38PdIzQfBjjgNAZwWLDdgZeZy0qeOX8q++dUEwvY8BIKRtI/Ji87o9q0TxJKS4aKM8VaLSiL26lO+AV21Q/Kr1HiZmfDuvmpEfe8V/k2NGHBnuUPHooXxPyeDmY8Kq32NkhDVAsEYF/0QlGbmsOiISSmlNP/u6dcevpw5nmr1TwWtACEPDn8jEUQwpiFxnRGBmsDYCc8NptLbM+1P/FKwUtBlIRe7HbIq2jkrmkXXjW37/97ir6rt5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kdwHladTKtuNAu3YvL+dRm4XdEBsdqWx+A3DHMGTl9c=;
 b=ar/7L0D8Zkf16LJUm+ff+D2n1phsxvs1F26dR6HPLCJUtDZmpBhhJM/lO3T+Wm5d9EzXWNItBJHP3qu7nYKYnGBbxHsVBPovz+e/6Oh9Qvy/kE2VAHB7nbZVaDdbA97U5zkAReBIzo4mXBWrPKAjcirnCXSlQJ4eelCB2YiLzgg21D0618WQWukATx2xdQqI/kx6sVtmJia9hyiwjDLjUXK8d/QtKA8mBsrTiofIyWLVi8k9/1H3oxhPx2F2bm78NwBEFhFT+zcF1qjZ8R6qvosSNf2Xx4PItczbdtSktAUtShuYAaf7JEFZBTqQJuHfp4UTo4PI8mgaPcpU7o4DSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kdwHladTKtuNAu3YvL+dRm4XdEBsdqWx+A3DHMGTl9c=;
 b=P2DtWjX+0aT5LKGHLzMMJ7+3fpLO3E9MOVGtk0HR5MZ8uVF+eKVRenKgObnoMtlV8aYefGFJ00VM3A5zcJoKLKLUWZ21++Phu0SWUl5IbVT8S6NWDjPOqOaTFDmRLDbJVzV3H0KNloRGLxLn25EPR6xb0OwBX5GvCF/M4YRsAnk=
Received: from DB6PR0801MB1638.eurprd08.prod.outlook.com (10.169.225.144) by
 DB6PR0801MB1719.eurprd08.prod.outlook.com (10.169.226.146) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Fri, 17 Jan 2020 15:00:38 +0000
Received: from DB6PR0801MB1638.eurprd08.prod.outlook.com
 ([fe80::f937:8a25:91c6:fe33]) by DB6PR0801MB1638.eurprd08.prod.outlook.com
 ([fe80::f937:8a25:91c6:fe33%8]) with mapi id 15.20.2644.021; Fri, 17 Jan 2020
 15:00:37 +0000
Received: from [10.32.36.146] (217.140.106.40) by
 LO2P123CA0001.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:a6::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Fri, 17 Jan 2020 15:00:36 +0000
From: James Clark <James.Clark@arm.com>
To: Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/1] Return EINVAL when precise_ip perf events are
 requested on Arm
Thread-Topic: [PATCH 1/1] Return EINVAL when precise_ip perf events are
 requested on Arm
Thread-Index: AQHVy5LeO0vQVupKYkmqxxzraShD1qfuzyKAgAAXA4CAABBzgA==
Date: Fri, 17 Jan 2020 15:00:37 +0000
Message-ID: <1231fd60-79cd-fcdf-8b99-a3be746bf2d1@arm.com>
References: <20200115105855.13395-1-james.clark@arm.com>
 <20200115105855.13395-2-james.clark@arm.com>
 <20200117123920.GB8199@willie-the-truck>
 <20200117140143.GD14879@hirez.programming.kicks-ass.net>
In-Reply-To: <20200117140143.GD14879@hirez.programming.kicks-ass.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.40]
x-clientproxiedby: LO2P123CA0001.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::13) To DB6PR0801MB1638.eurprd08.prod.outlook.com
 (2603:10a6:4:38::16)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=James.Clark@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: aeb84ef1-92ce-43da-4dea-08d79b5e077a
X-MS-TrafficTypeDiagnostic: DB6PR0801MB1719:|DB6PR0801MB1719:|VI1PR0801MB2063:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB206349E9F265F9216FD5F5E0E2310@VI1PR0801MB2063.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0285201563
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(39860400002)(136003)(396003)(199004)(189003)(4326008)(2616005)(2906002)(478600001)(31686004)(16576012)(6486002)(956004)(316002)(54906003)(52116002)(36756003)(71200400001)(110136005)(81166006)(16526019)(44832011)(26005)(53546011)(186003)(5660300002)(31696002)(66946007)(66446008)(66556008)(86362001)(64756008)(8676002)(66476007)(8936002)(7416002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0801MB1719;
 H:DB6PR0801MB1638.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: bgWu88xMV9bysis7UhwdJ/MQci+tr1TxCs8rfCwJmwDQQkSJQXNjmctX/mi44mlyqU5l/oHk8+MysslcQUoMaPZ+KdzqZXYxFAU6CSTq9KThKp6p4b9mTiazOdze7V9iB3PRvAnjH1JtztLtoIgVqn+BVHMQry3G6J4R4eG3dU+CGWoBreoYHu1CGGypTGcQIyzUejly/lodGGlBRVljYmy7+yQ/xrg3ffDLzgJYAojBSaYlYhPwCsyyamGGLHCABEeIZENylpb7+pG0jJJ7JlHXLgxmote+YcbusXTpjJRMOF9NUE+fF1XIDdIzJPo+dpLQMk4gFygNrlT9cqss9oJFomlp6xtzU647pqdiGxuYZ4nAiQREaKha9OM6o89YI+hPdN55j5SjSFAF9e8rfY94nwHKA4NSqV65V87g12t5IS02z6/DKK0FJDTXYzQb
Content-ID: <0284A2D25D767245B58FF469E59F5F11@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1719
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=James.Clark@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT040.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(396003)(346002)(189003)(199004)(86362001)(16576012)(31696002)(110136005)(316002)(2906002)(54906003)(26826003)(478600001)(956004)(186003)(356004)(31686004)(4326008)(16526019)(8676002)(6486002)(336012)(70586007)(2616005)(53546011)(36756003)(8936002)(81166006)(81156014)(5660300002)(107886003)(70206006)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB2063;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: c0a3fe11-2ee5-4efe-d796-08d79b5e02f9
X-Forefront-PRVS: 0285201563
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SUcIAYQ42i/B3J+iaI0xFtoZpiwmFVetSfBhPdV2WeKHYXRNM+KWTnXO9D6Fq+AVO83KeQd22KK6qdFkOWLcucv+U4CEoXgvWeYdF9QTaGpPEb13djRclq50/K8ntlVeSZIEvbSn6e6ox0DHRWf0z2NMUWDXRy7/W34uP66uJhJ4x3zwmFHl6lreWGRN7Q7kkSoVfnCc/ayw/5rszJwobOE3gdd2QtyGeoSmMNFQw78tYSZwRKQ9ooFA7rsS/gsHZzZHf1r7sUCeiV2QFXsSIyEZ2JxlwN4em7TBbvaHSfoja4YRkSTpRmDWSal0i0JmgAWlLtvVGwyBP+22kcnlukGGKx5tPbF2flSoMwIgWolVwHtN2AJPBjNzx9O+T26URVBQ30LUTHnaWO5smV6LTvTEweXXMIpIyxgvPkzLjUm4OWPjvjxRv2f1FQUhhznN
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2020 15:00:45.0391 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: aeb84ef1-92ce-43da-4dea-08d79b5e077a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB2063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_070049_173666_2771920B 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Tan Xiaojun <tanxiaojun@huawei.com>, Namhyung Kim <namhyung@kernel.org>,
 nd <nd@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

Do you mean something like this?


diff --git a/kernel/events/core.c b/kernel/events/core.c
index 43d1d4945433..f74acd085bea 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -10812,6 +10812,12 @@ perf_event_alloc(struct perf_event_attr *attr, int cpu,
                goto err_pmu;
        }
 
+       if (event->attr.precise_ip &&
+               !(pmu->capabilities & PERF_PMU_CAP_PRECISE_IP)) {
+               err = -EOPNOTSUPP;
+               goto err_pmu;
+       }
+
        err = exclusive_event_init(event);
        if (err)
                goto err_pmu;


Or should it only be done via sysfs to not break userspace?

If this was done via sysfs would it be possible to express that some events support
some attributes and others don't? It seems like the "caps" folder couldn't be
that fine grained.

On 17/01/2020 14:01, Peter Zijlstra wrote:
> On Fri, Jan 17, 2020 at 12:39:21PM +0000, Will Deacon wrote:
> 
>> Perhaps a better way would be to expose something under sysfs, a bit like
>> the caps directory for the SPE PMU, which identifies the fields of the attr
>> structure that the driver does not ignore. I think doing this as an Arm-PMU
>> specific thing initially would be fine, but it would be even better to have
>> something where a driver can tell perf core about the parts it responds to
>> and have this stuff populated automatically. The current design makes it
>> inevitable that PMU drivers will have issues like the one you point out in
>> the cover letter.
>>
>> Thoughts?
> 
> We have PERF_PMU_CAP_ flags we could extend to that purpose.
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
