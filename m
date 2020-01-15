Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B638513C0D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGlgzvzn82TBDYvLwOuEKEK9V9fcShrqVU6EcbAeO5g=; b=i+9WJslLFgW/q3
	t9Vwfd0w7GcZlJ4YYiIZlgeYw5qLrUcLSoUMC5v3+CSwoAaPnf+6ntsZd1UwLYtWr/jIbSAc7a64v
	J6MfwmbbvZXEhVqrt/UdpurO1raSJhSZbWmjTAM9aE65o/ctfSLEl/D2zON6x+8rZoMzlQm7p4SnP
	23Z8WntoSkOwgvy9nM4Op/b4i+tPrR7E3xEqQaBR+GMsqQKfUksu1rTWNZxEU1fkpYoMj8uWz97tV
	zOGbwBZHJ0sQK+u8GjdGV/xWjN1pwPck+LvZ4KiV1NlLHuobyrdv2zv/5O2VuLBkRVrpUk/RXYYtO
	Kx4SrCntbXz1yPzs9u7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irhli-0002MY-Ab; Wed, 15 Jan 2020 12:27:30 +0000
Received: from mail-eopbgr70087.outbound.protection.outlook.com ([40.107.7.87]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irhlU-0002Le-T3
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:27:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gxCkizhX+nF36XzNhdjTPHjMu/+XCuS8CpWnvo3rgoE=;
 b=RvZ+FCedmF/cutXu7QjgBjidkY79LU8JNvHWZsSNHI1Jb7kKnFQ9WzvwRnT0m5wOKG+YRN5hPozdUDtxP6Ux5UukZdX05EAqbAP3AJvrRgzBd6Wvf5DjgNN720Ktfx4ABfAa3oDZ01jgfHoEuSuFrRNx+U9f/9fIATJtFkdTLS4=
Received: from VI1PR08CA0161.eurprd08.prod.outlook.com (2603:10a6:800:d1::15)
 by VI1PR08MB4189.eurprd08.prod.outlook.com (2603:10a6:803:e7::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Wed, 15 Jan
 2020 12:27:10 +0000
Received: from AM5EUR03FT007.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::204) by VI1PR08CA0161.outlook.office365.com
 (2603:10a6:800:d1::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.18 via Frontend
 Transport; Wed, 15 Jan 2020 12:27:09 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT007.mail.protection.outlook.com (10.152.16.145) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Wed, 15 Jan 2020 12:27:09 +0000
Received: ("Tessian outbound e09e55c05044:v40");
 Wed, 15 Jan 2020 12:27:09 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c712c2e6aa14af85
X-CR-MTA-TID: 64aa7808
Received: from dff9c2b7ebc6.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 0107C91C-0BC8-44D9-9E7A-A02EED7927D5.1; 
 Wed, 15 Jan 2020 12:27:03 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dff9c2b7ebc6.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 15 Jan 2020 12:27:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+WwOkkPs7/5nh5rgDms7ptjf2FV4xRU3UyIy/JRYw6dmm0j/918oopQNWUSjFHPx3CkZTIqcEQdWru8cteNkifrhRNdcqTqFu66i8dQFwhtZW7qqDZUh7A3Y7QK2z+uTgjux9PttnP1VMpHT74hjYlaeAxW40HkMFAm8VFJb8Q1tpktFMLTueEt0Kpwb9NRycmt9KUBhbTuLUys446baY/yqfMpz7cvtC6cI3dRz2KIPvEjudjrFL5mqSl13LvoW/oVJAwxt7YDhgB6ThTz9tYW9Plc2Gw9Ge/DjDu/uFpFgdB6d+6kiIvGT9sipGxBPjnbUTQmsmgrbUn9UQiNTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aA8mkvgZR6JKCbjlqgUy/RSdtFjFT3cK8UlBBVBh+xY=;
 b=Oj8GZwjLUKf80pPV7nvXzRQNam8WhAtpWKL5+dIEckTDEzmp+bBfGTeXBmflKihIOANXRO8umtjOedcMCKI4k2fE/oPvC+5QVKsQ5Cd8bKpEe+UJaOtxsQJsi1R1qozXLcJEUPmEQJ9+lurrGgpQdGshrJ1F/LtRb642JaHCahS5nSnrRDxLvcLpDTBmZQnPBi0rh9lgcFIHzXrGCeQLy9eD6HoqKsyHTuRQ0IWSE37W9b/AasrYSERMGU7ihHjzCaRmWycUWGw7rbxrLz8NNqhuqFSU2ROS8IgJe1C5BRveHAEZDKnDDIoQtUkd/pd0Je4uZO85wxtxfnSoBJAsuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aA8mkvgZR6JKCbjlqgUy/RSdtFjFT3cK8UlBBVBh+xY=;
 b=ZtnITDp7+PfUzNQSC97Rut/0tsT291Z9ci7qED7MoAc+IEv+MH51edDJhClKU+XiG849NOeUq74Lxd/leBCMXl01LUU4eI1SCS/dEDgRZFVnpFW/daHUUotX6vGkQ43mAsX+Ch+m+Mtfv06oEsAzi/+X2rZeAUcO/K1eMUoYGoQ=
Received: from DB6PR08MB2791.eurprd08.prod.outlook.com (10.170.219.160) by
 DB6PR08MB2663.eurprd08.prod.outlook.com (10.175.233.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Wed, 15 Jan 2020 12:26:59 +0000
Received: from DB6PR08MB2791.eurprd08.prod.outlook.com
 ([fe80::c51d:bc86:7692:181]) by DB6PR08MB2791.eurprd08.prod.outlook.com
 ([fe80::c51d:bc86:7692:181%6]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 12:26:59 +0000
Received: from arrakis.emea.arm.com (217.140.106.50) by
 LO2P123CA0067.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:1::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20 via Frontend Transport; Wed, 15 Jan 2020 12:26:59 +0000
From: Catalin Marinas <Catalin.Marinas@arm.com>
To: Amit Kachhap <Amit.Kachhap@arm.com>
Subject: Re: [PATCH v3 01/16] arm64: cpufeature: add pointer auth
 meta-capabilities
Thread-Topic: [PATCH v3 01/16] arm64: cpufeature: add pointer auth
 meta-capabilities
Thread-Index: AQHVs+1+hYAi2/Cb40etJFl0dxqsQ6fr1kyA
Date: Wed, 15 Jan 2020 12:26:59 +0000
Message-ID: <20200115122657.GB3429@arrakis.emea.arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-2-git-send-email-amit.kachhap@arm.com>
In-Reply-To: <1576486038-9899-2-git-send-email-amit.kachhap@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.50]
x-clientproxiedby: LO2P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1::31) To DB6PR08MB2791.eurprd08.prod.outlook.com
 (2603:10a6:6:17::32)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Catalin.Marinas@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 36f0693e-130c-406a-6004-08d799b63db6
X-MS-TrafficTypeDiagnostic: DB6PR08MB2663:|DB6PR08MB2663:|VI1PR08MB4189:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB4189E9025BB1316131CC13C3F2370@VI1PR08MB4189.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:10000;
x-forefront-prvs: 02830F0362
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(39860400002)(136003)(396003)(40434004)(189003)(199004)(316002)(71200400001)(54906003)(6636002)(86362001)(16526019)(55016002)(6862004)(186003)(956004)(478600001)(26005)(2906002)(66946007)(64756008)(8936002)(5660300002)(44832011)(7696005)(66446008)(4326008)(81156014)(66556008)(66476007)(81166006)(1076003)(8676002)(52116002)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR08MB2663;
 H:DB6PR08MB2791.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 25DeXY7nzh+kVoUdAbOtElTEq3V2ZRRGUZZB6qg0eBotwbmafUjjD7Krcy8oMUBxYuKw4p6YKluxI/MsTTeb+rXE8TaWfg/uC6PFVjUFjBs5yk3bG3uvH8PTX2Tz326yfleLGhJMyh4k0YE9hAqLui1CgPbZaTjOXQBI0bl2kG+niR2hDKDN+r0YCQlwoP/H8AB5a8FAKzPiSuHhZFKKiOjY4cxd+iGl1FhWfsPjdDi/A4AwmsOWlXycOPFFdn8VKXpeGFHHYeqjQwHRIhQNxMWYEuw+GTNpzc083BsJ8S9l/zypEo3Ll3vCTyBedWOYK7oVDK8POSCQBbMg/UZRNGdbzIcVd0abfNF9MswpJNxpEd4k8VU9L9b480cLM9SljdtfVGYdyJfhva6hrBaYY151Sosk6ShayCBEBvAIDKFcCLOkfZtW+OEtamDCyMPJqEL1YyTBQhOYh/c/0hj/aHtw9g0nwF5qchjbREMGrL9r8Q6aBCyJ6AoZQE9OxP1n
Content-ID: <292CBFEB06E2814E98F976CE316D3082@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR08MB2663
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Catalin.Marinas@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT007.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(346002)(376002)(199004)(189003)(40434004)(86362001)(54906003)(316002)(356004)(4326008)(6862004)(956004)(36906005)(107886003)(33656002)(336012)(6636002)(70206006)(26826003)(478600001)(1076003)(186003)(16526019)(55016002)(26005)(5660300002)(8676002)(2906002)(81166006)(70586007)(81156014)(7696005)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4189;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 4c5b7abf-14bd-4dee-4482-08d799b637d6
X-Forefront-PRVS: 02830F0362
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XBSoXzpBxuYzGj0xpsIDjFq0eKHwfffvj2dQTrc1/mxrIPcK2gc/P4KcujVSvndEIQNhV39NED8N6prAQST0H4eCQLT7Hz2Drf5H5Z0VXxXavXyWbu6Wt0zSPCbDpXq8DS5ZpsdS7jQ9zMUNSJ2a5cxkuTiYpi1IAurPvx1mQcGkmcBmH4ljhey+napAbXL8GmhwNp1sdgf7eGblmAEsZ14AOQwkrTZDY1FkYLWIyoPe+287Y2kkvKKwbNWbEcps46153qwm00mq1obudac2aoW5o14O9Xe47w6CN0SugfMPgHsZ57Cg0WZVc8UgMziczk1hmQ37wLmteawLQ5B5hDgIeYDrQACeU5xNquP+Nv6R0y13OCXj/24mwTe7SBVeot9716kp13hQ2Hpq16qvGPKMrCCsxZrcV/5lMBXPq3VsHWI2XyS8cFL1hw7fV1fKXoloCzSERZGHjXHx9590rAKRe7JHOG4nG//UE70/PJ3KGeg0DA/G8LIzVsZTwjGM
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2020 12:27:09.4076 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 36f0693e-130c-406a-6004-08d799b63db6
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4189
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_042718_808098_F6F70D93 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.87 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <Kristina.Martsenko@arm.com>,
 James Morse <James.Morse@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 02:17:03PM +0530, Amit Daniel Kachhap wrote:
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 04cf64e..cf42c46 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1249,6 +1249,20 @@ static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
>  sysreg_clear_set(sctlr_el1, 0, SCTLR_ELx_ENIA | SCTLR_ELx_ENIB |
>         SCTLR_ELx_ENDA | SCTLR_ELx_ENDB);
>  }
> +
> +static bool has_address_auth(const struct arm64_cpu_capabilities *entry,
> +     int __unused)
> +{
> +return cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
> +       cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF);
> +}
> +
> +static bool has_generic_auth(const struct arm64_cpu_capabilities *entry,
> +     int __unused)
> +{
> +return cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH_ARCH) ||
> +       cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH_IMP_DEF);
> +}

Do these rely on the order in which the entries are listed in the
arm64_features[] array? It looks like we do the same for PAN_NOT_UAO but
that's pretty fragile.

I'd prefer if we invoked the
cpu_hwcaps_ptrs[ARM64_HAS_ADDRESS_AUTH]->matches() directly here, maybe
hidden behind a helper (I couldn't find one at a quick look).

--
Catalin
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
