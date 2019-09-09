Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42601AD94B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 14:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xh49VyoH17iJUftiFge7gSbvVBFWF+ZHjbWc0UJGVa4=; b=fQfZf/SONDvJ2z
	lPr8rZC6VC2Kpp43tp1a84uE5UrBe4qTlzjaV0ZerUkB0OYO8CSxIyHSVm5hqhzvmnKazokw4jVU1
	fLv1aRpRIB/eiFewQrqXu76+NNWZd9ZrgbvB85Z16erlG9hq3aXSF3J19S5B6hgnaXoPO3I2+X9lN
	aakxeN37iuSr2/Wb34N8vo7fFLw/dQTtbtLBdKW3XGOzqzALmKbVNxHf9E/kSM9gYIy6RwrwX7hVH
	kUkG9haai7Nj7zLZoyFjpIPHAL8ExyMoihqJZuAoZvofv61wgSeWYfUJou7GG3uJumGH7ETb0rikq
	vMLdFCXKBJGPqfr2ERxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7J0h-0000bp-KC; Mon, 09 Sep 2019 12:43:11 +0000
Received: from mail-eopbgr40047.outbound.protection.outlook.com ([40.107.4.47]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Izv-0000Zr-7Z
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 12:42:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IXm/yeW8E8tjunBvM76aRXZo7naLtQbzD6tiNo9XISY=;
 b=iKlcQ9r7MV53gnu72QTDwzjK99zb4fzCs968ZQ4vvlAl0soeIb/HhdAanOtLg7aFTKEUH3+DAQLcnuOxgAOfT+O8waErwXMQkNAljc2u++6ERFxxAV1awUNfs3X0XUPsmzN/wzxmZohvUQeRoPMdYq1H4QjtfeqVADfU+qnCFjM=
Received: from AM6PR08CA0006.eurprd08.prod.outlook.com (2603:10a6:20b:b2::18)
 by AM0PR08MB3011.eurprd08.prod.outlook.com (2603:10a6:208:64::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2241.18; Mon, 9 Sep
 2019 12:42:18 +0000
Received: from AM5EUR03FT010.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::207) by AM6PR08CA0006.outlook.office365.com
 (2603:10a6:20b:b2::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2241.14 via Frontend
 Transport; Mon, 9 Sep 2019 12:42:18 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT010.mail.protection.outlook.com (10.152.16.134) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14 via Frontend Transport; Mon, 9 Sep 2019 12:42:16 +0000
Received: ("Tessian outbound a68750feb7d5:v28");
 Mon, 09 Sep 2019 12:42:14 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9c8cb18529faa1e0
X-CR-MTA-TID: 64aa7808
Received: from da746e8e074d.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.9.51]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 52B2012B-DAA1-4AA6-99F0-A78D3BA65A0F.1; 
 Mon, 09 Sep 2019 12:42:09 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2051.outbound.protection.outlook.com [104.47.9.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id da746e8e074d.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 09 Sep 2019 12:42:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pc+whORQ37f9HaHYG5maMWH/dnzHexKos0IkFMOVZlsl0bk+MwbPzJA/a12nbXgoYq3GbewDJ57Yfu6W/GQ8bcCLXKC8rCVslVouK/oKhkdZL+3I+9mlcTXFfaaXw5q7c8pl/5gVPEUCITIiN5KRSUAxgCb1CWYne8K728nHrvhbffyQD4AA3721Jq35FxpAzFs+fDPg2CSXQ/Zcqgllh67uM0r4U02kQ1QSYnv3Trs7iM8oMTCa5EVzJNy1U8ElLmIJvLD0Zgsy+7VKvwXHJpt1xJ2dCvFpnKj55r0GkUEu4VsGbgC4Hl5n14vhIDNDy9n+u4jY+S3w1WUrVWTUEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HabwYuZ9SCBzOzKaYqtG5XIHfEj4+0A6BNoQvRehb7w=;
 b=crS1x0rfSdtEr6e9ZgsZBEIrjZm4EiM/xsIfrmC0axM+nPJM9MIFO+StErRA6cACNlfUVE7Ql2FIBtyovmNn21U+58T2948XeB9/kdol0PdksBPppXQVhVrP0sJKtJ/z8Jg0+k/V6hz62lsCKTYzlEgd5WQbmn/ml9CySNqW4ZxO3n9nHIyE69+3Fg9UwIEzl4E90LB61nj2cGVIpwCkt82gQbJcL7mooPRsARBUpQQsOIovsgmwKsLb5z1Iae0YcWQb4FXrwN23hsm30DZ5iSxhsbqhn4TmKKwCnlX4V+0I8n4O9lyiJnnAgAp3RpQzI+wq0jc9gV4iCzUbwxBdpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HabwYuZ9SCBzOzKaYqtG5XIHfEj4+0A6BNoQvRehb7w=;
 b=rpUVtSlKIpTtb4kc+OXiLq49cHJpv1Y6qeTcQzlCy9nP4Yn/c7uZGxFGNYU3biCPDmD/0o0q6MtUIVDtHTTNLUVl66OcmTTCjlSb6GiI2pdJpWF/1RB4VYx2AzrVlXWMeltGG7uTsgia7YEJKfY9yri0WFGvpC1u6gThksvZLTI=
Received: from AM5PR0801MB1636.eurprd08.prod.outlook.com (10.169.246.150) by
 AM5PR0801MB1985.eurprd08.prod.outlook.com (10.168.158.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Mon, 9 Sep 2019 12:42:06 +0000
Received: from AM5PR0801MB1636.eurprd08.prod.outlook.com
 ([fe80::9d26:ed3a:6b5e:b5c3]) by AM5PR0801MB1636.eurprd08.prod.outlook.com
 ([fe80::9d26:ed3a:6b5e:b5c3%2]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 12:42:06 +0000
From: Amit Kachhap <Amit.Kachhap@arm.com>
To: Cristian Marussi <Cristian.Marussi@arm.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "shuah@kernel.org" <shuah@kernel.org>
Subject: Re: [PATCH v5 01/11] kselftest: arm64: add skeleton Makefile
Thread-Topic: [PATCH v5 01/11] kselftest: arm64: add skeleton Makefile
Thread-Index: AQHVYYHHGdHT14GrNEGMWz5zmwvD+g==
Date: Mon, 9 Sep 2019 12:42:06 +0000
Message-ID: <0a284da1-ff63-dfe9-e479-6ad68865aea1@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-2-cristian.marussi@arm.com>
 <cce97298-7a27-c470-6fc5-873b4447ecc9@arm.com>
 <e7b7b3fe-aba8-a4f2-400b-7cdeebd080e8@arm.com>
In-Reply-To: <e7b7b3fe-aba8-a4f2-400b-7cdeebd080e8@arm.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0112.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::28)
 To AM5PR0801MB1636.eurprd08.prod.outlook.com
 (2603:10a6:203:3a::22)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Amit.Kachhap@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.105.40]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 22619b23-0a7b-4197-325f-08d73523256b
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0801MB1985; 
X-MS-TrafficTypeDiagnostic: AM5PR0801MB1985:|AM5PR0801MB1985:|AM0PR08MB3011:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB30110C775C02BE309F3E7C268CB70@AM0PR08MB3011.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 01559F388D
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(366004)(346002)(136003)(189003)(199004)(256004)(54906003)(53936002)(66556008)(229853002)(6246003)(31696002)(66476007)(66446008)(2906002)(66946007)(6486002)(6512007)(102836004)(81166006)(81156014)(186003)(4326008)(476003)(99286004)(44832011)(8936002)(486006)(2616005)(64756008)(25786009)(36756003)(86362001)(6436002)(8676002)(53546011)(6506007)(26005)(386003)(2201001)(76176011)(7736002)(110136005)(478600001)(305945005)(446003)(11346002)(52116002)(71200400001)(71190400001)(14444005)(3846002)(31686004)(6116002)(66066001)(5660300002)(14454004)(316002)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB1985;
 H:AM5PR0801MB1636.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: rG1LoDO+ZazuUC9JhXGSZOfnJklQh/oMhCE84+O8MqJ3C9aQzNAW2pSsYaM3Plj3igGmTqkcmQMybfTVWWAPPD/4A5kw77pZ7HU/o0Y4q59IsP+h1m8bYj3qEakvf+ZnswXeTqNe7dgCNT1y7pnxdslEEiPu/tiQKzZ8tjHtsYqewjhJf80SKF9F21O9+pVq4XTCzIA81Abk6Nxatc2aeAvevPywcJ7c9aNmZHIauSp2lokbZQbgKkGLCdRtunaAOSVe3cZWP7we9xRWz2N0MzI+TjRUjlpQwQ3KPJamVdzlP5NTKd9s9g7rcB157Z4bnuopmZyPL9+pdn6Pxzz3TA3BzumsFFuqiXw/wWMJxpwbt3qMwp1Vx7v5xEgWPpZ/JHAxcOQystzkJAxkt7GkqMB3yQuDctO+pFLoX9lUeE0=
Content-ID: <A0A4B4E08D74D7429A1E587C7C3FBBBE@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1985
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Amit.Kachhap@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT010.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(376002)(2980300002)(40434004)(199004)(189003)(36906005)(186003)(47776003)(356004)(31686004)(446003)(2616005)(11346002)(6512007)(7736002)(6486002)(436003)(229853002)(6246003)(126002)(476003)(63370400001)(63350400001)(486006)(305945005)(50466002)(336012)(54906003)(3846002)(99286004)(2201001)(2906002)(31696002)(86362001)(76130400001)(66066001)(14454004)(2501003)(70586007)(70206006)(8676002)(6116002)(8936002)(23676004)(2486003)(14444005)(22756006)(36756003)(26826003)(26005)(386003)(110136005)(6506007)(81156014)(102836004)(25786009)(4326008)(316002)(53546011)(478600001)(5660300002)(81166006)(5024004)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB3011;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: e4e98750-1fdc-4e11-b5e4-08d735231f2a
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(710020)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR08MB3011; 
X-Forefront-PRVS: 01559F388D
X-Microsoft-Antispam-Message-Info: 9qwhvamJKIZJixROhU5JgMk755M9IVkF6tww/sG19dlJBkwsx2APb27/SbzkX6TGWc853q3ssOy8zT5BZ9Rd4qsAHTtlYaChETey+GsqNKnUgWy/5xW3rUOFTxrPSbepg8BMBgOAACkGijXIttP1WuwcLXeDdRELbrU92VBJBVPaFmcw70RF9FjPiT8QxYa33kIp+c47uxxHP4wz8hltO0Ieq4FYjboyZUbNDgrhq1LuMxJr9PAIV4Rhit8BxddaJiRlsNN4wL6kkvvLyz92LPoTfkKqSmsuFiT0wQaY0/HWWhwytx3IjIbHCQ9YbPj0jb7R6l1FQULA/gZfWuJuaI2S8FePX9uHL0uNwklVlr0CKoyYoDfE/y9v8ZZS6DlfqRNsW44qY3JlQTOeEoic8nIeoUm0O4JWwEwJ/KisJts=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2019 12:42:16.2713 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 22619b23-0a7b-4197-325f-08d73523256b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_054223_561210_80AB7C91 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.47 listed in list.dnswl.org]
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

Hi,

On 9/5/19 11:27 PM, Cristian Marussi wrote:
> Hi Amit
>
> On 03/09/2019 10:26, Amit Kachhap wrote:
>>
>> Hi Cristian,
>>
>> On 9/2/19 4:59 PM, Cristian Marussi wrote:
>>> Add a new arm64-specific empty subsystem amongst TARGETS of KSFT build
>>> framework; keep these new arm64 KSFT testcases separated into distinct
>>> subdirs inside tools/testing/selftests/arm64/ depending on the specific
>>> subsystem targeted.
>>>
>>> Add into toplevel arm64 KSFT Makefile a mechanism to guess the effective
>>> location of Kernel headers as installed by KSFT framework.
>>>
>>> Merge with
>>>
>>> commit 9ce1263033cd ("selftests, arm64: add a selftest for passing
>>>                  tagged pointers to kernel")
>>>
>>> while moving such KSFT tags tests inside their own subdirectory
>>> (arm64/tags).
>>>
>>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>>> ---
>>> v4 --> v5
>>> - rebased on arm64/for-next/core
>>> - merged this patch with KSFT arm64 tags patch, while moving the latter
>>>     into its own subdir
>>> - moved kernel header includes search mechanism from KSFT arm64
>>>     SIGNAL Makefile
>> This approach breaks the compilation of individual test cases which need
>> to export includes individually.
>>
>> make -C tools/testing/selftests/arm64/signal
>>
>> ../../lib.mk:25: ../../../../scripts/subarch.include: No such file or
>> directory
>> Makefile:25: warning: overriding recipe for target 'clean'
>> ../../lib.mk:123: warning: ignoring old recipe for target 'clean'
>> make: *** No rule to make target '../../../../scripts/subarch.include'.
>> Stop.
>>
>> However tags test works well,
>> make -C tools/testing/selftests/arm64/tags
>>
>> aarch64-none-linux-gnu-gcc     tags_test.c  -o
>> /home/amikac01/work/MTE_WORK/linux-server/linux/tools/testing/selftests/arm64/tags/tags_test
>>
>>
>> Thanks,
>> Amit Daniel
>>
>
> So at the end I think I'll opt for the following in V6 regarding the issue of being able to build specific
> KSFT arm64 subsystems while properly searching kernel headers (and keeping compatible with the KSFT
> framework completely):
>
> - only arm64 toplevel KSFT Makefile searches for the kernel headers location for all and propagates down the info
>
> - you can also now optionally specify which arm64 subsystem to build (to avoid have to build, say, all of signal/
>    if you are not interested into....a sort of standalone mode without all the burden of the old standalone mode)
ok.
>
> So you can issue:
>
> $ make TARGETS=arm64 kselftest
>
> or similarly:
>
> $ make -C tools/testing/selftests TARGETS=arm64 \
>                  INSTALL_PATH=<your-installation-path> install
>
> or select subsystems:
>
> $ make -C tools/testing/selftests TARGETS=arm64 SUBTARGETS="tags signal" \
>                  INSTALL_PATH=<your-installation-path> install
This option will be useful as it is better to compile just one subtarget
in development phase.

Thanks,
Amit
>
> with all of the above looking for the K headers in the proper place and without
> duplicating the search code in multiple places. (bugs apart :D)
>
> Thanks
>
> Cristian
>
>>> - export proper top_srcdir ENV for lib.mk
>>> v3 --> v4
>>> - comment reword
>>> - simplified documentation in README
>>> - dropped README about standalone
>>> ---
>>>    tools/testing/selftests/Makefile              |  1 +
>>>    tools/testing/selftests/arm64/Makefile        | 70 +++++++++++++++++--
>>>    tools/testing/selftests/arm64/README          | 20 ++++++
>>>    tools/testing/selftests/arm64/tags/Makefile   | 10 +++
>>>    .../arm64/{ => tags}/run_tags_test.sh         |  0
>>>    .../selftests/arm64/{ => tags}/tags_test.c    |  0
>>>    6 files changed, 95 insertions(+), 6 deletions(-)
>>>    create mode 100644 tools/testing/selftests/arm64/README
>>>    create mode 100644 tools/testing/selftests/arm64/tags/Makefile
>>>    rename tools/testing/selftests/arm64/{ => tags}/run_tags_test.sh (100%)
>>>    rename tools/testing/selftests/arm64/{ => tags}/tags_test.c (100%)
>>>
>>> diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
>>> index 25b43a8c2b15..1722dae9381a 100644
>>> --- a/tools/testing/selftests/Makefile
>>> +++ b/tools/testing/selftests/Makefile
>>> @@ -1,5 +1,6 @@
>>>    # SPDX-License-Identifier: GPL-2.0
>>>    TARGETS = android
>>> +TARGETS += arm64
>>>    TARGETS += bpf
>>>    TARGETS += breakpoints
>>>    TARGETS += capabilities
>>> diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
>>> index a61b2e743e99..5dbb0ffdfc9a 100644
>>> --- a/tools/testing/selftests/arm64/Makefile
>>> +++ b/tools/testing/selftests/arm64/Makefile
>>> @@ -1,11 +1,69 @@
>>>    # SPDX-License-Identifier: GPL-2.0
>>> +# Copyright (C) 2019 ARM Limited
>>>
>>> -# ARCH can be overridden by the user for cross compiling
>>> -ARCH ?= $(shell uname -m 2>/dev/null || echo not)
>>> +# When ARCH not overridden for crosscompiling, lookup machine
>>> +ARCH ?= $(shell uname -m)
>>> +ARCH := $(shell echo $(ARCH) | sed -e s/aarch64/arm64/)
>>>
>>> -ifneq (,$(filter $(ARCH),aarch64 arm64))
>>> -TEST_GEN_PROGS := tags_test
>>> -TEST_PROGS := run_tags_test.sh
>>> +ifeq ("x$(ARCH)", "xarm64")
>>> +SUBDIRS := tags
>>> +else
>>> +SUBDIRS :=
>>>    endif
>>>
>>> -include ../lib.mk
>>> +CFLAGS := -Wall -O2 -g
>>> +
>>> +# A proper top_srcdir is needed by KSFT(lib.mk)
>>> +top_srcdir = ../../../../..
>>> +
>>> +# Additional include paths needed by kselftest.h and local headers
>>> +CFLAGS += -I$(top_srcdir)/tools/testing/selftests/
>>> +
>>> +# Guessing where the Kernel headers could have been installed
>>> +# depending on ENV config
>>> +ifeq ($(KBUILD_OUTPUT),)
>>> +khdr_dir = $(top_srcdir)/usr/include
>>> +else
>>> +# the KSFT preferred location when KBUILD_OUTPUT is set
>>> +khdr_dir = $(KBUILD_OUTPUT)/kselftest/usr/include
>>> +endif
>>> +
>>> +CFLAGS += -I$(khdr_dir)
>>> +
>>> +export CC
>>> +export CFLAGS
>>> +export top_srcdir
>>> +
>>> +all:
>>> +   @for DIR in $(SUBDIRS); do                              \
>>> +           BUILD_TARGET=$(OUTPUT)/$$DIR;                   \
>>> +           mkdir -p $$BUILD_TARGET;                        \
>>> +           make OUTPUT=$$BUILD_TARGET -C $$DIR $@;         \
>>> +   done
>>> +
>>> +install: all
>>> +   @for DIR in $(SUBDIRS); do                              \
>>> +           BUILD_TARGET=$(OUTPUT)/$$DIR;                   \
>>> +           make OUTPUT=$$BUILD_TARGET -C $$DIR $@;         \
>>> +   done
>>> +
>>> +run_tests: all
>>> +   @for DIR in $(SUBDIRS); do                              \
>>> +           BUILD_TARGET=$(OUTPUT)/$$DIR;                   \
>>> +           make OUTPUT=$$BUILD_TARGET -C $$DIR $@;         \
>>> +   done
>>> +
>>> +# Avoid any output on non arm64 on emit_tests
>>> +emit_tests: all
>>> +   @for DIR in $(SUBDIRS); do                              \
>>> +           BUILD_TARGET=$(OUTPUT)/$$DIR;                   \
>>> +           make OUTPUT=$$BUILD_TARGET -C $$DIR $@;         \
>>> +   done
>>> +
>>> +clean:
>>> +   @for DIR in $(SUBDIRS); do                              \
>>> +           BUILD_TARGET=$(OUTPUT)/$$DIR;                   \
>>> +           make OUTPUT=$$BUILD_TARGET -C $$DIR $@;         \
>>> +   done
>>> +
>>> +.PHONY: all clean install run_tests emit_tests
>>> diff --git a/tools/testing/selftests/arm64/README b/tools/testing/selftests/arm64/README
>>> new file mode 100644
>>> index 000000000000..aca892e62a6c
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/README
>>> @@ -0,0 +1,20 @@
>>> +KSelfTest ARM64
>>> +===============
>>> +
>>> +- These tests are arm64 specific and so not built or run but just skipped
>>> +  completely when env-variable ARCH is found to be different than 'arm64'
>>> +  and `uname -m` reports other than 'aarch64'.
>>> +
>>> +- Holding true the above, ARM64 KSFT tests can be run within the KSelfTest
>>> +  framework using standard Linux top-level-makefile targets:
>>> +
>>> +      $ make TARGETS=arm64 kselftest-clean
>>> +      $ make TARGETS=arm64 kselftest
>>> +
>>> +      or
>>> +
>>> +      $ make -C tools/testing/selftests TARGETS=arm64 \
>>> +           INSTALL_PATH=<your-installation-path> install
>>> +
>>> +   Further details on building and running KFST can be found in:
>>> +     Documentation/dev-tools/kselftest.rst
>>> diff --git a/tools/testing/selftests/arm64/tags/Makefile b/tools/testing/selftests/arm64/tags/Makefile
>>> new file mode 100644
>>> index 000000000000..76205533135b
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/tags/Makefile
>>> @@ -0,0 +1,10 @@
>>> +# SPDX-License-Identifier: GPL-2.0
>>> +# ARCH can be overridden by the user for cross compiling
>>> +ARCH ?= $(shell uname -m 2>/dev/null || echo not)
>>> +
>>> +ifneq (,$(filter $(ARCH),aarch64 arm64))
>>> +TEST_GEN_PROGS := tags_test
>>> +TEST_PROGS := run_tags_test.sh
>>> +endif
>>> +
>>> +include ../../lib.mk
>>> diff --git a/tools/testing/selftests/arm64/run_tags_test.sh b/tools/testing/selftests/arm64/tags/run_tags_test.sh
>>> similarity index 100%
>>> rename from tools/testing/selftests/arm64/run_tags_test.sh
>>> rename to tools/testing/selftests/arm64/tags/run_tags_test.sh
>>> diff --git a/tools/testing/selftests/arm64/tags_test.c b/tools/testing/selftests/arm64/tags/tags_test.c
>>> similarity index 100%
>>> rename from tools/testing/selftests/arm64/tags_test.c
>>> rename to tools/testing/selftests/arm64/tags/tags_test.c
>>>
>
>
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
