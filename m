Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EB4A6527
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 11:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQ0fEvacReakQmuxTz9HML6nQcuozMaVp0kD3AjIyUE=; b=g45WDHzI1JtGBU
	ShsWU9QI0e9zH3UUvfPtWwdc2EPC0n3Lq2j7/L90oDLfkzf0ZLCqxYWWXQoe1CNYDfxZWhPJxxyv+
	tilJdgxodCbujF/YlbBfVL0nMdmk1VP62CHpWiJLh4/6RYBazI1hRShOvsErosgEBXYlE6n7QBlVC
	c9eioNIeUxhUuIH/pn/fxYuxeISJWxWH3e4gXNp0lRFD4/NGpi/U6pJaPsxXROU0hE0DMWrg8Tg4H
	hk5YyEivnhipabzUcmsPIgRMunzNUBA+8xHNq1bzgMuOkSd4q/qIbe7QpD9k9almkylse9lw55X18
	hPeh/lBFS7BtJjcS3agw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i556E-0001hp-RK; Tue, 03 Sep 2019 09:27:42 +0000
Received: from mail-ve1eur01on0616.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::616]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i555i-0001eL-HN
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 09:27:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0UgJVHCufGj6eLbHerW2KRl6EUUtPgGwNa2HIKSinso=;
 b=6cO4P9CFpWR+FAfv0JKU+7b/hFarN8cU633m6EkM3DZhGIdB3ayVWMSBkMROhtlwrFsSpHfaRKMIYwcoiyHmZuY1iNVHWBcm+ZzmISCQaFk7K59Fd+alJBMjZx6RdObf7GjGnhqFHTEX3CApzgKq+Y8nHDnr2IL4FlEaxDj9Teg=
Received: from AM4PR08CA0062.eurprd08.prod.outlook.com (2603:10a6:205:2::33)
 by AM5PR0801MB1841.eurprd08.prod.outlook.com (2603:10a6:203:2e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.22; Tue, 3 Sep
 2019 09:27:02 +0000
Received: from AM5EUR03FT044.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::207) by AM4PR08CA0062.outlook.office365.com
 (2603:10a6:205:2::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.19 via Frontend
 Transport; Tue, 3 Sep 2019 09:27:02 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT044.mail.protection.outlook.com (10.152.17.56) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16 via Frontend Transport; Tue, 3 Sep 2019 09:27:01 +0000
Received: ("Tessian outbound eec90fc31dfb:v27");
 Tue, 03 Sep 2019 09:26:55 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c05632b31bdceb1e
X-CR-MTA-TID: 64aa7808
Received: from 110caa496f4e.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.2.55]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 0ED1BE4E-6392-4ED8-8D43-6B9F975D7402.1; 
 Tue, 03 Sep 2019 09:26:50 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur01lp2055.outbound.protection.outlook.com [104.47.2.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 110caa496f4e.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 03 Sep 2019 09:26:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cuuLToyZNwAo0fPlqONQJbMZY/Sv0Rh3rrKCoSCioRqGh0R4BRtArq3s8ra5qht7VTAXQOYVwPOuTutzLZL/JhsKWJI/xA/Tdd4mP7iKPjzxrY2oyWgWF49sSuqm4xYeZG7W3LMjMdrr8naCznOCyHcbI5DYuQMqtG1CgBvbbqmOsgwbJribqj4JLwSd8cEbR+kt32Yc/XAwV6fvcWgPMaoJ++amwK7LgVK3c+qbgxGfqbAIC0npYNjVSQrAVvV6P/Fqh/9ab4fwwMmqRA/yw29HYOH3LsZzTdSzIKP+X4E5NEqqKe+/J0yzztJeCn2gJs9PgdrYJCJVLGCnu4R+VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qwq/UM0eqflGvxVt6uM02rNEx8MR0LsaUMP/kLpGX7Y=;
 b=D/8ai5rVevLlA44AHMqsY4Y+I9Uguz+Ftc18GBjCIO6ClfofwoQB4kmjT2miseTRDKQGE5Gryl/kiWxlcvBUfZ1vX2/TIYHuOR440fCRnYmNyaDJwICI8rxStmVXf6jn0KuKkIfrLDsF5U8HsBqdp2nW5MNd219PQ12wfVoSKVBt4a43m+k7xymcvN1JYYr7dxnXscBXiZIag/d9ClZuP0aIKfgkyIwLKz9VZ2z4rh31ce/9CBIWsrUNVPEiVL3os3T89tAKci4DEaZ4myiWT0ilC3F/gMkPLyF26QrrZIF06zR9SlPyCL1V1APIgsl3UGQEuryuhLp9Jx576bJBSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qwq/UM0eqflGvxVt6uM02rNEx8MR0LsaUMP/kLpGX7Y=;
 b=1g8HqHbbRpoNOyMW9t1GpO1T686fRJKOVAPVBiX+rIdmDg2RuFBTd6eCmFEgikUydW+IngOo+Ol+/0wN6xIrvzf8Pt1dLCv0UwzQp0kkdFt0mutxChBf/GldbmuRGcxTUiX73E7BJFvSbQ6FAZOOw8T3NfdGYF5qgnCamyBpC6c=
Received: from AM5PR0801MB1636.eurprd08.prod.outlook.com (10.169.246.150) by
 AM5PR0801MB1955.eurprd08.prod.outlook.com (10.168.155.148) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Tue, 3 Sep 2019 09:26:49 +0000
Received: from AM5PR0801MB1636.eurprd08.prod.outlook.com
 ([fe80::f165:3db2:5f04:faac]) by AM5PR0801MB1636.eurprd08.prod.outlook.com
 ([fe80::f165:3db2:5f04:faac%9]) with mapi id 15.20.2220.022; Tue, 3 Sep 2019
 09:26:49 +0000
From: Amit Kachhap <Amit.Kachhap@arm.com>
To: Cristian Marussi <Cristian.Marussi@arm.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "shuah@kernel.org" <shuah@kernel.org>
Subject: Re: [PATCH v5 01/11] kselftest: arm64: add skeleton Makefile
Thread-Topic: [PATCH v5 01/11] kselftest: arm64: add skeleton Makefile
Thread-Index: AQHVYYHHGdHT14GrNEGMWz5zmwvD+qcZsFwA
Date: Tue, 3 Sep 2019 09:26:49 +0000
Message-ID: <cce97298-7a27-c470-6fc5-873b4447ecc9@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-2-cristian.marussi@arm.com>
In-Reply-To: <20190902112932.36129-2-cristian.marussi@arm.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0040.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::26) To AM5PR0801MB1636.eurprd08.prod.outlook.com
 (2603:10a6:203:3a::22)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Amit.Kachhap@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.105.40]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 39113bc8-d1b7-4ba5-2faf-08d73050e04a
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0801MB1955; 
X-MS-TrafficTypeDiagnostic: AM5PR0801MB1955:|AM5PR0801MB1955:|AM5PR0801MB1841:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM5PR0801MB1841F4525E8C10B3BB0AEA068CB90@AM5PR0801MB1841.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:5516;OLM:5516;
x-forefront-prvs: 01494FA7F7
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(136003)(366004)(189003)(199004)(3846002)(316002)(2501003)(66556008)(66446008)(64756008)(53936002)(66946007)(66476007)(8936002)(476003)(86362001)(5660300002)(25786009)(478600001)(6436002)(6116002)(99286004)(4326008)(6246003)(81156014)(54906003)(44832011)(486006)(31686004)(110136005)(26005)(7736002)(71190400001)(71200400001)(52116002)(2201001)(14454004)(31696002)(8676002)(53546011)(6506007)(386003)(256004)(14444005)(229853002)(2906002)(66066001)(102836004)(36756003)(2616005)(186003)(11346002)(6486002)(446003)(81166006)(6512007)(76176011)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB1955;
 H:AM5PR0801MB1636.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: kGJ4PIQdX8FbyVAJ6Z9qg0AudslecT3MpJdEqrOcmL/9w3SzaK2DeVE2/8SnTjoNMkEsDldmMT8fIZrJXB1+cDtZKFgi/ty0Q4OXcZOZncD7lZJwAgmHAt/c89YKud/afAgg6vSTvS6Wi+C8QNDKPCA6/nyn+VlGS5xU3LrvjrEWLQlvxhyl5w+juosFzT3Xmg9zf6v2x6XCfazw914Hdk0D6ocZ97ajepSUDmZ6raRBt0eerXxeuj3e1C22xSr1nP3++1evZyOR7U58hPggCt0nHqUW/z1ya92E0zXDGpIKkKK6IEdJDuIlzbhOTJoqo0fqvCTMkJRxJgX4QGfGoESORD119p/lavW97Ocd+9e7FR7ahHgoi4lfbPiSQeRDtOHnbAI7uUqsOE54vhjI2a4Eo1Knvq2uLrg6dEdVCZY=
Content-ID: <F5618DCE0F6FCF40B40DA062E9A2CA29@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1955
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Amit.Kachhap@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT044.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(136003)(346002)(2980300002)(199004)(189003)(40434004)(11346002)(486006)(8936002)(126002)(2616005)(66066001)(6246003)(356004)(22756006)(436003)(386003)(63350400001)(336012)(6506007)(110136005)(76176011)(26005)(305945005)(7736002)(31686004)(6512007)(186003)(47776003)(476003)(446003)(5024004)(102836004)(63370400001)(6116002)(2906002)(53546011)(3846002)(14444005)(478600001)(5660300002)(2201001)(26826003)(4326008)(31696002)(70586007)(25786009)(229853002)(36756003)(86362001)(2486003)(14454004)(99286004)(23676004)(6486002)(50466002)(81166006)(8676002)(81156014)(76130400001)(70206006)(2501003)(36906005)(316002)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB1841;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: e18a55f9-5bd9-4900-0df5-08d73050d8cd
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0801MB1841; 
X-Forefront-PRVS: 01494FA7F7
X-Microsoft-Antispam-Message-Info: 0uiCBTlSCXHRmTQr/ylQIdbsgKUsl6DqhzJ0CbOOOGS7JUwbAunF58+AgJNEV2E8AdTSNJEdLeizTDbMLK8fHSv+g1lVT5Ew91ChzNX6hPYEyPdj1GC7cdVDTBlVYfFyRy3Jc8NC49KAX1oxkbocEy5mzc7qbeEVcbqy6NEcl+EwLLSrt66joNjBjIt9ehJ86L7W56r/QNy+t6waMrccdBb+O5xxw/rpwjY1GVgYsFnOykR5/KcnNIWdgt8HQMw4hwvebnBjiQiqew2uue9pLF4vbl72GUaD1SN3/M1fMosx/6FAQuHqzLifCXIXlg8LWCztHPN1ki8riH2c+lALMnOFQDfGL1K2881GSetmYd3jpR0VStxvqvel7LEZT2Ixcka3eParI9kc2nVp1A6mR0R2iax3k1ZWpbDC7xYAPKk=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2019 09:27:01.3788 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 39113bc8-d1b7-4ba5-2faf-08d73050e04a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1841
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_022710_754233_A27D9953 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:616 listed in]
 [list.dnswl.org]
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
Cc: "andreyknvl@google.com" <andreyknvl@google.com>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Cristian,

On 9/2/19 4:59 PM, Cristian Marussi wrote:
> Add a new arm64-specific empty subsystem amongst TARGETS of KSFT build
> framework; keep these new arm64 KSFT testcases separated into distinct
> subdirs inside tools/testing/selftests/arm64/ depending on the specific
> subsystem targeted.
>
> Add into toplevel arm64 KSFT Makefile a mechanism to guess the effective
> location of Kernel headers as installed by KSFT framework.
>
> Merge with
>
> commit 9ce1263033cd ("selftests, arm64: add a selftest for passing
>                    tagged pointers to kernel")
>
> while moving such KSFT tags tests inside their own subdirectory
> (arm64/tags).
>
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> v4 --> v5
> - rebased on arm64/for-next/core
> - merged this patch with KSFT arm64 tags patch, while moving the latter
>    into its own subdir
> - moved kernel header includes search mechanism from KSFT arm64
>    SIGNAL Makefile
This approach breaks the compilation of individual test cases which need
to export includes individually.

make -C tools/testing/selftests/arm64/signal

../../lib.mk:25: ../../../../scripts/subarch.include: No such file or
directory
Makefile:25: warning: overriding recipe for target 'clean'
../../lib.mk:123: warning: ignoring old recipe for target 'clean'
make: *** No rule to make target '../../../../scripts/subarch.include'.
Stop.

However tags test works well,
make -C tools/testing/selftests/arm64/tags

aarch64-none-linux-gnu-gcc     tags_test.c  -o
/home/amikac01/work/MTE_WORK/linux-server/linux/tools/testing/selftests/arm64/tags/tags_test


Thanks,
Amit Daniel

> - export proper top_srcdir ENV for lib.mk
> v3 --> v4
> - comment reword
> - simplified documentation in README
> - dropped README about standalone
> ---
>   tools/testing/selftests/Makefile              |  1 +
>   tools/testing/selftests/arm64/Makefile        | 70 +++++++++++++++++--
>   tools/testing/selftests/arm64/README          | 20 ++++++
>   tools/testing/selftests/arm64/tags/Makefile   | 10 +++
>   .../arm64/{ => tags}/run_tags_test.sh         |  0
>   .../selftests/arm64/{ => tags}/tags_test.c    |  0
>   6 files changed, 95 insertions(+), 6 deletions(-)
>   create mode 100644 tools/testing/selftests/arm64/README
>   create mode 100644 tools/testing/selftests/arm64/tags/Makefile
>   rename tools/testing/selftests/arm64/{ => tags}/run_tags_test.sh (100%)
>   rename tools/testing/selftests/arm64/{ => tags}/tags_test.c (100%)
>
> diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
> index 25b43a8c2b15..1722dae9381a 100644
> --- a/tools/testing/selftests/Makefile
> +++ b/tools/testing/selftests/Makefile
> @@ -1,5 +1,6 @@
>   # SPDX-License-Identifier: GPL-2.0
>   TARGETS = android
> +TARGETS += arm64
>   TARGETS += bpf
>   TARGETS += breakpoints
>   TARGETS += capabilities
> diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
> index a61b2e743e99..5dbb0ffdfc9a 100644
> --- a/tools/testing/selftests/arm64/Makefile
> +++ b/tools/testing/selftests/arm64/Makefile
> @@ -1,11 +1,69 @@
>   # SPDX-License-Identifier: GPL-2.0
> +# Copyright (C) 2019 ARM Limited
>
> -# ARCH can be overridden by the user for cross compiling
> -ARCH ?= $(shell uname -m 2>/dev/null || echo not)
> +# When ARCH not overridden for crosscompiling, lookup machine
> +ARCH ?= $(shell uname -m)
> +ARCH := $(shell echo $(ARCH) | sed -e s/aarch64/arm64/)
>
> -ifneq (,$(filter $(ARCH),aarch64 arm64))
> -TEST_GEN_PROGS := tags_test
> -TEST_PROGS := run_tags_test.sh
> +ifeq ("x$(ARCH)", "xarm64")
> +SUBDIRS := tags
> +else
> +SUBDIRS :=
>   endif
>
> -include ../lib.mk
> +CFLAGS := -Wall -O2 -g
> +
> +# A proper top_srcdir is needed by KSFT(lib.mk)
> +top_srcdir = ../../../../..
> +
> +# Additional include paths needed by kselftest.h and local headers
> +CFLAGS += -I$(top_srcdir)/tools/testing/selftests/
> +
> +# Guessing where the Kernel headers could have been installed
> +# depending on ENV config
> +ifeq ($(KBUILD_OUTPUT),)
> +khdr_dir = $(top_srcdir)/usr/include
> +else
> +# the KSFT preferred location when KBUILD_OUTPUT is set
> +khdr_dir = $(KBUILD_OUTPUT)/kselftest/usr/include
> +endif
> +
> +CFLAGS += -I$(khdr_dir)
> +
> +export CC
> +export CFLAGS
> +export top_srcdir
> +
> +all:
> +     @for DIR in $(SUBDIRS); do                              \
> +             BUILD_TARGET=$(OUTPUT)/$$DIR;                   \
> +             mkdir -p $$BUILD_TARGET;                        \
> +             make OUTPUT=$$BUILD_TARGET -C $$DIR $@;         \
> +     done
> +
> +install: all
> +     @for DIR in $(SUBDIRS); do                              \
> +             BUILD_TARGET=$(OUTPUT)/$$DIR;                   \
> +             make OUTPUT=$$BUILD_TARGET -C $$DIR $@;         \
> +     done
> +
> +run_tests: all
> +     @for DIR in $(SUBDIRS); do                              \
> +             BUILD_TARGET=$(OUTPUT)/$$DIR;                   \
> +             make OUTPUT=$$BUILD_TARGET -C $$DIR $@;         \
> +     done
> +
> +# Avoid any output on non arm64 on emit_tests
> +emit_tests: all
> +     @for DIR in $(SUBDIRS); do                              \
> +             BUILD_TARGET=$(OUTPUT)/$$DIR;                   \
> +             make OUTPUT=$$BUILD_TARGET -C $$DIR $@;         \
> +     done
> +
> +clean:
> +     @for DIR in $(SUBDIRS); do                              \
> +             BUILD_TARGET=$(OUTPUT)/$$DIR;                   \
> +             make OUTPUT=$$BUILD_TARGET -C $$DIR $@;         \
> +     done
> +
> +.PHONY: all clean install run_tests emit_tests
> diff --git a/tools/testing/selftests/arm64/README b/tools/testing/selftests/arm64/README
> new file mode 100644
> index 000000000000..aca892e62a6c
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/README
> @@ -0,0 +1,20 @@
> +KSelfTest ARM64
> +===============
> +
> +- These tests are arm64 specific and so not built or run but just skipped
> +  completely when env-variable ARCH is found to be different than 'arm64'
> +  and `uname -m` reports other than 'aarch64'.
> +
> +- Holding true the above, ARM64 KSFT tests can be run within the KSelfTest
> +  framework using standard Linux top-level-makefile targets:
> +
> +      $ make TARGETS=arm64 kselftest-clean
> +      $ make TARGETS=arm64 kselftest
> +
> +      or
> +
> +      $ make -C tools/testing/selftests TARGETS=arm64 \
> +             INSTALL_PATH=<your-installation-path> install
> +
> +   Further details on building and running KFST can be found in:
> +     Documentation/dev-tools/kselftest.rst
> diff --git a/tools/testing/selftests/arm64/tags/Makefile b/tools/testing/selftests/arm64/tags/Makefile
> new file mode 100644
> index 000000000000..76205533135b
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/tags/Makefile
> @@ -0,0 +1,10 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# ARCH can be overridden by the user for cross compiling
> +ARCH ?= $(shell uname -m 2>/dev/null || echo not)
> +
> +ifneq (,$(filter $(ARCH),aarch64 arm64))
> +TEST_GEN_PROGS := tags_test
> +TEST_PROGS := run_tags_test.sh
> +endif
> +
> +include ../../lib.mk
> diff --git a/tools/testing/selftests/arm64/run_tags_test.sh b/tools/testing/selftests/arm64/tags/run_tags_test.sh
> similarity index 100%
> rename from tools/testing/selftests/arm64/run_tags_test.sh
> rename to tools/testing/selftests/arm64/tags/run_tags_test.sh
> diff --git a/tools/testing/selftests/arm64/tags_test.c b/tools/testing/selftests/arm64/tags/tags_test.c
> similarity index 100%
> rename from tools/testing/selftests/arm64/tags_test.c
> rename to tools/testing/selftests/arm64/tags/tags_test.c
>
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
