Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E95B138F4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:38:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9TU0rU/x/h+hR/trBILTA/ulk6gljcCA0WZcI2wDRcs=; b=RbWWf5EqRHaO3y
	xK0hT90alRZsJ/Ddvlz5nK6eqS0ggreum068QQEFOVfVacHPCE8Oy7aes9sIj24PmnjTz21gryxK6
	kIgNfDEGpeWPfzkliPR6AKjE0GBoXIAjmue5v69LvguLyPX5ntYnj9RewsBWz/HQpC1uZbQppdQSC
	DHeuqBKxJGJiLvzZm/6xKcyPX+MlsZDuMkfVcTmaXnHLibJvYMRfYXJZAgFLUnjoJZU5s+Lt34eE1
	W2dRQW8xmWi11b368IZkCy1N9VKW7FYqFfd4bvVND6yIhxYHJeKWQVjI5xBuxmF5qm75rf7qbP0ds
	eJ8iR4ug2OBM9DyV4rnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqx6q-0006ED-DG; Mon, 13 Jan 2020 10:38:12 +0000
Received: from mail-eopbgr150051.outbound.protection.outlook.com
 ([40.107.15.51] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqx6f-0006DW-I4
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:38:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y2IsnjHPw96qnN4tKtlGg9Dneuyk7M2uLULt5ulWWvg=;
 b=Hzw8veuBLudHI5/cPbn6T4lfzelgBlG8xsgBNpSOBbnxHSuOGQ9wlxVK+LT+NqVNOawoGko6YnICovZW7cXnMRCr5GNBAIdoWWqdj3LPpXVdhcTdwn5y7g7zunhlsAQQwpPjTorI4Dz3AmPhACVQ/JnshOyM4nyTgynnVsCR4Ss=
Received: from HE1PR08CA0063.eurprd08.prod.outlook.com (2603:10a6:7:2a::34) by
 AM6PR08MB4868.eurprd08.prod.outlook.com (2603:10a6:20b:c5::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Mon, 13 Jan 2020 10:37:57 +0000
Received: from VE1EUR03FT028.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::204) by HE1PR08CA0063.outlook.office365.com
 (2603:10a6:7:2a::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9 via Frontend
 Transport; Mon, 13 Jan 2020 10:37:57 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT028.mail.protection.outlook.com (10.152.18.88) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 13 Jan 2020 10:37:57 +0000
Received: ("Tessian outbound ca1df68f3668:v40");
 Mon, 13 Jan 2020 10:37:57 +0000
X-CR-MTA-TID: 64aa7808
Received: from b4b015b4fabf.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 FC6CFA66-DC93-421E-A3D0-E669EC97D769.1; 
 Mon, 13 Jan 2020 10:37:51 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b4b015b4fabf.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 13 Jan 2020 10:37:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gxwOJYLMmKI5fdXPC3bLONt+MZl4j+Bhqgf0vjK21xOOmo5BMacbIuW96sfzxIOOcKEbm5OrNdlXuMrPVz4a5KdJfBu2sLmOgHYyOVfOL/ab0X9/j0RwBdsmqqvRD3uOKhjNC+yN8WyYTcSqqhlZAsaZksdlDoMHxJ0k6kVNpU2R7WGtV/rFZQIsQCDQWOWbZk4UAQQ7aVgBFVZD3U8ghuTi0bTOplFhMZe3YBBxicT9h428onL/4WR+SzUOLeLEsn7pwFfVT8jdzRyawWcqecjKi8jIfo2D6Z9H+pskHxW0dln+Q/NjrU6qsI2yOVRNMk0VcaiVAhf+NqH/S8BWQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y2IsnjHPw96qnN4tKtlGg9Dneuyk7M2uLULt5ulWWvg=;
 b=kWphFGLffkSjAXLt21pvZpF+6a4h4DvZPGUSenINXvpm/5wbUXsWUeHtoGdjSvSUFmPLVoVrzpCrGIBKc+EXW/macLYQWYTj+wOlZgYs/z4xPgtsbu9YG4eGPHERx2uBoQuSV9dkA2rAPZ0+MRM/lfd9WeqMIHGNw+tTSGQK8bzz3fpUzwCCBOLDGmB19bLgb2Rm2veNRm7zog2pZXea6d+o5AVnEACRNZrEpFy9O8zNggbjSxLQcguQURoEkZR9Exw9x9Txts6bA0Dt1lCAGpLKGIU4LhyOYav6X2UaMnYY/KUv+8GGHkslcGsChJIloV60F8IJSllQUqMi03AEKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y2IsnjHPw96qnN4tKtlGg9Dneuyk7M2uLULt5ulWWvg=;
 b=Hzw8veuBLudHI5/cPbn6T4lfzelgBlG8xsgBNpSOBbnxHSuOGQ9wlxVK+LT+NqVNOawoGko6YnICovZW7cXnMRCr5GNBAIdoWWqdj3LPpXVdhcTdwn5y7g7zunhlsAQQwpPjTorI4Dz3AmPhACVQ/JnshOyM4nyTgynnVsCR4Ss=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB2025.eurprd08.prod.outlook.com (10.168.95.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Mon, 13 Jan 2020 10:37:48 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f%8]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 10:37:48 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
Thread-Topic: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
Thread-Index: AQHVrwu1ZTEnzkrQbEOo/hXDFqaU6affG9SAgALmpVCAADyUAIABmc4AgAAMSACABLWzgA==
Date: Mon, 13 Jan 2020 10:37:48 +0000
Message-ID: <HE1PR0801MB16765F2905CD0F381E33AD9EF4350@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <20191210034026.45229-8-jianyong.wu@arm.com>
 <ca162efb3a0de530e119f5237c006515@kernel.org>
 <HE1PR0801MB1676EE12CF0DB7C5BB8CC62DF4390@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ee801dacbf4143e8d41807d5bfad1409@kernel.org>
 <HE1PR0801MB16765B52E5DCD8EA480EDABFF4380@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <a85deebc23c1fa77e6f70b6eaef22a34@kernel.org>
In-Reply-To: <a85deebc23c1fa77e6f70b6eaef22a34@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: dc938f51-5418-4b65-a328-0b2ce92da0b7.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 41192f17-ae3a-4a40-32ba-08d79814a7a2
X-MS-TrafficTypeDiagnostic: HE1PR0801MB2025:|HE1PR0801MB2025:|AM6PR08MB4868:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB4868790857B13D86165738F1F4350@AM6PR08MB4868.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: True
x-ms-oob-tlc-oobclassifiers: OLM:3173;OLM:3173;
x-forefront-prvs: 028166BF91
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(39860400002)(366004)(136003)(189003)(199004)(8676002)(7416002)(55016002)(81156014)(71200400001)(9686003)(86362001)(4326008)(2906002)(81166006)(55236004)(53546011)(76116006)(66446008)(54906003)(6506007)(7696005)(6916009)(33656002)(66946007)(66476007)(66556008)(478600001)(5660300002)(64756008)(26005)(52536014)(316002)(8936002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB2025;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: rSkPb1/C+8sPgsge7r6JI+ZAKnU78qHmaIlm8zIbY43ZZlnFAcBFE39u8u4fpCnPvddQMc/0IXT4uKgw24lMjZ8jjEYa2q8fbLpVhpHx8dZFg63pUc8c/T4DX+OyN5CP9IQnYmO+igVgF8L9ex/FP3xtZlbyaKiP8Of690uZwALQ3uoHiCUcX8Oeb/q61wjUX7VrvxGGAyyGPvTiYEYNRJVq97qs3Z/H03ygWA3E2BUYM+DQ0HYrAq2vcODTngmRZBVvdf8ISp5tZKDmvivAf1OJCzAK7Gv+IrPHAI5wAzZK/+kIvOXGB//VcJ8/62w7ieTmB2aCpfB7R978ft4BxHuwEwdTsjuEPkkCr8VShb8mYgt+aFJUqkQJ3DazFAENVcx3dxaJoeyIns8Znub+AcupC8ma8dVcCwtfnysFCjWOXqSV7m3yh6480O2yCg54
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2025
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT028.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(376002)(199004)(189003)(6506007)(54906003)(36906005)(478600001)(26826003)(316002)(70206006)(336012)(70586007)(55016002)(9686003)(53546011)(7696005)(4326008)(33656002)(186003)(6862004)(26005)(8676002)(81166006)(81156014)(52536014)(2906002)(5660300002)(356004)(86362001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB4868;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 8a655d6e-1410-4fec-8c1b-08d79814a27c
X-Forefront-PRVS: 028166BF91
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A+PE9Ih/nQpUsEQFEJcFW0g5WQaoSiVmXp0hZcXUBsslxshaiy41dRby3tPBKPLiu8RLH/X8j2j7MhgL2m0GbilrRsmbp9++6TdNyNS6FWpbA1M2LJSZHBhAt31M9iOsRNcMNHODlbbfnUJdioR+tPTeYvN9TfMlzNveaZcFmENyL8QaAOertjbNha+vkJ+ZVU2OZMxAIaY5se42aIHc5xl2qVueHUjjvBtzAPOqk/2nLLQqea5RIMng2eTkLOXDOX7GCTeIlNQerS/0CdFqmdfiQyonbTAKg629rOQJrNjPNGX5csydII2WoFgTGr3HqeReRvtDD63VgsIY8br8vM4MdNa/85pZXPobQLeXEUFOATYfqwj3FjZhxxp/rjz6qSkuwSQdTkGhbVOyjJJd5q8cgaVKcYl0/V1y4GEzCAFaKXK/AUlEWkoMlLQ7qB4d
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2020 10:37:57.4336 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 41192f17-ae3a-4a40-32ba-08d79814a7a2
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4868
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_023801_601708_6A24057C 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.51 listed in list.dnswl.org]
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
> Sent: Friday, January 10, 2020 6:35 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; Steven Price
> <Steven.Price@arm.com>; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; kvmarm@lists.cs.columbia.edu;
> kvm@vger.kernel.org; Steve Capper <Steve.Capper@arm.com>; Kaly Xin
> <Kaly.Xin@arm.com>; Justin He <Justin.He@arm.com>; nd <nd@arm.com>
> Subject: Re: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
> 
> Hi Jianyong,
> 
> On 2020-01-10 10:15, Jianyong Wu wrote:
> > Hi Marc,
> 
> [...]
> 
> >> >> > +	ktime_overall = hvc_res.a0 << 32 | hvc_res.a1;
> >> >> > +	*ts = ktime_to_timespec64(ktime_overall);
> >> >> > +	*cycle = hvc_res.a2 << 32 | hvc_res.a3;
> >> >>
> >> >> So why isn't that just a read of the virtual counter, given that
> >> >> what you do in the hypervisor seems to be "cntpct - cntvoff"?
> >> >>
> >> >> What am I missing here?
> >> >>
> >> > We need get clock time and counter cycle at the same time, so we
> >> > can't just read virtual counter at guest and must get it from host.
> >>
> >> See my comment in my reply to patch #6: *Must* seems like a very
> >> strong word, and you don't explain *why* that's better than just
> >> computing the total hypercall cost. Hint: given the frequency of the
> >> counter (in the few MHz
> >> range) vs the frequency of a CPU (in the multiple GHz range, and with
> >> an IPC close enough to 1), I doubt that you'll see the counter making
> >> much progress across a hypercall.
> >>
> > Sorry, I will avoid to use those strong words.
> >
> > It's really the case that the hypercall won't across cycle in general.
> > But sometimes, kernel preempt
> > may happen in the middle of the hypercall which we can't assume how
> > long before schedule back. so it's better capture them together at the
> > same time.
> 
> Fair enough. Please document the rational, as I guess others will ask the
> same questions.
> 
Ok

> Then the problem to solve is that of the reference counter, as you so far
> assume the virtual counter. I guess you need to be able to let the guest
> select the reference counter when calling the PTP service.
> 
I could not come up with an idea about the point where the guest give this info of counter value.
Where we give that interface to ptp service, as it's not a user space application.

> [...]
> 
> > By the way, does nested virtualization diff between arm64 and arm32?
> 
> There is no nested virt for 32bit (it is explicitly forbidden by the architecture).
>  
Ok, thanks

Thanks
Jianyong 

>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
