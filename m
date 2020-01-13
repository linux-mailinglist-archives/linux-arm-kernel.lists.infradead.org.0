Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BD2138F1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:31:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iouIsYPGBe2i0Grmw1uZIAvJh07kEj5oC+gcw/XNkr0=; b=JUURK7aJQnZkQv
	op88hJZ+fooDa3U7PyoCZBLwfsK/6YQCYM+IW8mm+JtEDHP4YYx62gQ+JwcZVFAP8kOQ2Lj1cnmCX
	eUaL7JKze1lDAsCJvcQMvH2ZUOIFuqus5a+tAE83PVouoMa4GImiOj4nc+PmG8iP/TlPi+xh4jV12
	dwmne5InPc1czbMdfKjWvV/MX/B015Wzzq9BEf4hV1JJ2C1qfJxEK2ZRowaHHvFhL/Dq91v4mqH58
	LwuUMP7UsUE6HbtgPhA2Te7rVPUDuyD7YuyvoEc2OeQ5Z7YY0hKajkDfHGRlV9bJJpT+NFloX/QSQ
	vAjQtFNDM/ySJYly5rKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqx0C-0003B1-N5; Mon, 13 Jan 2020 10:31:20 +0000
Received: from mail-eopbgr40065.outbound.protection.outlook.com ([40.107.4.65]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwzz-0003AN-KS
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:31:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0xmuY5jgnprKd5FS468llO7cLxmixChk8r2J3IVv1U=;
 b=0UxuehJJPXPBzo93T9w+LI4dBfuXSOGofaeOtFBbYcXrgoX+6x/LJFRB7R9aUpWApaHp0HGub0XErdUZ+u2lNjUi8haN/ZNn5cqWIdKeAXXx9y0+mu9DCeTEZmhTdBy674DMUYW6LTbPsi8+7xSBpReiDPH8R5CR9YzRHUJzLf0=
Received: from VI1PR0801CA0090.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::34) by VE1PR08MB4973.eurprd08.prod.outlook.com
 (2603:10a6:803:113::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.10; Mon, 13 Jan
 2020 10:31:02 +0000
Received: from VE1EUR03FT036.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::207) by VI1PR0801CA0090.outlook.office365.com
 (2603:10a6:800:7d::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9 via Frontend
 Transport; Mon, 13 Jan 2020 10:30:20 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT036.mail.protection.outlook.com (10.152.19.204) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 13 Jan 2020 10:30:19 +0000
Received: ("Tessian outbound 1da651c29646:v40");
 Mon, 13 Jan 2020 10:30:19 +0000
X-CR-MTA-TID: 64aa7808
Received: from b5f5d1130c4c.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 1BF7D65A-0CA4-4669-B57E-27485FDFBAA1.1; 
 Mon, 13 Jan 2020 10:30:14 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b5f5d1130c4c.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 13 Jan 2020 10:30:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W7WSnlkzINWY411QiuIUsZGP8kZBHxok1gYEU5lOW3hw4g7Jq4GkoNofh39lO5TTYx/Z5jNxpgA8dThEB+nMYvgXQO6EgbGSsADv0oBYBVFOahgmYg3KcX/PpV08zUFfNMkd3V+a9tMULgDNbLyvQAUaKCe2RLr1v/aPPThBqnsm5D4yzXduL0eKEN1IHkyg7qGcMjDCgn1Oiym+KwA4wSRHmH4gma2a1kO2omiey0dHd9rpkXsWRXnciLu1ozPzdqenjR8rxCRpk0SnH+MEMAt1AFKKeVnmtJz+EX9DTINoNZbK4W7dC1SMl4+fD7HMlfy4MlQdFXcmLbOd3ywV2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0xmuY5jgnprKd5FS468llO7cLxmixChk8r2J3IVv1U=;
 b=KHg/BzswW9NWm0jT82jaFCzmy0ORid54hS9LsN5rsJKspcViHY8sj55pOis/KihjTAAnwigMqqITBb0u9lnzP1AYKm2bh5nc812/NZavvcFpPI+lk3XZPPIEanz8K4DWzD46WOO1MRyXZKo4tJDC8qdwOsHaTnGVOu5ODhhS18JopvAdvZ3yAX2kAZfXUX7TVA3pZ6/yVbqXZxz1jWPoJyYph2VzQMtcTrIDg431hTqpzEkEE1oP9/vYxn5Ja2F8z0p/Uwur6J33JxIhT79ARe7F17Wz8QyKlNUGUjR77P+LybdJ7yqGTGku2rFosFrNzagEiMbTSYAyT+oGrT5GkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0xmuY5jgnprKd5FS468llO7cLxmixChk8r2J3IVv1U=;
 b=0UxuehJJPXPBzo93T9w+LI4dBfuXSOGofaeOtFBbYcXrgoX+6x/LJFRB7R9aUpWApaHp0HGub0XErdUZ+u2lNjUi8haN/ZNn5cqWIdKeAXXx9y0+mu9DCeTEZmhTdBy674DMUYW6LTbPsi8+7xSBpReiDPH8R5CR9YzRHUJzLf0=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1803.eurprd08.prod.outlook.com (10.168.148.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Mon, 13 Jan 2020 10:30:11 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f%8]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 10:30:11 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [RFC PATCH v9 6/8] psci: Add hvc call service for ptp_kvm.
Thread-Topic: [RFC PATCH v9 6/8] psci: Add hvc call service for ptp_kvm.
Thread-Index: AQHVrwuxR+1ZEaCriEa+CGCL3lP4K6ffGBkAgALhg9CAAEMegIABkMMAgAAdn4CABKu08A==
Date: Mon, 13 Jan 2020 10:30:10 +0000
Message-ID: <HE1PR0801MB167693BFB769ACEEA8A6B007F4350@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <20191210034026.45229-7-jianyong.wu@arm.com>
 <7383dc06897bba253f174cd21a19b5c0@kernel.org>
 <HE1PR0801MB1676AB738138AB24E2158AD4F4390@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <099a26ffef5d554b88a5e33d7f2a6e3a@kernel.org>
 <HE1PR0801MB16765B507D9B5A1A7827078BF4380@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ca80d88f5e00937fca7ee80be8f5c962@kernel.org>
In-Reply-To: <ca80d88f5e00937fca7ee80be8f5c962@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: bc0b5312-7e18-4b28-ab46-9595b2dd3baf.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6c5b9c0f-dbbb-4851-d3a9-08d7981396e8
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1803:|HE1PR0801MB1803:|VE1PR08MB4973:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VE1PR08MB4973166D998D676A541A46D5F4350@VE1PR08MB4973.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: True
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 028166BF91
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(136003)(366004)(396003)(189003)(199004)(2906002)(4001150100001)(71200400001)(6506007)(53546011)(55236004)(26005)(186003)(7696005)(7416002)(316002)(54906003)(8936002)(52536014)(8676002)(81166006)(5660300002)(81156014)(9686003)(76116006)(6916009)(66946007)(66556008)(64756008)(66446008)(66476007)(33656002)(4326008)(86362001)(55016002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1803;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: wi0aWHtQ7DZpbGp2BWNVFTUPe/ayMXn2cd0S/I7Sdn4c4GEpv/hAZQ/DH81Z9IeBlhkQEELSm58UtJaIY1eG5HyABpV1DtQyLq8qxZmw78t/yBNb32T/EUm3FhDYmQxAnApA6npoivUnrYHdUHJ+d22pQwgtqkWBUJJqo/zdkcsYUx+MfJ/XY+owqiE/CuoZPpTrZQP+7Fhh4Uvc0MR0ne+ZTUf1FuTJ1Xu9LAazjf+pX/R8lE01ju/zmseRor9fQPZkfke/l4iU8ngBJ0q/MPKcS75M4BoXLADWvjJGe1KrXjqArVVj5mU+xwR5LKMLiIbxlPT8eOOGj/5/KNpBbcUxeSwTIGzJWTe7fkmAwiq6U/KbKgxUodywhdJ6NCD3J+haFs5BbYNkn0Qu5Rdd93ys1qBx9mILS5NmbuIVxI8Kav+UePN677lqz5s+KTA3
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1803
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT036.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(136003)(396003)(199004)(189003)(70586007)(4001150100001)(478600001)(316002)(26826003)(6506007)(70206006)(336012)(4326008)(9686003)(53546011)(55016002)(7696005)(54906003)(36906005)(33656002)(186003)(6862004)(26005)(8676002)(81166006)(81156014)(52536014)(2906002)(5660300002)(356004)(8936002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4973;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 1c12a954-7519-4c88-2ce3-08d7981391ad
X-Forefront-PRVS: 028166BF91
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uWpPwnsDnwVKBX5DUkdDU6LQ1bQWyoU/fYAyI5Rj3p44iXzBn/Fr6WjpCMZRFeM+5vQ6W5ykYC5ip1Cl+lJwo0DfxTO/9MM20y43vgXjrBE8afmqhhzs5yIadaDr/zxQl5/V32cPUOv2ChuvCBnSxmAJp5p8riYIR+U09GQvhNXj1HyGBnaReuAnmYdV8xG9SvFwfYxF7kEmODfTwYdvEZmblM0HZp6O9wY/otdwhP50MC48BU5jLLkFbWBsBD+ANuO5mmYQSbtB14WW1owMZzEEQZmnHW5hXgqE+abFmBP81LuzOdTA+WQnS/sq4YIkHVBVRoU/QFavtKDphXUwPMOkRUs0uKJljA6TX2nz/YiuysG2pVxD7nEhCZQbJciQUm3VqVg3X4hRw1YIRflrLu5UX/XuL2ExpxNs2L1FNx+n4Jwa6KJ78nFcCD9uAcEx
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2020 10:30:19.8424 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c5b9c0f-dbbb-4851-d3a9-08d7981396e8
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4973
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_023107_812435_E187C8F7 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Justin He <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 Steven Price <Steven.Price@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

> -----Original Message-----
> From: Marc Zyngier <maz@kernel.org>
> Sent: Friday, January 10, 2020 6:56 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; Steven Price
> <Steven.Price@arm.com>; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; kvmarm@lists.cs.columbia.edu;
> kvm@vger.kernel.org; Steve Capper <Steve.Capper@arm.com>; Kaly Xin
> <Kaly.Xin@arm.com>; Justin He <Justin.He@arm.com>; nd <nd@arm.com>
> Subject: Re: [RFC PATCH v9 6/8] psci: Add hvc call service for ptp_kvm.
> 
> On 2020-01-10 09:51, Jianyong Wu wrote:
> > Hi Marc,
> >
> >> -----Original Message-----
> >> From: Marc Zyngier <maz@kernel.org>
> >> Sent: Thursday, January 9, 2020 5:16 PM
> >> To: Jianyong Wu <Jianyong.Wu@arm.com>
> >> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com;
> >> john.stultz@linaro.org; tglx@linutronix.de; pbonzini@redhat.com;
> >> sean.j.christopherson@intel.com; richardcochran@gmail.com; Mark
> >> Rutland <Mark.Rutland@arm.com>; will@kernel.org; Suzuki Poulose
> >> <Suzuki.Poulose@arm.com>; Steven Price <Steven.Price@arm.com>;
> >> linux-kernel@vger.kernel.org; linux-arm- kernel@lists.infradead.org;
> >> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> >> <Steve.Capper@arm.com>; Kaly Xin <Kaly.Xin@arm.com>; Justin He
> >> <Justin.He@arm.com>; nd <nd@arm.com>
> >> Subject: Re: [RFC PATCH v9 6/8] psci: Add hvc call service for
> >> ptp_kvm.
> >>
> >> On 2020-01-09 05:45, Jianyong Wu wrote:
> >> > Hi Marc,
> >> >
> >> >> -----Original Message-----
> >> >> From: Marc Zyngier <maz@kernel.org>
> >> >> Sent: Tuesday, January 7, 2020 5:16 PM
> >> >> To: Jianyong Wu <Jianyong.Wu@arm.com>
> >> >> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com;
> >> >> john.stultz@linaro.org; tglx@linutronix.de; pbonzini@redhat.com;
> >> >> sean.j.christopherson@intel.com; richardcochran@gmail.com; Mark
> >> >> Rutland <Mark.Rutland@arm.com>; will@kernel.org; Suzuki Poulose
> >> >> <Suzuki.Poulose@arm.com>; Steven Price <Steven.Price@arm.com>;
> >> >> linux-kernel@vger.kernel.org; linux-arm-
> >> >> kernel@lists.infradead.org; kvmarm@lists.cs.columbia.edu;
> >> >> kvm@vger.kernel.org; Steve Capper <Steve.Capper@arm.com>; Kaly
> Xin
> >> >> <Kaly.Xin@arm.com>; Justin He <Justin.He@arm.com>; nd
> <nd@arm.com>
> >> >> Subject: Re: [RFC PATCH v9 6/8] psci: Add hvc call service for
> >> >> ptp_kvm.
> >> >>
> >> >> On 2019-12-10 03:40, Jianyong Wu wrote:
> >> >> > ptp_kvm modules will call hvc to get this service.
> >> >> > The service offers real time and counter cycle of host for guest.
> >> >> >
> >> >> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> >> >> > ---
> >> >> >  include/linux/arm-smccc.h | 12 ++++++++++++
> >> >> >  virt/kvm/arm/psci.c       | 22 ++++++++++++++++++++++
> >> >> >  2 files changed, 34 insertions(+)
> >> >> >
> >> >> > diff --git a/include/linux/arm-smccc.h
> >> >> > b/include/linux/arm-smccc.h index 6f82c87308ed..aafb6bac167d
> >> >> > 100644
> >> >> > --- a/include/linux/arm-smccc.h
> >> >> > +++ b/include/linux/arm-smccc.h
> >> >> > @@ -94,6 +94,7 @@
> >> >> >
> >> >> >  /* KVM "vendor specific" services */
> >> >> >  #define ARM_SMCCC_KVM_FUNC_FEATURES		0
> >> >> > +#define ARM_SMCCC_KVM_PTP			1
> >> >> >  #define ARM_SMCCC_KVM_FUNC_FEATURES_2		127
> >> >> >  #define ARM_SMCCC_KVM_NUM_FUNCS			128
> >> >> >
> >> >> > @@ -103,6 +104,17 @@
> >> >> >  			   ARM_SMCCC_OWNER_VENDOR_HYP,
> >> >> 		\
> >> >> >  			   ARM_SMCCC_KVM_FUNC_FEATURES)
> >> >> >
> >> >> > +/*
> >> >> > + * This ID used for virtual ptp kvm clock and it will pass
> >> >> > +second
> >> >> > value
> >> >> > + * and nanosecond value of host real time and system counter by
> >> >> > +vcpu
> >> >> > + * register to guest.
> >> >> > + */
> >> >> > +#define ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID
> >> >> 		\
> >> >> > +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,
> >> >> 		\
> >> >> > +			   ARM_SMCCC_SMC_32,
> >> >> 	\
> >> >> > +			   ARM_SMCCC_OWNER_VENDOR_HYP,
> >> >> 		\
> >> >> > +			   ARM_SMCCC_KVM_PTP)
> >> >> > +
> >> >>
> >> >> All of this depends on patches that have never need posted to any
> >> >> ML, and just linger in Will's tree. You need to pick them up and
> >> >> post them as part of this series so that they can at least be reviewed.
> >> >>
> >> > Ok, I will add them next version.
> >> >
> >> >> >  #ifndef __ASSEMBLY__
> >> >> >
> >> >> >  #include <linux/linkage.h>
> >> >> > diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c index
> >> >> > 0debf49bf259..682d892d6717 100644
> >> >> > --- a/virt/kvm/arm/psci.c
> >> >> > +++ b/virt/kvm/arm/psci.c
> >> >> > @@ -9,6 +9,7 @@
> >> >> >  #include <linux/kvm_host.h>
> >> >> >  #include <linux/uaccess.h>
> >> >> >  #include <linux/wait.h>
> >> >> > +#include <linux/clocksource_ids.h>
> >> >> >
> >> >> >  #include <asm/cputype.h>
> >> >> >  #include <asm/kvm_emulate.h>
> >> >> > @@ -389,6 +390,8 @@ static int kvm_psci_call(struct kvm_vcpu
> >> >> > *vcpu)
> >> >> >
> >> >> >  int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)  {
> >> >> > +	struct system_time_snapshot systime_snapshot;
> >> >> > +	u64 cycles;
> >> >> >  	u32 func_id = smccc_get_function(vcpu);
> >> >> >  	u32 val[4] = {};
> >> >> >  	u32 option;
> >> >> > @@ -431,6 +434,25 @@ int kvm_hvc_call_handler(struct kvm_vcpu
> >> *vcpu)
> >> >> >  	case
> ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID:
> >> >> >  		val[0] = BIT(ARM_SMCCC_KVM_FUNC_FEATURES);
> >> >> >  		break;
> >> >> > +	/*
> >> >> > +	 * This will used for virtual ptp kvm clock. three
> >> >> > +	 * values will be passed back.
> >> >> > +	 * reg0 stores high 32-bit host ktime;
> >> >> > +	 * reg1 stores low 32-bit host ktime;
> >> >> > +	 * reg2 stores high 32-bit difference of host cycles and cntvoff;
> >> >> > +	 * reg3 stores low 32-bit difference of host cycles and cntvoff.
> >> >>
> >> >> That's either two or four values, and not three as you claim above.
> >> >>
> >> > Sorry, I'm not sure what do you mean "three", the registers here is
> >> > 4 from reg0 to reg3.
> >>
> >> Please read the comment you have written above...
> >
> > oh, I see it.
> >
> >>
> >> >> Also, I fail to understand the meaning of the host cycle vs
> >> >> cntvoff comparison.
> >> >> This is something that guest can perform on its own (it has access
> >> >> to both physical and virtual timers, and can compute cntvoff
> >> >> without intervention of the hypervisor).
> >> >>
> >> > To keep consistency and precision, clock time and counter cycle
> >> > must captured at the same time. It will perform at ktime_get_snapshot.
> >>
> >> Fair enough. It would vertainly help if you documented it. It would
> >> also help if you explained why it is so much worse to read the
> >> counter in the guest before *and* after the call, and assume that the
> >> clock time read happened right in the middle?
> >>
> > ok, I will give explain in comments.
> >
> >> That aside, what you are returning is something that *looks* like the
> >> virtual counter. What if the guest is using the physical counter,
> >> which is likely to be the case with nested virt? Do you expect the
> >> guest to always use the virtual counter? This isn't going to fly.
> >
> > To be honest, I have little knowledge of nested virtualization for arm
> > and I'm confused with that guest'guest will use physical counter.
> 
> Not the guest's guest (L2), but L1. Just look at what counter the KVM host
> uses: that's the physical counter. Now imagine you run that host as a guest,
> no other change.
> 
Ok,

> > IMO, ptp_kvm will call hvc to trap to its hypervisor adjacent to it.
> > So guest'guest will trap to hypervisor in guest and will get guest's
> > counter cycle then calculate guest'guest's counter cycle by something
> > like offset to sync time with it. So only if the guest's hypervisor
> > can calculate the guest'guest's counter value, can ptp_kvm works.
> 
> Sure, but that's not the problem we're trying to solve. The issue is that of the
> reference counter value you're including in the hypercall response.
> It needs to be a value that makes sense to the guest, and so far you're
> assuming virtual.
>
Get it.
 
> NV breaks that assumtion, because the guest hypervisor is using the physical
> counter. Also, let's not forget that the hypercall isn't Linux specific.
> I can write my own non-Linux guest and still use this hypercall. Nothing in
> there says that I can't use the physical counter if I want to.
> 
> So somehow, you need to convey the the hypervisor the notion of *which*
> counter the guest uses.
> 
> Does it make sense? Or am I missing something?
>
I know what you say. Let me try to solve this problem.
	Step 0, summary out all the conditions we should process, which will sever as branch condition.(now only normal virt and nested virt, I think) 
	Step 1, figure out the set of reference counter value used by guest in all condition.
	Step 2, determine which reference counter value will be used by guest in a certain condition in hypercall.
In step 1, can we give the set only 2 elements that one is physical counter the other is virtual counter?
For step 2, I have no idea for that now. can you give me some hint about it?

Thanks
Jianyong 
 
> Thanks,
> 
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
