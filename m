Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505C121477
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5//cDBuLzAyxDbSR90LN7Rw5Bfo9Ha2VbNdf2UxBxo8=; b=kj881xIfkJs+D5
	uhP7OOFzDZtmPFCPbVWphvjoerthEtqp1Rj+Exfm2Kc3XUjf6aLOACvvgPCzxw+QpOTwXx7rpH0Ns
	B/KfjLoAp15lh9gQrX1OUcvf23XMY47g8NAgi5NB19P+BqtoUGvRoM86o+CFHKhEifZPMOoC0PFVt
	kwr9YeGyc1l6tajfswcUUWwOyo6hJlNye7ueLvvPf8dGwU8OZfVG/qGsjaSptd5ima2Lsu//OtN3t
	GBJO1J6Gb8xyFbPFBHpeeD8UulW50vK4igzAmRchn5e1eo6aeQyZ4hnhTakUOKr8HYAmbP/k1oiLp
	j1dw4G4AEsCohr4G5TMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXOq-0002lv-5m; Fri, 17 May 2019 07:35:28 +0000
Received: from mail-eopbgr140043.outbound.protection.outlook.com
 ([40.107.14.43] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXOj-0002l3-27
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 07:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eHmjBfuC4vxiTyP58WsAVLZdiIqCRwqeWpLa4rts0ak=;
 b=Mm2/zeI9GFsZ93upGhur22SIKyy9QJUh2AT3sTpnFstEeJjRgjHXt5F3y9dwyhL+Pu6koKSr1SMIHLRh4DXz7sGDyQSf2+sVrhUWiXxpwdqR9b/4YWt9lfh9PV0uHgu4qw3iVU1na/EkRqsUnzMGHPwY/J8OmKtoo+n+x6uus1s=
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com (20.178.84.149) by
 DB7PR08MB3884.eurprd08.prod.outlook.com (20.178.46.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Fri, 17 May 2019 07:35:16 +0000
Received: from DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::1c44:4e1b:c1e1:543e]) by DB7PR08MB3865.eurprd08.prod.outlook.com
 ([fe80::1c44:4e1b:c1e1:543e%7]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 07:35:16 +0000
From: Raphael Gault <Raphael.Gault@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 4/6] arm64: pmu: Add hook to handle pmu-related undefined
 instructions
Thread-Topic: [PATCH 4/6] arm64: pmu: Add hook to handle pmu-related undefined
 instructions
Thread-Index: AQHVC+ps829CXrnAbkOTNSFu6HVCF6Zu51UAgAAG+YA=
Date: Fri, 17 May 2019 07:35:16 +0000
Message-ID: <c7c4c851-51d9-a596-cba2-23252785251c@arm.com>
References: <20190516132148.10085-1-raphael.gault@arm.com>
 <20190516132148.10085-5-raphael.gault@arm.com>
 <20190517071018.GH2623@hirez.programming.kicks-ass.net>
In-Reply-To: <20190517071018.GH2623@hirez.programming.kicks-ass.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0019.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::31) To DB7PR08MB3865.eurprd08.prod.outlook.com
 (2603:10a6:10:32::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Raphael.Gault@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.140.106.53]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e5ae6aa-326a-4a6a-c479-08d6da9a345a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR08MB3884; 
x-ms-traffictypediagnostic: DB7PR08MB3884:
x-microsoft-antispam-prvs: <DB7PR08MB388454E50431431463762AA9ED0B0@DB7PR08MB3884.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(376002)(396003)(346002)(39860400002)(199004)(189003)(40434004)(53936002)(6916009)(5660300002)(6246003)(2906002)(66556008)(64756008)(66446008)(66476007)(66946007)(305945005)(73956011)(7736002)(31686004)(68736007)(6116002)(3846002)(8936002)(8676002)(81156014)(81166006)(53546011)(76176011)(386003)(99286004)(102836004)(31696002)(256004)(14444005)(5024004)(36756003)(54906003)(11346002)(14454004)(6506007)(52116002)(66066001)(44832011)(446003)(229853002)(6436002)(6512007)(71190400001)(86362001)(186003)(2616005)(476003)(486006)(316002)(72206003)(478600001)(71200400001)(4326008)(6486002)(26005)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3884;
 H:DB7PR08MB3865.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NDHao45jqJbS5xIFIvl45y5AW0ojN8fuzImtTfZF+b+20FDtrGRSKKK7NyciTm6awXXWhIXVson+AkqggrQjgjiJrM6xeqjAfBSss2mlMoJoXYV07rl0rs1T8swLhvE4POSHQuDDg8eUUCJKwazje5qjlCecXxmim+4PBjE397e1/IAOM+6UlL4N531P3peAZrtGc0IuW+n48FiZpTC/u2RWpGu/RLbS4PmeOwY4R8Exg4rcUkoDYJl/ehZvx0dKKfXK4WEwOyqyr1FrjukK2lMkzshwmWLYnLsbB7LFcdjxSY8C2O2xj+yMxi0gQ1DUaWNLMOOSndKYjipK12kjcfJ2Oq7054i6iW4p0WoVG7KtH9HLi3YbF+98hbzZ+0MRC/6Fd5kDeAm4+E+2ptH5GuLYAl8ycPoOWvz3GBAI9WE=
Content-ID: <BCC04CA52D4D464AB543E1CADCDF7E90@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e5ae6aa-326a-4a6a-c479-08d6da9a345a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 07:35:16.0774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_003521_160506_ABFA44C2 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "acme@kernel.org" <acme@kernel.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/17/19 8:10 AM, Peter Zijlstra wrote:
> On Thu, May 16, 2019 at 02:21:46PM +0100, Raphael Gault wrote:
>> In order to prevent the userspace processes which are trying to access
>> the registers from the pmu registers on a big.LITTLE environment we
>> introduce a hook to handle undefined instructions.
>>
>> The goal here is to prevent the process to be interrupted by a signal
>> when the error is caused by the task being scheduled while accessing
>> a counter, causing the counter access to be invalid. As we are not able
>> to know efficiently the number of counters available physically on both
>> pmu in that context we consider that any faulting access to a counter
>> which is architecturally correct should not cause a SIGILL signal if
>> the permissions are set accordingly.
>
> The other approach is using rseq for this; with that you can guarantee
> it will never issue the instruction on a wrong CPU.
>
> That said; emulating the thing isn't horrible either.
>
>> +/*
>> + * We put 0 in the target register if we
>> + * are reading from pmu register. If we are
>> + * writing, we do nothing.
>> + */
>
> Wait _what_ ?!? userspace can _WRITE_ to these registers?
>

The user can write to some pmu registers but those are not the ones that
interest us here. My comment was ill formed, indeed this hook can only
be triggered by reads in this case.
Sorry about that.

Thanks,

--
Raphael Gault
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
