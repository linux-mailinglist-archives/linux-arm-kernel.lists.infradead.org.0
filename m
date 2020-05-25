Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A311E0476
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 03:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chTSXrj43bwaTMQOJNDpVGI6CuBXyMTG/3vMkR7bjy0=; b=KyAo98Vo5NwiPH
	y2iHWeHNTXCJPlO0DUy8f0x4DsnE+iJ8IgVSAgykv5AF9K1jo39Tajz+o47xUhPnKcnBOJMn+3/Z8
	0RA66QeMUcLRZNnR5zmSdsgDwVXuMV8WcSsAITIPizBpjueV/SMHF4qYmVwF1RrSmhldnU0hPhrxx
	w6+4J9Knnf9uLPOx9LiYSzJE4cxgiOArELzceDYw2SIuUOEcV5eO6SPdU+XWYUyY5nomUYFm6/U0K
	3hdLIVfR5Dq4XnhTMAzUlLElVs1lAOQawwEXDKeJJ3EUuj2BMQfB7RmLvimM2rO81aIYzzVps6Xad
	cAcDmaqVeUByLEL2BRKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd24R-0002Ob-Qs; Mon, 25 May 2020 01:38:27 +0000
Received: from mail-eopbgr80077.outbound.protection.outlook.com ([40.107.8.77]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd24E-0002NU-6x
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 01:38:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xKpqPWiXwX1s9oHxaslGI9pPpxzD4WzD+JjXBLEXAPk=;
 b=mPlvlPpsypkcTTy3bE5rLRARa6PKR2zVzdFADqh58TmohK8o9DcaXE1kyN5ZvVFWfieg39PiyRIyCSxMO21gf+bav+Kx+MXWqUa1ja7UUP31rXAxqhZ5X7ZtokpAsH1sfkYO5s58Jhqg+J4bKeu49/z/iJd4ZVowfFYs8dj58YA=
Received: from AM4PR0101CA0068.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::36) by AM0PR08MB4418.eurprd08.prod.outlook.com
 (2603:10a6:208:146::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Mon, 25 May
 2020 01:38:07 +0000
Received: from AM5EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:200:41:cafe::86) by AM4PR0101CA0068.outlook.office365.com
 (2603:10a6:200:41::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Mon, 25 May 2020 01:38:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT033.mail.protection.outlook.com (10.152.16.99) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Mon, 25 May 2020 01:38:07 +0000
Received: ("Tessian outbound 14e212f6ce41:v57");
 Mon, 25 May 2020 01:38:06 +0000
X-CR-MTA-TID: 64aa7808
Received: from c2b5a79ceaa6.3
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 693EC451-4575-4919-98F1-8F17DF37F683.1; 
 Mon, 25 May 2020 01:38:01 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c2b5a79ceaa6.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 25 May 2020 01:38:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h6jCtbtPIBNyIY40zKtu/lhZsWJPyOGCDI2BTGWq75zPYGVrsU+sVv62vf2lnJW/PgT5yjTN/8fERaLFo8G9noE5D5rmPKCoWCe3EaRmS03RQ2A/rMsAKf2BRkVLieuEAa6TrYFxGkdHlhQlcNKS+XH4wrHuuEow3B40Wl2QsFLZkpgwj7ZdXwJHOKcWrlxfupENOg+30X4qaioBKyiYiesf4moouRQkeaNolZvI0p+7sETVuILxbi0aOT5KdxpnIWhB34HJvLBG3Z0mn7tvdpCEf5IZJFUHnZJxu+fYbVxXMFQrXNpC2yBs5wTC2Fz76Oo9Zc2jo9UsQmTx6Vybww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xKpqPWiXwX1s9oHxaslGI9pPpxzD4WzD+JjXBLEXAPk=;
 b=hmih+ze/ueyMQMevSSm2Sd41Ujcu4RjeiWJt0hEmZRZcvLihyN61eXROvx+PSCY1gZZdIcby6FYDKmhICCf48PNSryvHk67zDuYskxm5jtmEJS+xRPXtesZIY2jCHqlTES7jmke7leYyC9RYCoFaEnyd9pb755hhll/6nXaml5Wi/vE6QUJ0xHDcvHpCcc+3U1ZzmB9O4dwdESmQijdFmOxuUzdMtSONjryYfMllN57vsln1gpQEvVnI1anHNoCkTHOTzKvoRwOKKObbDep/q7up+fHQDjCpY52MdQpSHkdS3xydDtm+177aUfAxQs7Ppl7Ic04SWtywhZxqfJW7ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xKpqPWiXwX1s9oHxaslGI9pPpxzD4WzD+JjXBLEXAPk=;
 b=mPlvlPpsypkcTTy3bE5rLRARa6PKR2zVzdFADqh58TmohK8o9DcaXE1kyN5ZvVFWfieg39PiyRIyCSxMO21gf+bav+Kx+MXWqUa1ja7UUP31rXAxqhZ5X7ZtokpAsH1sfkYO5s58Jhqg+J4bKeu49/z/iJd4ZVowfFYs8dj58YA=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2571.eurprd08.prod.outlook.com (2603:10a6:3:e2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Mon, 25 May
 2020 01:37:56 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be%6]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 01:37:56 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Sudeep Holla <Sudeep.Holla@arm.com>
Subject: RE: [RFC PATCH v12 03/11] psci: export smccc conduit get helper.
Thread-Topic: [RFC PATCH v12 03/11] psci: export smccc conduit get helper.
Thread-Index: AQHWMBRUBAdOXBezXUymOTKynRIElai0FQYAgAP0TiA=
Date: Mon, 25 May 2020 01:37:56 +0000
Message-ID: <HE1PR0802MB255537CD21C5E7F7F4A899A2F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-4-jianyong.wu@arm.com> <20200522131206.GA15171@bogus>
In-Reply-To: <20200522131206.GA15171@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: aa67b612-5610-41a8-b27b-75dee5aeebf7.1
x-checkrecipientchecked: true
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1b55dae7-8e27-47f1-015e-08d8004c466e
x-ms-traffictypediagnostic: HE1PR0802MB2571:|AM0PR08MB4418:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB4418F30A992471AC5076B55BF4B30@AM0PR08MB4418.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 0414DF926F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: He+6Q0V00nxFHrY1xEK0fd8S4PAkqovfrtOloOzV0luMwAELHPf4X6nPfCL9SVzUvdWgvdb3vNTOJzHLHDYwSnKaJKTiwCVVdSZXmo5Dvkrq4sWWXuEyFRxchgXXJLAIojvYiq4EgqSOL8wm+IBhmhyJCj/6adMhpou3Ku2qoLMsoYVRZYD3zav/TiLqwvvn3E5ts/0f8tIjuGPIRVAIFbeAVX0G3OFwDbHRXiBBK48+mGhZV6Mbx6cGH1rZv+k8rcH3k+4sR1IqhPEzeRtnEOrueuuwy/UAObe4RZ0J92RMqA2zxNCZ7V89+poUATqhYs7GWwdO6kzKo8zO+vIrbH1+WCVOunexMFwIx9SFwXOHghxtL1K7LPjvGkHk4uxKAdovr28V3XJ4n3wLuSc7rg==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(39850400004)(376002)(396003)(366004)(346002)(66946007)(7696005)(186003)(4326008)(6862004)(316002)(26005)(71200400001)(966005)(478600001)(6506007)(66556008)(76116006)(64756008)(66476007)(53546011)(66446008)(2906002)(6636002)(8676002)(52536014)(5660300002)(33656002)(8936002)(86362001)(7416002)(55016002)(9686003)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: IX4exGaJJO0u81zqwTPgVsxsRWpw8zIg7OH2kYV02gHPbNmdRp3/+eqer3cVv0ux1Eyha29s+giRxo2AFA0b2ZkslOygM0Exu+8Mf5om+aREiwzzOm8cUvo9TUeoHbQpQ66TKV5wIG51/bABpbI6TT1cOiwts28uKhc2yRICVUJRhru7K7kYBMYuhsMnFtVFkB+m7zWcFI9rKZdgdY+kHiFN6J9U00OQkhXCjEyRZoCalO5EqD5eOtYNvwchRDBUT1zjMOh0Sids2Dbbun6oqA2lGM/HxZp2umqKimwxJhS2ITT+jcFzoHQs2ng7B84RXI+FMwPjFhVaat0LFVcLlSCdeUCkGjto1cXsYmWXTdD63/z1nqdizl7psZ95qoJhG+yCb57QEzn7dGFqiIK/PS9IWduFADyMuboLdgGvmvaM1VdtPtjcS2qH17LRnSuIbLGK7K/EMQ5rwl76LcQhJwY6KjGXrVYPXGvjtHWzrpw=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2571
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(39850400004)(136003)(376002)(396003)(346002)(46966005)(5660300002)(82740400003)(6862004)(7696005)(55016002)(81166007)(316002)(356005)(478600001)(9686003)(70586007)(36906005)(86362001)(8676002)(47076004)(70206006)(54906003)(82310400002)(52536014)(26005)(6636002)(186003)(336012)(33656002)(53546011)(6506007)(966005)(4326008)(2906002)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d651fffb-09ca-4a5c-058f-08d8004c4036
X-Forefront-PRVS: 0414DF926F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WzAo3kgUI5z6wzNYqgQeAZ0MHU35McL3AJsO4Lgf5GuRBOyk2tn1FIJijyoP/VVWie49Sm06lcfd1oO3jr0YGHz9hAi7TZ890ooX7JTyIUc2pnacxzeo5J1ZkDAV9BlCAOJNhdFmgGXPYkipZSZ9dlO7GGsKsHG+N98hT1gYlzpP6kepbVaKDBdkEW1StmcGAsQSyogXLcPbPEqcVvYDd3ItUFh9Lcji4AvN5vSfN81ELPRIobyro0C5eSinEwM1b5fISpt7ud3cFptmPktI1kMI9gwyO8OtJrJU4jyI+GMFlmPyyELKSx+HSpz1e/sOnqflGs8PpQARhQfPXklzP/kVwfyvc0klDf2gZVBm7CsM5WncZBZWcmfR5hfle1H2g+PG6kDJbIvrQ3YGouIlzJLTMhsh0V5/VbxQdgX+jQP18cF/U9s1/dgtp940OV7X2/UNCSctYFW4e0i/YwUCOQ0Y63A4n2sv/pZC8sviU9c=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2020 01:38:07.1444 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b55dae7-8e27-47f1-015e-08d8004c466e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4418
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_183814_315359_8B4E84D2 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.77 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.77 listed in wl.mailspike.net]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 Justin He <Justin.He@arm.com>, Wei Chen <Wei.Chen@arm.com>,
 "maz@kernel.org" <maz@kernel.org>, Steven Price <Steven.Price@arm.com>,
 Kaly Xin <Kaly.Xin@arm.com>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 Sudeep Holla <Sudeep.Holla@arm.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

> -----Original Message-----
> From: Sudeep Holla <sudeep.holla@arm.com>
> Sent: Friday, May 22, 2020 9:12 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com; john.stultz@linaro.org;
> tglx@linutronix.de; pbonzini@redhat.com; sean.j.christopherson@intel.com;
> maz@kernel.org; richardcochran@gmail.com; Mark Rutland
> <Mark.Rutland@arm.com>; will@kernel.org; Suzuki Poulose
> <Suzuki.Poulose@arm.com>; Steven Price <Steven.Price@arm.com>; Justin
> He <Justin.He@arm.com>; Wei Chen <Wei.Chen@arm.com>;
> kvm@vger.kernel.org; Steve Capper <Steve.Capper@arm.com>; linux-
> kernel@vger.kernel.org; Kaly Xin <Kaly.Xin@arm.com>; nd <nd@arm.com>;
> Sudeep Holla <Sudeep.Holla@arm.com>; kvmarm@lists.cs.columbia.edu;
> linux-arm-kernel@lists.infradead.org
> Subject: Re: [RFC PATCH v12 03/11] psci: export smccc conduit get helper.
> 
> On Fri, May 22, 2020 at 04:37:16PM +0800, Jianyong Wu wrote:
> > Export arm_smccc_1_1_get_conduit then modules can use smccc helper
> > which adopts it.
> >
> > Acked-by: Mark Rutland <mark.rutland@arm.com>
> > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> > ---
> >  drivers/firmware/psci/psci.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/firmware/psci/psci.c
> > b/drivers/firmware/psci/psci.c index 2937d44b5df4..fd3c88f21b6a 100644
> > --- a/drivers/firmware/psci/psci.c
> > +++ b/drivers/firmware/psci/psci.c
> > @@ -64,6 +64,7 @@ enum arm_smccc_conduit
> > arm_smccc_1_1_get_conduit(void)
> >
> >  	return psci_ops.conduit;
> >  }
> > +EXPORT_SYMBOL(arm_smccc_1_1_get_conduit);
> >
> 
> I have moved this into drivers/firmware/smccc/smccc.c [1] Please update
> this accordingly.

Ok, I will remove this patch next version.
> 
> Also this series is floating on the list for a while now, it is time to drop "RFC"
> unless anyone has strong objection to the idea here.
Yeah.
> 
Thanks
Jianyong 
> --
> Regards,
> Sudeep
> 
> [1] https://git.kernel.org/arm64/c/f2ae97062a48

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
