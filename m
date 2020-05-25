Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AD01E104D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 16:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GSgO2omfBMfCbIqOXyTayR4njsXhYPxDn7KvQZmZ5c=; b=O/HkfW69tfpcf9
	aob7lYWy7ytDpY+SjpsVZZfOzEufjL/YZd7oWeQP8yAQiORr8vuI5YTAnW+sdKd5iQxOX3+aedC4q
	KRDpZwALQ8CXC0Jf2muqchEMbQr9ALeSDLaDD6xhAcEDcAAfMRQ15uoZD7wzyTC+GwUzdes9EnHUV
	4RJSs5VUk6VSeUI9A5tlGLdPiIwzxLGzqW/djZVETyY8hFHvHdLtm+2LL2mr36DEvvQ2ATJ6WDoiZ
	jFCFXOqrvBbHWbYCmLL9xC+hOsmfE9I/NRIZ2OyStS9UuV551i5NVmK0MvevuAxzBPEJldgCOdyqT
	kCAabaxwfe3yBi2fQ1Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdDwC-0003mw-ST; Mon, 25 May 2020 14:18:44 +0000
Received: from mail-db8eur05on2040.outbound.protection.outlook.com
 ([40.107.20.40] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdDw1-0003mM-Tf
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 14:18:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QKFrZC72eywz4TTbhJBvYjqDboasfI7bZV0zw7jB36I=;
 b=ugytelhML+1rx3YqkJNov4fiHAl/f2vi6B50n8zs7VbKj/yxR94o2C3UWGBGo6N6QIrCBbbr0+dg1pvCbHgHO62zzpVDCI4R1bn82/CBv/SFgIyDMboELPGMjJYiuNeSefqdRXjdmKegMGp7Xj/EXHsKy0U2mO/2AzPdvV+3jl0=
Received: from DB8PR06CA0057.eurprd06.prod.outlook.com (2603:10a6:10:120::31)
 by AM6PR08MB5030.eurprd08.prod.outlook.com (2603:10a6:20b:e1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.26; Mon, 25 May
 2020 14:18:29 +0000
Received: from DB5EUR03FT012.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:120:cafe::91) by DB8PR06CA0057.outlook.office365.com
 (2603:10a6:10:120::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.25 via Frontend
 Transport; Mon, 25 May 2020 14:18:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT012.mail.protection.outlook.com (10.152.20.161) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Mon, 25 May 2020 14:18:28 +0000
Received: ("Tessian outbound d078647f4174:v57");
 Mon, 25 May 2020 14:18:28 +0000
X-CR-MTA-TID: 64aa7808
Received: from e96576a1cfc4.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 79FB7BE8-3268-49FF-BC3C-A6FE0D420115.1; 
 Mon, 25 May 2020 14:18:23 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e96576a1cfc4.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 25 May 2020 14:18:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=beko6XrsU5s8eeO+AaLwFcOjFtxNZ0QteRfwUPqrw8Z1+Z9WA4vZeEV00ZgTEpXEXohQAxwcX+8CVp84BbZ/ZLi+x7BveIMsdPAiNzpyx7EbDmfJfRQjFo8VaB4p6xuS4GDUCyfdMqRyLNxQnaA96k6XFyy5FA57q1o/KZtZPoFN/r5M780+A2yHpn1JQHdoYw8zKxaq56WpkDBtZLGH3+n7eilusVwKr5hiaxbfy9hyUHH8dSKbtKwkxiTk3YYml0hlUthvEELbLbNubwJyH9Qza5mjK5AlV1lB9QqZmIEg6RTeaXI0uvioElcFHbv08IEgbDNmUv3c3PqmprUXTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QKFrZC72eywz4TTbhJBvYjqDboasfI7bZV0zw7jB36I=;
 b=G9erLdzc6HUbmKuAbPbvYZZAf/Al2ugV+dkCdvHlHtqIUaJNY5dL4qVQLDO6zS9GPnC1ebFjkPDl1CyBrSOqI1PsqX7pqr1EpOkHP6gbu9pbdXAo4zjbK+cMWBkecMbGKfnPVNdH+G2hYCZYbt880VfOD2aMxXBAIVLWMGf6oVmbLFravzDIYTD6EvG56AMmpcMyslI1sAG3ZLiXs6I4iwPAmTh/Q/iB4vt4B5mIqyCAt1wNN4vAICm112HDH7t1thnft0lWJBWi5kQLdAwR0drDIzXzhN3AbFI+zrEGeF3ZMJFQ5skb9qHF2Jo+j9iRiWpZxevd9GzBSaUzKEgHhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QKFrZC72eywz4TTbhJBvYjqDboasfI7bZV0zw7jB36I=;
 b=ugytelhML+1rx3YqkJNov4fiHAl/f2vi6B50n8zs7VbKj/yxR94o2C3UWGBGo6N6QIrCBbbr0+dg1pvCbHgHO62zzpVDCI4R1bn82/CBv/SFgIyDMboELPGMjJYiuNeSefqdRXjdmKegMGp7Xj/EXHsKy0U2mO/2AzPdvV+3jl0=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2569.eurprd08.prod.outlook.com (2603:10a6:3:e1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Mon, 25 May
 2020 14:18:19 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be%6]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 14:18:19 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Marc Zyngier <maz@kernel.org>, Richard Cochran <richardcochran@gmail.com>
Subject: RE: [RFC PATCH v12 10/11] arm64: add mechanism to let user choose
 which counter to return
Thread-Topic: [RFC PATCH v12 10/11] arm64: add mechanism to let user choose
 which counter to return
Thread-Index: AQHWMBRtHtaBVLC+ukSXkuIjkrpVgai2gQEAgAIJaQCAAEKwQA==
Date: Mon, 25 May 2020 14:18:18 +0000
Message-ID: <HE1PR0802MB2555E64BD5C076E5AF08E644F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-11-jianyong.wu@arm.com>
 <20200524021106.GC335@localhost>
 <306951e4945b9e486dc98818ba24466d@kernel.org>
In-Reply-To: <306951e4945b9e486dc98818ba24466d@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: f812874b-8ee4-45b7-9487-bdd76b3898df.1
x-checkrecipientchecked: true
Authentication-Results-Original: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ff474325-4157-4d25-9e18-08d800b67f1e
x-ms-traffictypediagnostic: HE1PR0802MB2569:|AM6PR08MB5030:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB5030BBBF182993164682A336F4B30@AM6PR08MB5030.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:3968;OLM:3968;
x-forefront-prvs: 0414DF926F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: y7yiNx0fKY+qCRVM7wagG0wDb1dCvT7uPv0IOzFV61P58sZAArp9gjpANHIBWgp4gQQOx/cMRF7LZFgpjIZ7E3BYymdzb88n2sa9aAjA/UnQ82STV2iqHBIQMwo15Uh25LslBYTlk+YGtbRTTWYP514KNJcX1FrXHOIxKuNhVZ7nK+JjRsCOtPWujupS4jY3Dpuek5XJdQFKCONW8VoEUxCqIJxqfjsWFgqvyWwZAxbdQB6L9LZ7LAlIlPzKc/Dt7Iu7/2wrvvD34z7SDVhjQjbwc9RwmbL/J+hueg6lP9CvdUXY3DfcoDk66drwBBWqk+2KNJCWZ8gIei20bDKs8A==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(39860400002)(396003)(366004)(346002)(136003)(26005)(86362001)(2906002)(66556008)(64756008)(76116006)(66476007)(53546011)(7416002)(66446008)(33656002)(4326008)(7696005)(6506007)(66946007)(8676002)(186003)(55016002)(52536014)(110136005)(54906003)(478600001)(71200400001)(9686003)(316002)(8936002)(5660300002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 7Tq+8iOuK3bfeL++D4bln3s+Jwwaklp0U6jb7E19HoGkQ+fJlXWmHsCrM31cPPY48z1Y4IrRKImrb/RIN+pzOwnZD8tmFJM+Lf44h3Ju0q/80gb+t4Arz0isACUYvk7GCAmvzpHzmH0OaX6V7+rTFQMZwB5GU/NT/MDBnd28j/aHHqrlwCUXk1AACgMvkZR0ZaPkam3hMhiHDG+0govyIYXfEw/bnYxluW66px3Zf5nMWR0rQXKseSCRvVOehb82WKSKlA9FgmNCtTOj1b0LFZRhF459TPoz0vU7NTK+6l8kEz7Q8dPz30EMiRToQiHTALKelZsZPQy6OKWnkOB4PUVSCXxQgVmlte7bnllrxXtrHWkQChW1gfJE6/iczFPkbs4uK5xMcUM+H+vlhXn3jnt9PFlNim0iC2XgTi5zEEywLfKKLBVjrkg1SNbin/bTWYGxpOzSZ5KrMyRQgfglWReJj6SbGFuuGCOu/7sdcLU=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2569
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT012.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(396003)(39860400002)(46966005)(356005)(316002)(55016002)(33656002)(5660300002)(110136005)(86362001)(4326008)(8676002)(52536014)(82310400002)(54906003)(8936002)(9686003)(47076004)(6506007)(336012)(53546011)(26005)(186003)(82740400003)(81166007)(7696005)(478600001)(70586007)(70206006)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: cf8685cc-81c1-4ff3-3952-08d800b6793b
X-Forefront-PRVS: 0414DF926F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZfmJ9ooX30p0p4bX8WTQtGEccF0+816clKB9xkwtXTL4wdrxllOBzRnfM3z6gf0GdqqX3huVq9hF2NXWC8mePltCwD2hSjtpHoqsgAfiHN+13rENXIuaFuBQmz5doyE/ZFPepZavClIwwITXtDeGgGUWyJkJAdk2oGJPBy83wHRi3XUlxz+CibW5/fE07cR65WgY2uQtQogqTApr/9lzREt9PoR8m8zMaUp8FCDGNIHQCiLt5TpN8+P+Cycn7Cct+odQ5eON4RiWGudV03UInIAFBmq/vQkoW6QVCR0B4D0VKKRvuRA2GnGlgusERF4f76XzgWz9WGhZ032jHDLuviAOQxxjham2lhZvH1zdeA2lMzstZFX5gUSJcGP0iMCMiLNmo0h7Mz5SiPGvMYmqXQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2020 14:18:28.9536 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ff474325-4157-4d25-9e18-08d800b67f1e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB5030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_071834_019176_572127CD 
X-CRM114-Status: GOOD (  23.78  )
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.40 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [203.126.0.111 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.40 listed in wl.mailspike.net]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Justin He <Justin.He@arm.com>,
 Wei Chen <Wei.Chen@arm.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
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
> Sent: Monday, May 25, 2020 5:17 PM
> To: Richard Cochran <richardcochran@gmail.com>; Jianyong Wu
> <Jianyong.Wu@arm.com>
> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> Mark Rutland <Mark.Rutland@arm.com>; will@kernel.org; Suzuki Poulose
> <Suzuki.Poulose@arm.com>; Steven Price <Steven.Price@arm.com>; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin <Kaly.Xin@arm.com>; Justin He
> <Justin.He@arm.com>; Wei Chen <Wei.Chen@arm.com>; nd <nd@arm.com>
> Subject: Re: [RFC PATCH v12 10/11] arm64: add mechanism to let user
> choose which counter to return
> 
> On 2020-05-24 03:11, Richard Cochran wrote:
> > On Fri, May 22, 2020 at 04:37:23PM +0800, Jianyong Wu wrote:
> >> In general, vm inside will use virtual counter compered with host use
> >> phyical counter. But in some special scenarios, like nested
> >> virtualization, phyical counter maybe used by vm. A interface added
> >> in ptp_kvm driver to offer a mechanism to let user choose which
> >> counter should be return from host.
> >
> > Sounds like you have two time sources, one for normal guest, and one
> > for nested.  Why not simply offer the correct one to user space
> > automatically?  If that cannot be done, then just offer two PHC
> > devices with descriptive names.
> 
> There is no such thing as a distinction between nested or non-nested.
> Both counters are available to the guest at all times, and said guest can
> choose whichever it wants to use. So the hypervisor (KVM) has to support
> both counters as a reference.
> 
It's great that we can decide which counter to return in guest kernel. So we can abandon these code, including patch 9/11 and 10/11, that expose the interface to userspace to do the decision.

> For a Linux guest, we always know which reference we're using (the virtual
> counter). So it is pointless to expose the choice to userspace at all.
> 
So, we should throw these code of deciding counter type in linux driver away and just keep the hypercall service of providing both virtual counter and physical counter in linux to server non-linux guest.
Am I right?

> >
> >> diff --git a/drivers/ptp/ptp_chardev.c b/drivers/ptp/ptp_chardev.c
> >> index fef72f29f3c8..8b0a7b328bcd 100644
> >> --- a/drivers/ptp/ptp_chardev.c
> >> +++ b/drivers/ptp/ptp_chardev.c
> >> @@ -123,6 +123,9 @@ long ptp_ioctl(struct posix_clock *pc, unsigned
> >> int cmd, unsigned long arg)
> >>  	struct timespec64 ts;
> >>  	int enable, err = 0;
> >>
> >> +#ifdef CONFIG_ARM64
> >> +	static long flag;
> >
> > static?  This is not going to fly.
> >
> >> +		 * In most cases, we just need virtual counter from host and
> >> +		 * there is limited scenario using this to get physical counter
> >> +		 * in guest.
> >> +		 * Be careful to use this as there is no way to set it back
> >> +		 * unless you reinstall the module.
> >
> > How on earth is the user supposed to know this?
> >
> > From your description, this "flag" really should be a module
> > parameter.
> 
> Not even that. If anything, the driver can obtain full knowledge of which
> counter is in use without any help. And the hard truth is that it is
> *always* the virtual counter as far as Linux is concerned.

Good!

Thanks
Jianyong 
 
> 
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
