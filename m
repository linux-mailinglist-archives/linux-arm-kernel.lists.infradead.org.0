Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CD4FD7DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 09:24:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+QBfI/WjEMsTC2185gPHDpS2tUMrE1KwRt2oi9e2h4=; b=spk2h7azOZPvfh
	DjVXLuOBYsR3zD1ie3WPqLrjrwXQymD0bIgHCourAcTaWEMXtJkT1joMA7SqgsXpjjSRxXjmOGfZb
	wsrAdYuMX/ftxKlT86uL8oK+pXrrwKwE0JA1+2aGo3S6XBbimvGoEvdi4gkbHo160sUsymiTxZ+CL
	45XIbbtkPPzy6Xm7LIGFycHMtzyDVfrKziN5TB+/HiKnhrfA/eWI+w7PYTujoJCSvdkjtyysTJV9N
	FD6XAU819hQR54ygcGIVMP414IByZmx6ddZI9xref04xXIWI8oX5SxeuvLVE2CgK8q87/0WBQkvII
	9jFdG3s19weRjtLWOyXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVWuW-0007gJ-9K; Fri, 15 Nov 2019 08:24:56 +0000
Received: from mail-db5eur03on0623.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::623]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWuN-0007fk-99
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 08:24:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KqONU9aIxyPtotpVZqCYAhzJULEraZFes6JCG8txzZs=;
 b=hlJSNoMLnNJpyym+QB8FBKB2pBYZwsqecWw0YNqGF9hjLLl1yq8jgKd89OLOqS9o6ObFNxjmc9j44CGg8pPDLdAuhsA3KEsqXxyR32T4DLoDzOiKxUh1Ld7orOcVxid8sCK9AochL2BSqccYvtI+UVz5eIyfcj7HIkdOdh9tWpg=
Received: from VI1PR0801CA0085.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::29) by VI1PR0801MB2128.eurprd08.prod.outlook.com
 (2603:10a6:800:5c::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.29; Fri, 15 Nov
 2019 08:24:41 +0000
Received: from VE1EUR03FT004.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::204) by VI1PR0801CA0085.outlook.office365.com
 (2603:10a6:800:7d::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23 via Frontend
 Transport; Fri, 15 Nov 2019 08:24:40 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT004.mail.protection.outlook.com (10.152.18.106) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23 via Frontend Transport; Fri, 15 Nov 2019 08:24:40 +0000
Received: ("Tessian outbound 3fba803f6da3:v33");
 Fri, 15 Nov 2019 08:24:39 +0000
X-CR-MTA-TID: 64aa7808
Received: from de50c3b770ee.2 (cr-mta-lb-1.cr-mta-net [104.47.6.54])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D7401C03-0FEA-4BBB-B8B7-D77B23F631F7.1; 
 Fri, 15 Nov 2019 08:24:34 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur02lp2054.outbound.protection.outlook.com [104.47.6.54])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id de50c3b770ee.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 15 Nov 2019 08:24:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JFG+r2n8zfADuoUg9Ph7IkzLi7et3xzqZfemxf8fUweGofHXrYt7NsTklTDDPXM6s/71MSZ1Dhxzb2NkqNLq+Qj79h+6hR7Rwcjr+TDAJmJmjypeq/z4Tj+8hTSlTWCC5ClOrL+9Wno03LxOSJFmXDyc2SedGN1L1dakfXdI49EGaELHlk0WnRa0ctwr+dEswb4R5JyAeSkN3JvTSZJKRprGJFKc9BL+c87vF8XNNytZf3V6y2n1XoU2oMTLVpl5U86TlzYqYpb7jloaWYaGPQnHxZdLZcJUJ0dQs9e6GHtcxXXTKasKZ71Z45uOutA5R0A7ATWKhP6NKeEkLN98Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KqONU9aIxyPtotpVZqCYAhzJULEraZFes6JCG8txzZs=;
 b=Pv+J2L7iUg+1jK4bs+NbdOTbj6EyVeA3axuVzEjA89dXh3+GLd2L+DAcXTsHsnyeoMI0oKbgAYcFvDTfC6p1QqOsKgXi2Jj9rt7sYKD/cHhX90+MFIs/FVw8enlMbgvMEtTU9C5yMKDp78fwnU85VRcuMvcKQc+WVpS7cOZgICNQvmGFF/OIuEbiFOkKlo6tGwJdz056H9QeyHxkfL6+rnLDactPSl2shaqKVOnpsb0IwtiSShj4MzpwDIhADago9bWkVeCuEQYjVwPlR492ggzH9mLHOPQ2ez6H0QqbSx40XAvARAOvErY138nGpCi/kuOultQQPbNrYgo299Abuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KqONU9aIxyPtotpVZqCYAhzJULEraZFes6JCG8txzZs=;
 b=hlJSNoMLnNJpyym+QB8FBKB2pBYZwsqecWw0YNqGF9hjLLl1yq8jgKd89OLOqS9o6ObFNxjmc9j44CGg8pPDLdAuhsA3KEsqXxyR32T4DLoDzOiKxUh1Ld7orOcVxid8sCK9AochL2BSqccYvtI+UVz5eIyfcj7HIkdOdh9tWpg=
Received: from VI1PR0801MB1677.eurprd08.prod.outlook.com (10.168.64.21) by
 VI1PR0801MB1807.eurprd08.prod.outlook.com (10.168.61.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Fri, 15 Nov 2019 08:24:32 +0000
Received: from VI1PR0801MB1677.eurprd08.prod.outlook.com
 ([fe80::dc15:dc7b:57ad:d978]) by VI1PR0801MB1677.eurprd08.prod.outlook.com
 ([fe80::dc15:dc7b:57ad:d978%8]) with mapi id 15.20.2451.027; Fri, 15 Nov 2019
 08:24:32 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [RFC PATCH v7 4/7] time: Add mechanism to recognize clocksource
 in time_get_snapshot
Thread-Topic: [RFC PATCH v7 4/7] time: Add mechanism to recognize clocksource
 in time_get_snapshot
Thread-Index: AQHVmuUeY8KwMfywA063cJuUDSewUaeKtyGAgAEslGA=
Date: Fri, 15 Nov 2019 08:24:32 +0000
Message-ID: <VI1PR0801MB16770B5FEF32B82E7B81251EF4700@VI1PR0801MB1677.eurprd08.prod.outlook.com>
References: <20191114121358.6684-1-jianyong.wu@arm.com>
 <20191114121358.6684-5-jianyong.wu@arm.com>
 <alpine.DEB.2.21.1911141507010.2507@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1911141507010.2507@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 62d86767-0af9-4fac-8287-f19c350689aa.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: de28097e-dace-4455-a683-08d769a542e0
X-MS-TrafficTypeDiagnostic: VI1PR0801MB1807:|VI1PR0801MB1807:|VI1PR0801MB2128:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB2128205312C540E701016461F4700@VI1PR0801MB2128.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 02229A4115
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(39860400002)(346002)(376002)(199004)(189003)(13464003)(256004)(71190400001)(11346002)(6916009)(446003)(14454004)(66066001)(5660300002)(74316002)(305945005)(2906002)(7736002)(476003)(76176011)(53546011)(52536014)(6506007)(55236004)(186003)(7696005)(7416002)(486006)(102836004)(26005)(54906003)(25786009)(66946007)(316002)(478600001)(66556008)(99286004)(86362001)(64756008)(76116006)(66476007)(4326008)(66446008)(6436002)(8936002)(3846002)(6116002)(33656002)(229853002)(8676002)(9686003)(55016002)(81156014)(6246003)(71200400001)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1807;
 H:VI1PR0801MB1677.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 7YZGu0/rggLm+5fBgbCPoUnGwI4YbjkzrrbbjrNg9Ms5rkjolWuev1X1jNt85OaUhLdBANQLAYs018Qzxp7WhHEFkGIRUnwIPSKw52QxuyL4iCXmr3INnXKPqbfwhEbjn3bh23lvjnjIMD1h1DCZZ75Yec0tF2IITrSb1Pgm1FkuQsU3279MOobfNaJIYhqF/yY2reFBKvrgByFWugbp14iFBrnymuCHiQHnDdvCjXztZhpHzAjA9/G3joYkPw+E97OLpHwAED0/k/Qwusc5p2QnsiRzaH4HkmD4gQAePYE0/WxPFkWRUE5Er8R/57DwLF2c/vvT03FGQqcRtYao3zAJDYq1wC2creDvvcPpTkNNeTa8bFveHq8ExYLIrmK1sJ12lVfkQlZ2C7qeFEc+CHN+QdFBqANo3NZsWmueTqrroW7NICH7nKJTOJvG3XNK
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1807
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT004.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(376002)(346002)(1110001)(339900001)(189003)(199004)(13464003)(26826003)(478600001)(33656002)(9686003)(55016002)(3846002)(25786009)(6116002)(486006)(76176011)(26005)(70206006)(126002)(102836004)(446003)(11346002)(186003)(476003)(70586007)(336012)(53546011)(6506007)(105606002)(14454004)(7696005)(22756006)(6862004)(99286004)(4326008)(6246003)(46406003)(356004)(5660300002)(52536014)(97756001)(229853002)(86362001)(23726003)(76130400001)(54906003)(81166006)(36906005)(316002)(50466002)(66066001)(47776003)(8676002)(8746002)(8936002)(81156014)(2906002)(7736002)(74316002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB2128;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 9dabf6fb-8949-47c2-550f-08d769a53dd2
NoDisclaimer: True
X-Forefront-PRVS: 02229A4115
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dXTKepwpM6aBIoo0HgBcisgo9V40r15K5stGVQ1rUR+eof+fU0H0ofesmHTj9jJyJn9aHDB0dEOusJAixZ740aNBtyeZjJInD2OphCiGes/AIeBqiLEFFdoVbmI6Ik/LKhXOKcOxD0eKeET7p/3WDbkdd5iVBHh2h77vIF0yD7Ku0dl0V0NJOw/6Se9HgByGqWOgzevhCyDsa/6wmaXyOokn0vB+46kiJRtykNjKW5x7PK2BMjRqbSrI+8SdL/GM+IRr2qYGJf0arIFZI3QMFWue39G+IxTty2m3sYkMUOhdUgMxVqQDmNyccv4kolRqHHCT3S2qePDnCRnU18gflCxHo2KdrE2jb7mkk1D7IC1OKn94d7PWUTXtNJfarEWVn7p5P9m5ayAA4dARlma/3nrjmTuHU02fNNyxujmKWUkjAH3mkNZEgPd4ZKWj6qJP
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2019 08:24:40.7632 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: de28097e-dace-4455-a683-08d769a542e0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB2128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_002447_389271_E45A7959 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:623 listed in]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <Steve.Capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi tglx,

> -----Original Message-----
> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Thursday, November 14, 2019 10:19 PM
> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>
> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> pbonzini@redhat.com; sean.j.christopherson@intel.com; maz@kernel.org;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; nd <nd@arm.com>
> Subject: Re: [RFC PATCH v7 4/7] time: Add mechanism to recognize
> clocksource in time_get_snapshot
> 
> On Thu, 14 Nov 2019, Jianyong Wu wrote:
> > From: Thomas Gleixner <tglx@linutronix.de> In some scenario like
> > return device time to ptp_kvm guest, we need identify the current
> > clocksource outside core time code.
> > A mechanism added to recognize the current clocksource by export
> > clocksource id in time_get_snapshot.
> 
> Can you please replace that with the following:
> 
>  System time snapshots are not conveying information about the current
> clocksource which was used, but callers like the PTP KVM guest
> implementation have the requirement to evaluate the clocksource type to
> select the appropriate mechanism.
> 
>  Introduce a clocksource id field in struct clocksource which is by default  set
> to CSID_GENERIC (0). Clocksource implementations can set that field to  a
> value which allows to identify the clocksource.
> 
>  Store the clocksource id of the current clocksource in the
> system_time_snapshot so callers can evaluate which clocksource was used
> to  take the snapshot and act accordingly.
> 

Ok, really better.

> > diff --git a/include/linux/clocksource_ids.h
> > b/include/linux/clocksource_ids.h new file mode 100644 index
> > 000000000000..93bec8426c44
> > --- /dev/null
> > +++ b/include/linux/clocksource_ids.h
> > @@ -0,0 +1,13 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */ #ifndef
> > +_LINUX_CLOCKSOURCE_IDS_H #define _LINUX_CLOCKSOURCE_IDS_H
> > +
> > +/* Enum to give clocksources a unique identifier */ enum
> > +clocksource_ids {
> > +	CSID_GENERIC		= 0,
> > +	CSID_ARM_ARCH_COUNTER,
> 
> This should only add the infrastructure with just CSID_GENERIC in place.
> 
> The ARM_ARCH variant needs to come in a seperate patch which adds the
> enum and uses it in the corresponding driver. Seperate means a patch doing
> only that and nothing else, i.e. not hidden in some other patch which actually
> makes use of it.
> 

Yeah, this patch should be arch independent and "CSID_ARM_ARCH_COUNTER" should be in an
Separate patch.

Thanks
Jianyong

Thanks
> Thanks,
> 
> 	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
