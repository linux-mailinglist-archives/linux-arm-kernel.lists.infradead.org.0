Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC766D6417
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 15:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZn7cuNuDwyWDJla3BobC+ydwTvxNOeU8vWGpwe18VE=; b=Pe6T6JVKXzFlVr
	UorRAMzuq8FRXWGZ5EdcaAPG0dYHtf8mvCtduqHvSnIPo26p1CWd0D/8rEA2IFFiF7e7SiSFA65no
	+fMXGPGbNfCmuV48WCRQKM2JLnuKE3JsJRJHrrdvQeJwbGloHHi1lDbHQowtLalulUCVqCG3ewEs5
	MZ8jSNtHGBBNJfbGf0qnxg8a3uy4InuQ+KExDgQGKUwCvgAUTtFHWJIw0opivgAWcEBQ5Zhz8Se2X
	xQbX5emv2qWawE9mv3OpvMVvGatNbjQB6J+VdJCcqehIQUUA42IwYe/9bQHWx6Jp1ffa5/zoNLsuC
	pfJI94fYJ8jZHHgWVAMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK0Oi-0007GQ-15; Mon, 14 Oct 2019 13:28:28 +0000
Received: from mail-eopbgr30065.outbound.protection.outlook.com ([40.107.3.65]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK0OZ-0007FH-Fx
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 13:28:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0xjEQpP7qkRX4l7Ac6yVPfNzUHYRkRelSI8UURl1XVI=;
 b=pF91LELkSQLcYp3Ua3FcXUrvOhqNvbb3XOOGvoVj5ddm+lga/zINX/NPZpDGlcF3p6QPAgHTvyFLsU+dLRs1sgQTrO5s8F5y+ld5icBx4fy+KLdBm4FTVD/0NDNyjdMyywnyB2RdELxiaHWHLRE5Cs0OnIxyBGgzjm9Gmt493ZM=
Received: from DB6PR0801CA0064.eurprd08.prod.outlook.com (2603:10a6:4:2b::32)
 by AM0PR08MB4323.eurprd08.prod.outlook.com (2603:10a6:208:13d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.17; Mon, 14 Oct
 2019 13:28:05 +0000
Received: from AM5EUR03FT049.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::201) by DB6PR0801CA0064.outlook.office365.com
 (2603:10a6:4:2b::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Mon, 14 Oct 2019 13:28:05 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT049.mail.protection.outlook.com (10.152.17.130) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15 via Frontend Transport; Mon, 14 Oct 2019 13:28:03 +0000
Received: ("Tessian outbound 0939a6bab6b1:v33");
 Mon, 14 Oct 2019 13:27:56 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 78eb1c9840084e96
X-CR-MTA-TID: 64aa7808
Received: from 035005ec2589.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.2.59]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 EC8AF93E-2F34-4E37-9BCC-976687ECFEF3.1; 
 Mon, 14 Oct 2019 13:27:51 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur01lp2059.outbound.protection.outlook.com [104.47.2.59])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 035005ec2589.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 14 Oct 2019 13:27:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LBh0i/4lzjYKEjuz6o1qJDLspPw+mdvx9OAGOq6N53QaKYPF3l6nN1WGs62BKa/fKytFwkySFnCbN0uO3PgqjQ8eduy0xcuabrAbPkRoS/i9pNFN3ozbcECrTytF7zxEWRMnJts6z5kXwxGBgxqQ0pRnbqjHQUThsYEqgkyX98Zua49uaULk43ZPxCcuPBAsep8dvymPeHIZKQZOtL7946yaX/my3Kn0bj1Nh1kM9ZKRY05eYnDn+BJ1/lBrHl3MDO3BMcAPNX/ovHmJgROun5Kv9BBjIvyBbabEuuTPZXESbG0QlGMuadfG+2qe5mX7DEgXvz4CS043GOdRwgb4rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MN/jI38hX2+MZ1m3286cpAN4Lzm2ef+3vj2zl50mIAI=;
 b=fQ9spIZgvK40qhTEktJFiZIVItdukAA5ng/euM6DT8TzPk24dbi53ra0NzZOjokTKLAsIS9lmysRWYovF8yWIDlkVERWvFZbT8vDQIIWpiQ4exOvXLZZ2uoEV5Yk5XqGixXYcmwNarqkNeWq7yj5NvOrF8LqW+lXxZoSyyHzHCB+PVmplqLUhvI2+ePNfPpetWDyPwygeaDlbOVEFJGXHl93dexH5x66FmixgqMO7p6BSWtG7HDfRG8AhSDjgHdnkXm3bwPuxl8NAt73ycgbfEP59epFKELx7rGCqFF3ROBWm1ZlM1SOiU8lTrqIPnHsnoDdEz49KnwcrOlu2mMzlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MN/jI38hX2+MZ1m3286cpAN4Lzm2ef+3vj2zl50mIAI=;
 b=TMg0Z84qFMZdUCn5Sx97V097iuGFn+JaOFADtlVsyFquOeYUMeZsrJCEqYHNO6uzS6aW25a69gJpdefCfmzmagO9GpFKrVEsZ67Rr+qRfkSwpNX43oRFxWzQKm7xdvfJ41+IqNpt2YQ4LA0ONYLqRXYLG8iyUxHG9ZefHmdZj6U=
Received: from AM6PR08MB3864.eurprd08.prod.outlook.com (20.178.91.92) by
 AM6PR08MB3782.eurprd08.prod.outlook.com (20.178.89.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Mon, 14 Oct 2019 13:27:49 +0000
Received: from AM6PR08MB3864.eurprd08.prod.outlook.com
 ([fe80::78a1:2cb8:7350:cdf7]) by AM6PR08MB3864.eurprd08.prod.outlook.com
 ([fe80::78a1:2cb8:7350:cdf7%6]) with mapi id 15.20.2347.023; Mon, 14 Oct 2019
 13:27:49 +0000
From: =?utf-8?B?UmFwaGHDq2wgR2F1bHQ=?= <Raphael.Gault@arm.com>
To: Julien Thierry <jthierry@redhat.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "jpoimboe@redhat.com" <jpoimboe@redhat.com>
Subject: Re: [RFC v4 00/18] objtool: Add support for arm64
Thread-Topic: [RFC v4 00/18] objtool: Add support for arm64
Thread-Index: AQHVVC2b/DhmaSpNM0S/NRC6Tk3XdadaLQEAgABQ+YA=
Date: Mon, 14 Oct 2019 13:27:49 +0000
Message-ID: <fe6866f0-9c94-a307-638e-07006c303719@arm.com>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <f4fd76e1-ae15-3796-77a3-102ccc1ee028@redhat.com>
In-Reply-To: <f4fd76e1-ae15-3796-77a3-102ccc1ee028@redhat.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0033.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:61::21) To AM6PR08MB3864.eurprd08.prod.outlook.com
 (2603:10a6:20b:8e::28)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Raphael.Gault@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.52]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: d7d64ac9-8185-4a85-ed6c-08d750aa578b
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: AM6PR08MB3782:|AM6PR08MB3782:|AM0PR08MB4323:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB43239DF80CE5A260F65681B2ED900@AM0PR08MB4323.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 01901B3451
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(136003)(366004)(346002)(45074003)(199004)(189003)(186003)(110136005)(31696002)(4326008)(2906002)(54906003)(81166006)(25786009)(8676002)(256004)(14444005)(8936002)(4744005)(316002)(6246003)(5660300002)(2616005)(3846002)(6116002)(85202003)(6512007)(478600001)(486006)(446003)(11346002)(2501003)(476003)(81156014)(102836004)(229853002)(86362001)(305945005)(66476007)(66556008)(64756008)(14454004)(71200400001)(31686004)(26005)(6436002)(66446008)(6506007)(386003)(66946007)(53546011)(71190400001)(6486002)(85182001)(7736002)(36756003)(66066001)(76176011)(99286004)(2201001)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3782;
 H:AM6PR08MB3864.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: UPr0RjQuBdW8IYSLMf0K288ARYGRhnItY9RZIzoQxwKS2fwhITyiv6h3ziE/2/NB+LuV9RjatWf5Qt0nBgL5FTU4kaX6JW8WCQA9HkNYQJC5QMGHJM0XHZ5g15LwHGhA6ovhJY/+XwAW5t9uwjU7QhTQUqRglUK9F/+4hbf7FsYWcx8cEb01+cjr6HBsZfu/cUWCDD4smvOtZrIbdrx0IXE1pH6E6aGVHjf4pH89X7H5BJupax2jVa37p0XQJ3vd7sg3vdAEJ0ASRVsza2nlI15F32+Vc+/IQt+tfB6zcootu6r0q4hEiaJ5fffLX5z69cJ9KZ+Ulb7ud5eC81L39Rqdgrl/LYL9nlVICy4e/Al0b/rptTzIjeytFm+5eosBjR8SV8hqJXTLMO/WKXwLV09Xsc9rscah/Z3PeS641Q8=
Content-ID: <8881E9EAE3B87041B5A6E6F1B4E4F7D7@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3782
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Raphael.Gault@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT049.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(396003)(39860400002)(346002)(189003)(199004)(45074003)(40434004)(70206006)(76130400001)(316002)(70586007)(478600001)(26826003)(54906003)(4326008)(2501003)(110136005)(36906005)(5660300002)(31696002)(86362001)(356004)(2201001)(8936002)(229853002)(36756003)(6512007)(6246003)(6486002)(81166006)(81156014)(8676002)(14444005)(336012)(446003)(11346002)(386003)(23676004)(85202003)(53546011)(50466002)(2616005)(486006)(476003)(126002)(63350400001)(436003)(2486003)(6506007)(5024004)(99286004)(22756006)(102836004)(85182001)(76176011)(26005)(186003)(25786009)(31686004)(14454004)(305945005)(7736002)(66066001)(47776003)(2906002)(3846002)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4323;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: ff3d09b4-c471-461e-898d-08d750aa4ed3
X-Forefront-PRVS: 01901B3451
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AV+18qd5ftOaOQ0sAXAATndMjWGoch+QLLb/uU4bnp7NEJgxsoE4g+Y/JtF654KvAAp9UOr8flmjF7TzPPNT4FDftHIx1DqZSWHmqrh/ohuza/WlVQr4Knp5bTnGVHJbuhkLQsyD1DWwrgiB6mHXkC18atgACC6sU/9/kzemMkRjxXYJMB2eYZd6lEtUUJdbkcWMNn2nAumVqXMYrAZ66KPC7t8HOkHuTuIZBjmFlJrDvygnKYjMEYoRpuaHVJCeIKIXM3rmn45+EuNfvHvS7rupYEVAfTFxjj4RCn/acYdW8aUO47n8UQ30RJdliCyIDbsx9vDca4cO/4mNDYkF1kipROlNFNCGqWTPfimiOKn8V7BCy+Jovbhi9domevL+PlT3hWEWWQHbPgzRODRJsOv6MTXQWp6xt6t4/eFlYMo=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2019 13:28:03.8964 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d7d64ac9-8185-4a85-ed6c-08d750aa578b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4323
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_062819_539709_06917B5B 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.65 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "raph.gault+kdev@gmail.com" <raph.gault+kdev@gmail.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 "julien.thierry.kdev@gmail.com" <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien,

On 10/14/19 9:37 AM, Julien Thierry wrote:
> On 8/16/19 1:23 PM, Raphael Gault wrote:
>> Hi,
>>
>
> [...]
>
>> As of now, objtool only supports the x86_64 architecture but the
>> groundwork has already been done in order to add support for other
>> architectures without too much effort.
>>
>> This series of patches adds support for the arm64 architecture
>> based on the Armv8.5 Architecture Reference Manual.
>>
>
> I was wondering about the current status of these patches. Is anyone
> actively working on this?
>
> If not, I can pick that up and try to make this go forward.
>

I am not working on these patches at the moment and I don't know when I
can get back at it so as far as I am concerned you can pick it up but
maybe wait a bit to see if someone else has an interest in this.

Thanks,
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
