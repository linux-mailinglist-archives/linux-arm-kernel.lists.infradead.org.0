Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA920C0382
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 12:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUgddjEPtU4on04oVRh7CgE/7soiFXVOdOcF/eIHhxc=; b=hLBKh5UZ9gQSWM
	7e7tHx90RT4cId2uMCMq9AEH6iiA/6Dp06KUDRz7gWh7w2bMyT1p7X/7e0jFLIa9+e7afV/4zNyef
	QfAB+Q8cc14RIDhRrDqoEO7TVP44OYDXhEXQsPc0pY9y+xDW8QhCVObZPPchr38NZwszpMAg1zLRR
	jgaoEe+wYGbGQ3mNI8OmWpstg9FT3EnlhNl3qe6lEAskC9evj4ekUcxCXMggmGeVp7T++QffpSWpA
	hZEOTR1cnpYVF2r/kyc7OtqX+/okSl0Cy+6R5zJae+KsoCeOhMu7lYsIMfNBxTJLxyY0YdXfzLcqO
	BmL0eUhnNMkCL05DCZYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDnbs-0005Zl-SL; Fri, 27 Sep 2019 10:36:24 +0000
Received: from mail-eopbgr00064.outbound.protection.outlook.com ([40.107.0.64]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDnbj-0005YZ-Jc
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 10:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vHcdoF54D9BiMQlnQNMi1xxISdD/Thbn1ourleAWJew=;
 b=sV0OEhG8vrsjgGsjsJPHnSKXzwa1+crNB49fETcWL++zJcFeCDvbOIy7CVHX7YyKlvhG7HnZt9czAxz0yn1nUqAcLf21SJQkuqtyA+rnLATsnDbJk6jZaL9NDDJWthvV+6lgYYSUK5FsDl7vlKObqNT8Ez0QKQBQHynyaY7eP1U=
Received: from VI1PR08CA0228.eurprd08.prod.outlook.com (2603:10a6:802:15::37)
 by DB6PR0802MB2471.eurprd08.prod.outlook.com (2603:10a6:4:9f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.17; Fri, 27 Sep
 2019 10:36:10 +0000
Received: from VE1EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::205) by VI1PR08CA0228.outlook.office365.com
 (2603:10a6:802:15::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.15 via Frontend
 Transport; Fri, 27 Sep 2019 10:36:09 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT033.mail.protection.outlook.com (10.152.18.147) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Fri, 27 Sep 2019 10:36:08 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Fri, 27 Sep 2019 10:35:58 +0000
X-CR-MTA-TID: 64aa7808
Received: from 5f7cc7921a1a.4 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.13.56]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 F370A33A-78CE-4A24-959C-49399167C8B1.1; 
 Fri, 27 Sep 2019 10:35:53 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2056.outbound.protection.outlook.com [104.47.13.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5f7cc7921a1a.4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Fri, 27 Sep 2019 10:35:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fJzXmHsrAm1axVKLEUhbQkogIGyN+SZk/8RynuaWrw9qqg/Vyxn36cwXpyMXYzejQJK1qyDOZecol6lU6mgvS6qXPfYRb4HqgCm/fbjbGmpbEsyxtP6oUhRXjnGfa4PRzV/A7+GeGvEAUtyZfjDNUt7e2Fc5hylRZnAWYKyJZxquEmTJ11cq2/cXnPrHsC3B3nhrD32WeT0H7tzE82Z0UDGvY+s1rIwhxxNVdtQ9ENBFFd5TC6maF+NyiId1kkMOKmly8zDB+jU7OsP8EM/0kciFQFFopzEZRCC9MMERwn+CMmeVuvYvU7fmtDIrtrM/U6NflzCOaN1bDunrNMPQHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vHcdoF54D9BiMQlnQNMi1xxISdD/Thbn1ourleAWJew=;
 b=msG8Sq0EBVvQN2AbpxWcKGrielObWbzAAiXCAiJzwAIwl2wJ2PmUeoDRZLyRZ8E10coBND+ZB/L4BvYBU6OrJYMjCuBbJXwT9EQ1D6MNlzFW0jVU+ab7tsYjD9vA0oLBNeb3uftFceT3teLghAXArn6RebDEZ1MDX9auzyRL/hLoPRTi3DGvFnupNywalm1sNA33fdDl1tQ+gGqrSmfnfFl8yt/EMXTvxjMkB2rGS/ZaBZutWkp3y5W+wX8V7Mh6qdbK2ZwPVy67dWQMeVx6CG/j19lZzJNpvwmx3zfP1wQ0jPmdBJ1ihVXLaJhy/H3kecMMIOAMvj74fSZMR4Ym7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vHcdoF54D9BiMQlnQNMi1xxISdD/Thbn1ourleAWJew=;
 b=sV0OEhG8vrsjgGsjsJPHnSKXzwa1+crNB49fETcWL++zJcFeCDvbOIy7CVHX7YyKlvhG7HnZt9czAxz0yn1nUqAcLf21SJQkuqtyA+rnLATsnDbJk6jZaL9NDDJWthvV+6lgYYSUK5FsDl7vlKObqNT8Ez0QKQBQHynyaY7eP1U=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1996.eurprd08.prod.outlook.com (10.168.97.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 27 Sep 2019 10:35:50 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::4d35:2b8f:1786:84cd]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::4d35:2b8f:1786:84cd%3]) with mapi id 15.20.2284.028; Fri, 27 Sep 2019
 10:35:50 +0000
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
Thread-Index: AQHVdF+Ft3UnKFEitUOtlQstSNDglqc/UlgAgAADTsA=
Date: Fri, 27 Sep 2019 10:35:50 +0000
Message-ID: <HE1PR0801MB1676C739058C44645D726C72F4810@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20190926114212.5322-1-jianyong.wu@arm.com>
 <20190926114212.5322-3-jianyong.wu@arm.com>
 <47ceb25c-c9ff-e284-43bf-6cac7e128a98@arm.com>
In-Reply-To: <47ceb25c-c9ff-e284-43bf-6cac7e128a98@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 6d537bca-1c2d-4e6a-bfe5-12f285ab8d8b.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 0d1526c3-c96f-42a2-73c9-08d7433681ec
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1996:|HE1PR0801MB1996:|DB6PR0802MB2471:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0802MB2471C5AD18B2C626D775F450F4810@DB6PR0802MB2471.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:4714;OLM:4714;
x-forefront-prvs: 0173C6D4D5
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(136003)(346002)(39860400002)(199004)(189003)(13464003)(5660300002)(52536014)(71190400001)(256004)(71200400001)(478600001)(11346002)(476003)(8676002)(229853002)(81166006)(81156014)(2501003)(305945005)(99286004)(74316002)(7736002)(8936002)(7416002)(446003)(66066001)(76116006)(14454004)(7696005)(26005)(102836004)(6506007)(66446008)(186003)(25786009)(53546011)(486006)(66556008)(64756008)(66946007)(66476007)(76176011)(55236004)(86362001)(2201001)(6246003)(55016002)(6636002)(4326008)(9686003)(54906003)(110136005)(33656002)(316002)(6436002)(2906002)(6116002)(3846002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1996;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: fUfMtMH09SaJHMMSXV4YPYqgl7wdRx1SbUvLJ9N0u/Oq9j4Ylh4hiZ6+keMyN/Fao4rNMqnrFEq1z00mxliidyc/o3NnCp4xrNPIMYdQfDSUEnq4/9JXTiBD4J5VVnZQCDAC+2kAsDeIBKIJlRjkMLGb4EA0aVjMDDuvdXv7YoCbFBNH2gnXux4pNHVEcWTyZIKPqV59AKWxvGO0XYG0YDVxh7jtIgQqlbolJQ+kNjuO9lDUjogZX1lbrhy2GayZ560h9LfW7MpvB9uA6ZYNLJrjAbTKNIi1WvTqJnjGvJP0CwsLtgeENU6wyrLy/IvxjQO1Pyv0zTmyR8DuAmZLj1freMWJNYb5sJC85zDlhpNOHE2gJO9lgaRBW1erWiJhSGzt0BmVUU2uN/6UM7kYrHTwVPm3ih0vomV80rmCrHU=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1996
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(39860400002)(396003)(189003)(199004)(13464003)(7736002)(74316002)(54906003)(2201001)(55016002)(86362001)(14454004)(478600001)(26826003)(476003)(25786009)(6246003)(5660300002)(36906005)(486006)(9686003)(126002)(110136005)(316002)(2906002)(52536014)(6116002)(3846002)(22756006)(8676002)(81166006)(8936002)(66066001)(81156014)(356004)(70586007)(4326008)(229853002)(2501003)(70206006)(23676004)(7696005)(2486003)(53546011)(6506007)(102836004)(76176011)(26005)(99286004)(47776003)(336012)(76130400001)(446003)(186003)(6636002)(436003)(63350400001)(50466002)(33656002)(305945005)(11346002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0802MB2471;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d3d1f84f-d3d2-4030-2a2c-08d74336773e
NoDisclaimer: True
X-Forefront-PRVS: 0173C6D4D5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oIIQPk0DUD/Zy74/mBD491nkieLpDYUSDolKsJeFbqQBSDTwv38puJWZkonSyDXPfnbLMpgOQZE++2IRN+X5t6jRrXbvQp16kwy1+ka4eP/FM2fLWwY0P50tDqGl4A4L/oTeaz/S4niIwYnaelX1h+Rbhjb3G7e2JHUtbakuKpVBH7rZJdKXbJbraN4H+HLDog7o5NOr6z5XoTXWf/qp4yzTH0lFaEnjeESUlyifUhGuoSILH7wPT840GHoamMlUq63sHVD8+qH8loNSTkPqmPDygHuVakGu8yYMySi4eAV1QEBcE8UA+leabxe3yHn+b/Fnq/vJOtsms0Y7QztXXOeo6W+X5zLvr+AYEG403oxdigRl39MZK9MV+GGB5QSABupOW/sNhXDRFeiSaUwcPJ8sI0vstTRS1sQiGcg9GRA=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2019 10:36:08.2275 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d1526c3-c96f-42a2-73c9-08d7433681ec
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2471
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_033615_646319_6158C86B 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.64 listed in list.dnswl.org]
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
> Sent: Friday, September 27, 2019 6:23 PM
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
> 
> 
> On 26/09/2019 12:42, Jianyong Wu wrote:
> > Currently, ptp_kvm modules implementation is only for x86 which
> > includs large part of arch-specific code.  This patch move all of
> > those code into new arch related file in the same directory.
> >
> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> 
> ...
> 
> > +int kvm_arch_ptp_get_clock_fn(unsigned long *cycle, struct timespec64
> *tspec,
> > +			      struct clocksource **cs)
> 
> 
> > diff --git a/include/asm-generic/ptp_kvm.h
> > b/include/asm-generic/ptp_kvm.h new file mode 100644 index
> > 000000000000..208e842bfa64
> > --- /dev/null
> > +++ b/include/asm-generic/ptp_kvm.h
> 
> > +int kvm_arch_ptp_get_clock_fn(long *cycle,
> > +		struct timespec64 *tspec, void *cs);
> >
> 
> Conflicting types for kvm_arch_ptp_get_clock_fn() ?
> 
Yeah, need fix.

Thanks
Jianyong Wu

> Suzuki
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
