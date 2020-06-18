Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BC11FF077
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 13:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HbSy1h89RF3J/nbUmZKSf+yWtziiaM3pkJpxQP5afE=; b=aMNDXfSiJT81/d
	75Nb+c8loD0+h9gCJ8ivPrDToi3axzypekALLX7RDjg3GFtDXZxtRaIAD41YsDPgQg61joQPoeXgQ
	+nSjmTPs850ZEF4eoU+fytKpK7GcqT+5bvKhd43sDhLdZwLuTkyD+U7XbvJjzlIVzuJfOUqrUzwwn
	HDJzlycjYvbIQM3Vg1RY2oW4p0+KlG4IFVFkPvCvof0zUop0kGqi2YnW7Ix3v7rCNsS61l21FgjgC
	1/lwGfuLC0wrjEVaq2Io89mZeRWmpHTFClOlCVYphrSRM34BYqvwoXJiM+y/Tu/hIHTRkKbwsQYal
	4WKgoCDbJCupHNPndpfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlsg8-00043v-UF; Thu, 18 Jun 2020 11:25:56 +0000
Received: from mail-db8eur05on2082.outbound.protection.outlook.com
 ([40.107.20.82] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlsg0-000430-6O
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 11:25:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V2ARjDOvZeAmmi7omaaiORdqNdrDqahdVN1iE+pMOJk=;
 b=Jo5zBZ9ueQ3qb8u88dNJDWnRlAiQvhKsBQjTD1ixefMQIQZBodnZjUcp1kPVH9xUTgxNjl6mfCOoYYt2mdFTOwHM5DVp3fEX1CzropVXHNFuXfAQtrO/qw8ZPKQ6/8e0ZAemizWcYEqxHszOdez7U6wTNdKa/AH6JhaGAWzSIG8=
Received: from AM6P193CA0038.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:8e::15)
 by VI1PR0802MB2365.eurprd08.prod.outlook.com (2603:10a6:800:9f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 11:25:44 +0000
Received: from AM5EUR03FT051.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:8e:cafe::6a) by AM6P193CA0038.outlook.office365.com
 (2603:10a6:209:8e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21 via Frontend
 Transport; Thu, 18 Jun 2020 11:25:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT051.mail.protection.outlook.com (10.152.16.246) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22 via Frontend Transport; Thu, 18 Jun 2020 11:25:44 +0000
Received: ("Tessian outbound 09efa10eaf29:v59");
 Thu, 18 Jun 2020 11:25:44 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 4f2182586558f48f
X-CR-MTA-TID: 64aa7808
Received: from 91ccf4400be1.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 16573015-7582-4C68-8B3C-C9061C319F8B.1; 
 Thu, 18 Jun 2020 11:25:38 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 91ccf4400be1.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 18 Jun 2020 11:25:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dm075R50YFn8SBmGqa8dVLGrNjMJTD15aVJjUd6EcZ3OUpxIlVbtHcWstcZOGhXXIl7ybtb3hexig3POsIYGqZoQ6Ml2CB0G1Pu/VGEkGwqVlpQuO3KGY6TT9O61026+azc19nzzD9nS3c0wwBh2Q4tXYjJ5KJTGgBFyvrcUT4QDPaj9xvJs0JaVkoUoMjRI4LAXYSfqUTmk29JY+U2rv/oYZE4+c3FGZbSktnrBsC0OBHGx1nNTYig2LMOZYGsQnCl6m713Ue9wF2z1Yz892Q8OV2D/9s8Xove19OiCePyNpE3jtYZhH3BHRqlrRX3hNoQgBWd2qWfN7CDfkRXH/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V2ARjDOvZeAmmi7omaaiORdqNdrDqahdVN1iE+pMOJk=;
 b=ULsK2ADJyxt/Ns9TQqQbs/CJNlNqd6Kh7H8hAsCKXYmPGCeyxofonKnIjeEKRFHEJdFkID9GvoDgpxhz6lLyWoiQlZZRSo8fJC6/h0z36a1OUYvcGDZGpTU4zjew8c9D+48dRdj49+kUx1mGrOKpTSmJv3AcrU5bnLMc5Y6FfE4cguaulLsO26Ii+T3RdtwOh7Hf/S1LR6l0mmHXGPMxdcXSkwzbI3zDQm+T/tLfhFmTFkZnyuqi5Lgum50nEfdmhzLOLUQP5XGlEmgUeM3EUCYJj/4LxABkgoCpnzqsuHeC6Ic47wgbt2PHltfhA76yyUpxDWCUVshMavO9KIbrXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V2ARjDOvZeAmmi7omaaiORdqNdrDqahdVN1iE+pMOJk=;
 b=Jo5zBZ9ueQ3qb8u88dNJDWnRlAiQvhKsBQjTD1ixefMQIQZBodnZjUcp1kPVH9xUTgxNjl6mfCOoYYt2mdFTOwHM5DVp3fEX1CzropVXHNFuXfAQtrO/qw8ZPKQ6/8e0ZAemizWcYEqxHszOdez7U6wTNdKa/AH6JhaGAWzSIG8=
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com (2603:10a6:20b:e7::32)
 by AM6PR08MB4786.eurprd08.prod.outlook.com (2603:10a6:20b:cc::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 11:25:37 +0000
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859]) by AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859%7]) with mapi id 15.20.3088.028; Thu, 18 Jun 2020
 11:25:37 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: bti: Require clang >= 10.0.1 for in-kernel BTI
 support
Thread-Topic: [PATCH] arm64: bti: Require clang >= 10.0.1 for in-kernel BTI
 support
Thread-Index: AQHWRA0mMtI4PqQFIEO3S/h8Wwqr+6jcheGAgAG4ZAA=
Date: Thu, 18 Jun 2020 11:25:36 +0000
Message-ID: <FDC366D9-2DE2-4362-87D7-1560872CC71F@arm.com>
References: <20200616183630.2445-1-will@kernel.org>
 <20200617090923.GA4613@sirena.org.uk>
In-Reply-To: <20200617090923.GA4613@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
Authentication-Results-Original: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
x-originating-ip: [2001:4c4c:1b20:6f00:9549:acb8:ec95:efd3]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 30b2865a-b40f-499d-c1cf-08d8137a5740
x-ms-traffictypediagnostic: AM6PR08MB4786:|VI1PR0802MB2365:
X-Microsoft-Antispam-PRVS: <VI1PR0802MB236533C38CE0DE7A1F8754F4EC9B0@VI1PR0802MB2365.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:416;OLM:416;
x-forefront-prvs: 0438F90F17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Z3jyuniAa6oLX+1h4NLXPbyqLNfcbBozY6eqClnC0rwujgL9XA1PnC0kj2/KoDJjjmrfsyqXabbZ0Ye/g+1DhdQ6Veu9RebNETRmGiH5Na4ZEnt6YR123QCSg1DH7dfo2rohZt/GYc0Yxj6gn4K1CIrTL5dtkjqdlkY2UX1MAGcuO1d/+np5trMc+ct96uqmsx3h9ifqs1CoegDbiQrHac9Y8NJW9c0x5vLOIEpTKf76MLZfK4KYwR2VFXPwjMQ2mgPHzhlZOaZa0gFY+MaiGix1Q1oEa4ssppkEVOHMXq5XqeyEDTulxQiBF1IHRGsM+px9DSLg3QGNxhGXtU1HOQ==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB5256.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(366004)(39860400002)(376002)(396003)(136003)(346002)(2906002)(4326008)(91956017)(54906003)(316002)(6512007)(66946007)(76116006)(186003)(5660300002)(66446008)(33656002)(4744005)(66476007)(66556008)(64756008)(71200400001)(53546011)(6506007)(36756003)(478600001)(6486002)(2616005)(6916009)(8676002)(8936002)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: cDVJ0pRlMuRmMZLKUmBCqzDeMPJ2AlEuawJiVzUJNp1I0Kzx+PHxjB/n53K2AR7e3eeqQwu7HLQW1Xfk54g4bGsRpAhJ7DeDM8lEozWPIsqbRLdv2w0SGDXrmug/eOIpyIz5Iuvb9qxrZe336Zv6xBymY09T0P6FKxNyTODhqXVHy9XDtyMNuFeAonJSqjsqemce5+7ULkdCxKekQxGROkgP2YTQpKLumbvmpCMlqM9P/klAudwgsZN9TSglWIJM4GfoBfBUAlpOFxoUaJU1p/YqyD1v2MvSlNlKhojXGSpcrCS+gxz+5XSZ87A5wdon+pn0VAF4R5eZ3PE7sH1xUGXLC2kyZzKgUhkUA6KlQaJCCSbZM67hkptC6zIE8DFhfRv3ybxdokCpZk9g1Dsxb29g0PFPRh1oWLKmLs1tWJArlOKaw02mq2b67wTyND36Kp8IbP6lVdDbqVoMtvhtN8NDVArQ4uZN64XFXL27XwndOLLA8WGFaz2twCz3sicJPheroyhKdpt3HJCGNfD5ZTaF3xkc+jV70K2B/ZO5QbMBH5Q3CDjdoI/LlIh/VRrQ
x-ms-exchange-transport-forked: True
Content-ID: <BA64AE058851B04B9DCDC8A1C88243B7@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4786
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT051.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(39860400002)(376002)(396003)(136003)(346002)(46966005)(2906002)(26005)(82740400003)(70586007)(4326008)(70206006)(54906003)(47076004)(316002)(6512007)(186003)(5660300002)(33656002)(36906005)(4744005)(107886003)(53546011)(6506007)(36756003)(478600001)(6862004)(336012)(6486002)(2616005)(82310400002)(8676002)(81166007)(356005)(8936002)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 42d4dd09-3f86-493b-ae32-08d8137a52f0
X-Forefront-PRVS: 0438F90F17
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BT464uhN3/Il9Xthkt5a9y7i4ffJn48/nUEocEHtlb7WfQEff/3P7rbl+Kyf7MBBs5+cqHK9VJTbAyBrSuSZdDRjrgKw0fgYP4XGWPYmZMNJaDC+ID8JQOMCKj6TLJqBy8kFiTJVUR/jQVLTw3v/itso1+geu5jRVeyprVRI6vWn5NOQt3TO1MnAawUNogWUF4nLVGz/VAs6i2VBl305LDdxhfSbUBZSPaMPunV1i3Kjy+sPv41OTlm1v8x0hqAGUzLdfS4LTrX9e/1dVJLCBBtO1RipfoCjo2habCiMfGCT8ZlwNSAzgSQm7VLfqJYSNLzjfa0VeuTEWlP6W6uRjE/1Kg+nMOzciGXeM9SnsNAH2esQOOuRMHofQEkjHK839AMMFdYIkzzGWjCt62c16w==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2020 11:25:44.3135 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 30b2865a-b40f-499d-c1cf-08d8137a5740
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2365
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_042548_237399_04E43E96 
X-CRM114-Status: UNSURE (   6.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.82 listed in wl.mailspike.net]
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
Cc: Tom Stellard <tstellar@redhat.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Mark Brown <broonie@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 "kernel-team@android.com" <kernel-team@android.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked-by: Daniel Kiss <daniel.kiss@arm.com>

> On 17 Jun 2020, at 11:09, Mark Brown <broonie@kernel.org> wrote:
> 
> On Tue, Jun 16, 2020 at 07:36:30PM +0100, Will Deacon wrote:
>> Unfortunately, most versions of clang that support BTI are capable of
>> miscompiling the kernel when converting a switch statement into a jump
>> table. As an example, attempting to spawn a KVM guest results in a panic:
> 
> Reviewed-by: Mark Brown <broonie@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
