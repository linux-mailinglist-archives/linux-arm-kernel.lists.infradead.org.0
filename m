Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B8AD5AE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 07:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZBNqWE2yNWrXNL7Diz7z7vd8N/+CnjAuIXEA6XcLKk=; b=QQo3jW/sG1rmEv
	OA/XbM2kRWzpabRelQXomcHBIS6g8/Atj/yTfB+N0p/Fo/7hYBfaGxPTrsnYnWDARs1ZdMJUYaXEs
	Jzq64uhpbd8+SdMN8YDCrVvPFP6PZoMB12vsygz/yelowVMXZuGN02lCYfF77ShwTmgxjqKayTioW
	HsYDYL2fgE6C1i1S3+OB3o8vK/FG9f0Zz95mf9Y6gFBY3KrWdl5+db2fp2vIpqNl9+sR78nvJZMt5
	sVm4HGUyMzRxM5namMBcv+ElAxUlLmZeC9yGEr0tkVGcJ2xoxsh0hMoswTG8Ac670hPKtqkkA9+uJ
	g+Jq7D36+igQnIcOg1sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJtFj-0005Fg-Br; Mon, 14 Oct 2019 05:50:43 +0000
Received: from mail-db3eur04on0631.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::631]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJtFa-0005F9-4P
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 05:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1dA6JZxMaj5cWNl285wnkDJljeQu5X7emMbHJzZU0d0=;
 b=TkSWKJrxyG0vckNXsIEXbSr8rX4zOZ21kXmvyKdw6DUo5iNcEJpmJ+gjMlUDYbdLnV6FrKofbbl1vQW+FT4NlreNQPYJ6GmN7mephvAs/t/zwlWlbFa6U2hertZ/Yq2L3A5Bo8AsBm8aSUJ42wcRQqRVpW/8hMgYCr2XvwTo2aU=
Received: from HE1PR0802CA0016.eurprd08.prod.outlook.com (2603:10a6:3:bd::26)
 by AM0PR08MB5329.eurprd08.prod.outlook.com (2603:10a6:208:17d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Mon, 14 Oct
 2019 05:50:27 +0000
Received: from AM5EUR03FT003.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::205) by HE1PR0802CA0016.outlook.office365.com
 (2603:10a6:3:bd::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Mon, 14 Oct 2019 05:50:27 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT003.mail.protection.outlook.com (10.152.16.149) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15 via Frontend Transport; Mon, 14 Oct 2019 05:50:26 +0000
Received: ("Tessian outbound 3fba803f6da3:v33");
 Mon, 14 Oct 2019 05:50:11 +0000
X-CR-MTA-TID: 64aa7808
Received: from ec8b2b66c175.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.9.54]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 99D3134D-D85A-43DE-8904-E271A0923EEF.1; 
 Mon, 14 Oct 2019 05:50:05 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2054.outbound.protection.outlook.com [104.47.9.54])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ec8b2b66c175.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Mon, 14 Oct 2019 05:50:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GJyGsb2u4dNIIBV42QUymTnvfVAnCiqO/QOamqHwtaoGzWLl1yNu+JUqKCX2DNNcZBU9JniplJ2xx1XFMnNREeKunbt0R0V5E5hlLMIvYBzgPtkLSXDVNfhToyw8OQzcu45h9iFyZxXvR/dVCYTWMcTgitub4+AntkRr20jZFWGUFo52+f/YUNz38PdBZ0FiZodnZoHyUTELgEL+l6PvOuhVFknoKAlk/LEtYRNJR5DqDwyBrcywsZc7Zmm5bpA5d677mOQVYh2n0e3CTjKlOF0aoQvxn13BtUgEFL7QvxuPhQkIXisgijshLwCuljvNPAEEoZUAxwHyOB1OQJGZXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1dA6JZxMaj5cWNl285wnkDJljeQu5X7emMbHJzZU0d0=;
 b=G0UHiHCbFiHpTJ6lR+vbL8u/PGftQrz9IYzkCigieMgvOxOIG5d+oX6oh5h67hrOfZa9H9TUVYkPdoeMSVcl8QOo9A/0VqHjRnBKc3B3UpqrkIsPAM5G5Dhf4UVaJIeIdhwfdaFBY53/XmAFCuQC5orjHYoUdNlBzBZ+RChifnZdz4iRxLsvrpUN6IcfQpwFvAFVCbwgV8Xx8o16VPDN7PifEwob1WbEByghZDxut358MLnYNWWVVhp0Znw682La93+i2qJfCVPdgmx4HGKIdNYrNeJcksb1IgZVcVBaJTUDrlsddiMP1fpuXFBLCpDhOrxCyOuuGgMhdPmX9TXmQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1dA6JZxMaj5cWNl285wnkDJljeQu5X7emMbHJzZU0d0=;
 b=TkSWKJrxyG0vckNXsIEXbSr8rX4zOZ21kXmvyKdw6DUo5iNcEJpmJ+gjMlUDYbdLnV6FrKofbbl1vQW+FT4NlreNQPYJ6GmN7mephvAs/t/zwlWlbFa6U2hertZ/Yq2L3A5Bo8AsBm8aSUJ42wcRQqRVpW/8hMgYCr2XvwTo2aU=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1641.eurprd08.prod.outlook.com (10.168.146.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Mon, 14 Oct 2019 05:50:03 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d%6]) with mapi id 15.20.2347.021; Mon, 14 Oct 2019
 05:50:02 +0000
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
Thread-Index: AQHVbfg5HjMQ+p5UhEyfzqBy9sDEZacxGVuAgAAQMICAABDUgIABdZhAgAAo7ACAAAjcAIAACYiAgB7418CAABeSAIAAGcHggAASOoCAB6JbIA==
Date: Mon, 14 Oct 2019 05:50:02 +0000
Message-ID: <HE1PR0801MB167635A4AA59FD93C45872E4F4900@HE1PR0801MB1676.eurprd08.prod.outlook.com>
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
 <HE1PR0801MB1676B1AD68544561403C3196F4950@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <6b8b59b2-a07e-7e33-588c-1da7658e3f1e@redhat.com>
In-Reply-To: <6b8b59b2-a07e-7e33-588c-1da7658e3f1e@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 38df8d37-9067-49cf-ac81-7eff5440a728.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: f0fa16c1-cb7a-4852-0788-08d7506a6985
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1641:|HE1PR0801MB1641:|AM0PR08MB5329:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB5329FF63922583CFA2D03BA9F4900@AM0PR08MB5329.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 01901B3451
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(136003)(346002)(376002)(13464003)(199004)(189003)(3846002)(316002)(71190400001)(7736002)(6116002)(256004)(8676002)(14454004)(74316002)(305945005)(478600001)(7416002)(2501003)(2906002)(33656002)(71200400001)(76116006)(229853002)(66946007)(6436002)(55016002)(8936002)(81166006)(66476007)(66556008)(66446008)(81156014)(64756008)(2201001)(25786009)(86362001)(9686003)(4326008)(6636002)(6246003)(66066001)(102836004)(6506007)(55236004)(99286004)(26005)(52536014)(53546011)(486006)(76176011)(54906003)(11346002)(7696005)(446003)(110136005)(5660300002)(476003)(186003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1641;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: ZHp02lbuaVdF6D5mQ4Cnt5pbvVIGv5GQSVpP166m8PvB/LMHI6jo7UNkYU8G9nWXBp5yaVMf1OSP8pkpXBPZ+Yr50O+Ec35Q1Vgnr8QquQ7qAf2htI9XoAW7Isxo3I7qNk0kafDVkUHT/ud8VviM0IOn12aas9l3iYsc/w9K9tCQ6BPgdmrLF5I5rzzIDPQqcmnB3Mv0qzB4iAsA0wkt1VDmGYWwbn2tiwSCpKzJ37lFciDLXbIJXyyHMQxBuj+vVJBJjBp1VvllRwFjHBHUi5Rx5aIDgSC4jkJeN7V9Uxsqn+e0yaxE0PUh2EBi6ZQ9/gqzvCnL1xHaLcH+QhJJC1dSOGCI5EX/87qij2vFAhE2o+3N1GkzAzH8Bpzct2LGS/QCia0/kqnzSuA8EPWtAYQe2w8ZaOiWEv/k892P0EU=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1641
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT003.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(376002)(396003)(13464003)(199004)(189003)(86362001)(6506007)(53546011)(26826003)(22756006)(316002)(102836004)(229853002)(8676002)(81156014)(81166006)(5660300002)(486006)(4326008)(126002)(305945005)(476003)(7736002)(6116002)(478600001)(76130400001)(3846002)(52536014)(8936002)(2501003)(110136005)(54906003)(36906005)(6246003)(7696005)(2906002)(66066001)(11346002)(2486003)(23676004)(186003)(436003)(26005)(99286004)(74316002)(446003)(70586007)(2201001)(33656002)(336012)(9686003)(47776003)(14454004)(70206006)(50466002)(25786009)(55016002)(76176011)(63350400001)(6636002)(356004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB5329;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 2d65b43b-27c7-4576-c912-08d7506a5b94
NoDisclaimer: True
X-Forefront-PRVS: 01901B3451
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CFBQrmtb/Ha9s+iOTNMQkR5hMo1HfDCElX+ozvnXM2G099xD5ixLqbAP4fbHtEutpNasxk+tfdXrQd0PfWMysZt6maE0Pa8S6S+lEFl4G4/eel7rfdGa1t6UqmyId0kB+ZC6cJH2lF6nfwdhJJHnsWOjytLG6RSER9L/Mv/inQS3oOWb9EVvuAVTD+1hoWqqz71PDqleJmZZkPNHl0bAL7JQlCQybcQBBAtMq7WslheBS2SycbE7dOlOkYZ1+zPG/+7HU+mI26e3Q7MU+xAIhRxsRn7gPd/yfpN8teu/rNQIIqyX2bqKl4RCJY+51bNfKdYnZkqyZWhaq2E5QufpwIfJz9JRU62bp/GaqNJHE1AvtGmg+nHvjS/bEhrpQv3Ed2xIAey2r1un7qDhm2+xecqrqkAGDd/25FomsvRwj+A=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2019 05:50:26.2715 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f0fa16c1-cb7a-4852-0788-08d7506a6985
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5329
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_225034_455484_4AD02D29 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:631 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
> Sent: Wednesday, October 9, 2019 5:13 PM
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
> On 09/10/19 10:18, Jianyong Wu (Arm Technology China) wrote:
> > Hi Paolo,
> >
> >> -----Original Message-----
> >> From: Paolo Bonzini <pbonzini@redhat.com>
> >> Sent: Wednesday, October 9, 2019 2:36 PM
> >> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>; Marc
> >> Zyngier <maz@kernel.org>; netdev@vger.kernel.org;
> yangbo.lu@nxp.com;
> >> john.stultz@linaro.org; tglx@linutronix.de;
> >> sean.j.christopherson@intel.com; richardcochran@gmail.com; Mark
> >> Rutland <Mark.Rutland@arm.com>; Will Deacon
> <Will.Deacon@arm.com>;
> >> Suzuki Poulose <Suzuki.Poulose@arm.com>
> >> Cc: linux-kernel@vger.kernel.org; kvm@vger.kernel.org; Steve Capper
> >> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> >> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> >> <Justin.He@arm.com>; nd <nd@arm.com>; linux-arm-
> >> kernel@lists.infradead.org
> >> Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
> >>
> >> On 09/10/19 07:21, Jianyong Wu (Arm Technology China) wrote:
> >>> As ptp_kvm clock has fixed to arm arch system counter in patch set
> >>> v4, we need check if the current clocksource is system counter when
> >>> return clock cycle in host, so a helper needed to return the current
> >>> clocksource. Could I add this helper in next patch set?
> >>
> >> You don't need a helper.  You need to return the ARM arch counter
> >> clocksource in the struct system_counterval_t that you return.
> >> get_device_system_crosststamp will then check that the clocksource
> >> matches the active one.
> >
> > We must ensure both of the host and guest using the same clocksource.
> > get_device_system_crosststamp will check the clocksource of guest and
> > we also need check the clocksource in host, and struct type can't be
> transferred from host to guest using arm hypercall.
> > now we lack of a mechanism to check the current clocksource. I think this
> will be useful if we add one.
> 
> Got it---yes, I think adding a struct clocksource to struct
> system_time_snapshot would make sense.  Then the hypercall can just use
> ktime_get_snapshot and fail if the clocksource is not the ARM arch counter.
> 
> John (Stultz), does that sound good to you?  The context is that Jianyong
> would like to add a hypercall that returns a (cycles,
> nanoseconds) pair to the guest.  On x86 we're relying on the vclock_mode
> field that is already there for the vDSO, but being able to just use
> ktime_get_snapshot would be much nicer.
> 

Could I add struct clocksource to system_time_snapshot struct in next version of my patch set?

Jianyong Wu
Thanks

> Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
