Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049318D0A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaBpzemAcapirKuerpcM6Z/iZ281/utOyX8G++U/ozY=; b=GTayhUS59kR+P/
	9GqTfzXD/DnghXmiMgy8F42BBf6hND0WtLk/Wf3QsZ/o0IuzPUJcAoiqjAl3Qi94f9XTs0zZVuHp1
	QhbFIqi3WIX/SdD0lYn2DMdFJv3jVAJalHtXXqjhynxYnm8LWStqqepKIBbPFGx3QJuiczZ+4b3iH
	qCrXk3UrnZ9Nfj+Gm+H/V+58RugZ0kz3aNcNX/gz+xIjU5AStuGLLpkh/vAPZnWhsKs+2v4MmCB+K
	mYBD3pEfjM9rbi2D1A2aQ+lGad8qWB8ZaD9Q+HiBH/7ZImJ/R0fx/Yk3GXxofZhN94Ho2++xXd+n2
	1KiR+L0QTPSiynGQ2wBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqQh-0002CQ-Lc; Wed, 14 Aug 2019 10:22:55 +0000
Received: from mail-eopbgr40053.outbound.protection.outlook.com ([40.107.4.53]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqQT-0002Be-Fc
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:22:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=65vfYVanJ8jtaVcup/17b1DA0FVMIWc1RW0xYGSNSvc=;
 b=d8pVXcWfSMF+bXc/sC0B29XQZkRjhOJqJcceFxhHQ65WYTGNg3ZLeMVwiEeB0hjufmxPEn9dL4+jus88UPkzfyF6U2BdvCmUSdYrNfEfQXTtobkMnsq06TS/e6mw3iPhf8IatzcvvkeJtd9zbCv8eziV7ys4qsV5STipZENXQZk=
Received: from VI1PR08CA0252.eurprd08.prod.outlook.com (2603:10a6:803:dc::25)
 by AM0PR08MB4948.eurprd08.prod.outlook.com (2603:10a6:208:163::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.15; Wed, 14 Aug
 2019 10:22:34 +0000
Received: from DB5EUR03FT008.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::209) by VI1PR08CA0252.outlook.office365.com
 (2603:10a6:803:dc::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.15 via Frontend
 Transport; Wed, 14 Aug 2019 10:22:34 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT008.mail.protection.outlook.com (10.152.20.98) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.18 via Frontend Transport; Wed, 14 Aug 2019 10:22:32 +0000
Received: ("Tessian outbound 578a71fe5eaa:v26");
 Wed, 14 Aug 2019 10:22:31 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8e0c8b639be978e6
X-CR-MTA-TID: 64aa7808
Received: from 18a735e82a11.1 (cr-mta-lb-1.cr-mta-net [104.47.0.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 15946542-F853-4D59-AF64-5775E59093E7.1; 
 Wed, 14 Aug 2019 10:22:25 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur01lp2058.outbound.protection.outlook.com [104.47.0.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 18a735e82a11.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 14 Aug 2019 10:22:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+FVbLpptyoegF3Lk6G87z7E1UjOmq0hpvshSX4mqKQ1iAS8YoHyf0PEsL4L7s0XMqwy8ttzFR3v/FstX3IKAVE/XPIIbtT4JXCN8pQBQ8DGoG6y0XhlRAbaKf+hh+sBpC4PwpB7K8CztTElYN1nkNSQagYaCFlH0fV8G+I1YMU5yFI12bGIWP9Mvzr6SMNaPU+bezpzhs1t5Us/m4DcRtPXMEMRsSnC+GQLBTgKzP7qFQZTRTPmxR+m6MsImFhEH83xbsHDWzFfLqj1BaodHGq+HfLiwg/xM+DiYLW25m/no2mZ2oBrkP6wKomFxYC2PVOyYIaKZCmI3JoNcqjyjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=APiMtoiGgdvHiHe78UjW/A2++kp007ioBtbcd6xVA64=;
 b=HSq6C6np6XHF85GmWpAkILwOUbz/KqPG/d8L2yusHyzFTmF7szTmUAvzTvhztw3131Aeoi6XcyUVjpSDAefbWXBy08XS0wFHr7YdLH12rGEAJ/YO3expx22Ec0jI5P+gRTP2rwsUlJYqBBfkIP6KlUROlBMySxNIHhruasx4yXJeLnvGsqG4bpvyy1N5HmrUOn60atSMA2ZvonJW4L+vrQGPkKbSrW8kEh/p7RYLUE1yAfSpWP47G0E8qOC0057QuiKkQNHzfddsi70Oy1Mum5GumwaHyLqZ9cRjUwk+dRXFEEbJBFNxVTnZwGmLH0cMmQROse+REaWsm0zE2ub5mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=APiMtoiGgdvHiHe78UjW/A2++kp007ioBtbcd6xVA64=;
 b=bwN/PijqH1D/OPoNFqfe7a23UpmRTNqpSuRTdIu1xLwUDsMEODM5E8uieA7u364hXJP3RHQaYiyF8750dJ5JU012nrH+F6jwjUDPasyIdDrLrSuvq/PIhWYNxoJYaUBIBfLfZXoS00xUJLtcjj31fTcVKiAoue/AR+AGUuOBUyE=
Received: from AM5PR0801MB1636.eurprd08.prod.outlook.com (10.169.246.150) by
 AM5PR0801MB1634.eurprd08.prod.outlook.com (10.169.246.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Wed, 14 Aug 2019 10:22:22 +0000
Received: from AM5PR0801MB1636.eurprd08.prod.outlook.com
 ([fe80::ad15:83f1:7912:7e26]) by AM5PR0801MB1636.eurprd08.prod.outlook.com
 ([fe80::ad15:83f1:7912:7e26%10]) with mapi id 15.20.2157.022; Wed, 14 Aug
 2019 10:22:22 +0000
From: Amit Kachhap <Amit.Kachhap@arm.com>
To: Cristian Marussi <Cristian.Marussi@arm.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "shuah@kernel.org" <shuah@kernel.org>
Subject: Re: [PATCH v3 02/11] kselftest: arm64: adds first test and common
 utils
Thread-Topic: [PATCH v3 02/11] kselftest: arm64: adds first test and common
 utils
Thread-Index: AQHVUQuQTCbomRqZeUKP5KPM31XITqb5EkmAgAFf6YA=
Date: Wed, 14 Aug 2019 10:22:22 +0000
Message-ID: <6f74c9d9-7ea5-15b5-98ec-d896019f1c08@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-3-cristian.marussi@arm.com>
 <23e44146-92cc-73de-0eab-a1e7b82ea3bc@arm.com>
 <5fb0a4fb-0457-8546-a8d7-af3f0d3f9348@arm.com>
In-Reply-To: <5fb0a4fb-0457-8546-a8d7-af3f0d3f9348@arm.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0073.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::13) To AM5PR0801MB1636.eurprd08.prod.outlook.com
 (2603:10a6:203:3a::22)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Amit.Kachhap@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.105.40]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: acb78a76-f7db-428a-ad31-08d720a151d0
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0801MB1634; 
X-MS-TrafficTypeDiagnostic: AM5PR0801MB1634:|AM0PR08MB4948:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB4948851DB031EF60BE8AAE968CAD0@AM0PR08MB4948.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:538;OLM:538;
x-forefront-prvs: 01294F875B
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(366004)(376002)(136003)(189003)(51914003)(199004)(66446008)(4326008)(64756008)(6506007)(53546011)(478600001)(71200400001)(66946007)(66476007)(81166006)(99286004)(31686004)(386003)(81156014)(186003)(66556008)(71190400001)(8676002)(486006)(305945005)(102836004)(44832011)(6436002)(76176011)(6486002)(52116002)(6116002)(30864003)(476003)(316002)(86362001)(14444005)(2616005)(229853002)(25786009)(110136005)(53936002)(8936002)(53946003)(54906003)(7736002)(6512007)(2501003)(11346002)(14454004)(6246003)(256004)(66066001)(2906002)(446003)(2201001)(36756003)(31696002)(3846002)(5660300002)(26005)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB1634;
 H:AM5PR0801MB1636.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: 0JuyS+3ynNO9XeaDBZ3eaFM7DxpQ/uAztBR4UCKma9IWn7qkiULK+WQlR0KlPjzgpTasH9AkQB5kbEqNzzdvSod29m7EBzWMGdaeWGAkdFF/xk+YN7ljIR5slTEaO6Wublfs9KU6PoeVl91iOu3xFgqGQuCdS5FOOHYgEFhcZbCCkW6EPry5sc9s6LRpNm40PDJrL2rOiQbVovZ7Iioq5hLq+mXOd87c3jP1kfwFTKtw777qWVIj2Hl/AgitWodKIMlbJ4lYnBhA96TUapFuaqaEVCoG3YMBYfQYfQHg3l+LZOFzIR0vbhL/H3Kiebw+aFiuY3EoK+DDRHjzCd9yb7uNcBPRWLDg1v2Djr2Ahnpdt8aB4op8pBkSZViCgPzxdPaf4YvbOIfxoMZekauqOaUhiRDTaaUqfxAplnSyENY=
Content-ID: <2C760F8D90AB694C80D42614DCA05CC8@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1634
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Amit.Kachhap@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT008.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(346002)(396003)(2980300002)(51914003)(199004)(189003)(40434004)(25786009)(436003)(81156014)(22756006)(476003)(36756003)(63370400001)(70206006)(63350400001)(2616005)(126002)(446003)(31686004)(8936002)(2501003)(70586007)(5660300002)(336012)(11346002)(7736002)(30864003)(66066001)(305945005)(6116002)(3846002)(2906002)(486006)(2201001)(81166006)(110136005)(47776003)(14444005)(4326008)(5024004)(2486003)(6246003)(229853002)(316002)(54906003)(356004)(31696002)(26826003)(8676002)(6486002)(76130400001)(478600001)(99286004)(76176011)(53546011)(86362001)(6506007)(23676004)(102836004)(26005)(50466002)(53946003)(186003)(386003)(6512007)(14454004)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4948;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 45b631e6-9d7d-4331-e272-08d720a14b22
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR08MB4948; 
X-Forefront-PRVS: 01294F875B
X-Microsoft-Antispam-Message-Info: dwzMgqZEVLyg1IviKWKcVAlQ1BkaXLMU1SiTYmcrRg7RO2iYHoTRzvrWMMghmlTxO/qaszl5GfXdws+vViJNPCnhh+/t9qPEDc3gv1gNzIA0W1kqMVpgVLTtQgM4nofZPdz2nolxu+DUMhvqeWT9Uey7lpX+lSAWbAAEk1JhXoIxhgRYl9cuRpegY2R2Rw4VSj9fBjBEREqHWNKnu3ldOCwP4q7zW74ZVL7s1hGP23dvnymjoEgr1rllbwfey3RBtMxiNbxBDFBSFxRSRI92oWyKZncZvzm5d/P6gocQVcER1JakYbmFoXu5yLQTx9PVWkUNQ6nz9BWg16U+rdPLglPBC6+jRUDAOzp4GC3F0LmhScNLsvzNv5kA4V8QyLsdd05Y4JxOAECTPzWgDt8s1UbxKJv8qM+Uv7DzTs0hYzQ=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 10:22:32.9967 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: acb78a76-f7db-428a-ad31-08d720a151d0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_032244_298607_EEE1578F 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.53 listed in list.dnswl.org]
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
Cc: "andreyknvl@google.com" <andreyknvl@google.com>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cristian,

I have few more comments,

On 8/13/19 6:52 PM, Cristian Marussi wrote:
> Hi Amit
>
> thanks for the review.
>
> On 12/08/2019 13:43, Amit Kachhap wrote:
>> Hi Cristian,
>>
>> On 8/2/19 10:32 PM, Cristian Marussi wrote:
>>> Added some arm64/signal specific boilerplate and utility code to help
>>> further testcase development.
>>>
>>> A simple testcase and related helpers are also introduced in this commit:
>>> mangle_pstate_invalid_compat_toggle is a simple mangle testcase which
>>> messes with the ucontext_t from within the sig_handler, trying to toggle
>>> PSTATE state bits to switch the system between 32bit/64bit execution state.
>>> Expects SIGSEGV on test PASS.
>>>
>>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>>> ---
>>> A few fixes:
>>> - test_arm64_signals.sh runner script generation has been reviewed in order to
>>>     be safe against the .gitignore
>>> - using kselftest.h officially provided defines for tests' return values
>>> - removed SAFE_WRITE()/dump_uc()
>>> - looking for si_code==SEGV_ACCERR on SEGV test cases to better understand if
>>>     the sigfault had been directly triggered by Kernel
>>> ---
>>>    tools/testing/selftests/arm64/Makefile        |   2 +-
>>>    .../testing/selftests/arm64/signal/.gitignore |   6 +
>>>    tools/testing/selftests/arm64/signal/Makefile |  88 ++++++
>>>    tools/testing/selftests/arm64/signal/README   |  59 ++++
>>>    .../arm64/signal/test_arm64_signals.src_shell |  55 ++++
>>>    .../selftests/arm64/signal/test_signals.c     |  26 ++
>>>    .../selftests/arm64/signal/test_signals.h     | 137 +++++++++
>>>    .../arm64/signal/test_signals_utils.c         | 261 ++++++++++++++++++
>>>    .../arm64/signal/test_signals_utils.h         |  13 +
>>>    .../arm64/signal/testcases/.gitignore         |   1 +
>>>    .../mangle_pstate_invalid_compat_toggle.c     |  25 ++
>>>    .../arm64/signal/testcases/testcases.c        | 150 ++++++++++
>>>    .../arm64/signal/testcases/testcases.h        |  83 ++++++
>>>    13 files changed, 905 insertions(+), 1 deletion(-)
>>>    create mode 100644 tools/testing/selftests/arm64/signal/.gitignore
>>>    create mode 100644 tools/testing/selftests/arm64/signal/Makefile
>>>    create mode 100644 tools/testing/selftests/arm64/signal/README
>>>    create mode 100755 tools/testing/selftests/arm64/signal/test_arm64_signals.src_shell
>>>    create mode 100644 tools/testing/selftests/arm64/signal/test_signals.c
>>>    create mode 100644 tools/testing/selftests/arm64/signal/test_signals.h
>>>    create mode 100644 tools/testing/selftests/arm64/signal/test_signals_utils.c
>>>    create mode 100644 tools/testing/selftests/arm64/signal/test_signals_utils.h
>>>    create mode 100644 tools/testing/selftests/arm64/signal/testcases/.gitignore
>>>    create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c
>>>    create mode 100644 tools/testing/selftests/arm64/signal/testcases/testcases.c
>>>    create mode 100644 tools/testing/selftests/arm64/signal/testcases/testcases.h
>>>
>>> diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
>>> index 03a0d4f71218..af59dc74e0dc 100644
>>> --- a/tools/testing/selftests/arm64/Makefile
>>> +++ b/tools/testing/selftests/arm64/Makefile
>>> @@ -6,7 +6,7 @@ ARCH ?= $(shell uname -m)
>>>    ARCH := $(shell echo $(ARCH) | sed -e s/aarch64/arm64/)
>>>
>>>    ifeq ("x$(ARCH)", "xarm64")
>>> -SUBDIRS :=
>>> +SUBDIRS := signal
>>>    else
>>>    SUBDIRS :=
>>>    endif
>>> diff --git a/tools/testing/selftests/arm64/signal/.gitignore b/tools/testing/selftests/arm64/signal/.gitignore
>>> new file mode 100644
>>> index 000000000000..434f65c15f03
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/signal/.gitignore
>>> @@ -0,0 +1,6 @@
>>> +# Helper script's internal testcases list (TPROGS) is regenerated
>>> +# each time by Makefile on standalone (non KSFT driven) runs.
>>> +# Committing such list creates a dependency between testcases
>>> +# patches such that they are no more easily revertable. Just ignore.
>>> +test_arm64_signals.src_shell
>>> +test_arm64_signals.sh
>>> diff --git a/tools/testing/selftests/arm64/signal/Makefile b/tools/testing/selftests/arm64/signal/Makefile
>>> new file mode 100644
>>> index 000000000000..8c8d08be4b0d
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/signal/Makefile
>>> @@ -0,0 +1,88 @@
>>> +# SPDX-License-Identifier: GPL-2.0
>>> +# Copyright (C) 2019 ARM Limited
>>> +
>>> +# Supports also standalone invokation out of KSFT-tree
>>> +# Compile standalone and run on your device with:
>>> +#
>>> +#  $ make -C tools/testing/selftests/arm64/signal INSTALL_PATH=<your-dir> install
>>> +#
>>> +# Run standalone on device with:
>>> +#
>>> +#  $ <your-device-instdir>/test_arm64_signals.sh [-k|-v]
>>> +#
>>> +# If INSTALL_PATH= is NOT provided it will default to ./install
>>> +
>>> +# A proper top_srcdir is needed both by KSFT(lib.mk)
>>> +# and standalone builds
>>> +top_srcdir = ../../../../..
>>> +
>>> +CFLAGS += -std=gnu99 -I. -I$(top_srcdir)/tools/testing/selftests/
>>> +SRCS := $(filter-out testcases/testcases.c,$(wildcard testcases/*.c))
>>> +PROGS := $(patsubst %.c,%,$(SRCS))
>>> +
>>> +# Guessing as best as we can where the Kernel headers
>>> +# could have been installed depending on ENV config and
>>> +# type of invocation.
>>> +ifeq ($(KBUILD_OUTPUT),)
>>> +khdr_dir = $(top_srcdir)/usr/include
>>> +else
>>> +ifeq (0,$(MAKELEVEL))
>>> +khdr_dir = $(KBUILD_OUTPUT)/usr/include
>>> +else
>>> +# the KSFT preferred location when KBUILD_OUTPUT is set
>>> +khdr_dir = $(KBUILD_OUTPUT)/kselftest/usr/include
>>> +endif
>>> +endif
>>> +
>>> +CFLAGS += -I$(khdr_dir)
>>> +
>>> +# Standalone run
>>> +ifeq (0,$(MAKELEVEL))
>>> +CC := $(CROSS_COMPILE)gcc
>>> +RUNNER_SRC = test_arm64_signals.src_shell
>>> +RUNNER = test_arm64_signals.sh
Is this extra level of copying test_arm64_signals.src_shell to
test_arm64_signals.sh required? I cannot see them in other selftests.
Also if done then clean may be required. May be EXTRA_CLEAN parameter
can be used as done for other selftests.
>>> +INSTALL_PATH ?= install/
Here default INSTALL_PATH should be just "install" as it may insert "/"
twice for below install case.
>>> +
>>> +all: $(RUNNER)
>>> +
>>> +$(RUNNER): $(PROGS)
>>> +   cp $(RUNNER_SRC) $(RUNNER)
>>> +   sed -i -e 's#PROGS=.*#PROGS="$(PROGS)"#' $@
>>> +
>>> +install: all
>>> +   mkdir -p $(INSTALL_PATH)/testcases
>>> +   cp $(PROGS) $(INSTALL_PATH)/testcases
>>> +   cp $(RUNNER) $(INSTALL_PATH)/
>>> +
>>> +.PHONY clean:
>>> +   rm -f $(PROGS)
>>> +# KSFT run
>>> +else
>>> +# Generated binaries to be installed by top KSFT script
>>> +TEST_GEN_PROGS := $(notdir $(PROGS))
>>> +
>>> +# Get Kernel headers installed and use them.
>>> +KSFT_KHDR_INSTALL := 1
>>> +
>>> +# This include mk will also mangle the TEST_GEN_PROGS list
>>> +# to account for any OUTPUT target-dirs optionally provided
>>> +# by the toplevel makefile
>>> +include ../../lib.mk
>>> +
>>> +$(TEST_GEN_PROGS): $(PROGS)
>>> +   cp $(PROGS) $(OUTPUT)/
I guess this copy requires cleaning too.
>>> +
>>> +clean:
>>> +   $(CLEAN)
>>> +   rm -f $(PROGS)
Is clean requires to clean installed programs also?
>>> +endif
>>> +
>>> +# Common test-unit targets to build common-layout test-cases executables
>>> +# Needs secondary expansion to properly include the testcase c-file in pre-reqs
>>> +.SECONDEXPANSION:
>>> +$(PROGS): test_signals.c test_signals_utils.c testcases/testcases.c $$@.c test_signals.h test_signals_utils.h testcases/testcases.h
>>
>> I suppose *.h can be removed from the targets here.
>
> *.h are in the pre-reqs, $(PROGS) represent the targets and it's comprised by the *.c file contained in testcases/ (excluding testcases.c)
>
> If I remove the *.h from this rule, targets won't be rebuilt when headers are changed (like after having added an hypotethical inline)...
>
> or am I missing something else ?
Yes You are right.

Thanks,
Amit Daniel
>
>
>>
>>
>>> +   @if [ ! -d $(khdr_dir) ]; then \
>>> +           echo -n "\n!!! WARNING: $(khdr_dir) NOT FOUND."; \
>>> +           echo "===>  Are you sure Kernel Headers have been installed properly ?\n"; \
>>> +   fi
>>> +   $(CC) $(CFLAGS) $^ -o $@
>>> diff --git a/tools/testing/selftests/arm64/signal/README b/tools/testing/selftests/arm64/signal/README
>>> new file mode 100644
>>> index 000000000000..53f005f7910a
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/signal/README
>>> @@ -0,0 +1,59 @@
>>> +KSelfTest arm64/signal/
>>> +=======================
>>> +
>>> +Signals Tests
>>> ++++++++++++++
>>> +
>>> +- Tests are built around a common main compilation unit: such shared main
>>> +  enforces a standard sequence of operations needed to perform a single
>>> +  signal-test (setup/trigger/run/result/cleanup)
>>> +
>>> +- The above mentioned ops are configurable on a test-by-test basis: each test
>>> +  is described (and configured) using the descriptor signals.h::struct tdescr
>>> +
>>> +- Each signal testcase is compiled into its own executable: a separate
>>> +  executable is used for each test since many tests complete successfully
>>> +  by receiving some kind of fatal signal from the Kernel, so it's safer
>>> +  to run each test unit in its own standalone process, so as to start each
>>> +  test from a clean slate.
>>> +
>>> +- New tests can be simply defined in testcases/ dir providing a proper struct
>>> +  tdescr overriding all the defaults we wish to change (as of now providing a
>>> +  custom run method is mandatory though)
>>> +
>>> +- Signals' test-cases hereafter defined belong currently to two
>>> +  principal families:
>>> +
>>> +  - 'mangle_' tests: a real signal (SIGUSR1) is raised and used as a trigger
>>> +    and then the test case code messes-up with the sigframe ucontext_t from
>>> +    inside the sighandler itself.
>>> +
>>> +  - 'fake_sigreturn_' tests: a brand new custom artificial sigframe structure
>>> +    is placed on the stack and a sigreturn syscall is called to simulate a
>>> +    real signal return. This kind of tests does not use a trigger usually and
>>> +    they are just fired using some simple included assembly trampoline code.
>>> +
>>> + - Most of these tests are successfully passing if the process gets killed by
>>> +   some fatal signal: usually SIGSEGV or SIGBUS. Since while writing this
>>> +   kind of tests it is extremely easy in fact to end-up injecting other
>>> +   unrelated SEGV bugs in the testcases, it becomes extremely tricky to
>>> +   be really sure that the tests are really addressing what they are meant
>>> +   to address and they are not instead falling apart due to unplanned bugs
>>> +   in the test code.
>>> +   In order to alleviate the misery of the life of such test-developer, a few
>>> +   helpers are provided:
>>> +
>>> +   - a couple of ASSERT_BAD/GOOD_CONTEXT() macros to easily parse a ucontext_t
>>> +     and verify if it is indeed GOOD or BAD (depending on what we were
>>> +     expecting), using the same logic/perspective as in the arm64 Kernel signals
>>> +     routines.
>>> +
>>> +   - a sanity mechanism to be used in 'fake_sigreturn_'-alike tests: enabled by
>>> +     default it takes care to verify that the test-execution had at least
>>> +     successfully progressed up to the stage of triggering the fake sigreturn
>>> +     call.
>>> +
>>> +  In both cases test results are expected in terms of:
>>> +   - some fatal signal sent by the Kernel to the test process
>>> +  or
>>> +  - analyzing some final regs state
>>> diff --git a/tools/testing/selftests/arm64/signal/test_arm64_signals.src_shell b/tools/testing/selftests/arm64/signal/test_arm64_signals.src_shell
>>> new file mode 100755
>>> index 000000000000..163e941e2997
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/signal/test_arm64_signals.src_shell
>>> @@ -0,0 +1,55 @@
>>> +#!/bin/sh
>>> +# SPDX-License-Identifier: GPL-2.0
>>> +# Copyright (C) 2019 ARM Limited
>>> +
>>> +ret=0
>>> +keep_on_fail=0
>>> +err_out="2> /dev/null"
>>> +
>>> +usage() {
>>> +   echo "Usage: `basename $0` [-v] [-k]"
>>> +   exit 1
>>> +}
>>> +
>>> +# avoiding getopt to avoid compatibility issues on targets
>>> +# with limited resources
>>> +while [ $# -gt 0 ]
>>> +do
>>> +   case $1 in
>>> +           "-k")
>>> +                   keep_on_fail=1
>>> +                   ;;
>>> +           "-v")
>>> +                   err_out=
>>> +                   ;;
>>> +           *)
>>> +                   usage
>>> +                   ;;
>>> +   esac
>>> +   shift
>>> +done
>>> +
>>> +TPROGS=
>>> +
>>> +tot=$(echo $TPROGS | wc -w)
>>> +
>>> +# Tests are expected in testcases/ subdir inside the installation path
>>> +workdir="`dirname $0 2>/dev/null`"
>>> +[ -n $workdir ] && cd $workdir
>>> +
>>> +passed=0
>>> +run=0
>>> +for test in $TPROGS
>>> +do
>>> +   run=$((run + 1))
>>> +   eval ./$test $err_out
>>> +   if [ $? != 0 ]; then
>>> +           [ $keep_on_fail = 0 ] && echo "===>>> FAILED:: $test <<<===" && ret=1 && break
>>> +   else
>>> +           passed=$((passed + 1))
>>> +   fi
>>> +done
>>> +
>>> +echo "==>> PASSED: $passed/$run on $tot available tests."
>>> +
>>> +exit $ret
>>> diff --git a/tools/testing/selftests/arm64/signal/test_signals.c b/tools/testing/selftests/arm64/signal/test_signals.c
>>> new file mode 100644
>>> index 000000000000..3447d7011aec
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/signal/test_signals.c
>>> @@ -0,0 +1,26 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +/* Copyright (C) 2019 ARM Limited */
>>> +
>>> +#include <kselftest.h>
>>> +
>>> +#include "test_signals.h"
>>> +#include "test_signals_utils.h"
>>> +
>>> +struct tdescr *current;
>>> +extern struct tdescr tde;
>>> +
>>> +int main(int argc, char *argv[])
>>> +{
>>> +   current = &tde;
>>> +
>>> +   ksft_print_msg("%s :: %s - SIG_TRIG:%d  SIG_OK:%d -- current:%p\n",
>>> +                  current->name, current->descr, current->sig_trig,
>>> +                  current->sig_ok, current);
>>> +   if (test_setup(current)) {
>>> +           if (test_run(current))
>>> +                   test_result(current);
>>> +           test_cleanup(current);
>>> +   }
>>> +
>>> +   return current->pass ? KSFT_PASS : KSFT_FAIL;
>>> +}
>>> diff --git a/tools/testing/selftests/arm64/signal/test_signals.h b/tools/testing/selftests/arm64/signal/test_signals.h
>>> new file mode 100644
>>> index 000000000000..85db3ac44b32
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/signal/test_signals.h
>>> @@ -0,0 +1,137 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +/* Copyright (C) 2019 ARM Limited */
>>> +
>>> +#ifndef __TEST_SIGNALS_H__
>>> +#define __TEST_SIGNALS_H__
>>> +
>>> +#include <assert.h>
>>> +#include <stdbool.h>
>>> +#include <signal.h>
>>> +#include <ucontext.h>
>>> +#include <stdint.h>
>> Headers can be added in alphabetically order.
>>
> Ok I'll do.
>
> Cheers
>
> Cristian
>
>> Thanks,
>> Amit D
>>> +
>>> +/*
>>> + * Using ARCH specific and sanitized Kernel headers installed by KSFT
>>> + * framework since we asked for it by setting flag KSFT_KHDR_INSTALL
>>> + * in our Makefile.
>>> + */
>>> +#include <asm/ptrace.h>
>>> +#include <asm/hwcap.h>
>>> +
>>> +/* pasted from include/linux/stringify.h */
>>> +#define __stringify_1(x...)        #x
>>> +#define __stringify(x...)  __stringify_1(x)
>>> +
>>> +/*
>>> + * Reads a sysreg using the, possibly provided, S3_ encoding in order to
>>> + * avoid inject any dependency on the used toolchain regarding possibly
>>> + * still unsupported ARMv8 extensions.
>>> + *
>>> + * Using a standard mnemonic here to indicate the specific sysreg (like SSBS)
>>> + * would introduce a compile-time dependency on possibly unsupported ARMv8
>>> + * Extensions: you could end-up failing to build the test depending on the
>>> + * available toolchain.
>>> + * This is undesirable since some tests, even if specifically targeted at some
>>> + * ARMv8 Extensions, can be plausibly run even on hardware lacking the above
>>> + * optional ARM features. (SSBS bit preservation is an example: Kernel handles
>>> + * it transparently not caring at all about the effective set of supported
>>> + * features).
>>> + * On the other side we will expect to observe different behaviours if the
>>> + * feature is supported or not: usually getting a SIGILL when trying to use
>>> + * unsupported features. For this reason we have anyway in place some
>>> + * preliminary run-time checks about the cpu effectively supported features.
>>> + *
>>> + * This helper macro is meant to be used for regs readable at EL0, BUT some
>>> + * EL1 sysregs are indeed readable too through MRS emulation Kernel-mechanism
>>> + * if the required reg is included in the supported encoding space:
>>> + *
>>> + *  Documentation/arm64/cpu-feature-regsiters.txt
>>> + *
>>> + *  "The infrastructure emulates only the following system register space:
>>> + *         Op0=3, Op1=0, CRn=0, CRm=0,4,5,6,7
>>> + */
>>> +#define get_regval(regname, out) \
>>> +   asm volatile("mrs %0, " __stringify(regname) : "=r" (out) :: "memory")
>>> +
>>> +/* Regs encoding and masks naming copied in from sysreg.h */
>>> +#define SYS_ID_AA64MMFR1_EL1       S3_0_C0_C7_1    /* MRS Emulated */
>>> +#define SYS_ID_AA64MMFR2_EL1       S3_0_C0_C7_2    /* MRS Emulated */
>>> +#define ID_AA64MMFR1_PAN_SHIFT     20
>>> +#define ID_AA64MMFR2_UAO_SHIFT     4
>>> +
>>> +/* Local Helpers */
>>> +#define IS_PAN_SUPPORTED(val) \
>>> +   (!!((val) & (0xfUL << ID_AA64MMFR1_PAN_SHIFT)))
>>> +#define IS_UAO_SUPPORTED(val) \
>>> +   (!!((val) & (0xfUL << ID_AA64MMFR2_UAO_SHIFT)))
>>> +
>>> +#define S3_MRS_SSBS_SYSREG         S3_3_C4_C2_6    /* EL0 supported */
>>> +
>>> +/*
>>> + * Feature flags used in tdescr.feats_required to specify
>>> + * any feature by the test
>>> + */
>>> +enum {
>>> +   FSSBS_BIT,
>>> +   FPAN_BIT,
>>> +   FUAO_BIT,
>>> +   FMAX_END
>>> +};
>>> +
>>> +#define FEAT_SSBS          (1UL << FSSBS_BIT)
>>> +#define FEAT_PAN           (1UL << FPAN_BIT)
>>> +#define FEAT_UAO           (1UL << FUAO_BIT)
>>> +
>>> +/*
>>> + * A descriptor used to describe and configure a test case.
>>> + * Fields with a non-trivial meaning are described inline in the following.
>>> + */
>>> +struct tdescr {
>>> +   /* KEEP THIS FIELD FIRST for easier lookup from assembly */
>>> +   void            *token;
>>> +   /* when disabled token based sanity checking is skipped in handler */
>>> +   bool            sanity_disabled;
>>> +   /* just a name for the test-case; manadatory field */
>>> +   char            *name;
>>> +   char            *descr;
>>> +   unsigned long   feats_required;
>>> +   /* bitmask of effectively supported feats: populated at run-time */
>>> +   unsigned long   feats_supported;
>>> +   bool            feats_ok;
>>> +   bool            initialized;
>>> +   unsigned int    minsigstksz;
>>> +   /* signum used as a test trigger. Zero if no trigger-signal is used */
>>> +   int             sig_trig;
>>> +   /*
>>> +    * signum considered as a successful test completion.
>>> +    * Zero when no signal is expected on success
>>> +    */
>>> +   int             sig_ok;
>>> +   /* signum expected on unsupported CPU features. */
>>> +   int             sig_unsupp;
>>> +   /* a timeout in second for test completion */
>>> +   unsigned int    timeout;
>>> +   bool            triggered;
>>> +   bool            pass;
>>> +   /* optional sa_flags for the installed handler */
>>> +   int             sa_flags;
>>> +   ucontext_t      saved_uc;
>>> +
>>> +   /* a setup function to be called before test starts */
>>> +   int (*setup)(struct tdescr *td);
>>> +   void (*cleanup)(struct tdescr *td);
>>> +
>>> +   /* an optional function to be used as a trigger for test starting */
>>> +   int (*trigger)(struct tdescr *td);
>>> +   /*
>>> +    * the actual test-core: invoked differently depending on the
>>> +    * presence of the trigger function above; this is mandatory
>>> +    */
>>> +   int (*run)(struct tdescr *td, siginfo_t *si, ucontext_t *uc);
>>> +
>>> +   /* an optional function for custom results' processing */
>>> +   void (*check_result)(struct tdescr *td);
>>> +
>>> +   void *priv;
>>> +};
>>> +#endif
>>> diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.c b/tools/testing/selftests/arm64/signal/test_signals_utils.c
>>> new file mode 100644
>>> index 000000000000..ac0055f6340b
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/signal/test_signals_utils.c
>>> @@ -0,0 +1,261 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +/* Copyright (C) 2019 ARM Limited */
>>> +
>>> +#include <stdio.h>
>>> +#include <stdlib.h>
>>> +#include <signal.h>
>>> +#include <string.h>
>>> +#include <unistd.h>
>>> +#include <assert.h>
>>> +#include <sys/auxv.h>
>>> +#include <linux/auxvec.h>
>>> +#include <ucontext.h>
>>> +
>>> +#include "test_signals.h"
>>> +#include "test_signals_utils.h"
>>> +#include "testcases/testcases.h"
>>> +
>>> +extern struct tdescr *current;
>>> +
>>> +static char *feats_store[FMAX_END] = {
>>> +   "SSBS",
>>> +   "PAN",
>>> +   "UAO"
>>> +};
>>> +
>>> +#define MAX_FEATS_SZ       128
>>> +static inline char *feats_to_string(unsigned long feats)
>>> +{
>>> +   static char feats_string[MAX_FEATS_SZ];
>>> +
>>> +   for (int i = 0; i < FMAX_END && feats_store[i][0]; i++) {
>>> +           if (feats & 1UL << i)
>>> +                   snprintf(feats_string, MAX_FEATS_SZ - 1, "%s %s ",
>>> +                            feats_string, feats_store[i]);
>>> +   }
>>> +
>>> +   return feats_string;
>>> +}
>>> +
>>> +static void unblock_signal(int signum)
>>> +{
>>> +   sigset_t sset;
>>> +
>>> +   sigemptyset(&sset);
>>> +   sigaddset(&sset, signum);
>>> +   sigprocmask(SIG_UNBLOCK, &sset, NULL);
>>> +}
>>> +
>>> +static void default_result(struct tdescr *td, bool force_exit)
>>> +{
>>> +   if (td->pass)
>>> +           fprintf(stderr, "==>> completed. PASS(1)\n");
>>> +   else
>>> +           fprintf(stdout, "==>> completed. FAIL(0)\n");
>>> +   if (force_exit)
>>> +           exit(td->pass ? EXIT_SUCCESS : EXIT_FAILURE);
>>> +}
>>> +
>>> +static inline bool are_feats_ok(struct tdescr *td)
>>> +{
>>> +   return td ? td->feats_required == td->feats_supported : 0;
>>> +}
>>> +
>>> +static void default_handler(int signum, siginfo_t *si, void *uc)
>>> +{
>>> +   if (current->sig_trig && signum == current->sig_trig) {
>>> +           fprintf(stderr, "Handling SIG_TRIG\n");
>>> +           current->triggered = 1;
>>> +           /* ->run was asserted NON-NULL in test_setup() already */
>>> +           current->run(current, si, uc);
>>> +   } else if (signum == SIGILL && !current->initialized) {
>>> +           /*
>>> +            * A SIGILL here while still not initialized means we failed
>>> +            * even to asses the existence of features during init
>>> +            */
>>> +           fprintf(stdout,
>>> +                   "Got SIGILL test_init. Marking ALL features UNSUPPORTED.\n");
>>> +           current->feats_supported = 0;
>>> +   } else if (current->sig_ok && signum == current->sig_ok) {
>>> +           /* it's a bug in the test code when this assert fail */
>>> +           assert(!current->sig_trig || current->triggered);
>>> +           fprintf(stderr,
>>> +                   "SIG_OK -- SP:%p  si_addr@:0x%p  si_code:%d  token@:0x%p  offset:%ld\n",
>>> +                   ((ucontext_t *)uc)->uc_mcontext.sp,
>>> +                   si->si_addr, si->si_code, current->token,
>>> +                   current->token - si->si_addr);
>>> +           /*
>>> +            * fake_sigreturn tests, which have sanity_enabled=1, set, at
>>> +            * the very last time, the token field to the SP address used
>>> +            * to place the fake sigframe: so token==0 means we never made
>>> +            * it to the end, segfaulting well-before, and the test is
>>> +            * possibly broken.
>>> +            */
>>> +           if (!current->sanity_disabled && !current->token) {
>>> +                   fprintf(stdout,
>>> +                           "current->token ZEROED...test is probably broken!\n");
>>> +                   assert(0);
>>> +           }
>>> +           /*
>>> +            * Trying to narrow down the SEGV to the ones generated by
>>> +            * Kernel itself via arm64_notify_segfault()
>>> +            */
>>> +           if (current->sig_ok == SIGSEGV && si->si_code != SEGV_ACCERR) {
>>> +                   fprintf(stdout,
>>> +                           "si_code != SEGV_ACCERR...test is probably broken!\n");
>>> +                   assert(0);
>>> +           }
>>> +           fprintf(stderr, "Handling SIG_OK\n");
>>> +           current->pass = 1;
>>> +           /*
>>> +            * Some tests can lead to SEGV loops: in such a case we want
>>> +            * to terminate immediately exiting straight away
>>> +            */
>>> +           default_result(current, 1);
>>> +   } else {
>>> +           if (signum == current->sig_unsupp && !are_feats_ok(current)) {
>>> +                   fprintf(stderr, "-- RX SIG_UNSUPP on unsupported feature...OK\n");
>>> +                   current->pass = 1;
>>> +           } else if (signum == SIGALRM && current->timeout) {
>>> +                   fprintf(stderr, "-- Timeout !\n");
>>> +           } else {
>>> +                   fprintf(stderr,
>>> +                           "-- RX UNEXPECTED SIGNAL: %d\n", signum);
>>> +           }
>>> +           default_result(current, 1);
>>> +   }
>>> +}
>>> +
>>> +static int default_setup(struct tdescr *td)
>>> +{
>>> +   struct sigaction sa;
>>> +
>>> +   sa.sa_sigaction = default_handler;
>>> +   sa.sa_flags = SA_SIGINFO;
>>> +   if (td->sa_flags)
>>> +           sa.sa_flags |= td->sa_flags;
>>> +   sigemptyset(&sa.sa_mask);
>>> +   /* uncatchable signals naturally skipped ... */
>>> +   for (int sig = 1; sig < 32; sig++)
>>> +           sigaction(sig, &sa, NULL);
>>> +   /*
>>> +    * RT Signals default disposition is Term but they cannot be
>>> +    * generated by the Kernel in response to our tests; so just catch
>>> +    * them all and report them as UNEXPECTED signals.
>>> +    */
>>> +   for (int sig = SIGRTMIN; sig <= SIGRTMAX; sig++)
>>> +           sigaction(sig, &sa, NULL);
>>> +
>>> +   /* just in case...unblock explicitly all we need */
>>> +   if (td->sig_trig)
>>> +           unblock_signal(td->sig_trig);
>>> +   if (td->sig_ok)
>>> +           unblock_signal(td->sig_ok);
>>> +   if (td->sig_unsupp)
>>> +           unblock_signal(td->sig_unsupp);
>>> +
>>> +   if (td->timeout) {
>>> +           unblock_signal(SIGALRM);
>>> +           alarm(td->timeout);
>>> +   }
>>> +   fprintf(stderr, "Registered handlers for all signals.\n");
>>> +
>>> +   return 1;
>>> +}
>>> +
>>> +static inline int default_trigger(struct tdescr *td)
>>> +{
>>> +   return !raise(td->sig_trig);
>>> +}
>>> +
>>> +static int test_init(struct tdescr *td)
>>> +{
>>> +   td->minsigstksz = getauxval(AT_MINSIGSTKSZ);
>>> +   if (!td->minsigstksz)
>>> +           td->minsigstksz = MINSIGSTKSZ;
>>> +   fprintf(stderr, "Detected MINSTKSIGSZ:%d\n", td->minsigstksz);
>>> +
>>> +   if (td->feats_required) {
>>> +           bool feats_ok = false;
>>> +           td->feats_supported = 0;
>>> +           /*
>>> +            * Checking for CPU required features using both the
>>> +            * auxval and the arm64 MRS Emulation to read sysregs.
>>> +            */
>>> +           if (getauxval(AT_HWCAP) & HWCAP_CPUID) {
>>> +                   uint64_t val = 0;
>>> +
>>> +                   if (td->feats_required & FEAT_SSBS) {
>>> +                           /* Uses HWCAP to check capability */
>>> +                           if (getauxval(AT_HWCAP) & HWCAP_SSBS)
>>> +                                   td->feats_supported |= FEAT_SSBS;
>>> +                   }
>>> +                   if (td->feats_required & FEAT_PAN) {
>>> +                           /* Uses MRS emulation to check capability */
>>> +                           get_regval(SYS_ID_AA64MMFR1_EL1, val);
>>> +                           if (IS_PAN_SUPPORTED(val))
>>> +                                   td->feats_supported |= FEAT_PAN;
>>> +                   }
>>> +                   if (td->feats_required & FEAT_UAO) {
>>> +                           /* Uses MRS emulation to check capability */
>>> +                           get_regval(SYS_ID_AA64MMFR2_EL1 , val);
>>> +                           if (IS_UAO_SUPPORTED(val))
>>> +                                   td->feats_supported |= FEAT_UAO;
>>> +                   }
>>> +           } else {
>>> +                   fprintf(stderr,
>>> +                           "HWCAP_CPUID NOT available. Mark ALL feats UNSUPPORTED.\n");
>>> +           }
>>> +           feats_ok = are_feats_ok(td);
>>> +           fprintf(stderr,
>>> +                   "Required Features: [%s] %ssupported\n",
>>> +                   feats_ok ? feats_to_string(td->feats_supported) :
>>> +                   feats_to_string(td->feats_required ^ td->feats_supported),
>>> +                   !feats_ok ? "NOT " : "");
>>> +   }
>>> +
>>> +   td->initialized = 1;
>>> +   return 1;
>>> +}
>>> +
>>> +int test_setup(struct tdescr *td)
>>> +{
>>> +   /* assert core invariants symptom of a rotten testcase */
>>> +   assert(current);
>>> +   assert(td);
>>> +   assert(td->name);
>>> +   assert(td->run);
>>> +
>>> +   if (!test_init(td))
>>> +           return 0;
>>> +
>>> +   if (td->setup)
>>> +           return td->setup(td);
>>> +   else
>>> +           return default_setup(td);
>>> +}
>>> +
>>> +int test_run(struct tdescr *td)
>>> +{
>>> +   if (td->sig_trig) {
>>> +           if (td->trigger)
>>> +                   return td->trigger(td);
>>> +           else
>>> +                   return default_trigger(td);
>>> +   } else {
>>> +           return td->run(td, NULL, NULL);
>>> +   }
>>> +}
>>> +
>>> +void test_result(struct tdescr *td)
>>> +{
>>> +   if (td->check_result)
>>> +           td->check_result(td);
>>> +   default_result(td, 0);
>>> +}
>>> +
>>> +void test_cleanup(struct tdescr *td)
>>> +{
>>> +   if (td->cleanup)
>>> +           td->cleanup(td);
>>> +}
>>> diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.h b/tools/testing/selftests/arm64/signal/test_signals_utils.h
>>> new file mode 100644
>>> index 000000000000..8658d1a7d4b9
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/signal/test_signals_utils.h
>>> @@ -0,0 +1,13 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +/* Copyright (C) 2019 ARM Limited */
>>> +
>>> +#ifndef __TEST_SIGNALS_UTILS_H__
>>> +#define __TEST_SIGNALS_UTILS_H__
>>> +
>>> +#include "test_signals.h"
>>> +
>>> +int test_setup(struct tdescr *td);
>>> +void test_cleanup(struct tdescr *td);
>>> +int test_run(struct tdescr *td);
>>> +void test_result(struct tdescr *td);
>>> +#endif
>>> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>>> new file mode 100644
>>> index 000000000000..8651272e3cfc
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>>> @@ -0,0 +1 @@
>>> +mangle_pstate_invalid_compat_toggle
>>> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c
>>> new file mode 100644
>>> index 000000000000..971193e7501b
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c
>>> @@ -0,0 +1,25 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +/* Copyright (C) 2019 ARM Limited */
>>> +
>>> +#include "test_signals_utils.h"
>>> +#include "testcases.h"
>>> +
>>> +static int mangle_invalid_pstate_run(struct tdescr *td, siginfo_t *si,
>>> +                                ucontext_t *uc)
>>> +{
>>> +   ASSERT_GOOD_CONTEXT(uc);
>>> +
>>> +   /* This config should trigger a SIGSEGV by Kernel */
>>> +   uc->uc_mcontext.pstate ^= PSR_MODE32_BIT;
>>> +
>>> +   return 1;
>>> +}
>>> +
>>> +struct tdescr tde = {
>>> +           .sanity_disabled = true,
>>> +           .name = "MANGLE_PSTATE_INVALID_STATE_TOGGLE",
>>> +           .descr = "Mangling uc_mcontext with INVALID STATE_TOGGLE",
>>> +           .sig_trig = SIGUSR1,
>>> +           .sig_ok = SIGSEGV,
>>> +           .run = mangle_invalid_pstate_run,
>>> +};
>>> diff --git a/tools/testing/selftests/arm64/signal/testcases/testcases.c b/tools/testing/selftests/arm64/signal/testcases/testcases.c
>>> new file mode 100644
>>> index 000000000000..a59785092e1f
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/signal/testcases/testcases.c
>>> @@ -0,0 +1,150 @@
>>> +#include "testcases.h"
>>> +
>>> +struct _aarch64_ctx *get_header(struct _aarch64_ctx *head, uint32_t magic,
>>> +                           size_t resv_sz, size_t *offset)
>>> +{
>>> +   size_t offs = 0;
>>> +   struct _aarch64_ctx *found = NULL;
>>> +
>>> +   if (!head || resv_sz < HDR_SZ)
>>> +           return found;
>>> +
>>> +   do {
>>> +           if (head->magic == magic) {
>>> +                   found = head;
>>> +                   break;
>>> +           }
>>> +           offs += head->size;
>>> +           head = GET_RESV_NEXT_HEAD(head);
>>> +   } while (offs < resv_sz - HDR_SZ);
>>> +
>>> +   if (offset)
>>> +           *offset = offs;
>>> +
>>> +   return found;
>>> +}
>>> +
>>> +bool validate_extra_context(struct extra_context *extra, char **err)
>>> +{
>>> +   struct _aarch64_ctx *term;
>>> +
>>> +   if (!extra || !err)
>>> +           return false;
>>> +
>>> +   fprintf(stderr, "Validating EXTRA...\n");
>>> +   term = GET_RESV_NEXT_HEAD(extra);
>>> +   if (!term || term->magic || term->size) {
>>> +           *err = "UN-Terminated EXTRA context";
>>> +           return false;
>>> +   }
>>> +   if (extra->datap & 0x0fUL)
>>> +           *err = "Extra DATAP misaligned";
>>> +   else if (extra->size & 0x0fUL)
>>> +           *err = "Extra SIZE misaligned";
>>> +   else if (extra->datap != (uint64_t)term + sizeof(*term))
>>> +           *err = "Extra DATAP misplaced (not contiguos)";
>>> +   if (*err)
>>> +           return false;
>>> +
>>> +   return true;
>>> +}
>>> +
>>> +bool validate_reserved(ucontext_t *uc, size_t resv_sz, char **err)
>>> +{
>>> +   bool terminated = false;
>>> +   size_t offs = 0;
>>> +   int flags = 0;
>>> +   struct extra_context *extra = NULL;
>>> +   struct _aarch64_ctx *head =
>>> +           (struct _aarch64_ctx *)uc->uc_mcontext.__reserved;
>>> +
>>> +   if (!err)
>>> +           return false;
>>> +   /* Walk till the end terminator verifying __reserved contents */
>>> +   while (head && !terminated && offs < resv_sz) {
>>> +           if ((uint64_t)head & 0x0fUL) {
>>> +                   *err = "Misaligned HEAD";
>>> +                   return false;
>>> +           }
>>> +
>>> +           switch (head->magic) {
>>> +                   case 0:
>>> +                           if (head->size)
>>> +                                   *err = "Bad size for MAGIC0";
>>> +                           else
>>> +                                   terminated = true;
>>> +                           break;
>>> +                   case FPSIMD_MAGIC:
>>> +                           if (flags & FPSIMD_CTX)
>>> +                                   *err = "Multiple FPSIMD_MAGIC";
>>> +                           else if (head->size !=
>>> +                                    sizeof(struct fpsimd_context))
>>> +                                   *err = "Bad size for fpsimd_context";
>>> +                           flags |= FPSIMD_CTX;
>>> +                           break;
>>> +                   case ESR_MAGIC:
>>> +                           if (head->size != sizeof(struct esr_context))
>>> +                                   fprintf(stderr,
>>> +                                           "Bad size for esr_context is not an error...just ignore.\n");
>>> +                           break;
>>> +                   case SVE_MAGIC:
>>> +                           if (flags & SVE_CTX)
>>> +                                   *err = "Multiple SVE_MAGIC";
>>> +                           else if (head->size !=
>>> +                                    sizeof(struct sve_context))
>>> +                                   *err = "Bad size for sve_context";
>>> +                           flags |= SVE_CTX;
>>> +                           break;
>>> +                   case EXTRA_MAGIC:
>>> +                           if (flags & EXTRA_CTX)
>>> +                                   *err = "Multiple EXTRA_MAGIC";
>>> +                           else if (head->size !=
>>> +                                    sizeof(struct extra_context))
>>> +                                   *err = "Bad size for extra_context";
>>> +                           flags |= EXTRA_CTX;
>>> +                           extra = (struct extra_context *)head;
>>> +                           break;
>>> +                   case KSFT_BAD_MAGIC:
>>> +                           /*
>>> +                            * This is a BAD magic header defined
>>> +                            * artificially by a testcase and surely
>>> +                            * unknown to the Kernel parse_user_sigframe().
>>> +                            * It MUST cause a Kernel induced SEGV
>>> +                            */
>>> +                           *err = "BAD MAGIC !";
>>> +                           break;
>>> +                   default:
>>> +                           /*
>>> +                            * A still unknown Magic: potentially freshly added
>>> +                            * to the Kernel code and still unknown to the
>>> +                            * tests.
>>> +                            */
>>> +                           fprintf(stdout,
>>> +                                   "SKIP Unknown MAGIC: 0x%X - Is KSFT arm64/signal up to date ?\n",
>>> +                                   head->magic);
>>> +                           break;
>>> +           }
>>> +
>>> +           if (*err)
>>> +                   return false;
>>> +
>>> +           offs += head->size;
>>> +           if (resv_sz - offs < sizeof(*head)) {
>>> +                   *err = "HEAD Overrun";
>>> +                   return false;
>>> +           }
>>> +
>>> +           if (flags & EXTRA_CTX)
>>> +                   if (!validate_extra_context(extra, err))
>>> +                           return false;
>>> +
>>> +           head = GET_RESV_NEXT_HEAD(head);
>>> +   }
>>> +
>>> +   if (terminated && !(flags & FPSIMD_CTX)) {
>>> +           *err = "Missing FPSIMD";
>>> +           return false;
>>> +   }
>>> +
>>> +   return true;
>>> +}
>>> diff --git a/tools/testing/selftests/arm64/signal/testcases/testcases.h b/tools/testing/selftests/arm64/signal/testcases/testcases.h
>>> new file mode 100644
>>> index 000000000000..624717c71b1d
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/signal/testcases/testcases.h
>>> @@ -0,0 +1,83 @@
>>> +#ifndef __TESTCASES_H__
>>> +#define __TESTCASES_H__
>>> +
>>> +#include <stdio.h>
>>> +#include <stdbool.h>
>>> +#include <stdint.h>
>>> +#include <unistd.h>
>>> +#include <ucontext.h>
>>> +#include <assert.h>
>>> +
>>> +/* Architecture specific sigframe definitions */
>>> +#include <asm/sigcontext.h>
>>> +
>>> +#define FPSIMD_CTX (1 << 0)
>>> +#define SVE_CTX            (1 << 1)
>>> +#define EXTRA_CTX  (1 << 2)
>>> +
>>> +#define KSFT_BAD_MAGIC     0xdeadbeef
>>> +
>>> +#define HDR_SZ \
>>> +   sizeof(struct _aarch64_ctx)
>>> +
>>> +#define GET_SF_RESV_HEAD(sf) \
>>> +   (struct _aarch64_ctx *)(&(sf).uc.uc_mcontext.__reserved)
>>> +
>>> +#define GET_SF_RESV_SIZE(sf) \
>>> +   sizeof((sf).uc.uc_mcontext.__reserved)
>>> +
>>> +#define GET_UCP_RESV_SIZE(ucp) \
>>> +   sizeof((ucp)->uc_mcontext.__reserved)
>>> +
>>> +#define ASSERT_BAD_CONTEXT(uc) do {                                        \
>>> +   char *err = NULL;                                               \
>>> +   assert(!validate_reserved((uc), GET_UCP_RESV_SIZE((uc)), &err));\
>>> +   if (err)                                                        \
>>> +           fprintf(stderr,                                         \
>>> +                   "Using badly built context - ERR: %s\n", err);  \
>>> +} while(0)
>>> +
>>> +#define ASSERT_GOOD_CONTEXT(uc) do {                                        \
>>> +   char *err = NULL;                                                \
>>> +   if (!validate_reserved((uc), GET_UCP_RESV_SIZE((uc)), &err)) {   \
>>> +           if (err)                                                 \
>>> +                   fprintf(stderr,                                  \
>>> +                           "Detected BAD context - ERR: %s\n", err);\
>>> +           assert(0);                                               \
>>> +   } else {                                                         \
>>> +           fprintf(stderr, "uc context validated.\n");              \
>>> +   }                                                                \
>>> +} while(0)
>>> +
>>> +/* head->size accounts both for payload and header _aarch64_ctx size ! */
>>> +#define GET_RESV_NEXT_HEAD(h) \
>>> +   (struct _aarch64_ctx *)((char *)(h) + (h)->size)
>>> +
>>> +struct fake_sigframe {
>>> +   siginfo_t       info;
>>> +   ucontext_t      uc;
>>> +};
>>> +
>>> +
>>> +bool validate_reserved(ucontext_t *uc, size_t resv_sz, char **err);
>>> +
>>> +bool validate_extra_context(struct extra_context *extra, char **err);
>>> +
>>> +struct _aarch64_ctx *get_header(struct _aarch64_ctx *head, uint32_t magic,
>>> +                           size_t resv_sz, size_t *offset);
>>> +
>>> +static inline struct _aarch64_ctx *get_terminator(struct _aarch64_ctx *head,
>>> +                                             size_t resv_sz,
>>> +                                             size_t *offset)
>>> +{
>>> +   return get_header(head, 0, resv_sz, offset);
>>> +}
>>> +
>>> +static inline void write_terminator_record(struct _aarch64_ctx *tail)
>>> +{
>>> +   if (tail) {
>>> +           tail->magic = 0;
>>> +           tail->size = 0;
>>> +   }
>>> +}
>>> +#endif
>>>
>
>
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
