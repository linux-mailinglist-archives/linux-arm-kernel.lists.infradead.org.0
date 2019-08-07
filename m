Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C959A8507C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:00:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6Vw68YYaOGuGUr6eZPDaMV9Gbmt6gLtY/IpkhSwT9M=; b=VkrrYf6LhIUfa+
	jft/XZy30/UX41YOlNusZ1utYM7ZjZCrOyM51YTRlMrjofz2k4QQIr4SlClrmQax20TcuLwkJDIUZ
	t+ax7awyUC2+oRukuJ7AVw/1+7QIOPpAYjgff90xXhaj/6S0DebJSX6a+zqMGNQA48MP/zC8qM3OP
	GrISGGPojnNJirsq7Bvv1OF7VPFDQvGG1z8F9Uv5Xbitq+CQn7bFT2jRX0bbHESJqu47EMZctISL1
	U5JmG0GeM2q4hN5e4X96pF6sdJFXWdnR7Z1U6GnsFdgA+SaqmUPfJp/372r7wuHHJjhft7H8NxZNF
	IOtaV3Yg+QFGlS1BU64A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOM6-0001Wb-EE; Wed, 07 Aug 2019 16:00:02 +0000
Received: from mail-eopbgr50071.outbound.protection.outlook.com ([40.107.5.71]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOKP-00006p-8E
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:58:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0juoBC/HPckAK9cAM8bC88e000LQ/EXjUth06LLN3wU=;
 b=j1ymQUARhS2qv8qguhWuvFOOonl6Lo1EHrwm5epk4GQtxbze2hOLyPex612lGM4Xv1id2GZHqLMJRcIjZrk1LOKG+4VoogS9hJhZtuRM2Sy1RfyJTMRclJVJtgJSpowMq5/oaWQB6ofJPkUEBKRPmYoFfQRLu2yAN7e7edfxhLo=
Received: from VI1PR08CA0125.eurprd08.prod.outlook.com (2603:10a6:800:d4::27)
 by DB6PR0802MB2600.eurprd08.prod.outlook.com (2603:10a6:4:a1::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.16; Wed, 7 Aug
 2019 15:58:12 +0000
Received: from VE1EUR03FT054.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::203) by VI1PR08CA0125.outlook.office365.com
 (2603:10a6:800:d4::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.15 via Frontend
 Transport; Wed, 7 Aug 2019 15:58:12 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT054.mail.protection.outlook.com (10.152.19.64) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Wed, 7 Aug 2019 15:58:10 +0000
Received: ("Tessian outbound 578a71fe5eaa:v26");
 Wed, 07 Aug 2019 15:58:06 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f1fb4247b044addc
X-CR-MTA-TID: 64aa7808
Received: from 8f3c2a62aa7b.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.5.58]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 468B5B84-8E59-4503-936E-FA03665F5D96.1; 
 Wed, 07 Aug 2019 15:58:01 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2058.outbound.protection.outlook.com [104.47.5.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 8f3c2a62aa7b.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 07 Aug 2019 15:58:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V5cUiUZPL0eOEBzUYfk6Efdg6s/sMKEDgCHLz0teEip4zqDvUoYXAZ8+VjpNcyu2U/AVPLdOnKSO0+wWQMMqY21afsdGw2xiv7cBIqy+z3QsJOXez8MjM4FvUjvyrFmrW7cIgR5SN8fLmHL+tLWoA5DeLHTdXYF9fQQEBVNuJI+xv+YblFnqJk4uqX8DAqwirUBWKEaAesSSKfKkhUngApQ+P+QethfhbcClM84roV22ZKuGEfxBsKqtZHJu/MBR39UxJYrFCkAa6Rrb2EU7zrFRhnYbhNpeQrhhGvqprig+0Y6lOtdUOhtvwO5cQYr3eJwRkDiLTSaSVZppcsSSwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0juoBC/HPckAK9cAM8bC88e000LQ/EXjUth06LLN3wU=;
 b=a607pv2+atey45myiNOJdKXeE1D8rBGbXPTBDtgDb3VgPV8OjnTsmsQF3xqst95l9Gcxtik5IlB3+5vfK7H06ZDveBS4RZVrHxPBW5UXkLSM31CyFCO6FYBkQxvOPbnITWiNDCrQqk/w4NiQVJWhiz4RGOZalq0gy3WR2RI4iASdaH9bQua3HoFPtjHZntJPU0h2iQXR4foxiuRaZUfpiKMVaP1h2tnhtnsWWrild+wVG2eCqys3C/6Rhs5WclZeT6/BJ9c1LHOrXWEc4fKXNBXOqSnPUtegIUyZFjjBP9U6k3+fSPrCxdUqyd/Es67us1CFy1HPByhpbbHPXRsGGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0juoBC/HPckAK9cAM8bC88e000LQ/EXjUth06LLN3wU=;
 b=j1ymQUARhS2qv8qguhWuvFOOonl6Lo1EHrwm5epk4GQtxbze2hOLyPex612lGM4Xv1id2GZHqLMJRcIjZrk1LOKG+4VoogS9hJhZtuRM2Sy1RfyJTMRclJVJtgJSpowMq5/oaWQB6ofJPkUEBKRPmYoFfQRLu2yAN7e7edfxhLo=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB4187.eurprd08.prod.outlook.com (20.179.9.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 15:57:58 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2136.010; Wed, 7 Aug 2019
 15:57:58 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH V4 11/11] docs: arm64: Add layout and 52-bit info to
 memory document
Thread-Topic: [PATCH V4 11/11] docs: arm64: Add layout and 52-bit info to
 memory document
Thread-Index: AQHVRinQqqwQFRazNUqPmc5n7tMFdabuSpwAgAGCIoCAAAdKAIAAEWUA
Date: Wed, 7 Aug 2019 15:57:58 +0000
Message-ID: <20190807155755.GA5208@capper-ampere.manchester.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-12-steve.capper@arm.com>
 <20190806152734.GH30716@arrakis.emea.arm.com>
 <20190807132935.GB17012@capper-ampere.manchester.arm.com>
 <20190807145540.uglvqrgkotkzfzuy@willie-the-truck>
In-Reply-To: <20190807145540.uglvqrgkotkzfzuy@willie-the-truck>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P123CA0006.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::18) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 9ebbc76a-0858-4a94-0ba2-08d71b500bf2
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB4187; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB4187:|DB6PR0802MB2600:
X-Microsoft-Antispam-PRVS: <DB6PR0802MB2600459B73C0E123A2565DD681D40@DB6PR0802MB2600.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7219;OLM:7219;
x-forefront-prvs: 01221E3973
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(366004)(189003)(199004)(6436002)(4744005)(66556008)(6246003)(1076003)(81156014)(5660300002)(229853002)(2906002)(53936002)(71190400001)(26005)(256004)(478600001)(66476007)(64756008)(25786009)(66446008)(6512007)(66066001)(8936002)(6486002)(71200400001)(6116002)(8676002)(66946007)(3846002)(486006)(52116002)(7736002)(76176011)(6916009)(316002)(4326008)(54906003)(33656002)(44832011)(386003)(81166006)(476003)(11346002)(186003)(446003)(99286004)(6506007)(58126008)(102836004)(68736007)(305945005)(86362001)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB4187;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: XFYHIB9vcMkQSkXw29w2FIgMbyex8y7W27v5uW+CVbKErjsVL4anPLQxILPwRfZYF/wCPc7DZ6AJTIzhlU7Y5JuDaPEJd6IkE7+DE2xMSC4HeyB9GinNG9wjFRTQ1D+QU4ZclsI8+Z94MewfW5wsDG2MKJx82uOTlV3ktwTDMRJ4579HqJZIt0KhElACRgI6Cr2I0BgnSW/mnJH+FXSJGA1SOyeSVxSoWLlqEIGOZgBsrCrmCzmexjgorCNC+cclMHTHqyfWHCUzXJVWmPZshwOpAVOJfAmTEcTMBtuS+szvRV07yGK5XL6dq2wKDvpMoEaLdKJoQNn++i0Bs1AKONM5NgnUDzjWn8QaRscEsjgvlLasqqc0X7MM/vitu6Ed9Mn5+kE1A/6+oknn404colpt8hGukZmEDRF+57h1SzM=
Content-ID: <64449EDC13CE8F4394EFD2F0B1574756@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4187
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT054.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(39860400002)(346002)(2980300002)(199004)(189003)(99286004)(6486002)(70586007)(186003)(11346002)(97756001)(3846002)(86362001)(63370400001)(6116002)(63350400001)(1076003)(478600001)(126002)(6512007)(229853002)(70206006)(26826003)(81166006)(356004)(476003)(6246003)(8676002)(81156014)(446003)(23726003)(76176011)(33656002)(8746002)(7736002)(36906005)(46406003)(8936002)(102836004)(58126008)(4744005)(316002)(76130400001)(22756006)(386003)(5660300002)(26005)(14454004)(305945005)(336012)(66066001)(2906002)(54906003)(50466002)(4326008)(6862004)(486006)(25786009)(6506007)(47776003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0802MB2600;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 4c70fa3c-a143-4d2c-e64d-08d71b500444
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(710020)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB6PR0802MB2600; 
NoDisclaimer: True
X-Forefront-PRVS: 01221E3973
X-Microsoft-Antispam-Message-Info: OhWw0kye/8LUGH+17MRlvzWZsW6QTutqsBtWkDwzCZb40emWf0TnoaScaPoHHPfmVJfksK0AurOcE77fTX6oWjZGe0Et5Ayx9Z2OR66zojSXMSVspAdBkEjoNebjxlCcxyK+brudnGkWImyF//CQKikuNVs2aisuyUPcVkXwTZMGcqmT8UobBHJIIwWWG0DxJnnzfgslLu4H9TNTqrvQHTSWmEoh2hAhFl/zlQ4KMnb32fxINxVUeG62r6bv6ow4LwtexBLA5o+UcVFgxGjWCQ0tE8JKAwpnAplD1+3pI9wKVLQGs8jNy8WyIkfMHQ/AMopbvr7H4GqKSvaK8BDy1OkoH+ELKctdUE03zoHrfqO5wEBS8+aMNMKnwvqPvj8D5/P2Zs8H9kkBMpyYLEUtPpJ+hQV35FvEh6ttQj8Uhoc=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2019 15:58:10.6629 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ebbc76a-0858-4a94-0ba2-08d71b500bf2
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_085817_614925_848224BC 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.71 listed in list.dnswl.org]
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "bhsharma@redhat.com" <bhsharma@redhat.com>, "maz@kernel.org" <maz@kernel.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 03:55:40PM +0100, Will Deacon wrote:
> On Wed, Aug 07, 2019 at 01:29:38PM +0000, Steve Capper wrote:
> > Many thanks for going through this series Catalin. Would you like me to post
> > a V5 of the series?
> 
> /me does best Catalin impression...
> 
> "Yes, please."
> 
> Uncanny, eh?

Well I'm convinced! Just sent out a V5 now.

Cheers Will ;-).

-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
