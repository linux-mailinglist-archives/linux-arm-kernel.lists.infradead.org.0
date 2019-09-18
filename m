Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2317B60E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 11:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LbeMY0QcsSj21gYSWbvWeIeusUli3aKbJmIf1HOX7+U=; b=dyIaAIWt+KUg8X
	zrIriKRE10s9QnM30IXHzxyq6tqoi778Uge8gXKs+ju8wVpuqLzwdlHznFWmf96AePBmkMjZhcFUD
	nnK6S1XBjsTsgLn1RNCUJayVnqlX/MZiE54/Smb/11qHpQO6OuvOub+6hKzLqjjS1TYcsLporVzcx
	RqTrchNR479Fd4i1V4TuC4RkxlTDox/Scfn4eReOX+EOAVOmKfoxQL3xQdJLaLdfZeglU269CuXf7
	X66j1imR8ydTS4EDzzOlajxu1bGspME7lIh/Iiiz5KXxE3SbEpWz5Zu2xSUdMyGYNubl6S1gWRDTF
	IG+l4uw1jaaruRkm2GFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWiW-0007GT-GT; Wed, 18 Sep 2019 09:57:44 +0000
Received: from mail-eopbgr50078.outbound.protection.outlook.com ([40.107.5.78]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWiK-0007G7-Ov
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 09:57:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XjQnIimjXzmvXZKw6Ul+2qwLyb8Ra8tnhJv7axrllIc=;
 b=lqv89fkla2zA5SfZNAGEDpX2bD5ntgOM0MWGQc+JSxfzo1Wi8v+Kmw64oIqWFgSVNDm9t3MbUHAIP3vcigJtGdPwr9+5WDf/1XfsPiThL8Htfo7GfglwhXBXzTMlLMP0aOcFWlpHMOmSToyKeV9totZ8iJq5LF7Y5ydFivvYWvk=
Received: from VI1PR08CA0221.eurprd08.prod.outlook.com (2603:10a6:802:15::30)
 by DBBPR08MB4709.eurprd08.prod.outlook.com (2603:10a6:10:f6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20; Wed, 18 Sep
 2019 09:57:27 +0000
Received: from DB5EUR03FT043.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::202) by VI1PR08CA0221.outlook.office365.com
 (2603:10a6:802:15::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.18 via Frontend
 Transport; Wed, 18 Sep 2019 09:57:27 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT043.mail.protection.outlook.com (10.152.20.236) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20 via Frontend Transport; Wed, 18 Sep 2019 09:57:25 +0000
Received: ("Tessian outbound d5a1f2820a4f:v31");
 Wed, 18 Sep 2019 09:57:15 +0000
X-CR-MTA-TID: 64aa7808
Received: from 8cc8e6ab4330.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.1.50]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D10562D6-0211-48EB-A680-C93540E75543.1; 
 Wed, 18 Sep 2019 09:57:10 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01lp2050.outbound.protection.outlook.com [104.47.1.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 8cc8e6ab4330.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 18 Sep 2019 09:57:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXn7U1hMHo3nlMXm0Vf6+MK+BC3YoWJkHMxmpEOLRpFzR1PwPYyN+nYlYZdQ47sIMcemL+xEROyl+pYpEDM+p3ftHmYDXvzA7XUrWpsI739Z/PQWYUsPjqkTwZwtvGjtH0UcR9K3GTK0JFK9fgGCg3yAeeHcnBXQhOPIgzvGmJfihe3jFOcEBuI8CDkeO2eDyqrDMraWru7CFlXSNqj8TfY7jVnQBbzx6DSkgyReX1OzLFOy4G8ZjTJ1+PUFYv9pwbVrD2nEYoLNQS8Zw16Z7i8Vl5J2skpQTMuKRyaTZAoz6ePMJx5hrAIUr5QgWstjsNiHhvPwshZmt7Cev4M3jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XjQnIimjXzmvXZKw6Ul+2qwLyb8Ra8tnhJv7axrllIc=;
 b=KBdIkM+jEYh5fiAzQEc+Ug3HBVJtn0Jg5OeN73JdUKSmPKieeqkqJ+AAYAsqse2WiETDZYHaTcmv2jJnsaTns+s37momLY2NeSKti0DKIJ7/6nqvMSfONT3pfzzWEHNaX0pY15kvxnzrIZKjXUOW4kf8ntjtfRvAMeoi5aUys1ZVnnDz3SiDRTmkFp9fgSYBDf2RLYw33dfO0eBQW3vN2TcSN5s/2u8ym8ZWSKkSWv21eRoskKwTwSV429NjotoNAcfSZ+zMXAOB2f2A2r5J36sQzb1AkLAcNdqnKGOTNXv2bMqwRiBViF7etY7fQvZKWbVy/9hnmvQkt+5bkzvrbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XjQnIimjXzmvXZKw6Ul+2qwLyb8Ra8tnhJv7axrllIc=;
 b=lqv89fkla2zA5SfZNAGEDpX2bD5ntgOM0MWGQc+JSxfzo1Wi8v+Kmw64oIqWFgSVNDm9t3MbUHAIP3vcigJtGdPwr9+5WDf/1XfsPiThL8Htfo7GfglwhXBXzTMlLMP0aOcFWlpHMOmSToyKeV9totZ8iJq5LF7Y5ydFivvYWvk=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1787.eurprd08.prod.outlook.com (10.168.146.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.15; Wed, 18 Sep 2019 09:57:07 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::40a2:f892:29a7:2942]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::40a2:f892:29a7:2942%10]) with mapi id 15.20.2263.023; Wed, 18 Sep
 2019 09:57:07 +0000
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
Thread-Index: AQHVbfg5HjMQ+p5UhEyfzqBy9sDEZacxGVuAgAAQMIA=
Date: Wed, 18 Sep 2019 09:57:07 +0000
Message-ID: <HE1PR0801MB1676F57B317AE85E3B934B32F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-5-jianyong.wu@arm.com>
 <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
In-Reply-To: <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 46568269-6997-43ca-80bd-9a8c34bd68fc.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 5ef1bced-abb3-4db7-e2f8-08d73c1e9c04
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:HE1PR0801MB1787; 
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1787:|HE1PR0801MB1787:|DBBPR08MB4709:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB47092F9E9BEF1FF174F780D0F48E0@DBBPR08MB4709.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 01644DCF4A
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(376002)(396003)(346002)(13464003)(189003)(199004)(102836004)(4326008)(7736002)(476003)(74316002)(81166006)(9686003)(2906002)(486006)(7696005)(66476007)(64756008)(66556008)(5660300002)(8676002)(66446008)(33656002)(81156014)(2201001)(7416002)(76176011)(66946007)(14454004)(86362001)(478600001)(446003)(229853002)(52536014)(11346002)(99286004)(316002)(71200400001)(6636002)(305945005)(71190400001)(25786009)(6436002)(3846002)(6246003)(8936002)(76116006)(6116002)(110136005)(54906003)(2501003)(256004)(55016002)(186003)(66066001)(55236004)(6506007)(26005)(53546011)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1787;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: WkLBeiX8l2LIH8S5ecJ+XMbDlIzf1yqVNmV2LRsnio/2bRdw51z2IImpisDmWo0stefyEdSthaSSO8+DWS7jjpgCUBjN4/0m0OSi6hrJ29qm7RirEtI1BNg+ZYAIuQc23zh5mSnFUJCzQqobH2qGPmzcyRvhUrS06BbhE25Uc28W1fe2VZaYU8+m1BbWz6hPjP2E8TbKYl6qjoau/pIgBlUOcDG/W1Ngkrjc5ysamK8G2tWxDhKsGMQbuHBXrrHd6N+zcnidfiqi3SE8wlYLshhtCw0QSoUVoccGySvlJ8NgRHjROqp+zix8pYFf9wDvvmOjxDyYGohvflRu5JinIz6D1XDzxSdSVpZaT48rRR2P8zN/YrKF/DPa2A0N50Zko+Yhvk5iy54yjb0lcO+Qe+iEZ/2462Wz0T1TA5K6S5c=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1787
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT043.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(376002)(346002)(13464003)(189003)(199004)(8936002)(6636002)(22756006)(81156014)(81166006)(8676002)(7736002)(26826003)(86362001)(54906003)(110136005)(356004)(486006)(14454004)(478600001)(305945005)(74316002)(126002)(476003)(11346002)(70586007)(3846002)(55016002)(102836004)(336012)(50466002)(76176011)(47776003)(53546011)(99286004)(33656002)(5660300002)(70206006)(4326008)(6246003)(25786009)(229853002)(436003)(446003)(66066001)(63350400001)(2201001)(2501003)(6506007)(6116002)(316002)(7696005)(52536014)(186003)(2906002)(2486003)(76130400001)(23676004)(9686003)(26005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4709;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 221b1757-c335-4dd5-3b20-08d73c1e9132
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DBBPR08MB4709; 
NoDisclaimer: True
X-Forefront-PRVS: 01644DCF4A
X-Microsoft-Antispam-Message-Info: imvC/v4VzZ87IvWtK9vubd5eqA0DZC0jlqDZbnnDyM8tD2WW0MxknoGHScN9iJH7qMi32gfJ/EspgbThl2WE/lKRVeI5Q9CXeuGFdaeZXjMBDko01gtj/wk5iBZfvhCt7OU51zWmj6xGc2E8aBE5nFpVc6CA33hVJClIMgN/HyCvyTnp2pOaO43SGkgHOXux/5EJgrat8KAlCury3DJFF5clNqrmfX5fnXN2eJq5ddkR0YTnCsT8cA3VPFhg+FwU2MHmtKtm9MCd/yrBHqXO32zeaY0UDS+BYn900y79KafOatrzUO5d2yLsQLpesOPfCC71gQeUIzfMgopLwKJnZtBYTVgsWo80A70rXLjchHNRlWdnt+8BoSsBKo3asVGZaGE5fS1Ca0HWf2BQ9riYBNltBMXUl3RjasETMFA8grU=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2019 09:57:25.9905 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ef1bced-abb3-4db7-e2f8-08d73c1e9c04
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_025732_838709_1E5968D6 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.78 listed in list.dnswl.org]
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

Hi Paolo,

> -----Original Message-----
> From: Paolo Bonzini <pbonzini@redhat.com>
> Sent: Wednesday, September 18, 2019 4:26 PM
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
> On 18/09/19 10:07, Jianyong Wu wrote:
> > +	case ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID:
> > +		getnstimeofday(ts);
> 
> This is not Y2038-safe.  Please use ktime_get_real_ts64 instead, and split the
> 64-bit seconds value between val[0] and val[1].
> 
As far as I know, y2038-safe will only affect signed 32-bit integer, how does it affect 64-bit integer?
And why split 64-bit number into two blocks is necessary?
Also, split number will lead to shortage of return value.
 
> However, it seems to me that the new function is not needed and you can
> just use ktime_get_snapshot.  You'll get the time in systime_snapshot->real
> and the cycles value in systime_snapshot->cycles.

See patch 5/6, I need both counter cycle and clocksource, ktime_get_snapshot seems only offer cycles.
  
> 
> > +		get_current_counterval(&sc);
> > +		val[0] = ts->tv_sec;
> > +		val[1] = ts->tv_nsec;
> > +		val[2] = sc.cycles;
> > +		val[3] = 0;
> > +		break;
> 
> This should return a guest-cycles value.  If the cycles values always the same
> between the host and the guest on ARM, then okay.  If not, you have to
> apply whatever offset exists.
> 
In my opinion, when use ptp_kvm as clock sources to sync time between host and guest, user should promise the guest and host has no
clock offset. So we can be sure that the cycle between guest and host should be keep consistent. But I need check it.
I think host cycle should be returned to guest as we should promise we get clock and counter in the same time.

Thanks
Jianyong Wu

> Thanks,
> 
> Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
