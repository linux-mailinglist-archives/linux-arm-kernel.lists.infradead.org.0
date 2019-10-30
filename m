Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C91BFE9C49
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 14:30:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkDzElPic2ZXI3vWfFU+z1YZJhEWweB1CvrZU5VmPIU=; b=fEVhumEjhLZNr8
	zMATaW9iP0Of0eh4K0y9W0g8fYPW5RS7uPqvjucGf/6ASVGQyriNqX2Czpr4qPva36hhbqq5p3SPG
	YrZEf77v8VWxaNgJRA+dg+U7voA3z9xpz1MlkHHMNKTN9vWsyB6BfLfDNYN1lFsEDrmU9/KZXeuNH
	EH8tul94OeZPbVt3c5YHuWj8rI2XlUwK08RzKJ5M0SsT5duZGp46gIhusWEf7AAU6rRqu16VqWZEf
	faMGfSutmT/+msAh9BGZoUcTUbq5Pva1IIy2M6Ureuj6Oj55MzvraIFSrK4cT8qiEe0v/am1KQQgO
	fTouAVeVGVtc5kLRo3nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPo3j-0007aJ-33; Wed, 30 Oct 2019 13:30:47 +0000
Received: from mail-he1eur02on0608.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::608]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPo3Z-0007Zo-BD
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 13:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YOlQJdpxvqJTdWGHUpQma/U0lGkPu5bZidooTum2tUM=;
 b=IyqnrH5c3NzEXj5D19cPiIeZRAIaalmj/g5g9CQWIcKp6lrHYiLXyTOMcKn8m2Ek/xlZP1+WDxql2HKI88uUl0SN7+h/NLnOZn61IXd1jYVKMdGzS3v56WR0f1/+znyQ9bXY37TMYYUPHYsb2r4hUXSnodHxvc6DfL/u4veLfTI=
Received: from VI1PR08CA0139.eurprd08.prod.outlook.com (2603:10a6:800:d5::17)
 by AM6PR08MB3112.eurprd08.prod.outlook.com (2603:10a6:209:46::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.17; Wed, 30 Oct
 2019 13:30:33 +0000
Received: from VE1EUR03FT013.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::203) by VI1PR08CA0139.outlook.office365.com
 (2603:10a6:800:d5::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.17 via Frontend
 Transport; Wed, 30 Oct 2019 13:30:33 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT013.mail.protection.outlook.com (10.152.19.37) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20 via Frontend Transport; Wed, 30 Oct 2019 13:30:33 +0000
Received: ("Tessian outbound 081de437afc7:v33");
 Wed, 30 Oct 2019 13:30:33 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9c4973174b14c2cc
X-CR-MTA-TID: 64aa7808
Received: from e3cb1f4e04b8.1 (cr-mta-lb-1.cr-mta-net [104.47.5.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 2054DE4A-5624-4EF6-863A-06BF4650E203.1; 
 Wed, 30 Oct 2019 13:30:27 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2050.outbound.protection.outlook.com [104.47.5.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e3cb1f4e04b8.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 30 Oct 2019 13:30:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jAj8xqbb8Vyohnh4S26skfmO6VpgTPbsLav/IVnOogUFOtTEKftroXh5cY3wJVUW15u5JFYiiSohM0lbdriYz83SMGHVF5aQZKYhAfq7kV0hq8aM5oYQR8S9XTrbTwCdqf3WK2hwXLGJNPW1HcGZVKo3Ym+wx4uqE7To48WLgd+wja42mpi10Aw22YkNlA14czbsjeMn55/9WAYh+Zj9FVUpBlP25NwJiCXOgJuEz5qT5ST37o/dQnNrG93VsOC+c5oDHfK0YTtvPWulG2J63j87ZjEBeZq89V76PqhSBzgE4v66VJsh+qKEi94TTWipHpvGCfGCHgMny5Mi6Xhcqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YOlQJdpxvqJTdWGHUpQma/U0lGkPu5bZidooTum2tUM=;
 b=Egbpaw8lA/vEwqVfdlrvuPTKhPrA7sacwJcvBJddd7aPbhNKv88S8HhfZ+p5dOg7cIogrCDZAFSLuEYnZDfIbDYK9YwRRcrEEi0ecseNlFL4GVQslE2bN92edXmG6UjwC9t75P2C95T9oiG3No6mWfMTkZgOKC0dz/DS8Zce3aUNgNie58l/w37nWaVOOUhN0DE4aYUUCYlnt2vM3e56H647sdQLu33Y4W1ewZn6HR5W+33Ihr7C9KXywSmXCT5M7yyeBt/bxf5H0DhBVPfpQJntcnDtdPtRBOEt8GUBdZTxKpDch6t7amOnPi27PS0crEomIedzGNKCuhIfPaGrLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YOlQJdpxvqJTdWGHUpQma/U0lGkPu5bZidooTum2tUM=;
 b=IyqnrH5c3NzEXj5D19cPiIeZRAIaalmj/g5g9CQWIcKp6lrHYiLXyTOMcKn8m2Ek/xlZP1+WDxql2HKI88uUl0SN7+h/NLnOZn61IXd1jYVKMdGzS3v56WR0f1/+znyQ9bXY37TMYYUPHYsb2r4hUXSnodHxvc6DfL/u4veLfTI=
Received: from VI1PR08MB5471.eurprd08.prod.outlook.com (52.133.246.83) by
 VI1PR08MB3855.eurprd08.prod.outlook.com (20.178.80.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Wed, 30 Oct 2019 13:30:26 +0000
Received: from VI1PR08MB5471.eurprd08.prod.outlook.com
 ([fe80::6c84:4a3e:f1fd:3339]) by VI1PR08MB5471.eurprd08.prod.outlook.com
 ([fe80::6c84:4a3e:f1fd:3339%3]) with mapi id 15.20.2387.027; Wed, 30 Oct 2019
 13:30:26 +0000
From: Matthew Malcomson <Matthew.Malcomson@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: Makefile kernel address tag sanitizer.
Thread-Topic: Makefile kernel address tag sanitizer.
Thread-Index: AQHVhCNNoOSr1ytgiEqSG00mmgt5mqddSDEAgBSwtgCAAAFugIABScIA
Date: Wed, 30 Oct 2019 13:30:25 +0000
Message-ID: <b135bdce-8fd3-c81b-72d1-6a162307f6be@arm.com>
References: <15b7c818-1080-c093-1f41-abd5d78a8013@arm.com>
 <CAAeHK+zbMhErcEo66w6ZH45A3XUH_joUmimOa2RL1t1Q6AV_PQ@mail.gmail.com>
 <6f9fdf16-33fc-3423-555b-56059925c2b6@arm.com>
 <CAAeHK+yP2vK06tnx2p=NT8cD_qz_gV_xkuPZ40b2OAe+zxM-EA@mail.gmail.com>
In-Reply-To: <CAAeHK+yP2vK06tnx2p=NT8cD_qz_gV_xkuPZ40b2OAe+zxM-EA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0393.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::21) To VI1PR08MB5471.eurprd08.prod.outlook.com
 (2603:10a6:803:136::19)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Matthew.Malcomson@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.49]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2d12e89c-acca-446d-5fe4-08d75d3d5720
X-MS-TrafficTypeDiagnostic: VI1PR08MB3855:|AM6PR08MB3112:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <AM6PR08MB31129C032F1AE25972B84121E0600@AM6PR08MB3112.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 02065A9E77
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(366004)(51914003)(199004)(189003)(8936002)(71200400001)(53546011)(86362001)(6486002)(76176011)(26005)(486006)(71190400001)(52116002)(3846002)(6916009)(31686004)(386003)(229853002)(6116002)(44832011)(186003)(81156014)(81166006)(6436002)(8676002)(102836004)(99286004)(66946007)(66066001)(66476007)(66556008)(66446008)(6506007)(6306002)(25786009)(54906003)(14454004)(5660300002)(256004)(36756003)(966005)(7736002)(305945005)(2906002)(316002)(64756008)(478600001)(4326008)(14444005)(11346002)(446003)(476003)(6512007)(6246003)(31696002)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3855;
 H:VI1PR08MB5471.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: JapaDIfTpVOJuHLKEj2PI/aRyCM0nG8EK+s8pgwZTcfFAGVObk7si3TiAM8DWCI+5X5S3GsGxan/4JuoQRmq1BIYZADSoJEDpX6sSHY8491INql3Rb8hfwroLeF7xVGefG8oBH95oOBnBHV3rLM9vMeoxAuhlkETHTunUe/RB8uCTPpKGNcB13bnNbsLJq+jjzi56g0IM68//IK7wDsqJxgueTw+emn4P3IoANHNoBR88u0P4luzsijvLSEQCgGV2ym2LFk8VayxojTFJzNv7btA/ra0rRJYn3fiFDQqa7qYkI8+M3Ni4rfFgEXEm4zNegoUegiuhV/ah9GSpf94M49gVBtlG1wbjx2YUF1bjLxp4BWqzV0M4srNFBMV5rmhVnq9MNdRsqcZuKY+vmooF1GxPkKOEXFypbiXEUAiAwPEOsmQSoPaDu8ziELQfisYXvVHaEmlJQKPKOizN6Tweunqj3g0vxsTLBuwuAnQ4kc=
x-ms-exchange-transport-forked: True
Content-ID: <FDF62D1FA8B6154F853004C22F2D525A@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3855
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Matthew.Malcomson@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT013.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(376002)(136003)(1110001)(339900001)(51914003)(189003)(199004)(31686004)(70206006)(356004)(26826003)(436003)(478600001)(305945005)(8676002)(81156014)(81166006)(102836004)(6486002)(3846002)(50466002)(336012)(105606002)(8936002)(5660300002)(47776003)(25786009)(23676004)(66066001)(2486003)(22756006)(76176011)(7736002)(229853002)(386003)(966005)(99286004)(14444005)(316002)(36756003)(476003)(6506007)(36906005)(6862004)(6246003)(6306002)(86362001)(31696002)(54906003)(186003)(4326008)(70586007)(14454004)(126002)(446003)(2906002)(76130400001)(486006)(11346002)(6512007)(6116002)(53546011)(26005)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3112;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 8949a9c6-f3e4-4d9f-d05f-08d75d3d5289
NoDisclaimer: True
X-Forefront-PRVS: 02065A9E77
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7yJgt1mAXGCeLrnK+ephEJ9gssmkXHBf+MwVXaviY+x+kFWVD+fqdnNjullELqc9vbMMSgwurl78wZ7Z/qCPE1XeA40tKAGaiWW2+LPctys07qmvp7nGZImWn3pTAKKZlT6up3UeqztKDw0BFi0V3Qlrd4dxvHBdvB6NavMaQEptI5zrYaVonDKpRAf0bsWLZjux280jjoz6Fgy0xzJeCmU08sSsQJo7C1iC5JgyD1eT1kL7BTDTKlW58V3zvhWtoCM0LBQZzK3cs1+gCVEi6pCmzl5/qigJJoT7NCnC55z/I5TlRoePzxyvPu3JbihY8oY/viZiwQ+xJq1/NZZg4LoGfD2k35vqD+8v+YhrAqlzCeA7C6rxFIABJDRjEa2TiUzIcFJd6tXl1qwepTUg8sOh04QbRTr5tGLZ85PsLg+g/ARicxkU+BFp7oCTGY0TeFvf9kAcDLY53TpXCK2YNjISKKYP2TQuURIj+2XGJf8=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2019 13:30:33.1241 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d12e89c-acca-446d-5fe4-08d75d3d5720
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_063037_615423_414F6F04 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:608 listed in]
 [list.dnswl.org]
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
Cc: nd <nd@arm.com>, kasan-dev <kasan-dev@googlegroups.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/10/19 17:50, Andrey Konovalov wrote:
> On Tue, Oct 29, 2019 at 6:45 PM Matthew Malcomson
> <Matthew.Malcomson@arm.com> wrote:
>>
>> Hi Andrey,
> 
> Hi Matthew,
> 
>>
>> Thanks for the clarification on that bit, could I ask another question?
>>
>> I seem to have non-stack compiling with GCC running ok, but would like
>> to have some better testing than I've managed so far.
> 
> Great! =)
> 
>>
>> I'm running on an instrumented kernel, but haven't seen a crash yet.
>>
>> Is there a KASAN testsuite to run somewhere so I can proove that bad
>> accesses would be caught?
> 
> Kind of. There's CONFIG_TEST_KASAN which produces lib/test_kasan.ko,
> which you can insmod and it will do all kinds of bad accesses.
> Unfortunately there's no automated checker for it, so you'll need to
> look through the reports manually and check if they make sense.

Great, that was really useful!

I found one issue in my instrumentation through using these tests -- I 
haven't defined `__SANITIZE_ADDRESS__` (which means memset calls aren't 
sanitized here since a macro replaces them with __memset).

Looking at the current kernel code it seems that for clang you use 
`__SANITIZE_ADDRESS__`, for either hwasan or asan.  (commit 2bd926b4).

Do you (or anyone else) have any objections to using 
`__SANITIZE_HWADDRESS__` to indicate tagging address sanitizer so they 
can be distinguished?

I can provide a patch to the kernel to account for the compiler 
behaviour if it's acceptable.



Similarly, I'm thinking I'll add no_sanitize_hwaddress as the hwasan 
equivalent of no_sanitize_address, which will require an update in the 
kernel given it seems you want KASAN to be used the same whether using 
tags or not.

Cheers,
Matthew

> 
> Thanks!
> 
>>
>> Cheers,
>> Matthew
>>
>> On 16/10/19 14:47, Andrey Konovalov wrote:
>>> On Wed, Oct 16, 2019 at 3:12 PM Matthew Malcomson
>>> <Matthew.Malcomson@arm.com> wrote:
>>>>
>>>> Hello,
>>>>
>>>> If this is the wrong list & person to ask I'd appreciate being shown who
>>>> to ask.
>>>>
>>>> I'm working on implementing hwasan (software tagging address sanitizer)
>>>> for GCC (most recent upstream version here
>>>> https://gcc.gnu.org/ml/gcc-patches/2019-09/msg00387.html).
>>>>
>>>> I have a working implementation of hwasan for userspace and am now
>>>> looking at trying CONFIG_KASAN_SW_TAGS compiled with gcc (only with
>>>> CONFIG_KASAN_OUTLINE for now).
>>>>
>>>> I notice the current scripts/Makefile.kasan hard-codes the parameter
>>>> `-mllvm -hwasan-instrument-stack=0` to avoid instrumenting stack
>>>> variables, and found an email mentioning that stack instrumentation is
>>>> not yet supported.
>>>> https://lore.kernel.org/linux-arm-kernel/cover.1544099024.git.andreyknvl@google.com/
>>>>
>>>>
>>>> What is the support that to be added for stack instrumentation?
>>>
>>> Hi Matthew,
>>>
>>> The plan was to upstream tag-based KASAN without stack instrumentation
>>> first, and then enable stack instrumentation as a separate effort. I
>>> didn't yet get to this last part. I remember when I tried enabling
>>> stack instrumentation I was getting what looked like false-positive
>>> reports coming from the printk related code. I didn't investigate them
>>> though. It's possible that some tweaks to the runtime implementation
>>> will be required.
>>>
>>> Thanks!
>>>
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
