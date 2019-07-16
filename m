Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A746A6D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 12:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZgVnsLXkl6b1cFUvTi4i+2U6sgMfLZQmAYDuyuMNWPY=; b=BplpZ6FC6VX9hm
	1QaU8KV1j/lOBF/kEOXwX4hf9JvyJ63CUpj8EhKJBK/7s9J2A8O/geh4pIt+OTWChjtK8+NfgtrUP
	Lo3uZfO/WR2gstXYSaTMUtfO25hYo6mNqS7Sy71h6+mO36+jpW+Pt7NFkXYhXZHie+NLuQA8DsmfP
	RKzxQl0+fzfa3oeLBKfxmLcNFgUZIIQFbiO8k5eIvY9N79RHxlg6A0QD0FgmoHMiqMOjlUf/D2Nd1
	1FopvP0hw3Jh0dl+uhWeQqerVn5OY+IEk+A1NVwkSp0rqfdjpuqwOuz3w9WT8LCTaG9VS/+aHMuq5
	Bz+gEEe6XdSnMEieKr/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnL73-0000Zo-P7; Tue, 16 Jul 2019 10:55:13 +0000
Received: from mail-vi1eur04on0615.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::615]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnL6m-0000ZJ-MM
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 10:54:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mjdx5okDdyMWlOb76pQoGfvA4+JUXts/pprlmuwBH0M=;
 b=xO7c/zvqZ/u8wng/Fe+n336RwGeb46szttxr/ayR5+GHKEp+71Vet1UCYeEG0Ki+nDwVJhqY4KnJS5QCdWihnEnNLyQovewHP66vtoea/wo2XZjCz44OpGtTfRFahagUO+IZb1qtOlWOg4Fh8kq5c4DbpMApEM91WMkGSwVoGHU=
Received: from VI1PR08CA0168.eurprd08.prod.outlook.com (2603:10a6:800:d1::22)
 by VI1PR0801MB1854.eurprd08.prod.outlook.com (2603:10a6:800:5c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2073.14; Tue, 16 Jul
 2019 10:54:50 +0000
Received: from AM5EUR03FT055.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::207) by VI1PR08CA0168.outlook.office365.com
 (2603:10a6:800:d1::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2073.10 via Frontend
 Transport; Tue, 16 Jul 2019 10:54:50 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT055.mail.protection.outlook.com (10.152.17.214) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 16 Jul 2019 10:54:49 +0000
Received: ("Tessian outbound 96ba4cc141ab:v24");
 Tue, 16 Jul 2019 10:54:42 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 3e3d46aab7c7ca1f
X-CR-MTA-TID: 64aa7808
Received: from b89269221e79.2 (cr-mta-lb-1.cr-mta-net [104.47.5.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 E0F690F7-40BE-4B70-BE38-688C7723D828.1; 
 Tue, 16 Jul 2019 10:54:37 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2050.outbound.protection.outlook.com [104.47.5.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b89269221e79.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 16 Jul 2019 10:54:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WhE/G56cUNFYLABAUlIYHoPqivnBYylVx0rmZhRcLwjU3goGlMXTJelxF8co51+UQun8zGLUWiTpVdsoavsYhTMUNYkl0ppxaxfxuSPOxeITMYjD6cxJpiizAnE1FqjcJvnppOf2iAUiQDWo/TbgoqfuocAbVe5X/0XC4HGc05lyvjvR/1X9f7198USlXtHSfhtFj+514OEzgbcZi+Jclu6zK1mfrwWm3b+C32ltK2KG0JT+CsI7JTnh/v9dpFInEkbrFdGT5Lb7IbHb7iEO1jfpTe0P+j9EmUXVvRMgqh+vBFYUpu/eAJiwxZA7dzAa5oDu2NAuWO2tdEibG9agvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Mr+E6lyxWlGvYKeFuA5rxskvGgvyIZdeqcjSwo9u8U=;
 b=brdXei/3rqEBUaKcO8EYh5nvkvAGWaB20eo1vygQOJBVefaoIJyOZEPxj7iIX5pa9OwV3uXkd6aaHxdPPfbrRdoPGOaRjo/TT0fgHgSdiLYwcGNlVPsNJ2NzB8K8xhhAG8fRNHphJLBwa8T1OnX2bOCmqEANhAj39rZ5OvAHolL31/t2whvUc+mF1eKK6lA5Uc/66+d6iMrW818lCnKG/83SOPdABND0JsR4FCT05aZ1TV5nQP1GZi6LZ5pIv9p5gZ6pBeE25a3xK12NmsiDHdIVsGQwxZil3vbkJPcTMPqq39Osjv3f7XibODgjIZZ0WcBZtt6UhaMiT5lay0zHMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Mr+E6lyxWlGvYKeFuA5rxskvGgvyIZdeqcjSwo9u8U=;
 b=b6+a9p0BijQgeLJakOIN8+ymBfslO/JqEepTbRQxxYEVexd2yJAYC+vtWrGv5PkgSvcUY47cQtRY2mlBrckv+3ytqI6eBS92YCoCwn+QDFM4E2jKoU/4qE+DOLP3I9PLrqtH7QsZJT70AERYEPPK4K7FhZH+sGAyGwCOVo64nkI=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB2969.eurprd08.prod.outlook.com (52.134.111.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Tue, 16 Jul 2019 10:54:34 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::a13f:5848:5d6d:beef]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::a13f:5848:5d6d:beef%5]) with mapi id 15.20.2073.012; Tue, 16 Jul 2019
 10:54:34 +0000
From: Julien Thierry <Julien.Thierry@arm.com>
To: Shijith Thotton <sthotton@marvell.com>, Steven Price
 <Steven.Price@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 1/9] arm64: perf: avoid PMXEV* indirection
Thread-Topic: [PATCH v3 1/9] arm64: perf: avoid PMXEV* indirection
Thread-Index: AQHVNZoXuACJGuz/w0iz3Xm/RkBOj6bDsUQAgAAR9QCACVVTAIAABe8A
Date: Tue, 16 Jul 2019 10:54:33 +0000
Message-ID: <750864d6-543b-32a4-9b90-4a928c824a4b@arm.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-2-git-send-email-julien.thierry@arm.com>
 <72820d6b-145c-c7dd-b285-c3d3b8acd103@arm.com>
 <0e1169eb-1a2a-eaa3-82b2-74b263db527d@arm.com>
 <a9edc2c1-aa25-31ec-2f60-0156b87da731@marvell.com>
In-Reply-To: <a9edc2c1-aa25-31ec-2f60-0156b87da731@marvell.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0029.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:61::17) To DB7PR08MB3082.eurprd08.prod.outlook.com
 (2603:10a6:5:1d::24)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Julien.Thierry@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.55]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 3f37dc9a-eb7a-42c3-db6b-08d709dc05e2
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR08MB2969; 
X-MS-TrafficTypeDiagnostic: DB7PR08MB2969:|VI1PR0801MB1854:
X-Microsoft-Antispam-PRVS: <VI1PR0801MB1854EB4DC474008F92A972889DCE0@VI1PR0801MB1854.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7219;OLM:7219;
x-forefront-prvs: 0100732B76
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(376002)(346002)(39860400002)(199004)(189003)(6116002)(229853002)(3846002)(2906002)(478600001)(305945005)(8936002)(31686004)(25786009)(14454004)(7736002)(4326008)(71200400001)(14444005)(256004)(186003)(36756003)(71190400001)(53936002)(66476007)(52116002)(26005)(99286004)(68736007)(66946007)(64756008)(66446008)(66556008)(6246003)(6512007)(102836004)(6506007)(53546011)(386003)(66066001)(44832011)(76176011)(86362001)(2501003)(5660300002)(316002)(476003)(31696002)(6486002)(2616005)(6436002)(446003)(11346002)(81156014)(81166006)(110136005)(8676002)(54906003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB2969;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: nx9m26Y1a0k0wjRJ++wE0tVIJmGyZ114ETIxXNkuLAabWh2hcQGwGNXHIACwpVgBVIPN8rShj9AgFlHHgi5wrGZSM1ox21hW7UsPwogi0zcLNA05gjkiQyJJRSSWljGuoBjRcEhfagWjWET59wHxwY9lO1AAY5o7mkZpMUy49Xqr1xNvFufshI2f2UBW1WYRoNqlFtNmiidrJegv6jsZSMGUawOy5qwtbhHDe10ZUxZK+xb4JcYfiBypg9zQWh8itXkDjf0FQ/Dev20/NeYv71uZ+LwQcJvAK6lQbOoZzIRaoVaEWZcrPqYrvJZ3TREIoR8JwtMxpwW8YCVSAK/mKJkDQyF+5Imogmyy+bQYUm6jYtP5RTDwTFo+BN72UY7W6/+kkBI/uB13eWOokbRRUfCgOhKy+JG6YPtdwpNfZ0o=
Content-ID: <6B10BCE8C2DC4242BE1ACB7D9A8494D2@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB2969
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Julien.Thierry@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT055.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(39860400002)(346002)(2980300002)(40434004)(199004)(189003)(5024004)(14444005)(102836004)(36756003)(50466002)(31686004)(66066001)(54906003)(486006)(6116002)(6506007)(386003)(3846002)(2486003)(76176011)(23676004)(2906002)(22756006)(26005)(436003)(63350400001)(356004)(2616005)(99286004)(126002)(316002)(446003)(11346002)(186003)(63370400001)(336012)(110136005)(476003)(36906005)(53546011)(8936002)(26826003)(76130400001)(305945005)(5660300002)(4326008)(31696002)(70206006)(70586007)(107886003)(7736002)(2501003)(6512007)(229853002)(86362001)(81156014)(14454004)(25786009)(47776003)(6246003)(8676002)(81166006)(478600001)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1854;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 8e27f739-0412-4947-e3bf-08d709dbfc80
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0801MB1854; 
X-Forefront-PRVS: 0100732B76
X-Microsoft-Antispam-Message-Info: 5CNsXq7TN4CzmB7gMXAQxmRTFNBhoh7pO5kpFfNDXrBtfrlNSmgCnfQHqqQJTrd3E4Hu6eeg+GTzbvKqaRyMkuFIdvQJzNfdfoSFJjd+Y9+zYR7R+YV+y0mYBTTmW9DDakuvtfzkMR51SDXXhCjn7KHDK9vO8PjYTc3D6S1emN/vzKoVzAFQ4aGHmbQXX5dJuPBLq+MfxDZBjYoUrF38ZzO8ZJ1HBpPWwEdV0xdSJYerHfVAjvzPib4zRCaWH7/E0jCKnS/pYoCoEV6SlUjjdtcqlY/++frVmFzYJePqphgOZA9E3sYPqXWFhYW1MOktBYWiCJy+f7IxDhomwsAjcE8BPg5a6JEt8Z96Jo+UIJxDgUTCjQjddelcxa3ONjJ5T1iRxtwFZiLwbld2CkznZdGn6Jue/U3HZi2LTHhFBGM=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2019 10:54:49.1632 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f37dc9a-eb7a-42c3-db6b-08d709dc05e2
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1854
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_035456_972423_8BB23222 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:615 listed in]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 "acme@kernel.org" <acme@kernel.org>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>,
 "jolsa@redhat.com" <jolsa@redhat.com>,
 "liwei391@huawei.com" <liwei391@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shijith,

On 16/07/2019 11:33, Shijith Thotton wrote:
>
>
> On 7/10/19 4:01 AM, Julien Thierry wrote:
>>
>>
>> On 10/07/2019 11:57, Steven Price wrote:
>>> On 08/07/2019 15:32, Julien Thierry wrote:
>>>> From: Mark Rutland <mark.rutland@arm.com>
>>>>
>>>> Currently we access the counter registers and their respective type
>>>> registers indirectly. This requires us to write to PMSELR, issue an ISB,
>>>> then access the relevant PMXEV* registers.
>>>>
>>>> This is unfortunate, because:
>>>>
>>>> * Under virtualization, accessing one registers requires two traps to
>>>>    the hypervisor, even though we could access the register directly with
>>>>    a single trap.
>>>>
>>>> * We have to issue an ISB which we could otherwise avoid the cost of.
>>>>
>>>> * When we use NMIs, the NMI handler will have to save/restore the select
>>>>    register in case the code it preempted was attempting to access a
>>>>    counter or its type register.
>>>>
>>>> We can avoid these issues by directly accessing the relevant registers.
>>>> This patch adds helpers to do so.
>>>>
>>>> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
>>>> [Julien T.: Don't inline read/write functions to avoid big code-size
>>>>    increase, remove unused read_pmevtypern function,
>>>>    fix counter index issue.]
>>>> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
>>>> Cc: Will Deacon <will.deacon@arm.com>
>>>> Cc: Peter Zijlstra <peterz@infradead.org>
>>>> Cc: Ingo Molnar <mingo@redhat.com>
>>>> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
>>>> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
>>>> Cc: Jiri Olsa <jolsa@redhat.com>
>>>> Cc: Namhyung Kim <namhyung@kernel.org>
>>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>>>> ---
>>>>   arch/arm64/kernel/perf_event.c | 96 ++++++++++++++++++++++++++++++++++++------
>>>>   1 file changed, 83 insertions(+), 13 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>>>> index 96e90e2..7759f8a 100644
>>>> --- a/arch/arm64/kernel/perf_event.c
>>>> +++ b/arch/arm64/kernel/perf_event.c
>>>> @@ -369,6 +369,77 @@ static inline bool armv8pmu_event_is_chained(struct perf_event *event)
>>>>   #define  ARMV8_IDX_TO_COUNTER(x) \
>>>>    (((x) - ARMV8_IDX_COUNTER0) & ARMV8_PMU_COUNTER_MASK)
>>>>
>>>> +/*
>>>> + * This code is really good
>>>> + */
>>>> +
>>>> +#define PMEVN_CASE(n, case_macro) \
>>>> +  case n: case_macro(n); break
>>>> +
>>>> +#define PMEVN_SWITCH(x, case_macro)                               \
>>>> +  do {                                                    \
>>>> +          switch (x) {                                    \
>>>> +          PMEVN_CASE(0,  case_macro);                     \
>>>> +          PMEVN_CASE(1,  case_macro);                     \
>>>> +          PMEVN_CASE(2,  case_macro);                     \
>>>> +          PMEVN_CASE(3,  case_macro);                     \
>>>> +          PMEVN_CASE(4,  case_macro);                     \
>>>> +          PMEVN_CASE(5,  case_macro);                     \
>>>> +          PMEVN_CASE(6,  case_macro);                     \
>>>> +          PMEVN_CASE(7,  case_macro);                     \
>>>> +          PMEVN_CASE(8,  case_macro);                     \
>>>> +          PMEVN_CASE(9,  case_macro);                     \
>>>> +          PMEVN_CASE(10, case_macro);                     \
>>>> +          PMEVN_CASE(11, case_macro);                     \
>>>> +          PMEVN_CASE(12, case_macro);                     \
>>>> +          PMEVN_CASE(13, case_macro);                     \
>>>> +          PMEVN_CASE(14, case_macro);                     \
>>>> +          PMEVN_CASE(15, case_macro);                     \
>>>> +          PMEVN_CASE(16, case_macro);                     \
>>>> +          PMEVN_CASE(17, case_macro);                     \
>>>> +          PMEVN_CASE(18, case_macro);                     \
>>>> +          PMEVN_CASE(19, case_macro);                     \
>>>
>>> Is 20 missing on purpose?
>>>
>>
>> That would have been fun to debug. Well spotted!
>>
>> I'll fix it in the next version.
>>
>> Thanks,
>>
>
> Tried perf top/record on this patch and are working fine.
> Output of perf record on "iperf -c 127.0.0.1 -t 30" is below. (single core)
>
> With Pseudo-NMI:
>      20.35%  [k] lock_acquire
>      16.95%  [k] lock_release
>      11.02%  [k] __arch_copy_from_user
>       7.78%  [k] lock_is_held_type
>       2.12%  [k] ipt_do_table
>       1.34%  [k] kmem_cache_free
>       1.25%  [k] _raw_spin_unlock_irqrestore
>       1.21%  [k] __nf_conntrack_find_get
>       1.06%  [k] get_page_from_freelist
>       1.04%  [k] ktime_get
>       1.03%  [k] kfree
>       1.00%  [k] nf_conntrack_tcp_packet
>       0.96%  [k] tcp_sendmsg_locked
>       0.87%  [k] __softirqentry_text_start
>       0.87%  [k] process_backlog
>       0.76%  [k] __local_bh_enable_ip
>       0.75%  [k] ip_finish_output2
>       0.68%  [k] __tcp_transmit_skb
>       0.62%  [k] enqueue_to_backlog
>       0.60%  [k] __lock_acquire.isra.17
>       0.58%  [k] __free_pages_ok
>       0.54%  [k] nf_conntrack_in
>
> With IRQ:
>      16.49%  [k] __arch_copy_from_user
>      12.38%  [k] _raw_spin_unlock_irqrestore
>       9.41%  [k] lock_acquire
>       6.92%  [k] lock_release
>       3.71%  [k] lock_is_held_type
>       2.80%  [k] ipt_do_table
>       2.06%  [k] get_page_from_freelist
>       1.82%  [k] ktime_get
>       1.73%  [k] process_backlog
>       1.27%  [k] nf_conntrack_tcp_packet
>       1.21%  [k] enqueue_to_backlog
>       1.17%  [k] __tcp_transmit_skb
>       1.12%  [k] ip_finish_output2
>       1.11%  [k] tcp_sendmsg_locked
>       1.06%  [k] __free_pages_ok
>       1.05%  [k] tcp_ack
>       0.99%  [k] __netif_receive_skb_core
>       0.88%  [k] __nf_conntrack_find_get
>       0.71%  [k] nf_conntrack_in
>       0.61%  [k] kmem_cache_free
>       0.59%  [k] kfree
>       0.57%  [k] __alloc_pages_nodemask
>
> Thanks Juilen and Wei,
> Tested-by: Shijith Thotton <sthotton@marvell.com>
>

Thanks for testing this and confirming the improvement.

I'm gonna post a new version soon. Is it alright if I apply this tag for
the other arm64 patches that enable the use of Pseudo-NMI for the PMU?
(I'm mostly thinking of patches 8 and 9 since there haven't been
comments on them and won't have behavioural changes in the next version).

Thanks,

--
Julien Thierry
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
