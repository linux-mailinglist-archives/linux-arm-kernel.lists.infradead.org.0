Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84896BAD5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 06:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8pqELKZF2xoVxG29HQzqyAZfYWxW0Brh4D3jqo7y1k=; b=R94gnVUz99/gdu
	xgqm6V9qBYMnUG78S2PIfeBE0gAgJr0rEqhXLfKxk3U5V7FQtPTeQhd3/gxWH5+ZzCkQ0rR8dlOSU
	KLTgG+WUfQoWNR9iRpapnDCUdYSYejZaS11djwP7Cd7JbyGgz0mF5bs6fWWkyYJaGtl4bPx6vbr0S
	M0jOH/eY+zjRCwjpfYhMWBn2V3rxhag4inq7NdWZee1GkBbs2auMl6Hl+6AORNJGrWlNpDQzzCFc+
	ASIDB8LZIlN0S+yekMMCftyS2g5vhDCA2XY7lsDfAVzqGj3EvzGxnAPf5o5Y4A3ce66zG5WZdfvyG
	HzaKersNl+A7wH3Tl6BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCGR6-0002R8-MA; Mon, 23 Sep 2019 04:58:56 +0000
Received: from mail-eopbgr130049.outbound.protection.outlook.com
 ([40.107.13.49] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCGQS-0002QW-V3
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 04:58:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlAhPzzpZmZ/eEntNIvFjTQfOt8cQYIJkYmyHkGlZe0=;
 b=TaRC5T9f6z51Hof2ke7/8KJF9xJKjkBzuhMf7sijv9UBUqwicPpH0ntHWAcu8J3pvxT3jdyDjbM0Rq/7sjdzYEOmzW3BkUFXukBjOa3baH3jjbgITwTpbMWJEvkCbmpivVjHTreGLaMv2DFLHI8D2owXyfm0H/utXfn2U8YIHYI=
Received: from DB6PR0802CA0026.eurprd08.prod.outlook.com (2603:10a6:4:a3::12)
 by AM0PR08MB4065.eurprd08.prod.outlook.com (2603:10a6:208:12d::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.26; Mon, 23 Sep
 2019 04:58:09 +0000
Received: from DB5EUR03FT053.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::204) by DB6PR0802CA0026.outlook.office365.com
 (2603:10a6:4:a3::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20 via Frontend
 Transport; Mon, 23 Sep 2019 04:58:09 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT053.mail.protection.outlook.com (10.152.21.119) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20 via Frontend Transport; Mon, 23 Sep 2019 04:58:07 +0000
Received: ("Tessian outbound d5a1f2820a4f:v31");
 Mon, 23 Sep 2019 04:58:05 +0000
X-CR-MTA-TID: 64aa7808
Received: from cd8b0bf95c0c.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.4.59]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 AD0F2F78-4B44-497C-A564-B874842DF3CA.1; 
 Mon, 23 Sep 2019 04:58:00 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur02lp2059.outbound.protection.outlook.com [104.47.4.59])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id cd8b0bf95c0c.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Mon, 23 Sep 2019 04:58:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PHcMumab9RLbeKLL37Wncn6B+4QwIq0jW8TXTXWFKrO0YJwvord5PLud5iC96w0vRLEJeJ4SaiJdJnuCu6BODsoptVT3e8JY44Q/45fnpacYJ2MM1QOhHzv1Ajm4iGR2Daq9xbr0LKoBBPJzciJZ1KcS1q5k6DVUfR8htF+aLAzrQGxxMnxYU1H012DHa60hX3/dZ9AwZRwYHzcUmyQWeIqbU3hJbLTB/hJifa2f9saSA4xA/w5TgCMGd7gnE/blhQTktMeiDHIRzQaGcJBrAziilDhV06dLYs3NoQISBAGPQ1AkDKOl/bxK6YtCZSdVBn9sa/Ea12bP5A4rI+3Hgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlAhPzzpZmZ/eEntNIvFjTQfOt8cQYIJkYmyHkGlZe0=;
 b=BqT0PuzXCARypRTN+XhioUdEUCFCsdDz5Ll1RaMfrBJsglx6iZDmkNZnCR2T0ZnZ1OHjz/p8PLzwx3QfenHZD47+8bNrlyHnz13hYDxk68WiV3qJa0mxJJOT93zdgP7Hq4Si7o3ZO8umT2e0MbSjVRBO3QPbrzEgjD9QFbwIloBdR+V4+u5Ewv0FA1Xfo73wKeM3fs8YOhweA92/4+bcY3GZZFO5nUj5z7bX4j+8PnFD4HjBXdIp0IhP7NQ86NQo/srH4O4SoX65fno5wCK+/qNz/855YWbtWrebD7m0Oj9UV+pkVX9KrYW7uXUztOtoO1b/RnyIx+WTGXUFr+q7WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlAhPzzpZmZ/eEntNIvFjTQfOt8cQYIJkYmyHkGlZe0=;
 b=TaRC5T9f6z51Hof2ke7/8KJF9xJKjkBzuhMf7sijv9UBUqwicPpH0ntHWAcu8J3pvxT3jdyDjbM0Rq/7sjdzYEOmzW3BkUFXukBjOa3baH3jjbgITwTpbMWJEvkCbmpivVjHTreGLaMv2DFLHI8D2owXyfm0H/utXfn2U8YIHYI=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB2076.eurprd08.prod.outlook.com (10.168.93.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.23; Mon, 23 Sep 2019 04:57:58 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::4d35:2b8f:1786:84cd]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::4d35:2b8f:1786:84cd%3]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 04:57:57 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "sean.j.christopherson@intel.com"
 <sean.j.christopherson@intel.com>, "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, Mark Rutland
 <Mark.Rutland@arm.com>, Will Deacon <Will.Deacon@arm.com>, Suzuki Poulose
 <Suzuki.Poulose@arm.com>
Subject: RE: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
Thread-Topic: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
Thread-Index: AQHVbfg5HjMQ+p5UhEyfzqBy9sDEZacxGVuAgAAQMICAABDUgIABdZhAgAAo7ACABcbzoA==
Date: Mon, 23 Sep 2019 04:57:57 +0000
Message-ID: <HE1PR0801MB1676A9D4A58118144F5C7B54F4850@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-5-jianyong.wu@arm.com>
 <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
 <HE1PR0801MB1676F57B317AE85E3B934B32F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <629538ea-13fb-e666-8df6-8ad23f114755@redhat.com>
 <HE1PR0801MB167639E2F025998058A77F86F4890@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ef6ab8bd-41ad-88f8-9cfd-dc749ca65310@redhat.com>
In-Reply-To: <ef6ab8bd-41ad-88f8-9cfd-dc749ca65310@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 01bfebe5-072f-43ba-8ca4-955694402748.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: f4da741d-57c5-40dc-077e-08d73fe2a028
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:HE1PR0801MB2076; 
X-MS-TrafficTypeDiagnostic: HE1PR0801MB2076:|HE1PR0801MB2076:|AM0PR08MB4065:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB4065BC3056F04E9EA2343D52F4850@AM0PR08MB4065.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 0169092318
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(376002)(136003)(396003)(39860400002)(189003)(13464003)(199004)(81166006)(8676002)(81156014)(229853002)(6636002)(9686003)(66066001)(55016002)(6436002)(2501003)(66476007)(66556008)(64756008)(66446008)(33656002)(7736002)(52536014)(99286004)(74316002)(7416002)(4326008)(2906002)(76176011)(53546011)(256004)(6506007)(14444005)(478600001)(7696005)(55236004)(3846002)(5660300002)(476003)(71200400001)(486006)(71190400001)(86362001)(446003)(11346002)(2201001)(25786009)(305945005)(6246003)(102836004)(6116002)(76116006)(26005)(316002)(186003)(66946007)(54906003)(110136005)(8936002)(14454004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB2076;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: kMfb5yGoBAOYdap4NnEl+/ovGD30zhqcN7hrOqus020ZjZcBmogUZlRjjB9v0SRZ8EyA1aB0Ttw7DPCcxs95c44iywfnctDMvL0U1Vyn0UY3ZNfdBAp0P7SQkfeCSxWIK5SYfcE1H69Lco6QG0ghpz3/prTVCVFpIMImm7NWpyoJAT0jca1+sQDciYdOSswLz+9zkslzMJfuVn6fLMATmtF+WnfIQGZaF49gAEM9UsCO7vWOX+6tm4yPhTfaTHqnex0VQDB6vmoVkAjvXokQdRN3pzu0YgrHnh4FygizQBvfomlTP0qNplK5IXlSnPv+GvL0A2bJTgF7mGc3nv5vq0WAJ5FcJBLUqpjBiZZ7g4sEP1765BJN30logNz1Ldjuhm+JQ+lLEtZ/Zx79ggLcERpnesm8Ag9+MdEhTqSV0g0=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2076
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT053.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(376002)(396003)(189003)(199004)(13464003)(14454004)(6116002)(25786009)(3846002)(126002)(476003)(63350400001)(14444005)(436003)(11346002)(55016002)(2201001)(446003)(5660300002)(50466002)(9686003)(54906003)(47776003)(74316002)(6636002)(26005)(102836004)(316002)(2906002)(81156014)(8676002)(486006)(66066001)(8936002)(81166006)(33656002)(53546011)(6506007)(336012)(305945005)(356004)(7736002)(2486003)(99286004)(110136005)(229853002)(52536014)(186003)(7696005)(26826003)(6246003)(70586007)(4326008)(70206006)(76176011)(23676004)(22756006)(478600001)(76130400001)(86362001)(2501003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB4065;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 6136431a-d087-47d7-5d41-08d73fe29a40
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR08MB4065; 
NoDisclaimer: True
X-Forefront-PRVS: 0169092318
X-Microsoft-Antispam-Message-Info: 4yBoCXU4Kr2BNmBTaq07Iz8YY9mzkOjz6zm7MkOIBcEh7S+9au2LVkAlP9+GkpIjZnUZxGj0yviyGWmlKOtHFt7WJud9XBoXL5vW+bwMHAzF1EEKAWzHIENUQGaQjOoU29+mXx4GK+ZPHQaZJ8V+/mZuxPsbhipg8N8YISOv9SeKrtcR/GpXrIzekSwvEEr2+6BVsrlmndF4yiH4mZ+80tAyfg+RmNDgBr1MzEx52OuDQhyUK+IO0tcoFcOAKC4+i3376MSRBGRfrhL0FZ5eKNF/l304ck5uaCJKISVXt7lLpbaKK7rg4ObAtU9W+4Zan59MJcvgVhXTUYVDR6deM5/FlN4yWNrOSGkm2AoiNn3v9ZTqxZY1qB73pGtsGuBFadV7k+4PNibzPi/eMsWs57drpqE/yiq+YtQGdKaC670=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2019 04:58:07.7860 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f4da741d-57c5-40dc-077e-08d73fe2a028
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_215817_091499_BEDB02B7 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.49 listed in list.dnswl.org]
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
Cc: "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paolo, Marc

> -----Original Message-----
> From: Paolo Bonzini <pbonzini@redhat.com>
> Sent: Thursday, September 19, 2019 7:07 PM
> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>;
> netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; sean.j.christopherson@intel.com; maz@kernel.org;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>; Will
> Deacon <Will.Deacon@arm.com>; Suzuki Poulose
> <Suzuki.Poulose@arm.com>
> Cc: linux-kernel@vger.kernel.org; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; nd <nd@arm.com>; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
> 
> On 19/09/19 11:46, Jianyong Wu (Arm Technology China) wrote:
> >> On 18/09/19 11:57, Jianyong Wu (Arm Technology China) wrote:
> >>> Paolo Bonzini wrote:
> >>>> This is not Y2038-safe.  Please use ktime_get_real_ts64 instead,
> >>>> and split the 64-bit seconds value between val[0] and val[1].
> >
> > Val[] should be long not u32 I think, so in arm64 I can avoid that
> > Y2038_safe, but also need rewrite for arm32.
> 
> I don't think there's anything inherently wrong with u32 val[], and as you
> notice it lets you reuse code between arm and arm64.  It's up to you and
> Marc to decide.
> 
To compatible 32-bit, Integrates second value and nanosecond value as a nanosecond value then split it into val[0] and val[1] and split cycle value into val[2] and val[3],
 In this way, time will overflow at Y2262.
WDYT?

Thanks
Jianyong Wu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
