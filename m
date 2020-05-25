Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF8A1E06EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 08:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAaL9rFZH2NxbnlZpO+MqCm7iGaTcSfHdYE/s1MwUR8=; b=BSFh/p55SlMYtR
	swXP0VFbWzeFe9f+lXWNrruFDPusvqMpG7oSQ1RH0ed7b832RpdslRK0j/5fNfZuF84dZJx6Cnq5C
	WZYs2yT29uaMWDdBco4el7VoaBT45uG3KNS+Lvt81Nna5GzOygpoIVi5ztBz1JyPqkr+gtJv+Dph1
	UFwVa11ESni90YZk8fClyYmiXHyhqeoP3kGErvMWTRszKhg5pdyMF0j9uPfdF8iqEvMn57hxz74JR
	7NXlaVEOC8Vw2ZXmrY16ScCNH1bJ/VZtqs2z1eUlgdBlMygV5og2hCwqifPKA3A10RiOT2AWa7pHx
	wiKS5NMatRQaImOJoaMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd6ck-0003Hf-VA; Mon, 25 May 2020 06:30:11 +0000
Received: from mail-vi1eur05on2084.outbound.protection.outlook.com
 ([40.107.21.84] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd6cT-0003Gc-2G
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 06:29:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tv1jqUYENvo6g+B9+/K4FqJigiAnUJw8oDZVDnXfIwk=;
 b=h24bf90/6sweDGx8M8jhvP8vxxBZvxk9bDgShvzkhIG4wgrDmDeOx+1Ar2bqea/GZZ/wjV3Ui64mqv9rZ+PTWEx9T3wK1DSfpjfluBhe3QI0V075GxviMM9e5uvAZaJtusx7OyJ/tuLP3OrFdLbSv9fgXqZctjOsHiIX+ezAx8Y=
Received: from AM0PR10CA0065.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:15::18)
 by DB6PR0801MB1894.eurprd08.prod.outlook.com (2603:10a6:4:72::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Mon, 25 May
 2020 06:29:47 +0000
Received: from VE1EUR03FT011.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:208:15:cafe::63) by AM0PR10CA0065.outlook.office365.com
 (2603:10a6:208:15::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Mon, 25 May 2020 06:29:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT011.mail.protection.outlook.com (10.152.18.134) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Mon, 25 May 2020 06:29:46 +0000
Received: ("Tessian outbound 952576a3272a:v57");
 Mon, 25 May 2020 06:29:46 +0000
X-CR-MTA-TID: 64aa7808
Received: from 321a59c5948d.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 F730ED51-801B-4B63-9D6A-674A705BFED7.1; 
 Mon, 25 May 2020 06:29:41 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 321a59c5948d.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 25 May 2020 06:29:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KSypO2YUKNPTsemCIcScehxAoTNKhWxDi6O4Pxlb5PaER+9G3EyPd7+M/459te6FoiGt0n4B3pQ8hCwKbzhUY0UjdPxmcBuyuC/gvqWKVXCs/okBZ8AWRwV+eU4o/6rMWDry2PCgh4G6QdiP0yGPMpQsp18h9LRpEJMK5wQvYMJ3z/whPy7S8OdgiXu6MDyg1Xc3stL2Sw2kWcvPTY2Kv5YOZGfYix8P7AwvrfgD9VpFTQgSk0/IXFGgHBDgBiC1zenzEylwsljE5TUwhXBAAnUw4hQV+SggM4UY7mogiYJdkzPBaqWTHBOQlfzpfiRMsPnbcUTHUW7vk4PlG/aQqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tv1jqUYENvo6g+B9+/K4FqJigiAnUJw8oDZVDnXfIwk=;
 b=gsofweYC2SQmt1RAJQE/4qFiZlNHWMnD4b/naj8mkhw779EkCVSkkJpjKRAiXjOiNp4/KHF587SftEnLpKs27ego+cNTHaEDq2MiYdnCT58e4j0qTHYUKbubfenWrrZnITMlRyakqsS7CZ3BdWNPZrNd9kRj8WiketJ6s6hjUM/C/AAIJ9U4gT/7cwoKib1tVXP0iln027QnlVyVOxhEgPobTVflIolJvShfR4qjrx3E5wWbaRmwmdAGjPM8SEFgb+uOX6rssv99qP0s2ZiLsSR1z24Ikjjn4FtNQrp0kp9zrchjRu7+dA5G+8L+BzqEYz6V/ORNJQvBmk/9TQ1PsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tv1jqUYENvo6g+B9+/K4FqJigiAnUJw8oDZVDnXfIwk=;
 b=h24bf90/6sweDGx8M8jhvP8vxxBZvxk9bDgShvzkhIG4wgrDmDeOx+1Ar2bqea/GZZ/wjV3Ui64mqv9rZ+PTWEx9T3wK1DSfpjfluBhe3QI0V075GxviMM9e5uvAZaJtusx7OyJ/tuLP3OrFdLbSv9fgXqZctjOsHiIX+ezAx8Y=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2441.eurprd08.prod.outlook.com (2603:10a6:3:de::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.24; Mon, 25 May
 2020 06:29:37 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be%6]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 06:29:37 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Richard Cochran <richardcochran@gmail.com>, "maz@kernel.org"
 <maz@kernel.org>
Subject: RE: [RFC PATCH v12 10/11] arm64: add mechanism to let user choose
 which counter to return
Thread-Topic: [RFC PATCH v12 10/11] arm64: add mechanism to let user choose
 which counter to return
Thread-Index: AQHWMBRtHtaBVLC+ukSXkuIjkrpVgai2gQEAgAGkltCAADJFAIAAAXkA
Date: Mon, 25 May 2020 06:29:37 +0000
Message-ID: <HE1PR0802MB25551DE2A81168AEAF4E06C4F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-11-jianyong.wu@arm.com>
 <20200524021106.GC335@localhost>
 <HE1PR0802MB25552E7C792D3BB9CBE2D2C7F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <20200525061622.GA13679@localhost>
In-Reply-To: <20200525061622.GA13679@localhost>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: maz@kernel.org
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 7aca3425-c140-4ec0-a6d0-95fe58e99f46.0
x-checkrecipientchecked: true
Authentication-Results-Original: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=arm.com;
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8547ea77-c5cc-47be-d48b-08d800750504
x-ms-traffictypediagnostic: HE1PR0802MB2441:|DB6PR0801MB1894:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0801MB189471B29C753A96BB383E74F4B30@DB6PR0801MB1894.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:6790;OLM:6790;
x-forefront-prvs: 0414DF926F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: ZW6JlXmZhwemS2eMQPwVx7hxLr4GjHypV0+jWz9PVdVzEO+h1o/cOJbJmDq/e1wBQUH3dQ9c3n05Xcjr/u4L8yCEb442mOurjNvjqLB7DI/2a5vwS9RaXr8cM+fJIPrplRA5OZPRJugTkm8JE8a89w+i2ti+OpigdHR0qwJ9ENzT1d42tNEbv/CPkIGXXsMkUiQN4GIMp4WuqFzYLOrLSn3ydIoy00GOFYRey+TS4+tiananRecR2qbjPzDaiGGqdJsGuRB6ZZz2Aj0hEY3r+C79MNL7S3iYcc8w1yGjmYmxOdL4TIz3H4kH7f8EbFlK8qVBS1Wj1k1Uh+EuJhKJ8g==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(376002)(39860400002)(396003)(346002)(366004)(316002)(8936002)(6506007)(53546011)(186003)(7416002)(478600001)(7696005)(86362001)(2906002)(33656002)(4326008)(26005)(52536014)(76116006)(5660300002)(66946007)(66446008)(66556008)(71200400001)(66476007)(64756008)(54906003)(9686003)(55016002)(8676002)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 3pq7bl41IpQu3mwWMb39oU2EtGjqeWgcpZavkd2cDgxXESzMVfEnidOmlX+fZOYE97fAFoc0AQKl6A826g3fG8Escr5jJ9yImoxbq819Bkrs/EipvYqZ69LnrfF9Z6PJw3HCKqL1Sye+uQes4BOLIywlF2KSePAx6DuV5ZEh1S6IXeeDCsDrI88OX4Pu0u8E5pR5WHAPxcu3fl5AWjb1/AzxHt9C0CGNRGGCRB69OP210G6cVC8/yA4FjQhHaVRbaqeXuq7JbF6VEeehhShE6a+njFEC9q53qR2iVR6i0BONrJXv7C7/y/sMCU7U2brsTTR8l+evt9WxnrnqnjtGDDRwbNjl55H67zDpz7R+sbi4eG1HR8PsKI/JBIDrWTS4j5pNKfHgBydHiy5AsJuVkYCBa2DVkVhkRQeUROCKhGbBrvCF0TFOk2g6iMlAOX0INXvpdg7x0ETofsw3f/nGEWbemQqjKK+PRsQncqTGqFo=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2441
Original-Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT011.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(39860400002)(346002)(136003)(376002)(396003)(46966005)(9686003)(82310400002)(55016002)(356005)(36906005)(186003)(70586007)(5660300002)(7696005)(8676002)(26005)(316002)(33656002)(81166007)(52536014)(70206006)(478600001)(82740400003)(47076004)(6506007)(86362001)(8936002)(4326008)(2906002)(53546011)(110136005)(336012)(54906003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: c89ad0ca-5804-4989-8f3a-08d80074ffa9
X-Forefront-PRVS: 0414DF926F
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cnfKlq62NJZrVWVbz0ZIk/22H4m9PFwKWfpDnZZoUonPbc2H81Y/y/iH0gDXEgKXshmpahyf7b42OzcOxKxYwIiTFmcj8qRGMdP36PSybSHx4DMuUR1hKJQ3dDcsffxg6c6qGL/ri9nXfKCKdJzrZwMVAWFr9WbxmGnwP78mA8nvG/hSFG0lZVaQD7omlG9DhGyTok8Z9NY2DVc6PqyXETsKI7GoBl2ZPVyNRTtwNkNJWxKU54juE8F8qIfDBtvwwg4T8mSoOxDEdL011r/rAwcaYReYUXpyxHTQ36PlZ1PkGi9xzmjfA7xoKXWbDVMvXVRHW2zZuo7sCCWamSUnL+h0gXijfMBNOz987V4KPDRKdRUJgLFPMPlhwPWOSDGK+azXx7ct7H0jYgQPakkcGg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2020 06:29:46.7221 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8547ea77-c5cc-47be-d48b-08d800750504
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1894
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_232953_136625_516C247A 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.84 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [203.126.0.111 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.84 listed in wl.mailspike.net]
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
 Wei Chen <Wei.Chen@arm.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
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

Hi Richard,

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Monday, May 25, 2020 2:16 PM
> To: Jianyong Wu <Jianyong.Wu@arm.com>
> Cc: maz@kernel.org; netdev@vger.kernel.org; yangbo.lu@nxp.com;
> john.stultz@linaro.org; tglx@linutronix.de; pbonzini@redhat.com;
> sean.j.christopherson@intel.com; Mark Rutland <Mark.Rutland@arm.com>;
> will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; Steven Price
> <Steven.Price@arm.com>; linux-kernel@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; kvmarm@lists.cs.columbia.edu;
> kvm@vger.kernel.org; Steve Capper <Steve.Capper@arm.com>; Kaly Xin
> <Kaly.Xin@arm.com>; Justin He <Justin.He@arm.com>; Wei Chen
> <Wei.Chen@arm.com>; nd <nd@arm.com>
> Subject: Re: [RFC PATCH v12 10/11] arm64: add mechanism to let user choose
> which counter to return
> 
> On Mon, May 25, 2020 at 04:50:28AM +0000, Jianyong Wu wrote:
> > How about adding an extra argument in struct ptp_clock_info to serve as a
> flag, then we can control this flag using IOCTL to determine the counter type.
> 
> no, No, NO!
> 
Ok, 

> > > From your description, this "flag" really should be a module parameter.
> > Maybe use flag as a module parameter is a better way.
> 
> Yes.
> 
It's fine for me, if @maz@kernel.org is not against with it.
 
Thanks
Jianyong 

> Thanks,
> Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
