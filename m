Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70333C0304
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 12:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TCFmFHh7jsT9nLbtC1YEsyjw4AvPRZ1rciAM0xnuIs=; b=uV4tRwQNoGuiSK
	nPfpuSrgF2Kmd+/FRmPSMUHzw+I1Qt1wMUlFH3WqlBF5s41RkGLgVZd3ej9HfeMjfKMePUyThiMwI
	CXJIWG92wcfJuJUaPx0yD52TA5WW49lSphBhjp3SQvylbFz9odnyHVPMbYiqO3dscNFz+JAD/uWzh
	8fj7NCB6VSWX57+ImYxIJiATHjA4W8wLjvF+V4CYv8YHm7W329d1SyZfvFum2k5h2y7/CME27Gc3I
	osCWfNlYQe8xtcA2bzka9IshOKi4waSQ9nIHuSq9tVnNg+MNt1FATxaxTNhAe0PBhQl2WuGmPm1ZH
	9k6mIFQu1cLJOrugb6ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDnD8-0001yX-Pi; Fri, 27 Sep 2019 10:10:50 +0000
Received: from mail-eopbgr80084.outbound.protection.outlook.com ([40.107.8.84]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDnCz-0001wj-QO
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 10:10:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6mCgbSjpcicQutl8OZMW12/8vRt7tLcsTSj+sJ5NLIc=;
 b=cz+U7PaCmtkxbpmCy4mu8fba667EP1PNGZAU0ymegRmioqscJvfejbxNaVb6WKxh0Gp3n6SNB0xB8XqqjeL6tyozrDgaF7MBzFyEIQbu4m3nB0o+5knE2VEkOB1KO50Yo0cDbIvAVREJM+T/AMMDJYNW/yxg1JDtr5np43yCMsY=
Received: from VI1PR08CA0089.eurprd08.prod.outlook.com (2603:10a6:800:d3::15)
 by DB8PR08MB5193.eurprd08.prod.outlook.com (2603:10a6:10:e6::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.23; Fri, 27 Sep
 2019 10:10:30 +0000
Received: from DB5EUR03FT007.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::206) by VI1PR08CA0089.outlook.office365.com
 (2603:10a6:800:d3::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.17 via Frontend
 Transport; Fri, 27 Sep 2019 10:10:29 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT007.mail.protection.outlook.com (10.152.20.148) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Fri, 27 Sep 2019 10:10:28 +0000
Received: ("Tessian outbound 0cf06bf5c60e:v33");
 Fri, 27 Sep 2019 10:10:17 +0000
X-CR-MTA-TID: 64aa7808
Received: from 711ae29de496.4 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.4.53]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 7D7C44AC-D6DA-4185-A205-6ED37E819C1E.1; 
 Fri, 27 Sep 2019 10:10:12 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur02lp2053.outbound.protection.outlook.com [104.47.4.53])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 711ae29de496.4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Fri, 27 Sep 2019 10:10:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aS7UdA97NUUjXgNdb0+0lzOFUnEWglZv93v7fIGnkWiwAJHhkO2Y9N8D2DFV5g677FN33+BnAJ6Yc8u7UZDC/92LL25GWk51cDPu0Oe7J6BDn/NRQwn4ZylyaA9b+sPeshITnsE5fNPgS17Ch1L73r58xDu+RtbX/A7+Xthhz2dj5VrCP5eqqRTUgMwVKIvDA80EUqePCJgnPa7uaVNdyt4MTR8924QUfUfvnGye95qaUNKp+1vr3xAAH4Q5Jq04ONz/OnMGALE1s4oEGhFctIxxf+bFdW8da57d4/h2gn/kfsexGAFBk38Wqwd7QL+O+uOwHjfOw4VTV5F6eTC8NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6mCgbSjpcicQutl8OZMW12/8vRt7tLcsTSj+sJ5NLIc=;
 b=le34nx5eJmYP1hsCwwqsWDZ95M8HCCbOy1/MH7NyHXH8ymvajg/YMDV1Csk/t2qEi5XBKivkGTR1yEDr0Rk991zy72cTmSetfOoPvjIVB3VG+zAdeFScbwCIiQ9lUEYEnE9zbvTw/ZHmfqID0CrNr7RsdiDIYi/J7Jfppv5e0mwZsvpUAohrDoY8ci/biTxGrMaofZJQJoP2uYFMpX/LFkx0SWuR6twjsnS9hViKgzKWmJoWNcwc/xzaBXzIzTT7GR8aQPXIBc48pyU8O5O/e5rlsuHRyhn04sB195qRhffbP7ZIiagu7JQy+RNM1eBnTFsxaOrqgX1QGLXtzmbNgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6mCgbSjpcicQutl8OZMW12/8vRt7tLcsTSj+sJ5NLIc=;
 b=cz+U7PaCmtkxbpmCy4mu8fba667EP1PNGZAU0ymegRmioqscJvfejbxNaVb6WKxh0Gp3n6SNB0xB8XqqjeL6tyozrDgaF7MBzFyEIQbu4m3nB0o+5knE2VEkOB1KO50Yo0cDbIvAVREJM+T/AMMDJYNW/yxg1JDtr5np43yCMsY=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB2041.eurprd08.prod.outlook.com (10.168.98.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.21; Fri, 27 Sep 2019 10:10:10 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::4d35:2b8f:1786:84cd]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::4d35:2b8f:1786:84cd%3]) with mapi id 15.20.2284.028; Fri, 27 Sep 2019
 10:10:10 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Suzuki Poulose <Suzuki.Poulose@arm.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "maz@kernel.org" <maz@kernel.org>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, Mark Rutland <Mark.Rutland@arm.com>, Will Deacon
 <Will.Deacon@arm.com>
Subject: RE: [RFC PATCH v4 2/5] ptp: Reorganize ptp_kvm modules to make it
 arch-independent.
Thread-Topic: [RFC PATCH v4 2/5] ptp: Reorganize ptp_kvm modules to make it
 arch-independent.
Thread-Index: AQHVdF+Ft3UnKFEitUOtlQstSNDglqc97ZgAgAFgLEA=
Date: Fri, 27 Sep 2019 10:10:10 +0000
Message-ID: <HE1PR0801MB167630F7B983A7F9DBB473DFF4810@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20190926114212.5322-1-jianyong.wu@arm.com>
 <20190926114212.5322-3-jianyong.wu@arm.com>
 <2f338b57-b0b2-e439-6089-72e5f5e4f017@arm.com>
In-Reply-To: <2f338b57-b0b2-e439-6089-72e5f5e4f017@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: c71b3542-34ef-4996-a434-864809ac6f26.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 40a765fc-92dd-48ec-e532-08d74332ec07
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:HE1PR0801MB2041; 
X-MS-TrafficTypeDiagnostic: HE1PR0801MB2041:|HE1PR0801MB2041:|DB8PR08MB5193:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB519396A3EA328C770810432CF4810@DB8PR08MB5193.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 0173C6D4D5
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(376002)(396003)(136003)(13464003)(189003)(199004)(2906002)(52536014)(486006)(66556008)(9686003)(66476007)(64756008)(55016002)(66446008)(6246003)(11346002)(8936002)(446003)(71200400001)(71190400001)(2201001)(6436002)(86362001)(229853002)(476003)(7416002)(76116006)(66946007)(25786009)(2501003)(99286004)(478600001)(81166006)(81156014)(305945005)(74316002)(8676002)(76176011)(7736002)(14444005)(316002)(5660300002)(6116002)(186003)(14454004)(3846002)(256004)(66066001)(33656002)(102836004)(55236004)(54906003)(4326008)(6636002)(26005)(7696005)(110136005)(53546011)(6506007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB2041;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: 5df0i9w/dswQaqAUYzAkZQBp+Ivm1KJ3FqRsVlaEzcrkC/4pABljERNh0E4deM6Vai9nFtyXM9K+ddd/DiCRnr0Aoz0uP8//OdTh/n1Ai+xDOnCfAN12Ad7lbx1HzIoN2shOYy3r2vUDW8p7EcqWc8RyNNPqp5qoJ0ZKI3m5eYIw1T2KdGM/I6T2QaJdefDe79oFwgIiltOZOZKGg2AgLpanym+lfSC9IkiEgnc92St3LEtS76P29Zlk/Zo2l1PwgTTdI93k+BAQVuE00uXv/zPToLJ7ZyGGWdcALcK51BZO4J2svqNQbqigETFw4Yqhls1JhQ+QLnAY+gIrXQF5pXvDXkwYD542g5dyOhg4t7YVXcRCa+wRSNo1jy+YbTrvpn82BgcsDmE/93COc/SFhzNYeYOuOefwNlyGddkMcE4=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2041
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT007.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(39860400002)(396003)(13464003)(199004)(189003)(14444005)(126002)(356004)(7736002)(2906002)(33656002)(3846002)(22756006)(6116002)(70206006)(8936002)(2501003)(50466002)(5660300002)(6506007)(81156014)(2486003)(6246003)(7696005)(23676004)(26826003)(63350400001)(76130400001)(436003)(26005)(25786009)(14454004)(229853002)(70586007)(76176011)(336012)(47776003)(53546011)(486006)(54906003)(52536014)(55016002)(4326008)(186003)(11346002)(6636002)(2201001)(446003)(102836004)(8676002)(81166006)(86362001)(316002)(99286004)(478600001)(476003)(305945005)(110136005)(66066001)(9686003)(74316002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5193;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 348b2373-ee90-4782-1798-08d74332e155
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5193; 
NoDisclaimer: True
X-Forefront-PRVS: 0173C6D4D5
X-Microsoft-Antispam-Message-Info: aygv9Jq9JiVBdUCxoIXr3xS3Iv5bdIGKNwDtOgVmsP0lSfGfksxYcW4zBQbXWVu9YyUOf86CB9p2awiDzHWHtXeetv/IvTdqTvL3N1P1KJviCOO5aQoLLoo3h2sm/u8jpTn4WGpMVOuTIr2oya/DkOTmdLFxMZiB+VpPfPIKELU1PBW0wUGSb/yyb9nKZEcQOEBxY5OPPVAm6Yc+9SO8GV/4faX6wlXQaanE9isAvJO7s66dH8FqtEk+3NBDmigc9c0CkxTBS/ampWEzJY4TdKt7MYtGBWBMnYBwom6+5wkxOSkIjxIL4Q95k1cw9vGkJaiqAARVquV/IfCA+YvXwJ23eS83kwDbcAno3shkOj2bCoSzjp8u6bmqaTbpIqG1Qzcrf6IEEsSJUUNiHb3WopFjDE1N3UcT1XrccO4mdbc=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2019 10:10:28.3070 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 40a765fc-92dd-48ec-e532-08d74332ec07
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5193
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_031041_858218_F207004C 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.84 listed in wl.mailspike.net]
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
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

> -----Original Message-----
> From: Suzuki K Poulose <suzuki.poulose@arm.com>
> Sent: Thursday, September 26, 2019 9:06 PM
> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>;
> netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> maz@kernel.org; richardcochran@gmail.com; Mark Rutland
> <Mark.Rutland@arm.com>; Will Deacon <Will.Deacon@arm.com>
> Cc: linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; nd <nd@arm.com>
> Subject: Re: [RFC PATCH v4 2/5] ptp: Reorganize ptp_kvm modules to make it
> arch-independent.
> 
> Hi Jianyong,
> 
> On 26/09/2019 12:42, Jianyong Wu wrote:
> > Currently, ptp_kvm modules implementation is only for x86 which
> > includs large part of arch-specific code.  This patch move all of
> > those code into new arch related file in the same directory.
> >
> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> > ---
> >   drivers/ptp/Makefile                 |  1 +
> >   drivers/ptp/{ptp_kvm.c => kvm_ptp.c} | 77 ++++++------------------
> >   drivers/ptp/ptp_kvm_x86.c            | 87
> ++++++++++++++++++++++++++++
> >   include/asm-generic/ptp_kvm.h        | 12 ++++
> >   4 files changed, 118 insertions(+), 59 deletions(-)
> >   rename drivers/ptp/{ptp_kvm.c => kvm_ptp.c} (63%)
> 
> minor nit: Could we not skip renaming the file ? Given you are following the
> ptp_kvm_* for the arch specific files and the header files, wouldn't it be
> good to keep ptp_kvm.c ?
> 
If the module name ptp_kvm.ko is the same with its dependent object file ptp_kvm.o, warning will be given by compiler, 
So I change the ptp_kvm.c to kvm_ptp.c to avoid that conflict.

Thanks
Jianyong Wu

> Rest looks fine.
> 
> Cheers
> Suzuki
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
