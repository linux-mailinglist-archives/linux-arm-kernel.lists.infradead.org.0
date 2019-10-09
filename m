Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224EBD097B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtmhLovT8SMFF6gu8wC+2VG2x18aH70813BPcJy1g4E=; b=BmxFdr4uYO2v/5
	jyyrApAbNOoI/4fdAwweu9AcifLyjBk1zYh2MaQ0uea95OJ6OeZXmkxbQoN8Bx6PBr8Gq+tqK9IXM
	887KqEi0TpJOXnCd3xtjODt/HNnaThJu3r28yeWtx9rUMDSyNmPtErS7D71B73NjKJE0jMXeKz7lh
	bgGBQL3AE28h6gpPUazxOawK+FtZbxwwFaYXB5C5/dGRUFna7XTw6qO3Fsoo7hh13lRVqNqx6DIZh
	kXV6ROSCO9EANWL/ixBrn5gGlpqPJzSStdnN8JlOUbnysIphRw5K36Y4GBQvF0fHbIu3U+H3QQWZ+
	AWYflE3MVYT2e38SEr8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7Bv-0006wj-Gw; Wed, 09 Oct 2019 08:19:27 +0000
Received: from mail-eopbgr00064.outbound.protection.outlook.com ([40.107.0.64]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7Bm-0006vL-CX
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:19:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LovM6wvE2FNQT0LT/WY/odL2Gqs8IfHD91MvKp4ckQs=;
 b=DhxPmsRUsbhl3sycth0Ju/o/D/xdKPJc0Vg4p8n3nQpKoUZS/8Kbwzg+Cv6ZNzkN5BJORDKco7rqYv/NABprhz9L65NVVO55vFsb2MwJ51aI4U8nS/ZKt2b7aNXR0lL1NkGzgfpBp/c7lHrQcnc9nRTub5pLuC5kmxeZk3bclvs=
Received: from VE1PR08CA0008.eurprd08.prod.outlook.com (2603:10a6:803:104::21)
 by AM5PR0801MB2099.eurprd08.prod.outlook.com (2603:10a6:203:4d::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.23; Wed, 9 Oct
 2019 08:19:14 +0000
Received: from DB5EUR03FT046.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::205) by VE1PR08CA0008.outlook.office365.com
 (2603:10a6:803:104::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 08:19:14 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT046.mail.protection.outlook.com (10.152.21.230) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Wed, 9 Oct 2019 08:19:12 +0000
Received: ("Tessian outbound 3fba803f6da3:v33");
 Wed, 09 Oct 2019 08:18:56 +0000
X-CR-MTA-TID: 64aa7808
Received: from b6ba294ff628.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.10.51]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 47ED5A7E-4C35-4BCC-8C98-81C989C7C128.1; 
 Wed, 09 Oct 2019 08:18:51 +0000
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur03lp2051.outbound.protection.outlook.com [104.47.10.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b6ba294ff628.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 09 Oct 2019 08:18:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KKVLnI6zvPBablkWcyp24S/aVV25EQsnBo8kqU3UCj4URIPIMaa8yA4VOmw69FDUZOl98rTVpkpaLVFQzeHOT4R69GiQLY6sxVSTgAFnMcBUFxY1oUzA92ty1YoLeYe/rxTQ6hv7eanvJH4XnOdkrJt0kAH+0JRDCcsOQBnNm8IFwdh3WQfLAhlzk6ZmJtwRoqldG+79Jwr+0H9gZrMmz6MAWYZCliCdoytu1jRi5CmWtI9pCvyQc0xB/+7WMpLkD5akimVqLDCoBxOzHvyth3gI603f2E+f11q80YM+ZOhC+yy189eKk3K1eod05+RSJnJJKNg/JLbPHpW30k+J/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LovM6wvE2FNQT0LT/WY/odL2Gqs8IfHD91MvKp4ckQs=;
 b=eArrd87MmJHHW6k+1OHLsPXXDBrooaOU47jGya1ehiDOmdYedXuPzd4/PuIUz9qJ0Je5JOqI3bMB1zNALACapaILjf0ifxCke1kwIIQI+1uYD/4pJ7GHaaAwdVnCKwOnAuzR1P26Xzn7kHnSSi92R9VsOFUjy1/rLHrZaZlMzqcK58OBz+K5IsQQb6sT4Ie5tpZhOP3EgvzPALMkZ0K5YS3wEza9/ybu0XCsHUYOS7HVhM+IZ/cf7czSd5p9Puw910pvA1DFEb92sQ9gE86bBY+te8ddBKV94tlYP9cPGkRyUH5eWxtmFL8Y9VtNDX0um92W/EzfcDWEETiWPaUXcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LovM6wvE2FNQT0LT/WY/odL2Gqs8IfHD91MvKp4ckQs=;
 b=DhxPmsRUsbhl3sycth0Ju/o/D/xdKPJc0Vg4p8n3nQpKoUZS/8Kbwzg+Cv6ZNzkN5BJORDKco7rqYv/NABprhz9L65NVVO55vFsb2MwJ51aI4U8nS/ZKt2b7aNXR0lL1NkGzgfpBp/c7lHrQcnc9nRTub5pLuC5kmxeZk3bclvs=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1804.eurprd08.prod.outlook.com (10.168.150.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.25; Wed, 9 Oct 2019 08:18:48 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d%6]) with mapi id 15.20.2327.026; Wed, 9 Oct 2019
 08:18:47 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>, Marc Zyngier <maz@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "yangbo.lu@nxp.com"
 <yangbo.lu@nxp.com>, "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "sean.j.christopherson@intel.com"
 <sean.j.christopherson@intel.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, Mark Rutland <Mark.Rutland@arm.com>, Will Deacon
 <Will.Deacon@arm.com>, Suzuki Poulose <Suzuki.Poulose@arm.com>
Subject: RE: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
Thread-Topic: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
Thread-Index: AQHVbfg5HjMQ+p5UhEyfzqBy9sDEZacxGVuAgAAQMICAABDUgIABdZhAgAAo7ACAAAjcAIAACYiAgB7418CAABeSAIAAGcHg
Date: Wed, 9 Oct 2019 08:18:47 +0000
Message-ID: <HE1PR0801MB1676B1AD68544561403C3196F4950@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-5-jianyong.wu@arm.com>
 <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
 <HE1PR0801MB1676F57B317AE85E3B934B32F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <629538ea-13fb-e666-8df6-8ad23f114755@redhat.com>
 <HE1PR0801MB167639E2F025998058A77F86F4890@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ef6ab8bd-41ad-88f8-9cfd-dc749ca65310@redhat.com>
 <a1b554b8-4417-5305-3419-fe71a8c50842@kernel.org>
 <56a5b885-62c8-c4ef-e2f8-e945c0eb700e@redhat.com>
 <HE1PR0801MB1676115C248E6DF09F9DD5A6F4950@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <1cc145ca-1af2-d46f-d530-0ae434005f0b@redhat.com>
In-Reply-To: <1cc145ca-1af2-d46f-d530-0ae434005f0b@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 7edb023d-6344-4990-8295-8b48b11cd589.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 141027d3-1378-46b4-7591-08d74c915dcc
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1804:|HE1PR0801MB1804:|AM5PR0801MB2099:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM5PR0801MB209990F417AF07198DA2CBB5F4950@AM5PR0801MB2099.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 018577E36E
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(136003)(366004)(396003)(199004)(189003)(13464003)(486006)(305945005)(7696005)(74316002)(53546011)(52536014)(110136005)(33656002)(478600001)(25786009)(2201001)(476003)(5660300002)(86362001)(7736002)(8936002)(8676002)(446003)(186003)(6636002)(11346002)(316002)(102836004)(26005)(6506007)(76176011)(55236004)(54906003)(99286004)(81166006)(81156014)(9686003)(229853002)(71200400001)(64756008)(66476007)(256004)(6116002)(76116006)(4326008)(66446008)(71190400001)(7416002)(66946007)(2501003)(66556008)(6436002)(14454004)(2906002)(66066001)(3846002)(55016002)(6246003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1804;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: IIJquPyoT8b5queayz+oQKbgVH6HNNWZz8pG8q6SyMGv/1FgMkZPRXZQhABYAH+KesDXJgkANJKBAG+u1pReDbOhAEDdkvM+XY/664X3eJ97+VLVzKuYesz351+xBHMXHAu0hJ1UDaJFzA0i7Mq7gTdjJt45hWQOX/aT/ypygppa25cnPoB+/lYKEPuErrsYLtq6out/0tmN/gUm+Pey5wKVbKuOBgy4AXQMhQ98jdXA698FJDI8+QH9wX52LfIH9k2Li8R/rF0l4O9qPYWPB37xbqGjCHB+H8RRcHoXhVfItGLVKd5USL0SX/X5t6mlRrcIbsTITguvSZH3dMrY4mlhYjfU7sOMxwhrEbUcSZOL86T++xsahqZi4h56Hkc2emaIAi+WNZW1FVmg4xzQtrtAf4z0Xr/gqY0Kg11lkp8=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1804
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT046.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(396003)(376002)(13464003)(199004)(189003)(6116002)(2501003)(52536014)(25786009)(3846002)(6636002)(110136005)(4326008)(2906002)(5660300002)(6246003)(33656002)(74316002)(22756006)(229853002)(8676002)(7736002)(81166006)(81156014)(305945005)(8936002)(55016002)(9686003)(54906003)(316002)(66066001)(186003)(63350400001)(14454004)(436003)(446003)(26005)(478600001)(50466002)(476003)(126002)(102836004)(356004)(76130400001)(11346002)(2201001)(70206006)(26826003)(70586007)(336012)(486006)(86362001)(47776003)(99286004)(76176011)(7696005)(2486003)(6506007)(53546011)(23676004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB2099;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 89651d3d-fec1-45dd-9bdf-08d74c914f44
NoDisclaimer: True
X-Forefront-PRVS: 018577E36E
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C+dx4UyMk17eXfKFUeJayMcZrjheu0/ZM1W2CPcWaejhcCxgBTeeb/+sUa4Y9LS4p0p552l/X1TdIaM0Jpxh4fSqnQ/6KkwntXDtrcexRijdsUI0j449AP2yTFG5YdHxJiQbRizKxlwZ1XsUouZiqqERxeJ4bmKTw7XX3msVAF3b6JnF0w8usWiUjD5vyIu8bRKT0FO4aYjAMDcZdJcRkYF4gFlnHSBwOFTGiingKigDpaGA1rCzCpXtFrfBXFcYurDSU8MdTnrLRSuvXxLEupIzGRPqr6t1CzEnV7Mv09cnqLqZKPYPRAJK4YIf5SKnh3pO5bkUJBY1GpqmycG3w/RrLHWzyiDEZaKsthk9PhzBYLwwFS6DMK6//JLtLBz+ZGom0LM0VcQooOAkLGvOtlBa61waXhvN/f3LRcug7D4=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 08:19:12.3223 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 141027d3-1378-46b4-7591-08d74c915dcc
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB2099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_011918_428645_58835F7C 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Paolo,

> -----Original Message-----
> From: Paolo Bonzini <pbonzini@redhat.com>
> Sent: Wednesday, October 9, 2019 2:36 PM
> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>; Marc
> Zyngier <maz@kernel.org>; netdev@vger.kernel.org; yangbo.lu@nxp.com;
> john.stultz@linaro.org; tglx@linutronix.de; sean.j.christopherson@intel.com;
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
> On 09/10/19 07:21, Jianyong Wu (Arm Technology China) wrote:
> > As ptp_kvm clock has fixed to arm arch system counter in patch set v4,
> > we need check if the current clocksource is system counter when return
> > clock cycle in host, so a helper needed to return the current
> > clocksource. Could I add this helper in next patch set?
> 
> You don't need a helper.  You need to return the ARM arch counter
> clocksource in the struct system_counterval_t that you return.
> get_device_system_crosststamp will then check that the clocksource
> matches the active one.
> 
We must ensure both of the host and guest using the same clocksource.
get_device_system_crosststamp will check the clocksource of guest and we also need check
the clocksource in host, and struct type can't be transferred from host to guest using arm hypercall.
now we lack of a mechanism to check the current clocksource. I think this will be useful if we add one.

Thanks
Jianyong  Wu

> Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
