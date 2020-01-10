Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BECA136AC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:15:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwymACa/J6KwxwRZjbkpjCjRO+dtVjfhf5xicdJ2T6Q=; b=WEPdW3mQFj7p5r
	rFXQ4/nJo0PLssLGPjPY0dKiOlT1hQYCL9pWLrZK/DBPRTAOmZ1uzGlk8QLlSxqS2txTWtccJbKyD
	3cE0ExAxQptPnHFXuqHeYkU/WELQsyP033+sqadMPhgcmcisKztba0FqoifUxuE/SD7ptEuzOyHOz
	gbrzApRx35LF5TlndwFNjV63t0Cb90qenhZE2p1gxn+XKekzgtcPO+sFs7NDiaI1PKrHOyaGgFSYj
	LUx0MsIUpnW9XjaJL0JEnP6KUDbXHB3UOj/Dx5uMn+g6Gp2YynsYy1TNUy4tVUxM/QPhc1I/FyuIt
	URx7j14miF5VZmbZwRaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprKG-0000l8-3u; Fri, 10 Jan 2020 10:15:32 +0000
Received: from mail-am6eur05on2042.outbound.protection.outlook.com
 ([40.107.22.42] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprK6-0000jt-EA
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 10:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8AEjMsUrseAf90qT+Z0OehLac26IXVM3JdC5KWmLUS0=;
 b=DQoYhK8oB5TsLDmDS7vjle1/kiykeC0rV17v1Y177oLBclyqcLxlbgwggeOZRDTq5n2saYHor1TdeECjoCW9SDkD4mJ/s45hh8Un5IBPeX+v0fsJMMJsd3h9kmo92RjV64F/gG4QYnRKRtmP7ZuSpSMQEEygZd8jFRDNu+w6S0E=
Received: from VI1PR08CA0182.eurprd08.prod.outlook.com (2603:10a6:800:d2::12)
 by VI1PR0801MB1998.eurprd08.prod.outlook.com (2603:10a6:800:89::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Fri, 10 Jan
 2020 10:15:16 +0000
Received: from VE1EUR03FT031.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::202) by VI1PR08CA0182.outlook.office365.com
 (2603:10a6:800:d2::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.8 via Frontend
 Transport; Fri, 10 Jan 2020 10:15:16 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT031.mail.protection.outlook.com (10.152.18.69) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Fri, 10 Jan 2020 10:15:15 +0000
Received: ("Tessian outbound 28955e0c1ca8:v40");
 Fri, 10 Jan 2020 10:15:15 +0000
X-CR-MTA-TID: 64aa7808
Received: from d613faf3656f.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 13A71204-3F44-4011-BEFA-79C2B423EA1A.1; 
 Fri, 10 Jan 2020 10:15:10 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d613faf3656f.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 10 Jan 2020 10:15:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mo9Dn9OPOAMTBCPlIMOwF+7dbCacXK0WE6uldDVf74ivbfikLp+VZNxgU66VEJ/GlYeO4AAhFA87fm33vsmqSr4mTF4irO+aQ3xwryuP3epM9MmyEcZKfNyOFA89qX4BlVKmgyFX+f4ZfPJJnFx7I8L94oi7ACeO8XyLmvvWZhMGD2a8PBZTlXmgXaf0clexgxozth0I1lwr4zV4eICqNVm7Bxi/ooktywdoiNf49gsw0hR9iZiMITkYsDs31lhnf0izEJyjykZpce0c63byo9YYrLsSn0yT9BfVNqrx8DGtV7tAgRzsok2jOoWWGaoSXVAw09zRzfQzWW2Hv16w0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8AEjMsUrseAf90qT+Z0OehLac26IXVM3JdC5KWmLUS0=;
 b=h6rQFKneLlvcfZraiXaJy7GG2NSeSSTrPZuldQeV9DCbX8ljtbjTf1pH+6zJPaZ2hV6xnJuuFg/7nTtVRgQrQTrNmhv5EuqPgzfTTFPhREUXE2x5riFTtc1Dr+AfCPciERxfRJm2Q4E2qj7wUa+FsbF7jTjH8wBKl+SPE2gvVDKd3zMepB9KhHZ0ghIh6+1fwoM/nwoYNYnWY8wEQNQTildn1rcVevMMPbg8h9yR7GHFeh/B4QhXc93vSQ++M6i3cP20cKxZ//fXdhf28g+BF9EN5qnwUdssljwfyS1dEKZeWv1i1i0guEP5XFAsSZAhLJF8AaDl91Tp6Qgupiq1KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8AEjMsUrseAf90qT+Z0OehLac26IXVM3JdC5KWmLUS0=;
 b=DQoYhK8oB5TsLDmDS7vjle1/kiykeC0rV17v1Y177oLBclyqcLxlbgwggeOZRDTq5n2saYHor1TdeECjoCW9SDkD4mJ/s45hh8Un5IBPeX+v0fsJMMJsd3h9kmo92RjV64F/gG4QYnRKRtmP7ZuSpSMQEEygZd8jFRDNu+w6S0E=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1883.eurprd08.prod.outlook.com (10.168.94.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Fri, 10 Jan 2020 10:15:07 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::49c0:e8df:b9be:724f%8]) with mapi id 15.20.2623.013; Fri, 10 Jan 2020
 10:15:07 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
Thread-Topic: [RFC PATCH v9 7/8] ptp: arm64: Enable ptp_kvm for arm64
Thread-Index: AQHVrwu1ZTEnzkrQbEOo/hXDFqaU6affG9SAgALmpVCAADyUAIABmc4A
Date: Fri, 10 Jan 2020 10:15:07 +0000
Message-ID: <HE1PR0801MB16765B52E5DCD8EA480EDABFF4380@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191210034026.45229-1-jianyong.wu@arm.com>
 <20191210034026.45229-8-jianyong.wu@arm.com>
 <ca162efb3a0de530e119f5237c006515@kernel.org>
 <HE1PR0801MB1676EE12CF0DB7C5BB8CC62DF4390@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ee801dacbf4143e8d41807d5bfad1409@kernel.org>
In-Reply-To: <ee801dacbf4143e8d41807d5bfad1409@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: fdcedd1e-5194-4357-9cb7-8e2d77cd7500.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 21a041e8-f128-41fb-b1cf-08d795b5fcda
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1883:|HE1PR0801MB1883:|VI1PR0801MB1998:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0801MB1998EB4C69752778DB1FB565F4380@VI1PR0801MB1998.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 02788FF38E
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(346002)(39860400002)(376002)(199004)(189003)(13464003)(55016002)(316002)(4001150100001)(55236004)(26005)(81156014)(8676002)(6916009)(54906003)(8936002)(81166006)(5660300002)(4326008)(7416002)(64756008)(71200400001)(66946007)(66476007)(66556008)(66446008)(7696005)(2906002)(76116006)(478600001)(52536014)(86362001)(30864003)(6506007)(9686003)(33656002)(53546011)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1883;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Pz3Tlrkb0QODjpoVbCOa6kauY66U6LCS8on+O56/9A5W5BoVnJK3bhd4uxr75ZHNn0AYff2korfT4Vlop8YpklKeHie9CenOLqbFqXp4NJ/ghoHwGyO3ky7tVOzRJVoijh4Ax45slStn2ILOXRqkFXumUmypb763h52XnMG5abLr4eHy4zTvlLj0DMQigH68dfPzWq+xAiYxr+JqE3a/uQstXIZ2uokGEYWdXg72syrCTArytiGpNMOnPyZGMzZeRmRIv221JKA2wjFdmaKV3+zKkfsCQADSSm+Jbv/+iMXMyo+nLhnw8EnvFmocVf49H3cY+YBwtgNgnu9wUUCuMn1rC0CQ8RbOy7NxPFzxI8Et82hjohWFBs6GMxezj3Q2dkvV+KD7YQH3RYEI8GVxBqb2UCpurqnWLDj56yMdyRsut1ZfwN5i5WDYzGZvQCbpgioKdBBmfLZeoklArp8F8fyd1xyVmE764kmNq1AAmjDMBX+opqC+oGIpaKLdCCJo
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1883
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT031.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(39860400002)(136003)(376002)(189003)(199004)(13464003)(2906002)(55016002)(54906003)(316002)(30864003)(33656002)(6506007)(53546011)(36906005)(4326008)(6862004)(52536014)(5660300002)(356004)(7696005)(26005)(86362001)(8676002)(186003)(81166006)(4001150100001)(336012)(70586007)(8936002)(70206006)(9686003)(478600001)(81156014)(26826003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1998;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 86505b31-9a77-47fb-7d80-08d795b5f7f3
X-Forefront-PRVS: 02788FF38E
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6ApP34BH0JgZo7L5hHlxFfXSnus8xmph0Vx85bBPY/Xs+TVYDFQ0j0jxkpAH2rhIlBv7/6wbw4w0l1Q83ZQQXqkNf91533VVgaPh87nc+9lDuE4oNmcFpr/Zs75jWykoxf+1cPeLOa6xCGOcFRfModNTh/dI75BT2nIi7UBFBXDYuVfA/nAOJF8pVGcLn//b9/MA/8/DtgvBXNFTcSi1vQjlotiBuEBOAOTWxDPsL1HvH0Qt/p7c8xK7IirSe0lxiLJCDIUn3dbEMRSYf+hdPGXbKSKSL3EC/KsqgGXt2irYaHshtOqAogt1f73VKhuZgawRIU0TqIMiiTGbP5+TbcUll+IZg/6LgAbW4bI0LMZz8iBSDXELgCK5bADU5eXP27aKe6O3T43/+usD29LSwKYEuQTFXYJtwMBByvIGfAHYKUgTyfGPEviDcp5fe04UHD9VUlj+Ee9CcyRw5DnQGy6kqL4jO8USH2eP0/7FwRR8Yk5XkYSa9F3Ph7FzMH7S
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2020 10:15:15.8453 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 21a041e8-f128-41fb-b1cf-08d795b5fcda
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_021522_636863_747ACE58 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
> Sent: Thursday, January 9, 2020 5:24 PM
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
> On 2020-01-09 05:59, Jianyong Wu wrote:
> > Hi Marc,
> >
> >> -----Original Message-----
> >> From: Marc Zyngier <maz@kernel.org>
> >> Sent: Tuesday, January 7, 2020 5:29 PM
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
> >> On 2019-12-10 03:40, Jianyong Wu wrote:
> >> > Currently in arm64 virtualization environment, there is no
> >> > mechanism to keep time sync between guest and host. Time in guest
> >> > will drift compared with host after boot up as they may both use
> >> > third party time sources to correct their time respectively. The
> >> > time deviation will be in order of milliseconds but some scenarios
> >> > ask for higher time precision, like in cloud envirenment, we want
> >> > all the VMs running in the host aquire the same level accuracy from host
> clock.
> >> >
> >> > Use of kvm ptp clock, which choose the host clock source clock as a
> >> > reference clock to sync time clock between guest and host has been
> >> > adopted by x86 which makes the time sync order from milliseconds to
> >> > nanoseconds.
> >> >
> >> > This patch enable kvm ptp on arm64 and we get the similar clock
> >> > drift as found with x86 with kvm ptp.
> >> >
> >> > Test result comparison between with kvm ptp and without it in arm64
> >> > are as follows. This test derived from the result of command
> >> > 'chronyc sources'. we should take more cure of the last sample
> >> > column which shows the offset between the local clock and the
> >> > source at the last measurement.
> >> >
> >> > no kvm ptp in guest:
> >> > MS Name/IP address   Stratum Poll Reach LastRx Last sample
> >> >
> >>
> ==========================================================
> >> ==============
> >> > ^* dns1.synet.edu.cn      2   6   377    13  +1040us[+1581us] +/-
> >> > 21ms
> >> > ^* dns1.synet.edu.cn      2   6   377    21  +1040us[+1581us] +/-
> >> > 21ms
> >> > ^* dns1.synet.edu.cn      2   6   377    29  +1040us[+1581us] +/-
> >> > 21ms
> >> > ^* dns1.synet.edu.cn      2   6   377    37  +1040us[+1581us] +/-
> >> > 21ms
> >> > ^* dns1.synet.edu.cn      2   6   377    45  +1040us[+1581us] +/-
> >> > 21ms
> >> > ^* dns1.synet.edu.cn      2   6   377    53  +1040us[+1581us] +/-
> >> > 21ms
> >> > ^* dns1.synet.edu.cn      2   6   377    61  +1040us[+1581us] +/-
> >> > 21ms
> >> > ^* dns1.synet.edu.cn      2   6   377     4   -130us[ +796us] +/-
> >> > 21ms
> >> > ^* dns1.synet.edu.cn      2   6   377    12   -130us[ +796us] +/-
> >> > 21ms
> >> > ^* dns1.synet.edu.cn      2   6   377    20   -130us[ +796us] +/-
> >> > 21ms
> >> >
> >> > in host:
> >> > MS Name/IP address   Stratum Poll Reach LastRx Last sample
> >> >
> >>
> ==========================================================
> >> ==============
> >> > ^* 120.25.115.20          2   7   377    72   -470us[ -603us] +/-
> >> > 18ms
> >> > ^* 120.25.115.20          2   7   377    92   -470us[ -603us] +/-
> >> > 18ms
> >> > ^* 120.25.115.20          2   7   377   112   -470us[ -603us] +/-
> >> > 18ms
> >> > ^* 120.25.115.20          2   7   377     2   +872ns[-6808ns] +/-
> >> > 17ms
> >> > ^* 120.25.115.20          2   7   377    22   +872ns[-6808ns] +/-
> >> > 17ms
> >> > ^* 120.25.115.20          2   7   377    43   +872ns[-6808ns] +/-
> >> > 17ms
> >> > ^* 120.25.115.20          2   7   377    63   +872ns[-6808ns] +/-
> >> > 17ms
> >> > ^* 120.25.115.20          2   7   377    83   +872ns[-6808ns] +/-
> >> > 17ms
> >> > ^* 120.25.115.20          2   7   377   103   +872ns[-6808ns] +/-
> >> > 17ms
> >> > ^* 120.25.115.20          2   7   377   123   +872ns[-6808ns] +/-
> >> > 17ms
> >> >
> >> > The dns1.synet.edu.cn is the network reference clock for guest and
> >> > 120.25.115.20 is the network reference clock for host. we can't get
> >> > the clock error between guest and host directly, but a roughly
> >> > estimated value will be in order of hundreds of us to ms.
> >> >
> >> > with kvm ptp in guest:
> >> > chrony has been disabled in host to remove the disturb by network
> >> > clock.
> >> >
> >> > MS Name/IP address         Stratum Poll Reach LastRx Last sample
> >> >
> >>
> ==========================================================
> >> ==============
> >> > * PHC0                    0   3   377     8     -7ns[   +1ns] +/-
> >> > 3ns
> >> > * PHC0                    0   3   377     8     +1ns[  +16ns] +/-
> >> > 3ns
> >> > * PHC0                    0   3   377     6     -4ns[   -0ns] +/-
> >> > 6ns
> >> > * PHC0                    0   3   377     6     -8ns[  -12ns] +/-
> >> > 5ns
> >> > * PHC0                    0   3   377     5     +2ns[   +4ns] +/-
> >> > 4ns
> >> > * PHC0                    0   3   377    13     +2ns[   +4ns] +/-
> >> > 4ns
> >> > * PHC0                    0   3   377    12     -4ns[   -6ns] +/-
> >> > 4ns
> >> > * PHC0                    0   3   377    11     -8ns[  -11ns] +/-
> >> > 6ns
> >> > * PHC0                    0   3   377    10    -14ns[  -20ns] +/-
> >> > 4ns
> >> > * PHC0                    0   3   377     8     +4ns[   +5ns] +/-
> >> > 4ns
> >> >
> >> > The PHC0 is the ptp clock which choose the host clock as its source
> >> > clock. So we can be sure to say that the clock error between host
> >> > and guest is in order of ns.
> >> >
> >> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> >> > ---
> >> >  drivers/clocksource/arm_arch_timer.c | 22 ++++++++++++
> >> >  drivers/ptp/Kconfig                  |  2 +-
> >> >  drivers/ptp/ptp_kvm_arm64.c          | 53
> >> ++++++++++++++++++++++++++++
> >> >  3 files changed, 76 insertions(+), 1 deletion(-)  create mode
> >> > 100644 drivers/ptp/ptp_kvm_arm64.c
> >> >
> >> > diff --git a/drivers/clocksource/arm_arch_timer.c
> >> > b/drivers/clocksource/arm_arch_timer.c
> >> > index 277846decd33..72260b66f02e 100644
> >> > --- a/drivers/clocksource/arm_arch_timer.c
> >> > +++ b/drivers/clocksource/arm_arch_timer.c
> >> > @@ -1636,3 +1636,25 @@ static int __init
> >> > arch_timer_acpi_init(struct acpi_table_header *table)  }
> >> > TIMER_ACPI_DECLARE(arch_timer, ACPI_SIG_GTDT,
> >> > arch_timer_acpi_init);  #endif
> >> > +
> >> > +#if IS_ENABLED(CONFIG_PTP_1588_CLOCK_KVM)
> >> > +#include <linux/arm-smccc.h>
> >> > +int kvm_arch_ptp_get_crosststamp(unsigned long *cycle, struct
> >> > timespec64 *ts,
> >> > +			      struct clocksource **cs)
> >> > +{
> >> > +	struct arm_smccc_res hvc_res;
> >> > +	ktime_t ktime_overall;
> >> > +
> >> > +
> >> 	arm_smccc_1_1_invoke(ARM_SMCCC_VENDOR_HYP_KVM_PTP_FU
> >> NC_ID, &hvc_res);
> >> > +	if ((long)(hvc_res.a0) < 0)
> >> > +		return -EOPNOTSUPP;
> >> > +
> >> > +	ktime_overall = hvc_res.a0 << 32 | hvc_res.a1;
> >> > +	*ts = ktime_to_timespec64(ktime_overall);
> >> > +	*cycle = hvc_res.a2 << 32 | hvc_res.a3;
> >>
> >> So why isn't that just a read of the virtual counter, given that what
> >> you do in the hypervisor seems to be "cntpct - cntvoff"?
> >>
> >> What am I missing here?
> >>
> > We need get clock time and counter cycle at the same time, so we can't
> > just read virtual counter at guest and must get it from host.
> 
> See my comment in my reply to patch #6: *Must* seems like a very strong
> word, and you don't explain *why* that's better than just computing the
> total hypercall cost. Hint: given the frequency of the counter (in the few MHz
> range) vs the frequency of a CPU (in the multiple GHz range, and with an IPC
> close enough to 1), I doubt that you'll see the counter making much progress
> across a hypercall.
> 
Sorry, I will avoid to use those strong words.

It's really the case that the hypercall won't across cycle in general. But sometimes, kernel preempt 
may happen in the middle of the hypercall which we can't assume how long before schedule back. so it's better capture them
together at the same time.

> >
> >> > +	*cs = &clocksource_counter;
> >> > +
> >> > +	return 0;
> >> > +}
> >> > +EXPORT_SYMBOL_GPL(kvm_arch_ptp_get_crosststamp);
> >> > +#endif
> >> > diff --git a/drivers/ptp/Kconfig b/drivers/ptp/Kconfig index
> >> > 9b8fee5178e8..3c31ff8eb05f 100644
> >> > --- a/drivers/ptp/Kconfig
> >> > +++ b/drivers/ptp/Kconfig
> >> > @@ -110,7 +110,7 @@ config PTP_1588_CLOCK_PCH  config
> >> > PTP_1588_CLOCK_KVM
> >> >  	tristate "KVM virtual PTP clock"
> >> >  	depends on PTP_1588_CLOCK
> >> > -	depends on KVM_GUEST && X86
> >> > +	depends on KVM_GUEST && X86 || ARM64 && ARM_ARCH_TIMER
> >> >  	default y
> >> >  	help
> >> >  	  This driver adds support for using kvm infrastructure as a PTP
> >> > diff --git a/drivers/ptp/ptp_kvm_arm64.c
> >> > b/drivers/ptp/ptp_kvm_arm64.c new file mode 100644 index
> >> > 000000000000..f3f957117865
> >> > --- /dev/null
> >> > +++ b/drivers/ptp/ptp_kvm_arm64.c
> >> > @@ -0,0 +1,53 @@
> >> > +// SPDX-License-Identifier: GPL-2.0-only
> >> > +/*
> >> > + *  Virtual PTP 1588 clock for use with KVM guests
> >> > + *  Copyright (C) 2019 ARM Ltd.
> >> > + *  All Rights Reserved
> >> > + */
> >> > +
> >> > +#include <linux/kernel.h>
> >> > +#include <linux/err.h>
> >> > +#include <asm/hypervisor.h>
> >> > +#include <linux/module.h>
> >> > +#include <linux/psci.h>
> >> > +#include <linux/arm-smccc.h>
> >> > +#include <linux/timecounter.h>
> >> > +#include <linux/sched/clock.h>
> >> > +#include <asm/arch_timer.h>
> >> > +
> >> > +int kvm_arch_ptp_init(void)
> >> > +{
> >> > +	struct arm_smccc_res hvc_res;
> >> > +
> >> > +
> >> 	arm_smccc_1_1_invoke(ARM_SMCCC_VENDOR_HYP_KVM_PTP_FU
> >> NC_ID,
> >> > +			     &hvc_res);
> >> > +	if ((long)(hvc_res.a0) < 0)
> >> > +		return -EOPNOTSUPP;
> >> > +
> >> > +	return 0;
> >> > +}
> >> > +
> >> > +int kvm_arch_ptp_get_clock_generic(struct timespec64 *ts,
> >> > +				   struct arm_smccc_res *hvc_res) {
> >> > +	ktime_t ktime_overall;
> >> > +
> >> > +
> >> 	arm_smccc_1_1_invoke(ARM_SMCCC_VENDOR_HYP_KVM_PTP_FU
> >> NC_ID,
> >> > +				  hvc_res);
> >> > +	if ((long)(hvc_res->a0) < 0)
> >> > +		return -EOPNOTSUPP;
> >> > +
> >> > +	ktime_overall = hvc_res->a0 << 32 | hvc_res->a1;
> >> > +	*ts = ktime_to_timespec64(ktime_overall);
> >> > +
> >> > +	return 0;
> >> > +}
> >> > +
> >> > +int kvm_arch_ptp_get_clock(struct timespec64 *ts) {
> >> > +	struct arm_smccc_res hvc_res;
> >> > +
> >> > +	kvm_arch_ptp_get_clock_generic(ts, &hvc_res);
> >> > +
> >> > +	return 0;
> >> > +}
> >>
> >> I also wonder why this is all arm64 specific, while everything should
> >> also work just fine on 32bit.
> >>
> > ptp_kvm is a feature for cloud computing to keep time consistency from
> > container to container and to host on server,
> 
> Cloud computing? Never heard of that. Will probably never catch on.
> 
Eh...

> > So we focus it on arm64. Also I have never tested it on arm32 machine
> > ( we lack of arm32 machine)
> 
> I'm sure your employer can provide you with such a box. I can probably even
> tell you which cupboard they are stored in... ;-)
> 
I'm working on building environment for arm32 from now.

> > Do you think it's necessary to enable ptp_kvm on arm32? If so, I can
> > do that.
> 
> I can't see why we wouldn't, given that it should be a zero effort task (none
> of the code here is arch specific).

Ok, I will test it on arm32.
By the way, does nested virtualization diff between arm64 and arm32?

Thanks
Jianyong
> 
> Thanks,
> 
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
