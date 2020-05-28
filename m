Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 924751E5A58
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 10:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgvVxbUqWQ6SNSvBsdNkLbtbQgttWxTGvxJZ9MCgNOo=; b=kiClkpi/O7f7kO
	Y5ev3Ccj96s1cmLfJCgYblPL2XLEo0qRHmW/QUAM7JxUuszZMPRaC5g1DhL1mLo/9GOhXbEo7f45H
	wBTJ9uzMh6POzJhq6+uGb0W5kqL3ssqEkYCsyTY9okPO+8jWpoCfHD/r5y4msz66wQW7I1unP35SY
	/5dWsqlJ82QIwiaGms1yiNVWv8H1QGB3nOOghKPlUc4N6gpcmHVE9ejdPzjsl/ZKIghCPTHRuMQN8
	M2ELH1JkjFC+dJHbJs5jVJr8eB/kNST48xQhMdKqZTs+n1jCbP+G6jw4M3XySLpvT3nn8XF/A2IaR
	vhN/yFuiFNQLWdUI4miA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDXl-0000PG-Np; Thu, 28 May 2020 08:05:37 +0000
Received: from mail-eopbgr60075.outbound.protection.outlook.com ([40.107.6.75]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDXX-0000OR-AE
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 08:05:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XaXZ81rLzF61I6IkFwOAIbQsBICY+2mt4KwFZh0eGho=;
 b=yKoo5vgsOv/7WB+Q4nv8Ex3oCjqDj/oDwAmJzlHanVP0kxgt3YDqrBUUIEaE97kR03oe+WiNzB7fe2tMS6VUM9PmXIKRJtPBjIFRcFK60Ure7G2P2kffsccERgdyWe4oH5DJ7VCsdZ/XgCGBYsVMIfmG3XeTNSs5SkXvKHnAc/M=
Received: from DB6PR0201CA0002.eurprd02.prod.outlook.com (2603:10a6:4:3f::12)
 by VI1PR0801MB1629.eurprd08.prod.outlook.com (2603:10a6:800:4f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.18; Thu, 28 May
 2020 08:05:18 +0000
Received: from DB5EUR03FT032.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:3f:cafe::db) by DB6PR0201CA0002.outlook.office365.com
 (2603:10a6:4:3f::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19 via Frontend
 Transport; Thu, 28 May 2020 08:05:17 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT032.mail.protection.outlook.com (10.152.20.162) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Thu, 28 May 2020 08:05:17 +0000
Received: ("Tessian outbound cff7dd4de28a:v57");
 Thu, 28 May 2020 08:05:17 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8285a24a9476a3dd
X-CR-MTA-TID: 64aa7808
Received: from e130019a319d.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 88D329E4-E172-4F29-9631-357FABE9F141.1; 
 Thu, 28 May 2020 08:05:11 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e130019a319d.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 28 May 2020 08:05:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dykZE4usDVP/Jl8pEaFt38fxAsq1XZymHxPa/GpIpYFIW4eIXbOALrjteGQUdlsXca8kcScHZcjQe0v7MhYyfuB7Nn1egV2oUQXtfcqENrnV3hlAOOrHFJt1Vr1pICCyDDS0vi5Z4Ygqm9Fo+2zeHevzXvSN3vLlM3cpsBz+HWln/k0N+6ablJDyn8RbjjkBJg1OSoT61UIb/xywJCsiWisin7tUCpzSgagjwU45dGwkAEr7pHC/2/wWHsMXdmh48wGL0nAdTSdtZkEVrD3UdJnsV5H5+LRoGYaPjWxduWX5wQ/c7NYRQvKya0CACGJlifpbB/xiRqiUSfvhkLtfPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XaXZ81rLzF61I6IkFwOAIbQsBICY+2mt4KwFZh0eGho=;
 b=J154Wm7WP94M2Lu/uLSLJ/p/k42QtXbvVwtzopIPvd9sMR6KD5lNrz3hT2dSLu/BBzUMJ108ErW0zzJKntNrvZQ590xk/QqmG4WMb0nfgmnR5cdeSw1LCuKi18qiMQisOUIsXU3Xd39jn3Mmk+foUxkn85XOW4oR7F4UmrDulBsVEUbvwUOvoyvahZzTLvfS4wh/qjengv7VlF2BNzV31ZI3Q0pphp+8bKtbIWd5E4clQFRMHr7xDLj2eRAwpP9Q3glAbp5UhkzJBNwtqPxuyv7ZkV0aUmq+pbBeNFnR98mvvFlDG784QzTz2ChCcr/mQfNxV7FdXW+H95bCuZyrbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XaXZ81rLzF61I6IkFwOAIbQsBICY+2mt4KwFZh0eGho=;
 b=yKoo5vgsOv/7WB+Q4nv8Ex3oCjqDj/oDwAmJzlHanVP0kxgt3YDqrBUUIEaE97kR03oe+WiNzB7fe2tMS6VUM9PmXIKRJtPBjIFRcFK60Ure7G2P2kffsccERgdyWe4oH5DJ7VCsdZ/XgCGBYsVMIfmG3XeTNSs5SkXvKHnAc/M=
Received: from VI1PR08MB3198.eurprd08.prod.outlook.com (2603:10a6:803:49::20)
 by VI1PR08MB3744.eurprd08.prod.outlook.com (2603:10a6:803:bc::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.26; Thu, 28 May
 2020 08:05:09 +0000
Received: from VI1PR08MB3198.eurprd08.prod.outlook.com
 ([fe80::dc32:9f26:4e3c:66d]) by VI1PR08MB3198.eurprd08.prod.outlook.com
 ([fe80::dc32:9f26:4e3c:66d%6]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 08:05:09 +0000
From: Peter Smith <Peter.Smith@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Robin Murphy
 <Robin.Murphy@arm.com>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
Thread-Topic: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
Thread-Index: AQHWNGXqzYQgzZxejUil5D7OLgL6P6i9G5wR
Date: Thu, 28 May 2020 08:05:08 +0000
Message-ID: <VI1PR08MB319868AFBEDCD0925C53701AF88E0@VI1PR08MB3198.eurprd08.prod.outlook.com>
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
 <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
 <34f261f7-c4b5-a628-9a4c-eb97b75fba52@arm.com>
 <CAKwvOdn1W4C5HRJEch5PS-Atcmysh0UD+VZX_wi8tviGwhmM7Q@mail.gmail.com>,
 <CAKwvOd=Zxm9TDPNd4Qvn6Ru==FLasiP1xWXMM7ji08VWRjBu2g@mail.gmail.com>
In-Reply-To: <CAKwvOd=Zxm9TDPNd4Qvn6Ru==FLasiP1xWXMM7ji08VWRjBu2g@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=arm.com;
x-originating-ip: [217.140.106.52]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 181c026b-703a-48bf-5f03-08d802dddc40
x-ms-traffictypediagnostic: VI1PR08MB3744:|VI1PR0801MB1629:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB1629C814BFE0946C9D2F55D9F88E0@VI1PR0801MB1629.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:5797;OLM:5797;
x-forefront-prvs: 0417A3FFD2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: nQOA0ZpeIxEf6iTxOObyboE+CIdM7KRbDfyNS5HnoI6utvLyIMogx7c45nbl6dHNtWBgPloACdhOeiswe45pU0/NYobCV//o4IgwaFymxlqhRVHKj4+PGsL+AIWEPENQu1ohlS8oLPWgYOvYDfgKu2kX1AinaA2Cau+AVN3cNRgPL7iRkAXMOU/QqKdlTM4WT1NJIpZkRpEKxj83PF3C+ERbLBm0Y9/kPA4meG7A1k7bwkcLeX0KpaZLW9GKybVSD/DXsKqVCNtjenjuCPmhUrBUgHjJPyyEhnzqI2Dq2Ah2MhswPRGIJwlFFDCMX8C6XyfS2CUyq3tAsZNlGhdI+g2ZZbOhVIwbg8XM366lvE+kMkMRf3lxJZTwSVTeG3MDeDD+2AHmfbFgzkAX1OdvcQ==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:VI1PR08MB3198.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(39860400002)(376002)(396003)(346002)(366004)(136003)(2906002)(53546011)(6636002)(4326008)(7696005)(478600001)(110136005)(54906003)(8936002)(83380400001)(8676002)(6506007)(66556008)(33656002)(9686003)(55016002)(52536014)(5660300002)(7416002)(86362001)(26005)(186003)(64756008)(316002)(966005)(76116006)(66446008)(66946007)(71200400001)(66476007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ns0QJkr6cEXhuCenSd4UY7ytnRqp7TJwuOvc4LvapgmNuytYvvfwA8t+9rbTCPQngsGcIInL5uxIVyzB/30GfUhShj7sdVVqKuF10Pc/ZkcmAbxvg4KwumS45PK3LbNww4OuRWsZXO2WQs77JuEIfRB2SSKx3nBe7HQbV3ZRCPQA+soeivhCmIND0SVwswsUc3iIIsGXxFa+WLrfNL+ecDZJjzAC9NQcEWaV1lQFdm4rddvPeVnW9dn4wRWK5oD+FWBgbhZNLwGijOYe1rFxdcdzvsobcQ1bY+BCJnOMaNde1kXC1NZU+RtvAeXrFxnsz5y7cABf/yPDze5v6pi1J5n0/GSRW7j+b/dbiRwn4d1ozjaYHM2rZdhFFJcHReBMcHY2jrdGU2A31T7eBNYn1a2aKl9NYqE8ZHhVKTMfCUBr0//FQ//wIirFXbSofKrtdSEm6jHkJv2evPTus3KFAmqpKk/tHDV3mliwkgb1eVmw+uFZD6qgtkNHzwhsNceX
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3744
Original-Authentication-Results: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT032.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(376002)(39860400002)(396003)(346002)(46966005)(86362001)(33656002)(107886003)(8676002)(186003)(70206006)(7696005)(6506007)(53546011)(2906002)(9686003)(4326008)(336012)(82740400003)(47076004)(55016002)(356005)(8936002)(966005)(52536014)(110136005)(82310400002)(6636002)(54906003)(478600001)(81166007)(316002)(5660300002)(83380400001)(70586007)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 283e9603-1c51-4f50-d034-08d802ddd6f8
X-Forefront-PRVS: 0417A3FFD2
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GreCQin6Y0iWlXWNiLNEob4OLJbaexe1T9+qtiJpVf7si1oqGkQDqz8DgUGJHEa4i4tXt7JcTiyf5q2BhHc1aMZ4hdSJlkx0+AQpSSgnbBoQ/FyXW1m/vB9XUs3SoIDBn+3QOkn53H7ryqtXMx6rnFXmDRuFCsq1ePl9GBsZ+nEWMX/05SRaRVJk3H9Rwhn86FOFNWurp1tJhJX5Vk/pz4+QJPOOTwPdQnM4Nic8+71uYYmdEUGiyOJXzPbgY2KmTtfYGla1ZvfXRAQb8W934ck3t9/tR/uqefbhVf2P87wOxkoLc4LBjwCm+EtVsaz2jJTuOF0v+o9aaeAvzu9fU6g3q07Z4yLuodRvsn0h8CRxuF3VEwuvfUaxZVnob+1lXmMOX+h5lqknX6BG18yxKK3zymRZZ8UvnxCsKkpZitxp5jSitOFRHtSm+ypJkt2acCnsEhA6YlR1QkXhu7vv5Ae5NF1gGi1eaVZ2EbTPjsQ=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2020 08:05:17.9089 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 181c026b-703a-48bf-5f03-08d802dddc40
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1629
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_010523_434181_E2104AD3 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.75 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <Catalin.Marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 "david.spickett@linaro.org" <david.spickett@linaro.org>,
 Manoj Gupta <manojgupta@google.com>, Kristof Beyls <Kristof.Beyls@arm.com>,
 Luis Lozano <llozano@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Victor Campos <Victor.Campos@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: 27 May 2020 21:31
> To: Robin Murphy
> Cc: Catalin Marinas; Will Deacon; Naohiro Aota; Stephen Boyd; Masahiro Yamada; LKML; Manoj Gupta; Luis Lozano; Nathan Chancellor; Vincenzo Frascino; Linux ARM; Kristof Beyls; Victor Campos; david.spickett@linaro.org; Arnd Bergmann; Peter Smith
> Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
> 
> On Wed, May 27, 2020 at 1:14 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, May 27, 2020 at 12:28 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > >
> > > On 2020-05-27 18:55, Nick Desaulniers wrote:
> > > > On Wed, May 27, 2020 at 6:45 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > >>
> > > >> On 2020-05-26 18:31, Nick Desaulniers wrote:
> > > >>> Custom toolchains that modify the default target to -mthumb cannot
> > > >>> compile the arm64 compat vdso32, as
> > > >>> arch/arm64/include/asm/vdso/compat_gettimeofday.h
> > > >>> contains assembly that's invalid in -mthumb.  Force the use of -marm,
> > > >>> always.
> > > >>
> > > >> FWIW, this seems suspicious - the only assembly instructions I see there
> > > >> are SWI(SVC), MRRC, and a MOV, all of which exist in Thumb for the
> > > >> -march=armv7a baseline that we set.
> > > >>
> > > >> On a hunch, I've just bodged "VDSO_CFLAGS += -mthumb" into my tree and
> > > >> built a Thumb VDSO quite happily with Ubuntu 19.04's
> > > >> gcc-arm-linux-gnueabihf. What was the actual failure you saw?
> > > >
> > > >  From the link in the commit message: `write to reserved register 'R7'`
> > > > https://godbolt.org/z/zwr7iZ
> > > > IIUC r7 is reserved for the frame pointer in THUMB?
> > >
> > > It can be, if you choose to build with frame pointers and the common
> > > frame pointer ABI for Thumb code that uses r7. However it can also be
> > > for other things like the syscall number in the Arm syscall ABI too.
> >
> > Ah, right, with -fomit-frame-pointer, this error also goes away.  Not
> > sure if we prefer either:
> > - build the compat vdso as -marm always or
> > - disable frame pointers for the vdso (does this have unwinding implications?)
> > - other?
> >
> > > I
> > > take it Clang has decided that writing syscall wrappers with minimal
> > > inline asm is not a thing people deserve to do without arbitrary other
> > > restrictions?
> >
> > Was the intent not obvious? We would have gotten away with it, too, if
> > wasn't for you meddling kids and your stupid dog! /s
> > https://www.youtube.com/watch?v=hXUqwuzcGeU
> > Anyways, this seems to explain more the intentions:
> > https://reviews.llvm.org/D76848#1945810
> > + Victor, Kristof (ARM)
> 
> And maybe some other useful data points regarding warning on use of r7
> and frame pointers.
> https://github.com/ClangBuiltLinux/linux/issues/701#issuecomment-591325758
> https://bugs.llvm.org/show_bug.cgi?id=45826
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94986
> 
> + Peter (ARM)
> + David, Arnd (Linaro)
> --
> Thanks,
> ~Nick Desaulniers

Hello Nick,

The AAPCS has only recently (28th January 2020) been updated with a
specification of the frame pointer and frame chain.

My understanding is that neither gcc nor clang implement this part yet.
Historically the frame pointer in Thumb has not been defined in the
AAPCS with implementations falling back to historic definitions of
fp = r7 in Thumb and fp = r11 in Arm. The use of different frame
pointer registers in Arm and Thumb state makes it difficult to
construct a frame chain with interworking. My understanding of the
AAPCS is that it has been changed to make the frame pointer r11 on
both Arm and Thumb to make unwinding possible, at the expense of r11
being harder to access from 16-bit Thumb instructions. There are 4
levels of conformance with respect to construction of frame records
and frame chain as it is likely some platforms will want to persist
with r7.

An implementation of the latest version of the AAPCS would permit
a frame pointer and use of r7 as a reserved register. Although as
you'll need to support older compilers this may not be an option.
I suggest using Arm if you need a frame pointer, and disable the
frame pointer if you want/need to use Thumb. My understanding is that
runtime unwinding using the frame pointer in Thumb is already difficult
due to Arm and Thumb functions using different registers for the frame
pointer.

Hope this helps

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
