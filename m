Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BC5D8DC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxoaZh1s0yv0Mtb+Hv9lm4bRkwlXLvpOFfBnLP1VrwY=; b=MjnVa2NW7X+UGU
	BeB8K2dcA/rZJ9qayZcEaSiZqpzj8ok4ugp7jZHwdSzzNDADmLNu3K3kHn3ge31CRzqonG3QtxqJE
	QoDL4znkFxVEMd/FH02crgIcn8NOVENuEgX6sx0jh7QKvlbxVy92OO3U68E/LQCmv+tMYH3itAJmc
	sHVsLHnle5p38uVyUHqsi2qcay6DLMTJZTUAEpjLfiOMz4EjodYsfX4htc68Fhtf0ZeCFwNStPI/j
	uqGTO9rnHLtsLsKrf37fLt5WwlDHiPjWFsc6kbSIBtNsMAZlwHiiCjzoAtEL6gVe5dCPBdZ3wyKFy
	PUfbRyizmkQcuzLyrR+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgQT-0006mR-Nl; Wed, 16 Oct 2019 10:21:05 +0000
Received: from mail-eopbgr130082.outbound.protection.outlook.com
 ([40.107.13.82] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgQ4-0006bb-VE
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:20:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DDp2fnDxHPIWeFnZ5sV7PZ6gyFHF27CUL9JVJA8iIG8=;
 b=ItVmx7kCTQoqHaPd2x1E08X99ZztQVyOIdzrzqP/HTt6x2tjG73FD4nsoIvEZHQ7VPPyqmAYmskRE731TjEY1UsqjqruoRUkpxvNwgT5w15EjI/xlbmO3XMr6U1P4vIxPKUfGzn2Lc6o/W0PRnDKFLnD7OYFLaL1uZb5+oNjmOc=
Received: from AM6PR08CA0009.eurprd08.prod.outlook.com (2603:10a6:20b:b2::21)
 by VI1PR08MB3422.eurprd08.prod.outlook.com (2603:10a6:803:7c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Wed, 16 Oct
 2019 10:20:35 +0000
Received: from AM5EUR03FT055.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::205) by AM6PR08CA0009.outlook.office365.com
 (2603:10a6:20b:b2::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 16 Oct 2019 10:20:35 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT055.mail.protection.outlook.com (10.152.17.214) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Wed, 16 Oct 2019 10:20:34 +0000
Received: ("Tessian outbound 0cf06bf5c60e:v33");
 Wed, 16 Oct 2019 10:20:26 +0000
X-CR-MTA-TID: 64aa7808
Received: from c6101318b283.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.13.55]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 69016E91-2A83-4FC6-8012-600F676F5E84.1; 
 Wed, 16 Oct 2019 10:20:21 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2055.outbound.protection.outlook.com [104.47.13.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c6101318b283.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 16 Oct 2019 10:20:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gbOLwIIk6Z28jaIfCnlEP6absjRIULfvVGsJn2ijo6vBpp7jS1oT5WU1kY0tSkroogNxKBiIUrvtgLQOvt6deveZGWfGLhwGC7DsYG6gnmUMsp5lrpSLBbYYEkYSwR2vNO9VMwqpadgBYj1nplHbexCCWmaCiM4gGdzE7fJ1zGPEYrGredEx9xuhyl29Y1/uGKkFeiTOIQZb6AMqEZb4jVbjEu+hJXMuhDGIHkviMTYiVdwu9ar2hzX8vSjO1gp6wid4GXdJRKVH4ZPT4i6f1MWXujpomAMgSncl3Hfcq+NorORzfgmbiRS+ZFqu8eLwRsyv576sJiQfJg0gZluMsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DDp2fnDxHPIWeFnZ5sV7PZ6gyFHF27CUL9JVJA8iIG8=;
 b=O1kFKxkZauvO+a805UJa7+gvurCqxxic0cZ9PFFfH/ALDlaPtkTYjYyk+LMKa3AW8n+11Hf9gqCNCwK9LU7vJUfAGx3R3FnbNIs1RLrsSYt3KsZB+1yqXry4HVUHBJ6QvJEeSS7wbXdHH1VXh9f9pZqzzHqQrxzYlncjCoo3ANENa0K9PLqcgVkorGNScrp/P/aOMCAI5R9wc2AP7N51D1E9iYTiq84N2xtqUt8T5fce1j+i/YA4pht5aE0/vLxE37FNDMuJbMUO3PWGYg8DhG3mqTfYXO09+e7RWfqX0/wy0LuW4IYWJBQGLuNqZ9j8sL5FP07fTT422zxn+u6meg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DDp2fnDxHPIWeFnZ5sV7PZ6gyFHF27CUL9JVJA8iIG8=;
 b=ItVmx7kCTQoqHaPd2x1E08X99ZztQVyOIdzrzqP/HTt6x2tjG73FD4nsoIvEZHQ7VPPyqmAYmskRE731TjEY1UsqjqruoRUkpxvNwgT5w15EjI/xlbmO3XMr6U1P4vIxPKUfGzn2Lc6o/W0PRnDKFLnD7OYFLaL1uZb5+oNjmOc=
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com (10.168.146.150) by
 HE1PR0801MB1964.eurprd08.prod.outlook.com (10.168.94.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.22; Wed, 16 Oct 2019 10:20:19 +0000
Received: from HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d]) by HE1PR0801MB1676.eurprd08.prod.outlook.com
 ([fe80::b056:4113:e0bd:110d%6]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 10:20:19 +0000
From: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "sean.j.christopherson@intel.com"
 <sean.j.christopherson@intel.com>, "maz@kernel.org" <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, Mark Rutland
 <Mark.Rutland@arm.com>, "will@kernel.org" <will@kernel.org>, Suzuki Poulose
 <Suzuki.Poulose@arm.com>
Subject: RE: [PATCH v5 4/6] psci: Add hvc call service for ptp_kvm.
Thread-Topic: [PATCH v5 4/6] psci: Add hvc call service for ptp_kvm.
Thread-Index: AQHVg0Y6ldpzPhPiCEmlQj9Y39l92adc3w8AgAAwgWA=
Date: Wed, 16 Oct 2019 10:20:19 +0000
Message-ID: <HE1PR0801MB16762F7310EC28FE8DDEAC2EF4920@HE1PR0801MB1676.eurprd08.prod.outlook.com>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-5-jianyong.wu@arm.com>
 <9641fbff-cfcd-4854-e0c9-0b97d44193ee@redhat.com>
In-Reply-To: <9641fbff-cfcd-4854-e0c9-0b97d44193ee@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 94428382-265b-4841-b3fb-4bd68ecd7167.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 0602fdb6-0050-4356-2a93-08d752227b4c
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1964:|HE1PR0801MB1964:|VI1PR08MB3422:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB34221F1251033DBF03A77476F4920@VI1PR08MB3422.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 0192E812EC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(346002)(376002)(136003)(199004)(189003)(13464003)(25786009)(66446008)(2201001)(71200400001)(102836004)(86362001)(8676002)(2906002)(6636002)(74316002)(478600001)(76116006)(66946007)(71190400001)(81166006)(33656002)(81156014)(99286004)(66556008)(6116002)(64756008)(66476007)(3846002)(4326008)(256004)(5660300002)(55236004)(8936002)(6506007)(6246003)(53546011)(7416002)(186003)(54906003)(9686003)(6436002)(7736002)(316002)(2501003)(446003)(52536014)(14454004)(55016002)(305945005)(110136005)(229853002)(76176011)(476003)(66066001)(11346002)(486006)(7696005)(26005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1964;
 H:HE1PR0801MB1676.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: I1w2hbVbICQ9mMusbQX4PqCCA8pFB/i2aKV5CKr0K6eHJEHbkia21eb10F0waxU0rrGBxHkEpSQ1WJFf+4tVFRqxfX7cBM7MUpluZSOUdP9Bwl6Zt2GzIqS2xbfJm/0ujeNDJ0i3gYh7om1zLpfuL+x8dvB3sLGF+saCcMbrkQHJ8/LZsEWFAJYEC8VzEsbMzuKEAuzhsA+VdLgNJqNLlLhbPUGL2cl4xcAyo3f2Z0BeIyc8BKtXGDHJjcC3CC0nkjF8TYvSQBB0NxrCF4MHnhQdEOPzX+23o4nCVDcraqrXh+lSF22hErTr0KeU3H/vTJ19wKgHlX4EramCING8mJitfRBdZ3CB5lhIfI4Na43c0Pnt61zG5fky9oYroN//r61a1b6Lbwqle0516UqRrrMWORweq5mP6IkquPDdxeE=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1964
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jianyong.Wu@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT055.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(376002)(396003)(13464003)(189003)(199004)(50466002)(2201001)(2486003)(4326008)(8676002)(14454004)(7696005)(5660300002)(26005)(70586007)(102836004)(23676004)(52536014)(76130400001)(26826003)(478600001)(86362001)(25786009)(22756006)(55016002)(336012)(436003)(66066001)(110136005)(33656002)(316002)(54906003)(63350400001)(2906002)(7736002)(446003)(126002)(47776003)(476003)(186003)(11346002)(74316002)(229853002)(6116002)(305945005)(36906005)(356004)(53546011)(2501003)(6506007)(76176011)(70206006)(8936002)(99286004)(3846002)(6636002)(81156014)(9686003)(81166006)(486006)(6246003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3422;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: eb38ac53-4990-4f53-aa7d-08d75222722a
NoDisclaimer: True
X-Forefront-PRVS: 0192E812EC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 91KwXrsWt45RNO8wAStyImay7B4WKf/T2N+tDVFUFInr8nGWYJYORE4HnDtG0gXsvAo4N9Ji/1bD1YHq9JBz13WsghFM5apj8DOvZjByb4noAzCb8BDLO9AS+gGKw1EsIgJTlROflJbdxgjUjJ/dYQ/+8YVWmMXhw4eL+l74sU+0vltDVL8iLOfZwKGPWo1MRE5cLrwFKh66Lps+v7o3Lxb/gQ7BZWciQBW8LjtJ+nEP8CLZlmqKacFG4u/d9xhBaFLbI6pVLYgOv3DNihhYHwuJ4gHrARI9/X/L0ZaXzrkEoVS3tdpJMpvL9PrHsscThlN6Lsv60/HMsfomVWRUuGLI2g5LwLF0x1ZFfsOSgQfQENnE4S9pwpFlDWZ3DKGmXGiz6oYHfF5HeLs4WYEPO/0iCAvqTC9MB7+q0WJWIVk=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2019 10:20:34.6608 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0602fdb6-0050-4356-2a93-08d752227b4c
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3422
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_032041_047678_5EAAA794 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.82 listed in wl.mailspike.net]
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
> Sent: Wednesday, October 16, 2019 3:25 PM
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
> Subject: Re: [PATCH v5 4/6] psci: Add hvc call service for ptp_kvm.
> 
> On 15/10/19 12:48, Jianyong Wu wrote:
> > diff --git a/drivers/clocksource/arm_arch_timer.c
> > b/drivers/clocksource/arm_arch_timer.c
> > index 07e57a49d1e8..3597f1f27b10 100644
> > --- a/drivers/clocksource/arm_arch_timer.c
> > +++ b/drivers/clocksource/arm_arch_timer.c
> > @@ -1634,3 +1634,8 @@ static int __init arch_timer_acpi_init(struct
> > acpi_table_header *table)  }  TIMER_ACPI_DECLARE(arch_timer,
> > ACPI_SIG_GTDT, arch_timer_acpi_init);  #endif
> > +
> > +bool is_arm_arch_counter(void *cs)
> > +{
> > +	return (struct clocksource *)cs == &clocksource_counter; }
> 
> As Thomas pointed out, any reason to have a void * here?

Need fix.

Thanks
Jianyong 

> 
> However, since he didn't like modifying the struct, here is an alternative idea:
> 
> 1) add a "struct clocksource*" argument to ktime_get_snapshot
> 
> 2) return -ENODEV if the argument is not NULL and is not the current
> clocksource
> 
> 3) move the implementation of the hypercall to
> drivers/clocksource/arm_arch_timer.c, so that it can call
> ktime_get_snapshot(&systime_snapshot, &clocksource_counter);
> 
> Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
