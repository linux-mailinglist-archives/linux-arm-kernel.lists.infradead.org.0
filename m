Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2DC1E0498
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 04:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjM0N1dba+HQwhzuukUnp5Pe/2F/0ZpWZMQoZdKyOMU=; b=MBaNamgDIe6pD5
	Xj5EsYH2wUodoj6k5srB55TbEmlj1DVZ4L2/FPSd4BlOPTcYCJ0FO62meNeYzxQZ+inqVXWiLQl8N
	eD8WAmwmETJASd/Qb5W3lCF12vJKEbsOGn8bNXMbDuvWuQZqoNO9B9BjDtLDYG9CTcO0JMONV06G+
	YkPlrnOCV7ns71YCyCuQAFl5qRQmrbLZc+rg7SOIAARMB+9VcAMH/I/uX1woe6UWJDxqpSq7MZ3z8
	2W+rYcfXovOr/aPZXzLZ+c7g8Fyx8R5rsE5yjGpzbv+PM6UKGjjjMkP1FAJRbNzJuWEb/kIffmilz
	7SBQD3TFwvsbSZbeSdOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd2b7-0006LB-1q; Mon, 25 May 2020 02:12:13 +0000
Received: from mail-eopbgr80085.outbound.protection.outlook.com ([40.107.8.85]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd2ay-0006KM-EW
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 02:12:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+1YoSmT7WS0Ndsv47A1pmnmGimdg5mugN7lyM40VV+o=;
 b=d3PWjUhXz3bc3ZzZVFEiOzFRMs9RKXlp5peJLeShtjTONojKwhnb50/inwPM7x0bbk9R5407UglasyxaVxp6eNbGBUx9QrI1rv1SdELvYVNIg/gWtoiLLIRGhm9OxiwTLTu72FUVkHnkNJP1rI42aJLqo6gfGvuVqfyXjhG/RkI=
Received: from AM7PR04CA0019.eurprd04.prod.outlook.com (2603:10a6:20b:110::29)
 by DBBPR08MB4346.eurprd08.prod.outlook.com (2603:10a6:10:ca::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Mon, 25 May
 2020 02:11:58 +0000
Received: from VE1EUR03FT052.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:110:cafe::20) by AM7PR04CA0019.outlook.office365.com
 (2603:10a6:20b:110::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Mon, 25 May 2020 02:11:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT052.mail.protection.outlook.com (10.152.19.173) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Mon, 25 May 2020 02:11:57 +0000
Received: ("Tessian outbound facc38080784:v57");
 Mon, 25 May 2020 02:11:57 +0000
X-CR-MTA-TID: 64aa7808
Received: from 10dd158996a5.3
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 BA220C70-94CC-4857-A31B-FE3EE6AC0425.1; 
 Mon, 25 May 2020 02:11:52 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 10dd158996a5.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 25 May 2020 02:11:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PXpgNEsa0tqK5CdY/Jj79NnH0p1GPPgthSzW4ec34A7Il9y5phzbd4iEU7QnFgFEC/z/PwcBAKsQdiLBAZzDp+xvC0N+Y6kXFc5jl/rHCfvyh4PTe70NtqITD/UhiK3xvcDSS38lwutWVvTcriVnjy6d8ytfVk48x4BVW8Tp03IC+fCOTjimkAW9hSfMgIPkCACTsOz45khJU4EpZ1Hn+BE0iQ6XZWdFbSL/h8fPd/AxwfhnrUowz5G9f3oxL1YKD8YXkFBn2iyPav5lZEeeQGfVEN51ebBmqRVYEbu+42B25VfpLXYRtsd/qSv1x0owuUVxd3ijEkQyMTsIYU3yMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+1YoSmT7WS0Ndsv47A1pmnmGimdg5mugN7lyM40VV+o=;
 b=lwqQMXb5zUI7SrXCDgLWBhZ7Cr9uA1rd86sZaORa1t42VWp5TTyfWuxO4jhqvSKC/AN/TFs0olN5GOgwz5DW5NLFtzmjp361RaJ/CcL0ypDC6fHJwH2Gg/MnXBwE5NUnWAM3pGQ0lvm9js/4p6+SDHC3ePRM7h4Rdb4V/rilaFAZVYUTAgd6lLm9Kay4DJcdpODk6f/zAv+IsvELsGlFmi+p+PinGTbPcKMJtFkOkGnsoTDa1AE0WFzAW+PfNJv9HnmApN7dX0Diq+LgojCCpVI+YgRIF83ziG2FG3Rp8AFu5l/mLTuAyUoDhu7BE563GzF4UNdaloG1R/mEKsaIsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+1YoSmT7WS0Ndsv47A1pmnmGimdg5mugN7lyM40VV+o=;
 b=d3PWjUhXz3bc3ZzZVFEiOzFRMs9RKXlp5peJLeShtjTONojKwhnb50/inwPM7x0bbk9R5407UglasyxaVxp6eNbGBUx9QrI1rv1SdELvYVNIg/gWtoiLLIRGhm9OxiwTLTu72FUVkHnkNJP1rI42aJLqo6gfGvuVqfyXjhG/RkI=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2443.eurprd08.prod.outlook.com (2603:10a6:3:d7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Mon, 25 May
 2020 02:11:48 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be%6]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 02:11:48 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Steven Price <Steven.Price@arm.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "maz@kernel.org" <maz@kernel.org>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, Mark Rutland <Mark.Rutland@arm.com>,
 "will@kernel.org" <will@kernel.org>, Suzuki Poulose <Suzuki.Poulose@arm.com>
Subject: RE: [RFC PATCH v12 07/11] psci: Add hypercall service for kvm ptp.
Thread-Topic: [RFC PATCH v12 07/11] psci: Add hypercall service for kvm ptp.
Thread-Index: AQHWMBRiyrp0i3ftg0yKp1NgeF42Dqi0J4kAgAPjibA=
Date: Mon, 25 May 2020 02:11:48 +0000
Message-ID: <HE1PR0802MB2555A66F063927D5B855E1C6F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-8-jianyong.wu@arm.com>
 <87fce07b-d0f5-47b0-05ce-dd664ce53eec@arm.com>
In-Reply-To: <87fce07b-d0f5-47b0-05ce-dd664ce53eec@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: ce3b9103-893c-4ae7-915c-be7da61ac5e9.1
x-checkrecipientchecked: true
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 626c5227-0bc3-4a6e-171a-08d8005100a8
x-ms-traffictypediagnostic: HE1PR0802MB2443:|DBBPR08MB4346:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB434608B81CCDD68E0B67FBDDF4B30@DBBPR08MB4346.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0414DF926F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: +zaMIu5jRJzSeLCnoFbFR4aEOOMCpbAq7AeEn93OldWUps4bmEUhCf7Glyoas4WSzKEEY/ea1NITrSsL9DevrhSurumEs50mNwbpBQ1jGtIcb5fAs79s8ZvmRZKV5HDmvBb50CWWjsDveymhiU2cYQwjtfLYOPpB22ohMhsAE7VQByMKWt+Q6xq9UFDdygj1zMQIMr7CUW8gww32NyHHhTiFmL3B1KWe+38RE7x+07NBjOlAIU1IKi8Hd7Mtq67iZrc5ddkjUl1pbwwN5mt7uxL/0lOpPMv9c0v6N5Z1a0+kJirUjMdSsv4JGzymWTgVz2lMKpTA0fjrDkEKOI5SmEQBGNwa50CpHajVrwubMszCGXx+qHpnC0bVDs1N3ST6
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(39850400004)(366004)(396003)(136003)(346002)(376002)(66556008)(55016002)(64756008)(8676002)(6636002)(66476007)(66946007)(186003)(86362001)(52536014)(33656002)(66446008)(2906002)(110136005)(5660300002)(54906003)(4326008)(7416002)(6506007)(71200400001)(53546011)(26005)(8936002)(316002)(9686003)(478600001)(76116006)(7696005)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 5VmSj1yL4DaQ0nweIlNUKH1FJGnygou4FaNtmYzoqvxyK05oAtIOaIYvJQ9u4HjPfc0VPs5J72DSN4t3QaLyr9vZTlbm/xqytpdJb0Lu+Qs8k3HxpkFM1u+o9G/07WYtxW2D+pNQSRYuaoB+gKpgMErE2xwdpnaYF8zd2IXbVIvxDSTPex8NkjrZ+SdquLuvLhKStz3WVKs5kfAf3uGZHExJk7wd6Lp8dYsjRo96CueGfP+J6X0J11frglLK4oaXUJakyrntyPwdKkrgaX33LY772nBKxct3IzbqIwigVh1JCViJXgEuy9CHbb5o35jJk/MFJxm8/7+EKk570bJMWB5q141Vd+TsIAEYOPTqZBfwYYCS4VwWvTf++cep1v73gASSFdiss7cliCBVYnMYJKO9ZosxcG8kFMP33tCtKBlrSIMISdideI6v+U0vNj2G7Djw8N7ZoACsR7scXPRpVRhT6VOrejwiKIRfBZiIbjY=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2443
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT052.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(136003)(39850400004)(346002)(376002)(46966005)(86362001)(82310400002)(356005)(81166007)(82740400003)(47076004)(5660300002)(52536014)(70206006)(70586007)(33656002)(478600001)(110136005)(186003)(2906002)(36906005)(26005)(316002)(336012)(53546011)(54906003)(9686003)(55016002)(6636002)(6506007)(7696005)(8676002)(4326008)(8936002)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 81e19192-6ecb-446b-64e0-08d80050fb18
X-Forefront-PRVS: 0414DF926F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DS2GrARKWb9G3oh1whqOBNg4Sis+HZFVMqkrWKV73de7KWdKHaR79f1hpNAFPFoyUg1V39P+LAjizldcV2JkjeXSLmH9T0g4cmuuJ2MBO1GmAXpgB0osLcCJHVgh8xHcf5KHWXDnYOsJQ8XzdXAh9oTynZ1jpOYrvcQKmvqUcAEyPpC0jB6+/AgYmeoE1MIpnvRIhMk7lDogXNU5GkZq9uwEXLHlH7m/SW7i7u5IP4h7lICVqvFVdObpWgbJ3WkzGt2/B9FUM6oYkXF0IxMnMgeMEv9Dlh9WXEJnEiSEqbvkFqrjeERf+dY9OHTvAonTJlccVCgSR2hCDYPQKQV2FQsRCSa2EUaZ5p9hGrs7pznqSet2cByJKn4f6MHMiigWfEcxE+dP9yWp1d7U3/BhWKu7u1UzqwGP+d643REBE6w=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2020 02:11:57.4852 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 626c5227-0bc3-4a6e-171a-08d8005100a8
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4346
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_191204_650072_C1747C93 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.85 listed in wl.mailspike.net]
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
Cc: Justin He <Justin.He@arm.com>, Wei Chen <Wei.Chen@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kaly Xin <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steven,

> -----Original Message-----
> From: Steven Price <steven.price@arm.com>
> Sent: Friday, May 22, 2020 10:18 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>; netdev@vger.kernel.org;
> yangbo.lu@nxp.com; john.stultz@linaro.org; tglx@linutronix.de;
> pbonzini@redhat.com; sean.j.christopherson@intel.com; maz@kernel.org;
> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>
> Cc: linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org; Steve Capper
> <Steve.Capper@arm.com>; Kaly Xin <Kaly.Xin@arm.com>; Justin He
> <Justin.He@arm.com>; Wei Chen <Wei.Chen@arm.com>; nd <nd@arm.com>
> Subject: Re: [RFC PATCH v12 07/11] psci: Add hypercall service for kvm ptp.
> 
> On 22/05/2020 09:37, Jianyong Wu wrote:
> > ptp_kvm modules will get this service through smccc call.
> > The service offers real time and counter cycle of host for guest.
> > Also let caller determine which cycle of virtual counter or physical
> > counter to return.
> >
> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> > ---
> >   include/linux/arm-smccc.h | 14 ++++++++++++
> >   virt/kvm/Kconfig          |  4 ++++
> >   virt/kvm/arm/hypercalls.c | 47
> +++++++++++++++++++++++++++++++++++++++
> >   3 files changed, 65 insertions(+)
> >
> > diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> > index bdc0124a064a..badadc390809 100644
> > --- a/include/linux/arm-smccc.h
> > +++ b/include/linux/arm-smccc.h
> > @@ -94,6 +94,8 @@
> >
> >   /* KVM "vendor specific" services */
> >   #define ARM_SMCCC_KVM_FUNC_FEATURES		0
> > +#define ARM_SMCCC_KVM_FUNC_KVM_PTP		1
> > +#define ARM_SMCCC_KVM_FUNC_KVM_PTP_PHY		2
> >   #define ARM_SMCCC_KVM_FUNC_FEATURES_2		127
> >   #define ARM_SMCCC_KVM_NUM_FUNCS			128
> >
> > @@ -103,6 +105,18 @@
> >   			   ARM_SMCCC_OWNER_VENDOR_HYP,
> 		\
> >   			   ARM_SMCCC_KVM_FUNC_FEATURES)
> >
> > +#define ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID
> 		\
> > +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,
> 		\
> > +			   ARM_SMCCC_SMC_32,
> 	\
> > +			   ARM_SMCCC_OWNER_VENDOR_HYP,
> 		\
> > +			   ARM_SMCCC_KVM_FUNC_KVM_PTP)
> > +
> > +#define ARM_SMCCC_VENDOR_HYP_KVM_PTP_PHY_FUNC_ID
> 		\
> > +	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,
> 		\
> > +			   ARM_SMCCC_SMC_32,
> 	\
> > +			   ARM_SMCCC_OWNER_VENDOR_HYP,
> 		\
> > +			   ARM_SMCCC_KVM_FUNC_KVM_PTP_PHY)
> > +
> >   #ifndef __ASSEMBLY__
> >
> >   #include <linux/linkage.h>
> > diff --git a/virt/kvm/Kconfig b/virt/kvm/Kconfig index
> > aad9284c043a..bf820811e815 100644
> > --- a/virt/kvm/Kconfig
> > +++ b/virt/kvm/Kconfig
> > @@ -60,3 +60,7 @@ config HAVE_KVM_VCPU_RUN_PID_CHANGE
> >
> >   config HAVE_KVM_NO_POLL
> >          bool
> > +
> > +config ARM64_KVM_PTP_HOST
> > +       def_bool y
> > +       depends on ARM64 && KVM
> > diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
> > index db6dce3d0e23..c964122f8dae 100644
> > --- a/virt/kvm/arm/hypercalls.c
> > +++ b/virt/kvm/arm/hypercalls.c
> > @@ -3,6 +3,7 @@
> >
> >   #include <linux/arm-smccc.h>
> >   #include <linux/kvm_host.h>
> > +#include <linux/clocksource_ids.h>
> >
> >   #include <asm/kvm_emulate.h>
> >
> > @@ -11,6 +12,10 @@
> >
> >   int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
> >   {
> > +#ifdef CONFIG_ARM64_KVM_PTP_HOST
> > +	struct system_time_snapshot systime_snapshot;
> > +	u64 cycles;
> > +#endif
> >   	u32 func_id = smccc_get_function(vcpu);
> >   	u32 val[4] = {SMCCC_RET_NOT_SUPPORTED};
> >   	u32 feature;
> > @@ -70,7 +75,49 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
> >   		break;
> >   	case ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID:
> >   		val[0] = BIT(ARM_SMCCC_KVM_FUNC_FEATURES);
> > +
> > +#ifdef CONFIG_ARM64_KVM_PTP_HOST
> > +		val[0] |= BIT(ARM_SMCCC_KVM_FUNC_KVM_PTP); #endif
> >   		break;
> > +
> > +#ifdef CONFIG_ARM64_KVM_PTP_HOST
> > +	/*
> > +	 * This serves virtual kvm_ptp.
> > +	 * Four values will be passed back.
> > +	 * reg0 stores high 32-bit host ktime;
> > +	 * reg1 stores low 32-bit host ktime;
> > +	 * reg2 stores high 32-bit difference of host cycles and cntvoff;
> > +	 * reg3 stores low 32-bit difference of host cycles and cntvoff.
> > +	 */
> > +	case ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID:
> > +		/*
> > +		 * system time and counter value must captured in the same
> > +		 * time to keep consistency and precision.
> > +		 */
> > +		ktime_get_snapshot(&systime_snapshot);
> > +		if (systime_snapshot.cs_id != CSID_ARM_ARCH_COUNTER)
> > +			break;
> > +		val[0] = upper_32_bits(systime_snapshot.real);
> > +		val[1] = lower_32_bits(systime_snapshot.real);
> > +		/*
> > +		 * which of virtual counter or physical counter being
> > +		 * asked for is decided by the first argument.
> > +		 */
> > +		feature = smccc_get_arg1(vcpu);
> > +		switch (feature) {
> > +		case ARM_SMCCC_VENDOR_HYP_KVM_PTP_PHY_FUNC_ID:
> > +			cycles = systime_snapshot.cycles;
> > +			break;
> > +		default:
> 
> There's something a bit odd here.
> 
> ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID and
> ARM_SMCCC_VENDOR_HYP_KVM_PTP_PHY_FUNC_ID look like they should
> be names of separate (top-level) functions, but actually the _PHY_ one is a
> parameter for the first. If the intention is to have a parameter then it would
> be better to pick a better name for the _PHY_ define and not define it using
> ARM_SMCCC_CALL_VAL.
> 
Yeah, _PHY_ is not the same meaning with _PTP_FUNC_ID,  so I think it should be a different name.
What about ARM_SMCCC_VENDOR_HYP_KVM_PTP_PHY_COUNTER?

> Second the use of "default:" means that there's no possibility to later extend
> this interface for more clocks if needed in the future.
> 
I think we can add more clocks by adding more cases, this "default" means we can use no first arg to determine the default clock.

> Alternatively you could indeed implement as two top-level functions and
> change this to a...
> 
> 	switch (func_id)
> 
> ... along with multiple case labels as the functions would obviously be mostly
> the same.
> 
> Also a minor style issue - you might want to consider splitting this into it's
> own function.
> 
I think "switch (feature)" maybe better as this _PHY_ is not like a function id. Just like:
"
case ARM_SMCCC_ARCH_FEATURES_FUNC_ID:
                feature = smccc_get_arg1(vcpu);
                switch (feature) {
                case ARM_SMCCC_ARCH_WORKAROUND_1:
...
"
> Finally I do think it would be useful to add some documentation of the new
> SMC calls. It would be easier to review the interface based on that
> documentation rather than trying to reverse-engineer the interface from the
> code.
> 
Yeah, more doc needed here.

Thanks
Jianyong 

> Steve
> 
> > +			cycles = systime_snapshot.cycles -
> > +				 vcpu_vtimer(vcpu)->cntvoff;
> > +		}
> > +		val[2] = upper_32_bits(cycles);
> > +		val[3] = lower_32_bits(cycles);
> > +		break;
> > +#endif
> > +
> >   	default:
> >   		return kvm_psci_call(vcpu);
> >   	}
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
