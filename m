Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CA3E9D36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 15:12:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9cnk3cHeakd8S9dZVvW7cNfEFdsG7PE0cklkJz7NjM=; b=OihYG7oextFcjP
	jQkXBKKRcu1J3CrZuORZCKzRhRpoJqTD+RM676/SKlzvkQzCQI4MeHFXc84nmrGhXv/bj4/fC9okl
	JFb46tNO2BsWdp3FpgrTzLv8A16Du0jiiUJ5LnAl3OynqDKBAPxZxXht1ilY+ZXdu3P81227i7ejd
	RwDKxvQ4S8faJJPArL95QJdfTC6AE/VbAH3m+Hs2tEhmUjVkpvM0XWHHU05ld94dvNqaDF8KWNVRa
	ysxFPwYbT8dTY4y8GFsxmPouIk+JmCJQfx8XZX8wFULhW0wrYsoquigg0Tq4pvwArTBTLzNZNNPTe
	s8mCaMgXC0CD+7Rkmc4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPoi9-0007EK-TE; Wed, 30 Oct 2019 14:12:33 +0000
Received: from mail-eopbgr70088.outbound.protection.outlook.com ([40.107.7.88]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPoi0-0007Da-7X
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 14:12:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HDAs3J2RMnki7F86u6cApDPb7M/CJP/mGFn0HEMrtP8=;
 b=v8vzZ1Uf2C3jSEzHjpYI8Ogb2DfDNb9l3J4hHAMvnNRDZf88NaLv3+etOpGqCwHpMnwfny1cAJZbsC2Nm3z9SMnQn0MJKwYBdYAKbKo0sEfbT6FWcIVfGgPjzCaLBcCWPbFIIAiHVhQe76D3xJb3vzn9Hj0CnY0lPtl3tcxAEzQ=
Received: from VI1PR08CA0231.eurprd08.prod.outlook.com (2603:10a6:802:15::40)
 by VI1PR08MB3342.eurprd08.prod.outlook.com (2603:10a6:803:3e::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.24; Wed, 30 Oct
 2019 14:12:20 +0000
Received: from DB5EUR03FT023.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::206) by VI1PR08CA0231.outlook.office365.com
 (2603:10a6:802:15::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.20 via Frontend
 Transport; Wed, 30 Oct 2019 14:12:19 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT023.mail.protection.outlook.com (10.152.20.68) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20 via Frontend Transport; Wed, 30 Oct 2019 14:12:19 +0000
Received: ("Tessian outbound 0939a6bab6b1:v33");
 Wed, 30 Oct 2019 14:12:19 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ffdd18919f8ce9c0
X-CR-MTA-TID: 64aa7808
Received: from 954e6e9751ce.1 (cr-mta-lb-1.cr-mta-net [104.47.8.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 2F394C18-5E23-4E54-99D9-F929441466D5.1; 
 Wed, 30 Oct 2019 14:12:13 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2055.outbound.protection.outlook.com [104.47.8.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 954e6e9751ce.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 30 Oct 2019 14:12:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B9uj09nz4T6GS0se2GPHnwzjTv3AAR2oGPTZqyiCjbn0Eb2/NEMocXEiuUTUg+Stg1KsWlm3AfC/WvntVdX4Ji9PN1GGYWxv0m6o8tVAfqwBkhok/W9gIIEoKDsmCxUUrx/+ZXvPzDH3Wx/5GJiKq1nxtY+jb9ot/Nm4vFeGyk/MuvF4+7qMXlyrDA6ar8s1yN0q1ivkzmB1RmND6mEih0FGdAb46FqhSHQWlbZw5dYfN7vJifwqqC1M4edGsOctYjsHC5IGNgghW2lBIFhNxZp2QA4m9BIX4e+wWmlqQl3GV3O7zKU6ivInljJgDw98b3TfERV3do/BUpfcT7LwkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HDAs3J2RMnki7F86u6cApDPb7M/CJP/mGFn0HEMrtP8=;
 b=n3uqw5/STS4A8Ujq3EICbeSyHg7UAPcUS8T27bp/ftzGdjbl2VWnSV0Rkz5omgcfKruqaXfQrB+w4uouX0Bex76hMx6DVcVsXbV0AtyEHPGXvc5Ejfmjs7BEQcwlRwT6nfyyB4/Q4YlhOdkxL40WrO0MqEJ8IQGq7mHAyyFAuJ6Lo5h/orHphdqgLZpOX1FzYlnImvA0EqIj4/zQVnFsDrOqe5ptH00aOVACY7MkqMEbZs1q7wBKId07WE/4ab2TUQHeuox6qd+0PZZSP7bkzlVvyt/icAclFP1NG7tUnHghu5EhAaPc7ODw35Ddxh/wJb7Q+SBSMqaDCb7uYTGwVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HDAs3J2RMnki7F86u6cApDPb7M/CJP/mGFn0HEMrtP8=;
 b=v8vzZ1Uf2C3jSEzHjpYI8Ogb2DfDNb9l3J4hHAMvnNRDZf88NaLv3+etOpGqCwHpMnwfny1cAJZbsC2Nm3z9SMnQn0MJKwYBdYAKbKo0sEfbT6FWcIVfGgPjzCaLBcCWPbFIIAiHVhQe76D3xJb3vzn9Hj0CnY0lPtl3tcxAEzQ=
Received: from VI1PR08MB5471.eurprd08.prod.outlook.com (52.133.246.83) by
 VI1PR08MB4319.eurprd08.prod.outlook.com (20.179.26.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.17; Wed, 30 Oct 2019 14:12:12 +0000
Received: from VI1PR08MB5471.eurprd08.prod.outlook.com
 ([fe80::6c84:4a3e:f1fd:3339]) by VI1PR08MB5471.eurprd08.prod.outlook.com
 ([fe80::6c84:4a3e:f1fd:3339%3]) with mapi id 15.20.2387.027; Wed, 30 Oct 2019
 14:12:12 +0000
From: Matthew Malcomson <Matthew.Malcomson@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: Makefile kernel address tag sanitizer.
Thread-Topic: Makefile kernel address tag sanitizer.
Thread-Index: AQHVhCNNoOSr1ytgiEqSG00mmgt5mqddSDEAgBSwtgCAAAFugIABScIAgAAHMQCAAAR1gA==
Date: Wed, 30 Oct 2019 14:12:12 +0000
Message-ID: <b23a7e55-0b95-1db9-fedd-3f96d3967d0a@arm.com>
References: <15b7c818-1080-c093-1f41-abd5d78a8013@arm.com>
 <CAAeHK+zbMhErcEo66w6ZH45A3XUH_joUmimOa2RL1t1Q6AV_PQ@mail.gmail.com>
 <6f9fdf16-33fc-3423-555b-56059925c2b6@arm.com>
 <CAAeHK+yP2vK06tnx2p=NT8cD_qz_gV_xkuPZ40b2OAe+zxM-EA@mail.gmail.com>
 <b135bdce-8fd3-c81b-72d1-6a162307f6be@arm.com>
 <CAAeHK+zArL=ru9rmsbuJjertMtF+PwdqV_Dpd=xJ=mKF=Gfzsw@mail.gmail.com>
In-Reply-To: <CAAeHK+zArL=ru9rmsbuJjertMtF+PwdqV_Dpd=xJ=mKF=Gfzsw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DM6PR02CA0048.namprd02.prod.outlook.com
 (2603:10b6:5:177::25) To VI1PR08MB5471.eurprd08.prod.outlook.com
 (2603:10a6:803:136::19)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Matthew.Malcomson@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.49]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 04f757bb-f768-47ce-647c-08d75d432d2a
X-MS-TrafficTypeDiagnostic: VI1PR08MB4319:|VI1PR08MB3342:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <VI1PR08MB33425AAC7DDE06673DCDA81BE0600@VI1PR08MB3342.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 02065A9E77
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(376002)(366004)(346002)(199004)(189003)(51914003)(6246003)(6306002)(7736002)(486006)(305945005)(4326008)(66066001)(71200400001)(71190400001)(14444005)(256004)(26005)(44832011)(6436002)(2616005)(476003)(6512007)(11346002)(446003)(6486002)(186003)(54906003)(316002)(36756003)(229853002)(52116002)(99286004)(66556008)(64756008)(5660300002)(14454004)(478600001)(966005)(6116002)(76176011)(3846002)(31686004)(6916009)(2906002)(6506007)(386003)(25786009)(31696002)(86362001)(81166006)(8936002)(53546011)(8676002)(81156014)(102836004)(66476007)(66946007)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4319;
 H:VI1PR08MB5471.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: fSgz25WK6skgHuut6XYa/Pm9tEfPGS2S9Ejy6r8RohD3AfUIieEn5QuPpjQWjuY0md0o5AizCEP5EUZJmJzI3reUf4wmXmi39hgXHqOKzn8AHG1JWkq4n02XmrJXnH0sExMS4Qc1G5KlFyBzAoLja7zX4eaVwJTgDFzBTQF0jYK0GJ3TKJ2CXKAvoV70q01ayP++jpPH11Ord1NHi37U70iUlFhE9IFBlrqu9o630uzz8XUE60kU9cjc4A8UJUKwYJDZRgKnsBmpXGyfztyCm4rMn4PUpqesQ4zSh1HSPllPeND23Zzt5WxGGEsVngwuz+IAfQmK+UYUVbW0irLzBgNim0IxgVRTuRr/QDtJVly+BY4/qY0aQb311otwOSHawuWPgyj3lJ0sZ5xMnZsF5fx9Q9I/rDoRfdLp+SWe5Nqx+3GnN5+udlYNHOq8ugamsO2ZrZ5Q5tGrwmDbadoLKjYU25v55Bw3BWHeDfLUNHw=
x-ms-exchange-transport-forked: True
Content-ID: <F10CE450970A7D4C91C5B66849C6EF4C@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4319
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Matthew.Malcomson@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT023.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(376002)(39860400002)(1110001)(339900001)(199004)(189003)(51914003)(107886003)(31686004)(14454004)(966005)(22756006)(54906003)(6246003)(66066001)(6512007)(105606002)(316002)(50466002)(8936002)(81156014)(6862004)(8676002)(81166006)(6306002)(47776003)(6486002)(26826003)(25786009)(478600001)(4326008)(76130400001)(7736002)(305945005)(229853002)(486006)(99286004)(70586007)(23676004)(2486003)(436003)(186003)(386003)(3846002)(356004)(53546011)(6506007)(36756003)(336012)(126002)(5660300002)(86362001)(446003)(476003)(70206006)(2616005)(31696002)(11346002)(102836004)(14444005)(76176011)(2906002)(26005)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3342;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: b632559a-b433-47d1-a052-08d75d43288d
NoDisclaimer: True
X-Forefront-PRVS: 02065A9E77
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: siXBufqmKAi2hQMyIgT+ehSmmqrOiiOzXkOMtCb5PvJmudw2aeIwOf23T8gJDCuGsHyRvrHtg8dqaol6+o5zbuLu+PPULySdCdw7hO9kxYP7YPEqC2fy+vRv8TulWLMUqfBTgXQkQIWl5p5Bv0RpO2nOYUHjJ0mFi8OikNFoJIT6pAOEC1+jHGLK3n5brs/fRJK0ss8y7RQz4eNMsnCi8Yy34s59XjjGVReNgzecZ6tAEAK3hvHSb9xRxsRZcUKPPNo+Vae/XDH/wGkqsDlc9Y2z07oWtXpRvzB1GGamaMQx3ktbgM+XZe13mMwnGnGJU5iJW8voQ2V+J1E979V0MH6gZlvpIpK6aviTVvv7AD+pHgDCz50cdyECH8sYJ38W88L0E2xZE+IPulbtQR4EaitqR0o7Du2+pARe35rpCEaq5ABOUWYRUDgVnd6BlSdr7VTp3D0GarafeLMIlA0YB4KD9dWXM22mqU1M43yoAsU=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2019 14:12:19.7488 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 04f757bb-f768-47ce-647c-08d75d432d2a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3342
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_071224_446101_D7041151 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.88 listed in list.dnswl.org]
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
Cc: Dmitry Vyukov <dvyukov@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, nd <nd@arm.com>,
 kasan-dev <kasan-dev@googlegroups.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/10/19 13:56, Andrey Konovalov wrote:
> On Wed, Oct 30, 2019 at 2:30 PM Matthew Malcomson
> <Matthew.Malcomson@arm.com> wrote:
>>
>> On 29/10/19 17:50, Andrey Konovalov wrote:
>>> On Tue, Oct 29, 2019 at 6:45 PM Matthew Malcomson
>>> <Matthew.Malcomson@arm.com> wrote:
>>>>
>>>> Hi Andrey,
>>>
>>> Hi Matthew,
>>>
>>>>
>>>> Thanks for the clarification on that bit, could I ask another question?
>>>>
>>>> I seem to have non-stack compiling with GCC running ok, but would like
>>>> to have some better testing than I've managed so far.
>>>
>>> Great! =)
>>>
>>>>
>>>> I'm running on an instrumented kernel, but haven't seen a crash yet.
>>>>
>>>> Is there a KASAN testsuite to run somewhere so I can proove that bad
>>>> accesses would be caught?
>>>
>>> Kind of. There's CONFIG_TEST_KASAN which produces lib/test_kasan.ko,
>>> which you can insmod and it will do all kinds of bad accesses.
>>> Unfortunately there's no automated checker for it, so you'll need to
>>> look through the reports manually and check if they make sense.
>>
>> Great, that was really useful!
>>
>> I found one issue in my instrumentation through using these tests -- I
>> haven't defined `__SANITIZE_ADDRESS__` (which means memset calls aren't
>> sanitized here since a macro replaces them with __memset).
>>
>> Looking at the current kernel code it seems that for clang you use
>> `__SANITIZE_ADDRESS__`, for either hwasan or asan.  (commit 2bd926b4).
>>
>> Do you (or anyone else) have any objections to using
>> `__SANITIZE_HWADDRESS__` to indicate tagging address sanitizer so they
>> can be distinguished?
>>
>> I can provide a patch to the kernel to account for the compiler
>> behaviour if it's acceptable.
>>
>>
>>
>> Similarly, I'm thinking I'll add no_sanitize_hwaddress as the hwasan
>> equivalent of no_sanitize_address, which will require an update in the
>> kernel given it seems you want KASAN to be used the same whether using
>> tags or not.
> 
> We have intentionally reused the same macros to simplify things. Is
> there any reason to use separate macros for GCC? Are there places
> where we need to use specifically no_sanitize_hwaddress and
> __SANITIZE_HWADDRESS__, but not no_sanitize_address and
> __SANITIZE_ADDRESS__?
> 

Honestly, I'm not sure ...

I think I'll come back after asking a bit of feedback from GCC upstream 
with this in mind.
A discussion with a colleague has already brought up a few different 
options.

>>
>> Cheers,
>> Matthew
>>
>>>
>>> Thanks!
>>>
>>>>
>>>> Cheers,
>>>> Matthew
>>>>
>>>> On 16/10/19 14:47, Andrey Konovalov wrote:
>>>>> On Wed, Oct 16, 2019 at 3:12 PM Matthew Malcomson
>>>>> <Matthew.Malcomson@arm.com> wrote:
>>>>>>
>>>>>> Hello,
>>>>>>
>>>>>> If this is the wrong list & person to ask I'd appreciate being shown who
>>>>>> to ask.
>>>>>>
>>>>>> I'm working on implementing hwasan (software tagging address sanitizer)
>>>>>> for GCC (most recent upstream version here
>>>>>> https://gcc.gnu.org/ml/gcc-patches/2019-09/msg00387.html).
>>>>>>
>>>>>> I have a working implementation of hwasan for userspace and am now
>>>>>> looking at trying CONFIG_KASAN_SW_TAGS compiled with gcc (only with
>>>>>> CONFIG_KASAN_OUTLINE for now).
>>>>>>
>>>>>> I notice the current scripts/Makefile.kasan hard-codes the parameter
>>>>>> `-mllvm -hwasan-instrument-stack=0` to avoid instrumenting stack
>>>>>> variables, and found an email mentioning that stack instrumentation is
>>>>>> not yet supported.
>>>>>> https://lore.kernel.org/linux-arm-kernel/cover.1544099024.git.andreyknvl@google.com/
>>>>>>
>>>>>>
>>>>>> What is the support that to be added for stack instrumentation?
>>>>>
>>>>> Hi Matthew,
>>>>>
>>>>> The plan was to upstream tag-based KASAN without stack instrumentation
>>>>> first, and then enable stack instrumentation as a separate effort. I
>>>>> didn't yet get to this last part. I remember when I tried enabling
>>>>> stack instrumentation I was getting what looked like false-positive
>>>>> reports coming from the printk related code. I didn't investigate them
>>>>> though. It's possible that some tweaks to the runtime implementation
>>>>> will be required.
>>>>>
>>>>> Thanks!
>>>>>
>>>>
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
