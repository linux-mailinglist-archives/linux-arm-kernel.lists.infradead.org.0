Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A14F3E1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 03:35:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uBP2xHvTFLHkE5OfRcYXQBgj++Y4TEAVMdVHu6AfWQ=; b=gMEq9moYsJqKbz
	zFxKoLQ/6QJQ0xk+5CCmg3dzfBJiJZl6+0zOuXtw8HQqK3TcBqQr33jfZo/WhkOtnbJoSTO8BWa3p
	qzZyNXh7IWgFdTkVbiSyQ2nZMKU9GzLdKN9JyotM6iBbAw+h8xyPnR8A7jLKzmPsBjv+1+P4qpEj8
	5Ad63Wrr0pKb62wF9C0ieSQfswXGvH8J8IY6/Ucpqa3sS6R+1mR9WlSSDMLGCOrxFeLv8D8Ej/OjH
	sChUbAlLk0Od1o+/3zti8wf09z8SOYDYqKXUCA8zdMR0UxdNo0uqNlES1cvB5FYKhesLsK29hV1QK
	xfsp//5lGJoMwIHGKFOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSu7N-0002K0-9k; Fri, 08 Nov 2019 02:35:21 +0000
Received: from mail-eopbgr30070.outbound.protection.outlook.com ([40.107.3.70]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSu7G-0002J9-2E
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 02:35:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PIliT+ZwJAQ302yB2UMh7uMoHcc1AWzo6q6WGkj6Z6M=;
 b=s7EdlzihSAIHNyWg/HOQmXeG+Gqqdh0lmjPnpQQRdmyNMT5D02fwtvkbp/0gAGsXKl/GP3hzHqQBDVTvgeF8Jvg7mVeatllW8z8VzMAvHzzJb+5LGXg8f1udT3OBBW8wqrsT5ZqkAUYukxawN0cum5qV+beXg0Xlq9ojnMx2s+s=
Received: from VI1PR08CA0107.eurprd08.prod.outlook.com (2603:10a6:800:d3::33)
 by AM5PR0801MB1889.eurprd08.prod.outlook.com (2603:10a6:203:49::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.24; Fri, 8 Nov
 2019 02:35:09 +0000
Received: from DB5EUR03FT038.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::207) by VI1PR08CA0107.outlook.office365.com
 (2603:10a6:800:d3::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22 via Frontend
 Transport; Fri, 8 Nov 2019 02:35:09 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT038.mail.protection.outlook.com (10.152.21.84) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.21 via Frontend Transport; Fri, 8 Nov 2019 02:35:09 +0000
Received: ("Tessian outbound 3fba803f6da3:v33");
 Fri, 08 Nov 2019 02:35:06 +0000
X-CR-MTA-TID: 64aa7808
Received: from 88a04053134b.2 (cr-mta-lb-1.cr-mta-net [104.47.0.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 A96A875F-18B3-4220-954F-2F1A74F3A608.1; 
 Fri, 08 Nov 2019 02:35:01 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur01lp2052.outbound.protection.outlook.com [104.47.0.52])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 88a04053134b.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 08 Nov 2019 02:35:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FWXfaidLUpOj/1qpmMklKDxTmVdGj1Gi8upqTC/DulGa79dRnSkP7AbcFucK7ZI1fRVA8XX53SE1noqZhrvJYIp5bH6ALWEJcUyG1Rht4gtT6rNHDnrQlVs9HKW3z8PTtbcNoFkjIe0mhG7ZO7g+4/aXKBSGrGTG8fFJkXBqudGwyDuVQm4nqORdqFuqqX5X/UzB5FICJEpWoTgNyB7Jk/U1295Ftc6IBAGvTd+PzvsF1qRg3J4a9Ut5pn6rE2p+vlkr/WXTJmvLmZo8JWjVURoNVRqydcOjCXxTYzUTqRCn3QtAhsUM0hNA5k4wie1N331f2+3N2V1s2oKBVQPZvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PIliT+ZwJAQ302yB2UMh7uMoHcc1AWzo6q6WGkj6Z6M=;
 b=UYlcNIClOvLiugGo0fTYuUOoLNBiU/Ixn7NvcRMz1+VDVgITeRti2u3rN3mKP/qavo5/FWV1zIEJJKWVdwAr93yCmD7OLiv/TBHkzARJfWpfVTXrNw8WXxbxX4NpJd6452hwJtvCqtpzbUOkH26CJc3n1O0cjy6h/HmUAa7bT/Cdkama9EmAixrmp0K3KfszSeIrX/paueXTR+Ef7WXBaaEq/AiPvyUGBgNtqUenb8N8Xisg//v2NScFsU36qM88CtXIjfZ/CpJB2O5QKxV2IuDdL4rO/cAn9uZYjtYjP3hWUogA3k5xmidkNPDpMky7uAeSANeHL/Z2SwIoR6V9mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PIliT+ZwJAQ302yB2UMh7uMoHcc1AWzo6q6WGkj6Z6M=;
 b=s7EdlzihSAIHNyWg/HOQmXeG+Gqqdh0lmjPnpQQRdmyNMT5D02fwtvkbp/0gAGsXKl/GP3hzHqQBDVTvgeF8Jvg7mVeatllW8z8VzMAvHzzJb+5LGXg8f1udT3OBBW8wqrsT5ZqkAUYukxawN0cum5qV+beXg0Xlq9ojnMx2s+s=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1642.eurprd08.prod.outlook.com (10.168.149.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Fri, 8 Nov 2019 02:34:58 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::453c:d9b6:5398:2294]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::453c:d9b6:5398:2294%8]) with mapi id 15.20.2430.023; Fri, 8 Nov 2019
 02:34:57 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [RFC PATCH v6 4/7] time: Add mechanism to recognize clocksource
 in time_get_snapshot
Thread-Topic: [RFC PATCH v6 4/7] time: Add mechanism to recognize clocksource
 in time_get_snapshot
Thread-Index: AQHVilqW9INaaa6hrkmF99YEVswOAKd/bNoAgAEv+oA=
Date: Fri, 8 Nov 2019 02:34:57 +0000
Message-ID: <HE1PR0801MB16767168475257E9119C3550F47B0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191024110209.21328-1-jianyong.wu@arm.com>
 <20191024110209.21328-5-jianyong.wu@arm.com>
 <alpine.DEB.2.21.1911070852551.1869@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1911070852551.1869@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 9726902c-df6f-42b3-93a3-231d59260141.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c51c1393-0822-4b2b-5297-08d763f44611
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1642:|HE1PR0801MB1642:|AM5PR0801MB1889:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM5PR0801MB188916BD18B6AB1DFFD59487F47B0@AM5PR0801MB1889.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 0215D7173F
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(376002)(39860400002)(366004)(189003)(199004)(13464003)(71190400001)(71200400001)(74316002)(55016002)(3846002)(8676002)(6916009)(25786009)(9686003)(6116002)(81166006)(81156014)(2906002)(6436002)(7736002)(256004)(7416002)(14454004)(4326008)(229853002)(52536014)(6246003)(14444005)(305945005)(316002)(6506007)(54906003)(26005)(99286004)(7696005)(86362001)(76176011)(5660300002)(76116006)(102836004)(55236004)(53546011)(486006)(11346002)(476003)(446003)(478600001)(8936002)(66066001)(186003)(64756008)(66556008)(66446008)(33656002)(66476007)(66946007)(87944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1642;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 0sDQ5v4bsIlURXo9/J6EIcRpiTRwufiFwIdJLM+1sYVZoJpj62Hw9tbqHL1wrCRXHMxQ70NuU14MGqxwZPdk5dmlSBBCsnj5XNj3PtnldRplsYtJz3dYHS0sKlzzR3M7wSS2xIiWnxnb8KjA+bd+GrBRLGRYqZr6PcFznuci4Ikv2IThN9nHFuIU6XCLOLy7ZwADkoVvR8EtGI48z4FB3sAHFQovSTl3y+3xxbcN5HA54EMnUrCGEkyar/cnDVzE9cdKz3oFfkWryDE2cMogyzftobqCa2ZIeeK5vX8qhcA40DoRD2cnDi4pg616Qywk8Szzean0hP7UTReh0W5N+8AW0i145/5UMFcoVAOXAGW66/YEq8sl1xvt8om1sRIG6o9MnjTZbCmgyYs42/IvN0OeKUnw07JcjqTyXfYKhpEd35q0c/QM3VduEi2hteTg
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1642
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT038.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(396003)(1110001)(339900001)(199004)(13464003)(189003)(52536014)(23726003)(5660300002)(3846002)(6116002)(6246003)(356004)(2906002)(25786009)(97756001)(316002)(86362001)(22756006)(14454004)(76130400001)(46406003)(26826003)(478600001)(102836004)(9686003)(305945005)(7736002)(66066001)(26005)(7696005)(76176011)(4326008)(126002)(476003)(33656002)(8676002)(6506007)(53546011)(486006)(229853002)(99286004)(6862004)(105606002)(50466002)(186003)(8936002)(70206006)(54906003)(336012)(81156014)(81166006)(74316002)(47776003)(55016002)(8746002)(446003)(11346002)(14444005)(70586007)(87944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB1889;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: af5d8f6a-ae40-4735-84c2-08d763f43f2d
NoDisclaimer: True
X-Forefront-PRVS: 0215D7173F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6I6i2PEqfSEWao6AIOmkkXavNeb8H6J+GNf8s3qUXiCiHGhaLu0RDB01BZfazPDhzq01pbqApjaUo4tiLo0Ms9INgXBVVawKvkbuhkRD9/5x/ksLjcrMYxWoWCciIghp+Q9uSy02BEcqpNdo6jDrKtLwR7FRcDf5N7F8/7lk4wclqOMSBllBYV0ZtvYzPyXFS6QJbK+o3uCdhYgfIDPnybUtqnb5Pc4DmBjhSNoT0WnG8O2YGC48OC7btMqI7DDCrKdW+HYT3lwZwir3ZZyGElfnMmZQ43ZSjo2CbYTQocYMY38GL4vsPf4vlKYendq1SMZRtfaUttrsr0i8HFgqVVxvZEhHxoR91+N8MduIWt9xUyqkhJZXriAhGoqVV7JHV7PjtS3g9BTkAwgGGBWruMwu/odGq9mHR4wdKlNwDTzyYFDSfSuhkrmWIzC0WYmL
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2019 02:35:09.4414 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c51c1393-0822-4b2b-5297-08d763f44611
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1889
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_183514_112858_F9A9C35D 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.70 listed in list.dnswl.org]
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
> Sent: Thursday, November 7, 2019 3:56 PM
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
> Subject: Re: [RFC PATCH v6 4/7] time: Add mechanism to recognize
> clocksource in time_get_snapshot
> 
> On Thu, 24 Oct 2019, Jianyong Wu wrote:
> > From: Thomas Gleixner <tglx@linutronix.de>
> >
> > In some scenario like return device time to ptp_kvm guest, we need
> > identify the current clocksource outside core time code.
> >
> > This patch add a mechanism to recognize the current clocksource by
> > export clocksource id in time_get_snapshot.
> 
> Please check Documentation/process/submitting-patches.rst and search for
> 'This patch'.
> 

Yeah, the expression should be more impersonal.

> > diff --git a/include/linux/clocksource.h b/include/linux/clocksource.h
> > index b21db536fd52..ac8016b22734 100644
> > --- a/include/linux/clocksource.h
> > +++ b/include/linux/clocksource.h
> > @@ -19,6 +19,7 @@
> >  #include <linux/of.h>
> >  #include <asm/div64.h>
> >  #include <asm/io.h>
> > +#include <linux/clocksource_ids.h>
> 
> Please place that include to the other linux includes. You might notice that
> there is ordering here.
>
Ok, 
 
> But where is that include? It's not part of that series, so how is this supposed
> to compile?

OMG! Sorry, I added this file when I prepared my patches but missed to include it into this patch! This must be avoid latter.

Thanks
Jianyong

> 
> Thanks,
> 
> 	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
