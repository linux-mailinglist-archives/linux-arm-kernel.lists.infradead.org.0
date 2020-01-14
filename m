Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1266B13A5C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 11:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbT1R4eMfKQ+XXgrW98cKAXWhYZYiSU1uE5OX3DrADg=; b=XZTG5UtMQglhEU
	at4RmQ/8hPhimFlYoZd44TzSkfUsoRgYkCmqQX66YNwMnT6SqCVeQ6ixlffgUnN8eC2k9DB7y1Pe5
	BN4uANwu9C62WYBfCjFblGwLFBwioRP4CWUfRzt/qWdEsMq1SF1lUgjaU7atKl5Bmu0ZYLoFFMAvB
	3b3ovqPPn1tNtyjlkUUzRywLKKa0eDLSLWAzlnwFJEnNuIfXqvnIhDy6hPY8aOf/NxmTcq60jwYNo
	3NQX7udMsMpCUcJLxJPaqGftKAcWDzapVaLko5oUW8YAUt4n3kch8STS+nRppOzWLLLpGPb0E4+Dz
	ylyqRp9bow0kcwtflXGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJLX-0004X4-UV; Tue, 14 Jan 2020 10:22:51 +0000
Received: from mail-am6eur05on2065.outbound.protection.outlook.com
 ([40.107.22.65] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJLD-0004VS-3I
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 10:22:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RNVtQ06j6pnfKOgq8sEEsJ1ccefIriBHi4CNbo5eOlU=;
 b=V5ga9UcLJ6JLFnnYdKavORUGKktitF9NBAjJo6NjLDCkZsRkqZxq59QDnfUQ4qypIEr4W835UqFmiFTZ0kcONnIn4kBMhRWLsLEQMAIMA8uBnzK/7+YgAVFH9V+3vExrfP8AYDrkgq2Z69dt7TneVOQJZhB8UO7fAXQo28bQ41I=
Received: from DB6PR0802CA0039.eurprd08.prod.outlook.com (2603:10a6:4:a3::25)
 by DB8PR08MB5322.eurprd08.prod.outlook.com (2603:10a6:10:114::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Tue, 14 Jan
 2020 10:22:27 +0000
Received: from AM5EUR03FT009.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::208) by DB6PR0802CA0039.outlook.office365.com
 (2603:10a6:4:a3::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9 via Frontend
 Transport; Tue, 14 Jan 2020 10:22:27 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT009.mail.protection.outlook.com (10.152.16.110) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Tue, 14 Jan 2020 10:22:26 +0000
Received: ("Tessian outbound 121a58c8f9bf:v40");
 Tue, 14 Jan 2020 10:22:26 +0000
X-CR-MTA-TID: 64aa7808
Received: from cb08708705ad.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 B0BB41E5-17BD-4063-9B4F-739D7E3A4326.1; 
 Tue, 14 Jan 2020 10:22:21 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id cb08708705ad.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 14 Jan 2020 10:22:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RKP7kbDjN8MAWWxVlhF35+Lcb5365cJfGTSTaJeYWgXKmAAHh7rv2c0GIudoDKiD0CfV0yCJzrql9VBG3My3ZddHmnBTWYCfz32EeXZFgjsjLFq54NnxwX0IK6PFlp8MN+hwf/YQZnE/3n1DqzumBrBsf+yAfaJneuOpuuQJnTsckX/VOL7P32cH6JCsv39iQmRyp0Iz+52j11EjAqd4y6RuFevAsywoceX8f0anKa/J8jvVcRBUEWzxu+NptzT+UJ8aUDtqL31SR//LCN3H14aTiZXyDJxQJIOnArhEjHciTFHd8Fw45F+xtMASBFrhjDOXZmzQnWuXILANiJfxZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RNVtQ06j6pnfKOgq8sEEsJ1ccefIriBHi4CNbo5eOlU=;
 b=QkNBjZ09X5CEakek/gsh/nExpwcCDI5bxDL8u9in27DGy1/PbntK9UU7l9hvb8VtGUSol/mfPmihFo4H9dVuv9ckibyT8m3hBLVBDs1U66pqd8G69dIUdDSg7GhTcjCB7kC9V63LW3OS/Jua5pIrlVbaWVn+zR9wJQnRwbB2g3LkDTsB6JtvNSXqUUFwob9RfrEemFY8GkVwf4jvhJMh14Wd0VdSDk0zWhZo06loNU+4I5KeDahfqMMXytfRO7R2QXYyKfhAnXdI8Fgw/tH13RsI3UaG1//59bIpt7YbbCCXmUgWbw/7XBIvMS8O34T+Uy2fnED1kTV/h0ITR/ro3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RNVtQ06j6pnfKOgq8sEEsJ1ccefIriBHi4CNbo5eOlU=;
 b=V5ga9UcLJ6JLFnnYdKavORUGKktitF9NBAjJo6NjLDCkZsRkqZxq59QDnfUQ4qypIEr4W835UqFmiFTZ0kcONnIn4kBMhRWLsLEQMAIMA8uBnzK/7+YgAVFH9V+3vExrfP8AYDrkgq2Z69dt7TneVOQJZhB8UO7fAXQo28bQ41I=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1913.eurprd08.prod.outlook.com (10.168.95.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Tue, 14 Jan 2020 10:22:17 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f%8]) with mapi id 15.20.2623.017; Tue, 14 Jan 2020
 10:22:17 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
Thread-Topic: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
Thread-Index: AQHVrwu1ZTEnzkrQbEOo/hXDFqaU6affG9SAgALmpVCAADyUAIABmc4AgAAMSACABLWzgIAADjCAgAGBvhA=
Date: Tue, 14 Jan 2020 10:22:16 +0000
Message-ID: <HE1PR0801MB1676171BFAD5581E0A662E21F4340@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <20191210034026.45229-8-jianyong.wu@arm.com>
 <ca162efb3a0de530e119f5237c006515@kernel.org>
 <HE1PR0801MB1676EE12CF0DB7C5BB8CC62DF4390@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ee801dacbf4143e8d41807d5bfad1409@kernel.org>
 <HE1PR0801MB16765B52E5DCD8EA480EDABFF4380@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <a85deebc23c1fa77e6f70b6eaef22a34@kernel.org>
 <HE1PR0801MB16765F2905CD0F381E33AD9EF4350@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <a65143199c03230c74cb456586f75627@kernel.org>
In-Reply-To: <a65143199c03230c74cb456586f75627@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 58bb778f-1558-48a0-a28d-4ed41455670d.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6aba6f27-cfee-4f53-e94e-08d798dba751
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1913:|HE1PR0801MB1913:|DB8PR08MB5322:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB5322E54751EC5D5E9F09C657F4340@DB8PR08MB5322.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: True
x-ms-oob-tlc-oobclassifiers: OLM:3173;OLM:3173;
x-forefront-prvs: 028256169F
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(366004)(136003)(376002)(39860400002)(199004)(189003)(66946007)(81166006)(81156014)(478600001)(8676002)(66476007)(66556008)(76116006)(9686003)(26005)(186003)(55016002)(4326008)(2906002)(33656002)(64756008)(6916009)(7416002)(54906003)(71200400001)(52536014)(5660300002)(86362001)(66446008)(7696005)(8936002)(53546011)(55236004)(6506007)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1913;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: zHe+omBBJ73VeSnPofRJm42/+7OS26IqM6dQFueeuwBURVFVSvJlzoph0s/KSIIM81zeT6y0EoYpSZb6AoiouS7KoAOMN1LX2pyCf12/JyYGAAjH+tAACiwZ9ws3ZIhtyJkctiqVZDTAuqdSRfd0veUkD1JkDHdFYueADkVtYCeTwH9DXwfg9te+Uw7IJTBMwWQnikOag7G2WOOrLGcVmgMNPM/rdLRe24DypvMA0nl7mxMbx9TTzREy1+nMJ5Kw+vOeY8ZuC98WZCfqXRLtjcYaRNd35R81kj6I9nlTGnSf3PUrHfZj+YoK1GMaAf0k0WL2O4qdi1NVa8T+n8x7j7YuRBJEFRBi/rpphmYxyNmFEcxXzo3h9yXjeCqc5nuJENbrhA9Mn5xK+2aKnYlMeEazKfGhjMal/CLcoElz2KlO9e1J5h6GoqYX01oMrp/f
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1913
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT009.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(346002)(39860400002)(189003)(199004)(6862004)(53546011)(6506007)(26005)(186003)(336012)(478600001)(26826003)(4326008)(2906002)(55016002)(9686003)(86362001)(70206006)(5660300002)(33656002)(52536014)(7696005)(70586007)(54906003)(316002)(36906005)(8676002)(81156014)(81166006)(356004)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5322;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 9e40dab5-809c-4165-5778-08d798dba1ad
X-Forefront-PRVS: 028256169F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gVi6xsL0MtHIiDiGivvwcFkjt07ocn2C0F3Rg5I/ajtYUEHlh0wCqoj2kA8/NTLZJrnXGYHVcnRvfpIJKi2ANBuC3lIgwYpTwtEKhyegkjYPB2/TmdfuJh9SmgYHIXsYgzyjJcJFXs5OZN8+wjdAeoHS6H4qoi98bAu3VwdjFMRD8R0rGhGs7QFn89Jr4nStp2XrJ07Q440dPR/H7CNAzOgdEMXnZ5zTk4naSQxx3UB8hmfCfC/l2MXMJOVBttY4CsPZhSKDUPGGad0NEJPnhV+UaKBNEuwTtj6b9UDw3qTMH9PvITzNK1GjKQDmlZSVZn54xV0rfuWdvnnXrYiL94MVJ1X+LIdXreLRNyLKUoy1f3MPqov7uLjcsH6BDWPAFihSZ4QQrZNyHsntNX7tr7DOyDn4ph9W/ENacbG1iCCHJ8OlV/IW+F5d9Hc9FDxJ
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2020 10:22:26.7726 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6aba6f27-cfee-4f53-e94e-08d798dba751
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5322
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_022231_293251_F30A0638 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.65 listed in list.dnswl.org]
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
> Sent: Monday, January 13, 2020 7:21 PM
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
> On 2020-01-13 10:37, Jianyong Wu wrote:
> > Hi Marc,
> >
> >> -----Original Message-----
> >> From: Marc Zyngier <maz@kernel.org>
> >> Sent: Friday, January 10, 2020 6:35 PM
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
> >> Subject: Re: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
> >>
> >> Hi Jianyong,
> >>
> >> On 2020-01-10 10:15, Jianyong Wu wrote:
> >> > Hi Marc,
> >>
> >> [...]
> >>
> >> >> >> > +	ktime_overall = hvc_res.a0 << 32 | hvc_res.a1;
> >> >> >> > +	*ts = ktime_to_timespec64(ktime_overall);
> >> >> >> > +	*cycle = hvc_res.a2 << 32 | hvc_res.a3;
> >> >> >>
> >> >> >> So why isn't that just a read of the virtual counter, given
> >> >> >> that what you do in the hypervisor seems to be "cntpct - cntvoff"?
> >> >> >>
> >> >> >> What am I missing here?
> >> >> >>
> >> >> > We need get clock time and counter cycle at the same time, so we
> >> >> > can't just read virtual counter at guest and must get it from host.
> >> >>
> >> >> See my comment in my reply to patch #6: *Must* seems like a very
> >> >> strong word, and you don't explain *why* that's better than just
> >> >> computing the total hypercall cost. Hint: given the frequency of
> >> >> the counter (in the few MHz
> >> >> range) vs the frequency of a CPU (in the multiple GHz range, and
> >> >> with an IPC close enough to 1), I doubt that you'll see the
> >> >> counter making much progress across a hypercall.
> >> >>
> >> > Sorry, I will avoid to use those strong words.
> >> >
> >> > It's really the case that the hypercall won't across cycle in general.
> >> > But sometimes, kernel preempt
> >> > may happen in the middle of the hypercall which we can't assume how
> >> > long before schedule back. so it's better capture them together at
> >> > the same time.
> >>
> >> Fair enough. Please document the rational, as I guess others will ask
> >> the same questions.
> >>
> > Ok
> >
> >> Then the problem to solve is that of the reference counter, as you so
> >> far assume the virtual counter. I guess you need to be able to let
> >> the guest select the reference counter when calling the PTP service.
> >>
> > I could not come up with an idea about the point where the guest give
> > this info of counter value.
> > Where we give that interface to ptp service, as it's not a user space
> > application.
> 
> Again: why don't you let the guest ask for the counter it wants as part of the
> SMC call? What is preventing this?
> 
Ok, let me try it

Thanks

>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
