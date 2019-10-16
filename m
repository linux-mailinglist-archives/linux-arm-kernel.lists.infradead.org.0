Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C22D8D6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDlRPbqF1EDIIrpJDNCZy9vVxNUtTRuYT8x97qG3V/w=; b=oS9Wy79U6xqTHz
	NVAs9TtNm9M39s4ug4uD8XKbRo0St6eTM2p6znwKU/WoLEbDVOdqzGk42lNdgYqZnmoW16XLUz38K
	Dn9zF+8W2ghYJKUa0gZh5uYPOFSr/rwT4HxkjhfQ5RZ/lRBT6vt1NQSMUFyNfziM5GqbK3Jcejq7J
	PfRgMhPAPfZNIjghP4nBq3OEBq7gW1pLdq7wcDXLWkQfyHkwH7NJeHZeXyFB1gjZYmj6qc+olkydB
	1UxfFCw55YKw/d5xCZA5tgKYT2XO8V3C4wE+6qCYIUL73LrxVAfD51P+Mudvvwq689OPg4RDMeuPh
	qX0+x9d/7iNVgg7lyK5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgHf-00022n-BF; Wed, 16 Oct 2019 10:11:59 +0000
Received: from mail-eopbgr30084.outbound.protection.outlook.com ([40.107.3.84]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgHV-00022Q-T0
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:11:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W68CjDz+YFYlGQdlfn1ofOaDeRO0JBLPUa8xxDrqbhc=;
 b=PdpCEzvRh3l9YfJApovR3zzhp7+nA1B6p5cAVizaSQvBBjAs+dS8AcvhwviVzqgr1wOF2oIs3oMZOxUuZuMR46gohA0yRJoALJ2a568bOB7qFTaEO4Lw6jB7VtUZJn7UF0nRt5Sg1h1E7sdghXu3/YjPcNxpMgBHGPSZn8xkojo=
Received: from VI1PR08CA0088.eurprd08.prod.outlook.com (2603:10a6:800:d3::14)
 by AM4PR0802MB2338.eurprd08.prod.outlook.com (2603:10a6:200:63::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.21; Wed, 16 Oct
 2019 10:11:45 +0000
Received: from AM5EUR03FT021.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::207) by VI1PR08CA0088.outlook.office365.com
 (2603:10a6:800:d3::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 16 Oct 2019 10:11:45 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT021.mail.protection.outlook.com (10.152.16.105) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15 via Frontend Transport; Wed, 16 Oct 2019 10:11:43 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Wed, 16 Oct 2019 10:11:33 +0000
X-CR-MTA-TID: 64aa7808
Received: from 584ede32fc7e.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.5.50]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 9F4E5496-4962-42B0-A7F2-540BA592F33F.1; 
 Wed, 16 Oct 2019 10:11:28 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2050.outbound.protection.outlook.com [104.47.5.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 584ede32fc7e.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Wed, 16 Oct 2019 10:11:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O8bxk818lSSIZcUAxsoB/o8tuuNWNckQxvJmuUkJ8PjVKAB/uYM6Ll/P8WtR0vk+XiF0XXDZe8rVMd+DEuFYWg52iEcD6Nl1mgBxK2p6es5yMrySl8HZrK8QUPSlHELvGq2DwpHDMhvaSMqqjSqFCXH1sG/d3ZtkRe05nSnHUPmaRc3/GcLuMUuPPSSQ1qMKiOsUoT54KiX4Xj52cqVaF8Sh4q/D5Cdbev1HXHq3a/urHbHH+/52t7vh56fCagbd7A489eVdOwtIXKCDGtiGWLdc97S447pb0bBOCPPettkKD9wvES7q8QCiihKsdbjjxQx2r8rIuywNk4pFe9HxHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W68CjDz+YFYlGQdlfn1ofOaDeRO0JBLPUa8xxDrqbhc=;
 b=K36CsZ+OH4mYWzuMxAlb0UCqlyPiDrGFuJfWAVebT8yOh9+CZM3Q51skQYEtPIywU5GkPiL1cT5YHF3ZT+9EjeAxfYm3pJERUr6i6DaBLMPvIztlRnSYEVliQNlVgWur6Z5vQwot7GgexzJezD4GABuzohAycUy+U+7iFCJ9QmT4lmIoA8/1d/CEQQGaFy8X3Wq0cShO/lyb/n9unimwJhhpRdx/CR5VTSMlYvQ6aeu2lQSwktTx9n2EmtUo8sgnCzPMUvIHWYZN03SS9+v3W0yLlljrAuVLDZ2C2+f/SmjdkqzzLN2eqS5BS1ThpeS1tkDUdBkSG0SYjYhOgb1vGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W68CjDz+YFYlGQdlfn1ofOaDeRO0JBLPUa8xxDrqbhc=;
 b=PdpCEzvRh3l9YfJApovR3zzhp7+nA1B6p5cAVizaSQvBBjAs+dS8AcvhwviVzqgr1wOF2oIs3oMZOxUuZuMR46gohA0yRJoALJ2a568bOB7qFTaEO4Lw6jB7VtUZJn7UF0nRt5Sg1h1E7sdghXu3/YjPcNxpMgBHGPSZn8xkojo=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1SPR00MB244.eurprd08.prod.outlook.com (10.171.98.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 16 Oct 2019 10:11:25 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d%6]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 10:11:25 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "sean.j.christopherson@intel.com"
 <sean.j.christopherson@intel.com>, "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, Mark Rutland
 <Mark.Rutland@arm.com>, "will@kernel.org" <will@kernel.org>, Suzuki Poulose
 <Suzuki.Poulose@arm.com>
Subject: RE: [PATCH v5 5/6] ptp: arm64: Enable ptp_kvm for arm64
Thread-Topic: [PATCH v5 5/6] ptp: arm64: Enable ptp_kvm for arm64
Thread-Index: AQHVg0Y6A4wUAbusSUOkn5f/2HpSwadb56wAgAC7jVCAADfWgIAAAOYAgAAwG2A=
Date: Wed, 16 Oct 2019 10:11:25 +0000
Message-ID: <HE1PR0801MB1676412E33493247F7C37C6CF4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-6-jianyong.wu@arm.com>
 <da62c327-9402-9a5c-d694-c1a4378822e0@redhat.com>
 <HE1PR0801MB167654440A67AF072E28FFFDF4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <6e9bfd40-4715-74b3-b5d4-fc49329bed24@redhat.com>
 <140551c1-b56d-0942-58b3-61a1f5331e83@redhat.com>
In-Reply-To: <140551c1-b56d-0942-58b3-61a1f5331e83@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 14dea4f2-b891-4ba3-9452-a89be0130161.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: b7aa2ccb-8ad1-493a-6333-08d752213ee1
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: HE1SPR00MB244:|HE1SPR00MB244:|AM4PR0802MB2338:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM4PR0802MB2338E0FDF1AF19AC116537B4F4920@AM4PR0802MB2338.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 0192E812EC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(366004)(136003)(39860400002)(189003)(199004)(13464003)(53546011)(14454004)(7696005)(76176011)(55016002)(5660300002)(86362001)(316002)(476003)(6436002)(9686003)(3846002)(11346002)(6116002)(446003)(99286004)(7416002)(66066001)(110136005)(186003)(102836004)(6506007)(26005)(54906003)(256004)(71200400001)(2501003)(2201001)(33656002)(52536014)(71190400001)(55236004)(486006)(6636002)(74316002)(305945005)(478600001)(25786009)(7736002)(76116006)(8676002)(66476007)(8936002)(81156014)(64756008)(66446008)(66556008)(66946007)(4326008)(6246003)(229853002)(2906002)(81166006)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1SPR00MB244;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: X2rvBiNwCxruNT+7VAx6SGWdAs3F25IT5iNnDekCGw/xHwdKRks7GybByEneFEuYYXTQksaq64hKAj5lx5nWG4CC4d+ITk4nftyrU8/Rth6EDRNBNA3iFVvgKKpqgx3G4vwUy3wgL/A8b+/Oy9BAJaXWDvrOSzZYE6UZF3ZZkO8MQrMa25Q9Z+BIpPeI6pe7+agSKos0tOjO3rXCAorc6O0C7rCCEDoYGn57A7aWzgtDfoJzWMeuZmzbWlXs4k5Jr3uP9fSuZNzDcaPsApS0PWwpwYcqcRKfUh8mkcNVVhVyJJGGKtGPymoa9A1CFEXWvOTaLTTyfv10xlKKccUcQxUDn6DoK9kF5Ax/1+qWq0a2XNntkgrI5MCZY3UNuAyWaf2jp7pji9WIkUhSj/nzSCVTpsPcT7lIzwFUlNKhhSY=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1SPR00MB244
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT021.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(376002)(13464003)(199004)(189003)(8936002)(2906002)(36906005)(336012)(7696005)(186003)(76176011)(23676004)(110136005)(436003)(76130400001)(26005)(6636002)(102836004)(4326008)(53546011)(70586007)(6506007)(8676002)(25786009)(316002)(2486003)(99286004)(70206006)(81156014)(54906003)(50466002)(26826003)(478600001)(81166006)(14454004)(486006)(55016002)(74316002)(3846002)(22756006)(6116002)(2501003)(7736002)(86362001)(446003)(63350400001)(229853002)(305945005)(126002)(9686003)(11346002)(33656002)(2201001)(5660300002)(66066001)(476003)(6246003)(47776003)(356004)(52536014)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR0802MB2338;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: e80cd277-4ded-4285-dc25-08d752213433
NoDisclaimer: True
X-Forefront-PRVS: 0192E812EC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q9pYW8qPbLbqlr+zCblf2gGMXoAtaxmLo07WjJC7usO4cma+R2U2FkAYnHJdvcEeXRm55q1AN2Szn4LOm4wleXyc5RG2vRipI+MzDp4EAiVeISHLKWHR0ZOXRoQ6hDGLipqK1Gm617ae9vH+ozGaqP03Yl6CmlyM3usgCwvlKXCmWP7bAr1RcDe4jynaOU4M9sglyEKqQsh7hf1Bp2MrzGieFZBmYOc5hDRs1PzPSUSN5a/bVtdF5S9mJxtYDdqDzkI3G0tVKR6PPtqixsFrV9KMtYwcEgFvpTzLIvGDYTwuNLHlJDy0GxlYlm1HsoPijNYk1M8OFgslf/E4+ctLWIAu+PlCF5In/xkyvg1sP63Jj64CeuYnB1xPSYeZpm303YfAk3VcS43AFkWrhUY8/+pit4jKVMg0qIXnU1saeeM=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2019 10:11:43.8010 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b7aa2ccb-8ad1-493a-6333-08d752213ee1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0802MB2338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_031149_941224_D30E0176 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.84 listed in list.dnswl.org]
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

Hi Paolo,

> -----Original Message-----
> From: Paolo Bonzini <pbonzini@redhat.com>
> Sent: Wednesday, October 16, 2019 3:14 PM
> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>;
> netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; sean.j.christopherson@intel.com; maz@kernel.org;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>
> Cc: linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
> <Justin.He@arm.com>; nd <nd@arm.com>
> Subject: Re: [PATCH v5 5/6] ptp: arm64: Enable ptp_kvm for arm64
> 
> On 16/10/19 09:10, Paolo Bonzini wrote:
> > On 16/10/19 05:52, Jianyong Wu (Arm Technology China) wrote:
> >> This func used only by kvm_arch_ptp_get_clock and nothing to do with
> >> kvm_arch_ptp_get_clock_fn. Also it can be merged into
> >> kvm_arch_ptp_get_clock.
> >>
> >
> > Your patches also have no user for kvm_arch_ptp_get_clock, so you can
> > remove it.
> 
> Nevermind.  I misread patch 2.  However, to remove the confusion, can you
> rename kvm_arch_ptp_get_clock_fn to kvm_arch_ptp_get_crosststamp?
> 

the suffix of this function name is reserved from its arch-independent caller ptp_kvm_get_time_fn, so if I change this function name
It will be better change them whole. I think "ptp_get_crosststamp" is a better suffix.

Thanks
Jianyong 

> Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
