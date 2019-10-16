Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4616CD8D28
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlyoO7EIDRoP0dugahw5W3mfZmkiEoZE+iJAAdsPy/k=; b=Sbzop+YQq3kHe/
	IGkKBcnHHux42uPvzYCouNugqA+NAh0gte09XfT4QySuNePeNxdwef8rOKC1S1+lHLavR51p5yzVD
	pgFPPQSB5mZYPG2Y4QL8VHxXXOV1DxiE+uZ0D7e5u02puUseDkqzpjV665itOUc1W/H81hNhWops9
	WodTIlkMqk2W3m0SELo3/9cC59z84huFROmXbJ15846V/MHNrdKssqxqG37h61Nh0gTAJeBu0l+kP
	W5cWRybSmzbvLBc/XlMf10LN/xH0f8I+O188bvPdg3o0Dzfrhm2B3gzcIcHPSMUrD4eWU1L3Uibjj
	aG0u/CoZoEIbQtK/0khQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKg8O-0005B9-Kf; Wed, 16 Oct 2019 10:02:24 +0000
Received: from mail-eopbgr40069.outbound.protection.outlook.com ([40.107.4.69]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKg8E-0005AV-Bn
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:02:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K8TRsqDwVZn08Mk6fOZCA70fgGESjA+hOWLPYRCiXto=;
 b=wATN8ippo+L3IIKTbleck138291Hh6xG9K51Pymsd0+9NCchG13HhVuVuppm50N3N4kCGgqWbzb9/X40dg03eAta0ypRaadGsSzgupJsHiYC6MC8X6hG503i4oxjvCu6hXtUqihvywMgpbEWXPfPwUD3kg2ck6quEkcRSqwjx5Q=
Received: from DB6PR0802CA0042.eurprd08.prod.outlook.com (2603:10a6:4:a3::28)
 by AM0PR08MB3634.eurprd08.prod.outlook.com (2603:10a6:208:d6::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.19; Wed, 16 Oct
 2019 10:02:09 +0000
Received: from AM5EUR03FT016.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::207) by DB6PR0802CA0042.outlook.office365.com
 (2603:10a6:4:a3::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.17 via Frontend
 Transport; Wed, 16 Oct 2019 10:02:09 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT016.mail.protection.outlook.com (10.152.16.142) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Wed, 16 Oct 2019 10:02:07 +0000
Received: ("Tessian outbound 6481c7fa5a3c:v33");
 Wed, 16 Oct 2019 10:01:47 +0000
X-CR-MTA-TID: 64aa7808
Received: from 4b22b2b9039b.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.4.59]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 9CAA2EE6-93E7-411B-99E7-1C0F982A53A8.1; 
 Wed, 16 Oct 2019 10:01:47 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur02lp2059.outbound.protection.outlook.com [104.47.4.59])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4b22b2b9039b.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 16 Oct 2019 10:01:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fzjzez7U/Za8jp0aP7kLDpg2aHNUGjrmrsYqcOZqgMTHn5cs86Oh8fZZBS/X618N8bHLz4u1EBY5pNl9CJ+58d6azB72T9X949ciaevXuAKPvkvhbEHv4B9wV71ERlFxgdXPHVawcWK2is9lC27QPQZpogJJhLORKs+Ov5wE0E/arQEweopq2WdhFcCRwtVUX1/0EK41xHQiv9xsq5P4nHXvCjx2ne/4YJHqnFxX6AEh7ycUSeOOinPVf6XEFXvUFwsXyguj9pb8V/BuY84k5nYQI2XFwH31cJW+rlwm8nrJH7oPcsSumy7tPCdIN5cP9ADQyKW9+qNP8WuH6dGqOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K8TRsqDwVZn08Mk6fOZCA70fgGESjA+hOWLPYRCiXto=;
 b=UDaQkwYVplz8O9Yw8eLAjtbB/L+90zEHa6leAlkKpmT8i+L5YMPQVO+d/0SnRBx5QXq0qULYlaQNBVehExNCbqELf5y3XclgJD2fTWeUUBVU+eg+1/ghtrAXB6gcuCXc0zcrPs9wtvWQ1XCjXhQuGbFTzEUdXV6Awu96YUZ1wuDt3b8pa9bJSGvg9aalXzM6JZYWuvkX1smRKVnOAR96zhK6y+4vOh61doPRkZs6j9/RBP6LZH8PF1ssrWLmgRbBAlPRPZ8kTALH2fSRTicHs6+pjqxlPItV4V9TkPulWzklB5ZKKzBeOEhm5h11MtXtwv+FGgTAtfeiauo8BvlLbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K8TRsqDwVZn08Mk6fOZCA70fgGESjA+hOWLPYRCiXto=;
 b=wATN8ippo+L3IIKTbleck138291Hh6xG9K51Pymsd0+9NCchG13HhVuVuppm50N3N4kCGgqWbzb9/X40dg03eAta0ypRaadGsSzgupJsHiYC6MC8X6hG503i4oxjvCu6hXtUqihvywMgpbEWXPfPwUD3kg2ck6quEkcRSqwjx5Q=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1865.eurprd08.prod.outlook.com (10.168.94.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.22; Wed, 16 Oct 2019 10:01:38 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d%6]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 10:01:38 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: RE: [PATCH v5 3/6] timekeeping: Add clocksource to
 system_time_snapshot
Thread-Topic: [PATCH v5 3/6] timekeeping: Add clocksource to
 system_time_snapshot
Thread-Index: AQHVg0Y1dymHk2OcFEiql6VhclDWladcI0kAgADkGvA=
Date: Wed, 16 Oct 2019 10:01:38 +0000
Message-ID: <HE1PR0801MB1676B967505C44D385F21E6DF4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-4-jianyong.wu@arm.com>
 <alpine.DEB.2.21.1910152047490.2518@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1910152047490.2518@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 97110afe-7aa1-40f3-b592-beb9d63d0fb8.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 5f74a914-fa18-4110-956f-08d7521fe764
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1865:|HE1PR0801MB1865:|AM0PR08MB3634:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB3634BC5D9A077A1909962C81F4920@AM0PR08MB3634.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:3631;OLM:3631;
x-forefront-prvs: 0192E812EC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(54534003)(13464003)(189003)(199004)(9686003)(86362001)(6436002)(55016002)(316002)(3846002)(71200400001)(229853002)(11346002)(486006)(446003)(6116002)(66066001)(476003)(71190400001)(76176011)(186003)(55236004)(6506007)(99286004)(53546011)(54906003)(7696005)(256004)(102836004)(26005)(33656002)(14444005)(7736002)(7416002)(74316002)(305945005)(52536014)(5660300002)(25786009)(2906002)(6916009)(478600001)(8936002)(76116006)(66946007)(4326008)(66556008)(66446008)(64756008)(6246003)(14454004)(81166006)(66476007)(81156014)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1865;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 5rFsStGDx454gFQfOeewDLrIT/KDRNNAgij4zaGRt8E8CoI26BDxhI7vLUVQkU82v5jxAbYUfguyW9NXb7Kqf7GOedFEzEWv840pzNg7tn4qPRjek3T0cMyoSaSlIsKnJ757kEHQm9xDXU/IbGA7ARKymTGZ8t1BXGkLFkuQwKHyP27y/Tn96WjTFWxLZHOCLUvX/fgJxgO9zbOrh4Alw8Ow/6d71ScydieC6EejbtA4r6i+BewZQJSvi2UzDBMxZ6ID7mVwAM8m+bT6iv/ElKFH3P9xGmGut2mAnYs+fxWs9crQ4CHon9MV0LKjmM1mOmthi4dORJ+68eq2lVRdJMgkyFM4+AEK/rfLMUF6evfE9NYAZ3MQz4dbl9mrUUAFMniSAfvRmeQKruxhtn++FiQ58XzlamcRVTSfSkCNymU=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1865
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT016.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(54534003)(13464003)(199004)(189003)(50466002)(2906002)(63350400001)(14454004)(7696005)(97756001)(486006)(6116002)(3846002)(126002)(55016002)(14444005)(446003)(4326008)(25786009)(74316002)(23726003)(6862004)(356004)(11346002)(186003)(336012)(26005)(6506007)(76176011)(53546011)(102836004)(99286004)(52536014)(9686003)(6246003)(229853002)(476003)(5660300002)(70586007)(86362001)(36906005)(26826003)(316002)(76130400001)(478600001)(22756006)(54906003)(7736002)(305945005)(47776003)(81156014)(8936002)(8676002)(8746002)(81166006)(33656002)(66066001)(46406003)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB3634;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 60e1eb18-e756-47a4-17b7-08d7521fd5dd
NoDisclaimer: True
X-Forefront-PRVS: 0192E812EC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ReNy2+Exqcl/Z+kxHCvOX4G+X6jGr9ophbhP5t7SSVRHGhuvYe/62QJsSeN73/TTTXw3xCUnm6SRy94GydJFnMBDGBbnoAY7wO0TDNppzFB8DRIUvYFNch9AtGf+BagxZVp4C/EsAsq8mP9xzk9+/Jf3udXbK148WKOFr3Z3gdMfzD0/d3KQWqrjBMIXnrGQ0Mu+rARPMCRENskLq5HP732VzwUjtw0Z6bOY23ZOmEj83t+a9syhmYlFks7VjTu4L7Be/XrKi9E4XsXk+I/xsaceB1Dk6cUzG9oLQCN9BBCG3D+cBXd1G+p3+qTpaZ7trrrCPfbuBbo2JTwEgfHFkwNM6Md4E3udBlh9jYlbyLW2y6zLnyfqjs0LkDuX+TUhjOz+FGr3OQW9/nXd+ikav7WyYS+7WfnRuU4d/M/YD7E=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2019 10:02:07.5056 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f74a914-fa18-4110-956f-08d7521fe764
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3634
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_030214_545712_6300D513 
X-CRM114-Status: GOOD (  21.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.69 listed in list.dnswl.org]
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
> Sent: Wednesday, October 16, 2019 4:13 AM
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
> Subject: Re: [PATCH v5 3/6] timekeeping: Add clocksource to
> system_time_snapshot
> 
> On Tue, 15 Oct 2019, Jianyong Wu wrote:
> 
> > Sometimes, we need check current clocksource outside of timekeeping
> > area. Add clocksource to system_time_snapshot then we can get
> > clocksource as well as system time.
> 
> This changelog is telling absolutely nothing WHY anything outside of the
> timekeeping core code needs access to the current clocksource. Neither
> does it tell why it is safe to provide the pointer to random callers.
> 
Really need more information.

> > +/*
> > + * struct system_time_snapshot - simultaneous raw/real time capture
> with
> > + *	counter value
> > + * @sc:		Contains clocksource and clocksource counter value
> to produce
> > + * 	the system times
> > + * @real:	Realtime system time
> > + * @raw:	Monotonic raw system time
> > + * @clock_was_set_seq:	The sequence number of clock was set
> events
> > + * @cs_was_changed_seq:	The sequence number of clocksource change
> events
> > + */
> > +struct system_time_snapshot {
> > +	struct system_counterval_t sc;
> > +	ktime_t		real;
> > +	ktime_t		raw;
> > +	unsigned int	clock_was_set_seq;
> > +	u8		cs_was_changed_seq;
> > +};
> > +
> >  /*
> >   * Get cross timestamp between system clock and device clock
> >   */
> > diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
> > index 44b726bab4bd..66ff089605b3 100644
> > --- a/kernel/time/timekeeping.c
> > +++ b/kernel/time/timekeeping.c
> > @@ -983,7 +983,8 @@ void ktime_get_snapshot(struct
> system_time_snapshot *systime_snapshot)
> >  		nsec_raw  = timekeeping_cycles_to_ns(&tk->tkr_raw, now);
> >  	} while (read_seqcount_retry(&tk_core.seq, seq));
> >
> > -	systime_snapshot->cycles = now;
> > +	systime_snapshot->sc.cycles = now;
> > +	systime_snapshot->sc.cs = tk->tkr_mono.clock;
> 
> The clock pointer can change right after the store, the underlying data can be
> freed .....
> 

Yeah, need put it into seqcount region.

> Looking at the rest of the patch set the actual usage site is:
> 
> > +       case ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID:
> > +               ktime_get_snapshot(&systime_snapshot);
> > +               if (!is_arm_arch_counter(systime_snapshot.sc.cs))
> > +                       return kvm_psci_call(vcpu);
> 
> and that function does:
> 
> > +bool is_arm_arch_counter(void *cs)
> 
> void *? Type safety is overrated, right? The type is well known....
> 
> +{
> +       return (struct clocksource *)cs == &clocksource_counter;
> 
> That nonsensical typecast does not make up for that.
> 

It's really bad code and need fix.

> +}
> 
> So while the access to the pointer is actually safe, this is not going to happen
> simply because you modify a generic interface in a way which will lead the
> next developer to insane assumptions about the validity of that pointer.
> 
> While the kernel is pretty lax in terms of isolation due to the nature of the
> programming language, this does not justify to expose critical internals of
> core code to random callers. Guess why most of the timekeeping internals
> are carefully shielded from external access.
> 
> Something like the completely untested (not even compiled) patch below
> gives you access to the information you need and allows to reuse the
> mechanism for other purposes without adding is_$FOO_timer() all over the
> place.
> 
> Thanks,
> 
> 	tglx
> 
> 8<--------------
> --- a/include/linux/clocksource.h
> +++ b/include/linux/clocksource.h
> @@ -9,6 +9,7 @@
>  #ifndef _LINUX_CLOCKSOURCE_H
>  #define _LINUX_CLOCKSOURCE_H
> 
> +#include <linux/clocksource_ids.h>
>  #include <linux/types.h>
>  #include <linux/timex.h>
>  #include <linux/time.h>
> @@ -49,6 +50,10 @@ struct module;
>   *			400-499: Perfect
>   *				The ideal clocksource. A must-use where
>   *				available.
> + * @id:			Defaults to CSID_GENERIC. The id value is
> captured
> + *			in certain snapshot functions to allow callers to
> + *			validate the clocksource from which the snapshot
> was
> + *			taken.
>   * @read:		returns a cycle value, passes clocksource as argument
>   * @enable:		optional function to enable the clocksource
>   * @disable:		optional function to disable the clocksource
> @@ -91,6 +96,7 @@ struct clocksource {
>  	const char *name;
>  	struct list_head list;
>  	int rating;
> +	enum clocksource_ids id;
>  	int (*enable)(struct clocksource *cs);
>  	void (*disable)(struct clocksource *cs);
>  	unsigned long flags;
> --- /dev/null
> +++ b/include/linux/clocksource_ids.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _LINUX_CLOCKSOURCE_IDS_H
> +#define _LINUX_CLOCKSOURCE_IDS_H
> +
> +/* Enum to give clocksources a unique identifier */ enum
> +clocksource_ids {
> +	CSID_GENERIC		= 0,
> +	CSID_ARM_ARCH_COUNTER,
> +	CSID_MAX,
> +};
> +

Does this mean I must add clocksource id for all kinds of ARCHs and update all the code which have checked clocksource in the old way?

Thanks
Jianyong

> +#endif
> --- a/include/linux/timekeeping.h
> +++ b/include/linux/timekeeping.h
> @@ -2,6 +2,7 @@
>  #ifndef _LINUX_TIMEKEEPING_H
>  #define _LINUX_TIMEKEEPING_H
> 
> +#include <linux/clocksource_ids.h>
>  #include <linux/errno.h>
> 
>  /* Included from linux/ktime.h */
> @@ -228,15 +229,17 @@ extern void timekeeping_inject_sleeptime
>   * @cycles:	Clocksource counter value to produce the system times
>   * @real:	Realtime system time
>   * @raw:	Monotonic raw system time
> + * @cs_id:	The id of the current clocksource which produced the
> snapshot
>   * @clock_was_set_seq:	The sequence number of clock was set
> events
>   * @cs_was_changed_seq:	The sequence number of clocksource change
> events
>   */
>  struct system_time_snapshot {
> -	u64		cycles;
> -	ktime_t		real;
> -	ktime_t		raw;
> -	unsigned int	clock_was_set_seq;
> -	u8		cs_was_changed_seq;
> +	u64			cycles;
> +	ktime_t			real;
> +	ktime_t			raw;
> +	enum clocksource_ids	cs_id;
> +	unsigned int		clock_was_set_seq;
> +	u8			cs_was_changed_seq;
>  };
> 
>  /*
> --- a/kernel/time/clocksource.c
> +++ b/kernel/time/clocksource.c
> @@ -921,6 +921,9 @@ int __clocksource_register_scale(struct
> 
>  	clocksource_arch_init(cs);
> 
> +	if (WARN_ON_ONCE((unsigned int)cs->id >= CSID_MAX))
> +		cs->id = CSID_GENERIC;
> +
>  	/* Initialize mult/shift and max_idle_ns */
>  	__clocksource_update_freq_scale(cs, scale, freq);
> 
> --- a/kernel/time/timekeeping.c
> +++ b/kernel/time/timekeeping.c
> @@ -979,6 +979,7 @@ void ktime_get_snapshot(struct system_ti
>  	do {
>  		seq = read_seqcount_begin(&tk_core.seq);
>  		now = tk_clock_read(&tk->tkr_mono);
> +		systime_snapshot->cs_id = tk->tkr_mono.clock->id;
>  		systime_snapshot->cs_was_changed_seq = tk-
> >cs_was_changed_seq;
>  		systime_snapshot->clock_was_set_seq = tk-
> >clock_was_set_seq;
>  		base_real = ktime_add(tk->tkr_mono.base,
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
