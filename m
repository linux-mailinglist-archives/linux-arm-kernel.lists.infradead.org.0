Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656ABB59DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 04:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=juNZl3sDPt9l3E2/IOMdPRnTrWJa5l4Z6IwyFtUBJ9g=; b=IygAad8CDbkhUk
	KyPhC09fGi5WkTjeJu9YBpiUc/2xkUuVsLPSkVfn9QxAMwnz95QIrESr3Iia/8HNRW+Jjh1+Z8L8z
	9RRC0HBesU3yddYcNZIFLKbG4JquThpbVFHomGWTclMVVOFHbmVx9OEvKkPu6to24tWRyOGRabNUL
	bmLmHvNUn5DwtCupMsKMHR6g2r76crDRF3H3zAJSTppsbO8OIGhx0oVCe8KfENjP61nwYhMXs3lSE
	nZnhono73h4EkokwUgCw86g/xsLpaoKbQEdn+eJVglPP/RNpFRS5UHOVRYMEkvPybGmnq0KcLYnKo
	ysJ/w+9bgkzEiapIii0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAQ3D-0007ac-34; Wed, 18 Sep 2019 02:50:39 +0000
Received: from mail-he1eur01on060b.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::60b]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAQ31-0007aA-OT
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 02:50:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cJ3uPT8GF0Gl00Cq3URIxPGgcTqUzlQ+4RTIg7+hsGQ=;
 b=gKIcrgFYkGMiwlnMNGDXoG0ZS6J5Q4gyHe8G7IHU+8j0MgGdcvojPpWE9khB0A2B45Ng2aq2Yv44J4DFm5rGVAEb+N8zsd+2VHRdrwohqN/jvcMQ4GnU/DOCCI7BS1ArvpU791rpe8FWsnXTXiyA+21/8Qt1i6pEdPxHWm7iekk=
Received: from VE1PR08CA0023.eurprd08.prod.outlook.com (2603:10a6:803:104::36)
 by VI1PR08MB5359.eurprd08.prod.outlook.com (2603:10a6:803:12e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.15; Wed, 18 Sep
 2019 02:50:20 +0000
Received: from DB5EUR03FT057.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::203) by VE1PR08CA0023.outlook.office365.com
 (2603:10a6:803:104::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.17 via Frontend
 Transport; Wed, 18 Sep 2019 02:50:20 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT057.mail.protection.outlook.com (10.152.20.235) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.14 via Frontend Transport; Wed, 18 Sep 2019 02:50:19 +0000
Received: ("Tessian outbound 5061e1b5386c:v31");
 Wed, 18 Sep 2019 02:50:16 +0000
X-CR-MTA-TID: 64aa7808
Received: from f6342ead8083.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.1.50]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 F311B91C-03C7-4803-9B61-F527D59C8A69.1; 
 Wed, 18 Sep 2019 02:50:11 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01lp2050.outbound.protection.outlook.com [104.47.1.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f6342ead8083.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 18 Sep 2019 02:50:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JcHsqYLSq5ldzcw4P1szNXt1xRaFEVWgJPqARWvyKjCBCeoK1wIAKe+goEw6LV47hd+aOyuoW+SSjoBCdl3bOprovx/jIelM9YQ+DUZFfWx8jKBMdaFOVLkbfOc1SWmRtmufX7iTmhdk5oeik0hENI7UM/ih6NSq63OZRdcXpGdKUfgT2kwQAcK6ENbLG7zuzl9RcFnH/Bs5531nsCPWPDFuEySUvbtjxojnj1s0+XkdQldgLOakDgk1AqvV1pcyJ+j21hvvg84VhxqXQfja0rOFi25uk9fYi92Q2ZW+qTX/h/m/rJ6QQX9sqU6RnbIzXQ7d65CwirXWv12WnruQ5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cJ3uPT8GF0Gl00Cq3URIxPGgcTqUzlQ+4RTIg7+hsGQ=;
 b=OTSjMJlkg9l1IDzTN+E+PNtgWPIyc5L/xaUqbk0d5aDPRpfoGGKSrQdDczQPjvg1S0su8CIX+oButnQK7wmqvXe6BnXqDkuze3iEL+KuMHh78iGQqXndsg4TIZnVo11pDXzaY0vaAHnc01IQl1/oMuz78hRv7Q4XCnK29Er/bsWu2cigpqq5VpRn+tlXFaLhw0INVH6+254mTJWl0FD94WoH+XzKqTj0DXDYLtRHbxi483pMXuximYOuAYUxrKbG1yKN/XgE09SHDSqu/bKYhXFO1JNk0Ja+UC7c7a7eVR2RB3noktMfXunRookevMESRL78X0EHpOC4rs3e5i9Lkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cJ3uPT8GF0Gl00Cq3URIxPGgcTqUzlQ+4RTIg7+hsGQ=;
 b=gKIcrgFYkGMiwlnMNGDXoG0ZS6J5Q4gyHe8G7IHU+8j0MgGdcvojPpWE9khB0A2B45Ng2aq2Yv44J4DFm5rGVAEb+N8zsd+2VHRdrwohqN/jvcMQ4GnU/DOCCI7BS1ArvpU791rpe8FWsnXTXiyA+21/8Qt1i6pEdPxHWm7iekk=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB2074.eurprd08.prod.outlook.com (10.168.92.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.23; Wed, 18 Sep 2019 02:50:08 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::40a2:f892:29a7:2942]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::40a2:f892:29a7:2942%10]) with mapi id 15.20.2263.023; Wed, 18 Sep
 2019 02:50:08 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Marc Zyngier <maz@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, Mark Rutland
 <Mark.Rutland@arm.com>, Will Deacon <Will.Deacon@arm.com>, Suzuki Poulose
 <Suzuki.Poulose@arm.com>
Subject: RE: [PATCH 3/6] Timer: expose monotonic clock and counter value
Thread-Topic: [PATCH 3/6] Timer: expose monotonic clock and counter value
Thread-Index: AQHVbUqaDFZ5iqdiL0+E9FJrHymYEKcwGwMAgACcHGA=
Date: Wed, 18 Sep 2019 02:50:07 +0000
Message-ID: <HE1PR0801MB1676426BF970B5A99B9762D8F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20190917112430.45680-1-jianyong.wu@arm.com>
 <20190917112430.45680-4-jianyong.wu@arm.com>
 <ad38f692-a7c4-34e0-8236-ebd2d237bd93@kernel.org>
In-Reply-To: <ad38f692-a7c4-34e0-8236-ebd2d237bd93@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 102f8c9b-54c9-422d-8d75-50051e2275f2.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: f39fa603-59ad-4296-22b4-08d73be2f17f
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:HE1PR0801MB2074; 
X-MS-TrafficTypeDiagnostic: HE1PR0801MB2074:|HE1PR0801MB2074:|VI1PR08MB5359:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB5359A9993BF97473592470F9F48E0@VI1PR08MB5359.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 01644DCF4A
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(366004)(136003)(396003)(199004)(13464003)(189003)(52544003)(4326008)(55016002)(7696005)(8936002)(478600001)(316002)(110136005)(2201001)(966005)(76116006)(256004)(14444005)(9686003)(99286004)(66946007)(66446008)(66476007)(476003)(11346002)(14454004)(71200400001)(446003)(64756008)(2906002)(66556008)(71190400001)(5660300002)(52536014)(186003)(3846002)(53546011)(33656002)(66066001)(229853002)(6306002)(86362001)(25786009)(2501003)(54906003)(6506007)(6116002)(7736002)(305945005)(26005)(6246003)(6636002)(8676002)(81166006)(81156014)(486006)(55236004)(76176011)(102836004)(6436002)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB2074;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: iNvgEymX6VTPYDkn71/Gv9Zk6wbSO+VUQ30XfHvlGoMSpgOCKQgcykgFS/nfA2VcWjVEc7nrAeD0xqUCiSs165u307mniVDzy6Inu/6FcukQo8iPXgEbEdSMsSL8v3dCzvH1VONNznUf/F3tSJyA3+pXbvM1aw1p0PQ7Aj/BwYwx0Hd+bdB671NtBmrnJgTWWjzF/itnQEILPgJyLlw1PDbYP2jQza/8hGiuQ8sveWxMFH2Oaumx92anLcppVC37YZ9eeVtYaTZ8c9Q8+IOrtIkVLWli1a6nwBIkaUmNOyRalbbTaXC4Dz+S46fjCRjL3ixupsHYsfIk5/mLparT9lnt5lyoR3lDWQMTJTamrkYUPvqLhK9fQamNs4I5q0Si0x8il9CO1VeNEr5RUJsmDkgCcC7CKI0lSfegCnc7MkA=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2074
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT057.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(39860400002)(376002)(13464003)(52544003)(199004)(189003)(70206006)(8936002)(76176011)(3846002)(86362001)(14454004)(966005)(74316002)(229853002)(7736002)(22756006)(356004)(81156014)(478600001)(26826003)(305945005)(81166006)(52536014)(186003)(2906002)(33656002)(50466002)(14444005)(2501003)(6636002)(7696005)(6506007)(99286004)(6116002)(2201001)(54906003)(476003)(11346002)(66066001)(70586007)(446003)(102836004)(126002)(4326008)(316002)(53546011)(110136005)(5660300002)(47776003)(76130400001)(6246003)(486006)(6306002)(2486003)(25786009)(436003)(8676002)(63350400001)(336012)(23676004)(9686003)(55016002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB5359;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: c9f33a84-28c7-4b4d-ddd1-08d73be2eae7
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR08MB5359; 
NoDisclaimer: True
X-Forefront-PRVS: 01644DCF4A
X-Microsoft-Antispam-Message-Info: MGRpCF2KZMmHX+0X6FKFg2GDX8usBJ+5JDvEXp44vJxv6X3vS3KMeUVVr5cfp/9Dmj+qNOHssmylDHm8C11e69J3pGWVGZQmgV9ZG68srSp85ADtIMoKzeiOtmR2GlTaUSTwmWfkWG2KfPvYBx3xXDQNWzND+NSVokbYS+PQycW2zU55d15OyBx2/CwV/SsO3kty5F6kslRRTDZZ3AyB7ZnGQdZVLW7WBD63mFc96DF0jqrqJls9bFj3ih/UZwAetz3bNMrZRgS8TeZbuavzgdRITuvDdBiif5ciuA/Ou00WuLR5Amq8yvbbv6OJa/yGWTLFBqR+FraTqT7xlk1Rc5quSSz0ml+GewEJ99qOt84BB0ixw7c3rVEV8OaWJ7Pz1br4RhoARFSrgn/1btXOeF6mVJ3rnQJNND/VDF4pZXk=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2019 02:50:19.5972 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f39fa603-59ad-4296-22b4-08d73be2f17f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB5359
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_195028_030116_C295363C 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:60b listed in]
 [list.dnswl.org]
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
Cc: "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

> -----Original Message-----
> From: Marc Zyngier <maz@kernel.org>
> Sent: Wednesday, September 18, 2019 1:10 AM
> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>;
> netdev@vger.kernel.org; pbonzini@redhat.com;
> sean.j.christopherson@intel.com; richardcochran@gmail.com; Mark Rutland
> <Mark.Rutland@arm.com>; Will Deacon <Will.Deacon@arm.com>; Suzuki
> Poulose <Suzuki.Poulose@arm.com>
> Cc: linux-kernel@vger.kernel.org; Steve Capper <Steve.Capper@arm.com>;
> Kaly Xin (Arm Technology China) <Kaly.Xin@arm.com>; Justin He (Arm
> Technology China) <Justin.He@arm.com>; nd <nd@arm.com>; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [PATCH 3/6] Timer: expose monotonic clock and counter value
> 
> On 17/09/2019 12:24, Jianyong Wu wrote:
> > A number of PTP drivers (such as ptp-kvm) are assuming what the
> > current clock source is, which could lead to interesting effects on
> > systems where the clocksource can change depending on external events.
> >
> > For this purpose, add a new API that retrives both the current
> > monotonic clock as well as its counter value.
> >
> > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> 
> There must be something wrong with the way you've taken this patch in your
> tree. My authorship is gone (not that I deeply care about it, but it is good
> practice to keep attributions), and the subject line has been rewritten.
> 
> I'd appreciate it if you could fix this in a future revision of this series. For
> reference, the original patch is here[1].
> 

Sorry for "steal" your patch, I'm not familiar with it and neglect this important change.
I just copy this patch from your email and add the subject myself.
I will fix all of them later in v3.

> > ---
> >  include/linux/timekeeping.h |  3 +++
> >  kernel/time/timekeeping.c   | 13 +++++++++++++
> >  2 files changed, 16 insertions(+)
> >
> > diff --git a/include/linux/timekeeping.h b/include/linux/timekeeping.h
> > index a8ab0f143ac4..a5389adaa8bc 100644
> > --- a/include/linux/timekeeping.h
> > +++ b/include/linux/timekeeping.h
> > @@ -247,6 +247,9 @@ extern int get_device_system_crosststamp(
> >  			struct system_time_snapshot *history,
> >  			struct system_device_crosststamp *xtstamp);
> >
> > +/* Obtain current monotonic clock and its counter value  */ extern
> > +void get_current_counterval(struct system_counterval_t *sc);
> > +
> >  /*
> >   * Simultaneously snapshot realtime and monotonic raw clocks
> >   */
> > diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
> > index 44b726bab4bd..07a0969625b1 100644
> > --- a/kernel/time/timekeeping.c
> > +++ b/kernel/time/timekeeping.c
> > @@ -1098,6 +1098,19 @@ static bool cycle_between(u64 before, u64 test,
> u64 after)
> >  	return false;
> >  }
> >
> > +/**
> > + * get_current_counterval - Snapshot the current clocksource and counter
> value
> > + * @sc:	Pointer to a struct containing the current clocksource and its
> value
> > + */
> > +void get_current_counterval(struct system_counterval_t *sc) {
> > +	struct timekeeper *tk = &tk_core.timekeeper;
> > +
> > +	sc->cs = READ_ONCE(tk->tkr_mono.clock);
> > +	sc->cycles = sc->cs->read(sc->cs);
> > +}
> > +EXPORT_SYMBOL_GPL(get_current_counterval);
> 
> This export wasn't in my original patch. I guess you need it because your ptp
> driver builds as a module? It'd be good to mention it in the commit log.
> 
Yeah, ptp_kvm will be a module, so export is necessary. I will mention this change
in commit log.

Thanks
Jianyong Wu

> > +
> >  /**
> >   * get_device_system_crosststamp - Synchronously capture
> system/device timestamp
> >   * @get_time_fn:	Callback to get simultaneous device time and
> >
> 
> Thanks,
> 
> 	M.
> 
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-
> platforms.git/commit/?h=timer/counterval&id=a6e8abce025691b6a55e1c195
> 878d7f76bfeb9d1
> --
> Jazz is not dead, it just smells funny...
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
