Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A6A6B8C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 11:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVIsLdqU7vm2d3Qvgv5zgUJIE6r8E1flXaqaeTt4qQQ=; b=mKWNwN6Cy0Yf/H
	CJsjQX4b2cdZiqb8ocNt/lQ8+mw25Dx5Y5baj/7g61u7NPNDpKjJjeC2DXyXUICSrcy/Y4l0L0gMu
	aOaZ+NH5NsKFLCEsvUYS8tF0UmLzxMzeth7bpi22WIUmi/qdWS7qb3UE9TkwYKVrl4L8m6Y44lF1i
	kz0oVQJCiyjOlo+u1tb3yRTamjEtcx4/tgQpNsVEwR3EIZ7H/HF6pZWx5CzBzWAmRUxSJKtf24MDN
	TFNaral+x0h5BFi4Vhm2Xbn+xIVz3wMLqoKcJ5AmqS37IscpuVBrMBQY/BKjX6KKYFNjP6NN7VZL6
	XaVgZFvg5A9tk71WseKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfpy-0003zu-NT; Wed, 17 Jul 2019 09:02:58 +0000
Received: from mail-eopbgr80079.outbound.protection.outlook.com ([40.107.8.79]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfpj-0003xX-Jv
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 09:02:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9u3/Y/ve4jN9sZOx1jFJy//BQFvyQfJiCilchh8sQGQ=;
 b=xQkru8slMWtvbENK/HYFfpMoNPgy4iC6Y9dKUdMS5pd/H40QCGyCmfBI7jqwcM5Jru428Lfyt1/U9rkftEpJkGCT5z16Fx3qqxtzolQJrwI2mfcEzon7r58zuPB19B/4bQ3D1MoGByRx7Fvxigbhle+R29ESehm8YBPCXOj4LeA=
Received: from DB7PR08CA0016.eurprd08.prod.outlook.com (2603:10a6:5:16::29) by
 DB8PR08MB4953.eurprd08.prod.outlook.com (2603:10a6:10:ef::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 09:02:39 +0000
Received: from AM5EUR03FT015.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::204) by DB7PR08CA0016.outlook.office365.com
 (2603:10a6:5:16::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2073.14 via Frontend
 Transport; Wed, 17 Jul 2019 09:02:39 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT015.mail.protection.outlook.com (10.152.16.132) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Wed, 17 Jul 2019 09:02:37 +0000
Received: ("Tessian outbound 350ce6c32571:v24");
 Wed, 17 Jul 2019 09:02:33 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: adc3316a26e277aa
X-CR-MTA-TID: 64aa7808
Received: from a06154e96236.2 (cr-mta-lb-1.cr-mta-net [104.47.13.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 3939E523-FC5A-4F69-A23C-6DAA81D399A3.1; 
 Wed, 17 Jul 2019 09:02:28 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2052.outbound.protection.outlook.com [104.47.13.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a06154e96236.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 17 Jul 2019 09:02:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cv5hhMEJljWkqvSRWmCCnyfaw5qphFnQFzr7MbiKsiZ/wcbQqBbOUaPrENVZ95rWn0NghHR7dkBhlmL5eNomV7icc2raHCdDhbYdRq2ybHPuw+YMyRn4sk2KFfq71UvwmgT4Tx7FhTaunB7YcFQqHW8KLk/0j9R13xhcHJZh69oa7EsdoHmnNEZB9TaGUfNXChAhM6jDCDSQd5PUHkmzR3wjfeMzMyiMJwhzOZC3LCTBCTV6nS1QcpYQrYvQkmXUlOquVOD/DYRko47zHqXIxktPM6YOa7l5/xiGQzqwueKsAV2VaIl+SczdTX6tpTrIWAhQHUIeQEwkGkOfrF34OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qHnNO+bFfyvKmGIicsXfo82VuadD0iHbd3lPL3gvkSs=;
 b=PGOCy0GvRBSSv9rusB11D0vHddLGFR3VjHVot01cLfZ34arPEk+iWQf4zGHT0hmfs2g8/zie2bqo9VytqlvkqBZ4EChzNcmCjwn/RFwUp3AEXtWIJvLB5hw4QP0XXI0MoXkj2zEvuJ9mFKwUNYyZSzUu0wcZMyOxCULmIP8DJC9adiax46a09+KYYs8DsVVuckrp05w/T5ztqlJN5FUy3AZna4TnFF9bjSSOdfiu/8sXun+eiV6r0nbGlehe+0QStOZtY/MXhAQ4j8Zp501cNGW3FaTNwF1rWhkq/95mezWoUhIFrdVjEAVQbaQBEBN1B0TiDqda+yk03iBJ0xxcBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qHnNO+bFfyvKmGIicsXfo82VuadD0iHbd3lPL3gvkSs=;
 b=wTf5JAj3N3w3sNFmmPxwupahEOh9w5hKXjKUfBD9DgmFJgSR+aGTjbK9gwvc+P14ZIHbd6QBc9bWvjIcZ0yC5NWrPykDM+4wix3MCjK+StxhX3DYioAnsHNxO/8w/iUj35qWWmMtdwCnm/l1k5JPuT3T/EolA8T6ctFsECHOXfw=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3130.eurprd08.prod.outlook.com (52.135.129.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 09:02:25 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::a13f:5848:5d6d:beef]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::a13f:5848:5d6d:beef%5]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 09:02:25 +0000
From: Julien Thierry <Julien.Thierry@arm.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 0/9] arm_pmu: Use NMI for perf interrupt
Thread-Topic: [PATCH v4 0/9] arm_pmu: Use NMI for perf interrupt
Thread-Index: AQHVPHgZk+0n20lWJkmyjEpsx95THqbOg8IA
Date: Wed, 17 Jul 2019 09:02:25 +0000
Message-ID: <b5229f5d-2708-7a6b-c911-c83b715798b6@arm.com>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
In-Reply-To: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P123CA0012.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::24) To DB7PR08MB3082.eurprd08.prod.outlook.com
 (2603:10a6:5:1d::24)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Julien.Thierry@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.55]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 66184963-505b-4a6b-132b-08d70a9583d8
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR08MB3130; 
X-MS-TrafficTypeDiagnostic: DB7PR08MB3130:|DB8PR08MB4953:
X-MS-Exchange-PUrlCount: 3
X-Microsoft-Antispam-PRVS: <DB8PR08MB49530680EC81FF640E9C42C89DC90@DB8PR08MB4953.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7219;OLM:7219;
x-forefront-prvs: 01018CB5B3
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(376002)(396003)(136003)(189003)(199004)(14454004)(478600001)(2351001)(71200400001)(8676002)(71190400001)(229853002)(316002)(966005)(54906003)(4326008)(25786009)(99286004)(6116002)(3846002)(7736002)(36756003)(305945005)(66066001)(52116002)(31696002)(8936002)(5660300002)(81156014)(81166006)(76176011)(31686004)(446003)(11346002)(66476007)(2616005)(86362001)(476003)(2501003)(102836004)(44832011)(26005)(66946007)(486006)(64756008)(386003)(53546011)(66556008)(6486002)(2906002)(6916009)(68736007)(66446008)(256004)(6506007)(186003)(5640700003)(6436002)(6512007)(6306002)(6246003)(53936002)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3130;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: v9KOjMyjafrLYqbQ6+5qkNCYuConzk5VEBCFV/bacsfw3IngpaT+7IoGz5Iegt3n7HtYXGEYHqFsPKZoDumxT5DELnILf0RgFSZAiJzyyT86sxl9yamMxNRBKqH+Al+eWhsh7YO0xl6cmhkhTMAAmgmhVmHO9JvBo+mzsAR59hVOAYQamUMdXR5I7WPdkSayEFach+4IYS0EnsxCqihuWxjelvZeo/oMrXf2/bcZXyM3/FBy0lTfE7eJdJXtrYhsCsFc39xU3OHZuwZ+/AZw4N39T4h0lrtfXgrKv0FEtgKJJJcJS3aG0ABd3BXtkYdQ0ZKXf7HXBn/e407PsOphJb4j54hSRIF8XHQreWj3U11ckvq0BTPWmMjZaqXvH2/75kIl5OD2LgXFc7eIp3gPN5UKjbFW0OahxxrE8HC/us8=
Content-ID: <DE7B862ED2A0044A8F3575041DC722CA@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3130
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Julien.Thierry@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT015.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(136003)(2980300002)(199004)(189003)(40434004)(26005)(2906002)(6486002)(36756003)(186003)(356004)(31686004)(4326008)(336012)(63370400001)(14454004)(63350400001)(76130400001)(11346002)(5024004)(436003)(14444005)(6916009)(446003)(25786009)(2616005)(476003)(6246003)(22756006)(3846002)(6116002)(86362001)(76176011)(2486003)(126002)(23676004)(31696002)(102836004)(386003)(53546011)(2351001)(70206006)(6306002)(70586007)(107886003)(6512007)(2501003)(50466002)(6506007)(54906003)(47776003)(8936002)(8676002)(229853002)(486006)(99286004)(5640700003)(36906005)(81156014)(66066001)(316002)(305945005)(26826003)(81166006)(7736002)(966005)(5660300002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB4953;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 88cfc260-1c14-4870-f68c-08d70a957c95
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB8PR08MB4953; 
X-Forefront-PRVS: 01018CB5B3
X-Microsoft-Antispam-Message-Info: CzjkwFoBxPex0uDBfMghgsXDsl+J/Uq0UryQM9U9F+prfhZFWFETHObmGy3IajFn/AxkIhGXQdLcmvb8tn3OtSiQqgP2TBAeVqKq19fGA3QWznOn961F4rXMvGus6VIuXZ3a2HB6CXm9TFkcSLBe8SZB+RlL1xYShqXxayqS9GHcSkOESafIrNhYH8cglB/ZzRuPh+7sqM96AyCjJENICwRMyGRRs//o6b2gE3Qtdl9UtwtCyQqewXXoGlhbawLlsu5Fzqx35MazpDNyO90LM57qeYqi0cyRBFshJjkHCxcInR+qijrN1UQnOXLCBCO1E3023AX5P1hd8P89SQwHL3D7JMSCKMCTJmsikY8akmuVeVTECSO0De6gR0qpQcopxe3kW3jLnQLDtJ8bEGrYTq7MeyE9B7WRApFiciT05jI=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2019 09:02:37.3774 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 66184963-505b-4a6b-132b-08d70a9583d8
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4953
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_020243_733160_DB94D835 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.79 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "jolsa@redhat.com" <jolsa@redhat.com>, Will
 Deacon <Will.Deacon@arm.com>, "acme@kernel.org" <acme@kernel.org>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>,
 "sthotton@marvell.com" <sthotton@marvell.com>,
 "liwei391@huawei.com" <liwei391@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 17/07/2019 09:17, Julien Thierry wrote:
> Hi,
>
> After fixing the arm64 Pseudo-NMIs, I'm dusting off this series.
>
> The series makes the arm_pmu driver use NMIs for the perf interrupt when
> NMIs are available on the platform (currently, only arm64 + GICv3).
>
> * Patches 1 to 4 remove the need to use spinlocks for the Arm PMU
>   driver for Armv7 and Armv8 (aarch64).
> * Patches 5 moves the locking to Armv6 specific code which is the sole
>   user
> * Patches 6 and 7 make the PMU interrupt handler NMI-safe
> * Patches 8 and 9 enable using pseudo-NMI for the PMU interrupt when
>   the feature is available
>
> Changes since v3[3]:
> - Added tags
> - Fix build issue for perf_event_v6
> - Don't disable preemption in pmu->enable()
> - Always rely on IPI_IRQ_WORK to run the queued work
> - Fixed typos + cleanups
>
> Changes since v2[2]:
> - Rebased on recent linux-next (next-20190708)
> - Fixed a number of bugs with indices (reported by Wei)
> - Minor style fixes
>
> Changes since v1[3]:
> - Rebased on v5.1-rc1
> - Pseudo-NMI has changed a lot since then, use the (now merged) NMI API
> - Remove locking from armv7 perf_event
> - Use locking only in armv6 perf_event
> - Use direct counter/type registers insted of selector register for armv8
>
> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2019-March/640536.html
> [2] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-January/554611.html
>

Huh, I forgot to update the links, sorry:

[1]
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-July/665339.html
[2]
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-March/640536.html
[3]
http://lists.infradead.org/pipermail/linux-arm-kernel/2018-January/554611.html

Cheers,

--
Julien Thierry
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
