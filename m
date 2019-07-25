Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED64374E41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 14:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfIoXxGTl+Vpg5fqckBz/d0i/hFADICRks+E8MTdUEA=; b=MazchfpIfpDUYp
	Gg2UhvjrSvGAFgvOgaNI+lNkrI0dRUnUO8dHjBVX63ftG1ZEENpYqPQoRX0qpHPhwq2C1xaUxJnlL
	fZVFWrwhbaQTt4yCyrbeg+R/1+VRAGAbpRabRw6zwVccqzkAYWt2no/3cMGN6MiawJoGOZv6EBCUE
	nVfdRPb485dm55T6D+vcHiRgZgFJ2Un42w2mqjptagZg+eAZztO6JfYHOupFXtOcAqb8jZuHzNE1j
	K/YJKTBw4QpvJI7Op7jY6o1omgWoXHSGS058nzrZ4W9KcAQSWu/OfzVMImG8A19NzBqijcWv/dllK
	tZKawmSRNJ153tPURssA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqd0c-0004uV-Cg; Thu, 25 Jul 2019 12:38:10 +0000
Received: from mail-am5eur03on0606.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::606]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqd0J-0004kH-TS
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 12:37:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dZlwf1hXVkhQMBZrWBDpxQjC3Q8TyWh1RJy/zd/m02o=;
 b=XhjuyrA/Wy4NGdamLojkRxq8B2kgUHT7I+0udWAc1OsDYoFC73dY8yJwABlwP5q2Mb3epsnsCPVINNvmqOkAo+qFZCjfmOlbxQ77SUfzh6WBvFkNYR87WD+hFsUER6gjB7CibxwEtk2+p9PHWjHRKXGZQIydj6BuSG0KoqiBC0s=
Received: from VI1PR0801CA0084.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::28) by AM5PR0801MB1844.eurprd08.prod.outlook.com
 (2603:10a6:203:39::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2094.16; Thu, 25 Jul
 2019 12:37:43 +0000
Received: from VE1EUR03FT015.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::201) by VI1PR0801CA0084.outlook.office365.com
 (2603:10a6:800:7d::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2115.10 via Frontend
 Transport; Thu, 25 Jul 2019 12:37:43 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT015.mail.protection.outlook.com (10.152.18.176) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Thu, 25 Jul 2019 12:37:41 +0000
Received: ("Tessian outbound cc8a947d4660:v26");
 Thu, 25 Jul 2019 12:37:40 +0000
X-CR-MTA-TID: 64aa7808
Received: from e450f2cfdf6b.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.10.59]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 4C744644-F8E4-4160-AB4D-3D9D79FC1177.1; 
 Thu, 25 Jul 2019 12:37:35 +0000
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur03lp2059.outbound.protection.outlook.com [104.47.10.59])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e450f2cfdf6b.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 25 Jul 2019 12:37:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SvJ0/6/87f3zy0yU+m6aDjDm82fEJbp7OBdja+Vl20Dhf8zXTVScruvyTPtgeYrQJGEzh8j7RSVsZN5LNrZyRdnyN23XqMIIjEhqGNcEk2fgXZp/yzQXidyBv7QlJJ9YFtMgX+DGeMhDUPKLN3FPY/fnSTld6MXkmG+R1h1b189NHJ723urZ3/46Tp/CePJ7Hi6cepGGoaoc467oh0A09lO2YN2EB4gg5pimQjfqiXCTXVzXChoOISyM9xglbIKsKKici4bQzkPcqQ6AHpqpSKWemfXKdDiD/qxYr2tp8DAUwTWp+ELZMpRI5W7rNmYybpQcEoByQP3cYm4XUf9wNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c6ici73WRQ6aapnfN0pN82kcI3W4UvYYYG4IohtpfwA=;
 b=dSzQ4RVUWSGkZLr1ckSkSm1LglvnvbTjY9XGvCTvNXXsN/Ddw2fcwrAYuAp8I/ZgCU7Hs0cW0BUAoxSoFWoFJSA9QX2dYkkHhXf35eu6v1Bs9AzsmWuXUFjyAoYAm7W9MKdkXBxJwDdESQVLQp+cPdll4BJ9N9W+heDhp52+2TBDN9CoesmxgWxoYT3ltbIeA7oxH5HpSQSG5Zu+ayGeJu21JpDQVqBkBCxmlzG9B9Ju6vkp3NHi2YfuftJBMbsEcN/WOnRNsKSuJ9DpTeNX0vrjrsPa4YU49Ie3iRph55ULWCbRyTRUq9+mF47YL+iOKHRFR+HLF+QLil+w/oeDGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c6ici73WRQ6aapnfN0pN82kcI3W4UvYYYG4IohtpfwA=;
 b=OXAn7QhW5siQJlUGKigv6hGsqW2VHRNCBcas+UlVZz69xDcAyaCAkPHf062Sjf6JmTddkqMnLWcryIIwhJ8sx12zNFcJR5HAtJkEW+QMHduTIS2dCQdnuNA0rQTZoaBf6mNkZZ67U97hCazNaQhfuxqyyc2p7JDmPKUd8SrVRos=
Received: from DBBPR08MB4678.eurprd08.prod.outlook.com (10.255.78.151) by
 DBBPR08MB4315.eurprd08.prod.outlook.com (20.179.41.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.11; Thu, 25 Jul 2019 12:37:34 +0000
Received: from DBBPR08MB4678.eurprd08.prod.outlook.com
 ([fe80::604c:b27f:b6bb:6f96]) by DBBPR08MB4678.eurprd08.prod.outlook.com
 ([fe80::604c:b27f:b6bb:6f96%4]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 12:37:33 +0000
From: Guillaume Gardet <Guillaume.Gardet@arm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: RE: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
 exynos5250
Thread-Topic: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
 exynos5250
Thread-Index: AQHVQsPd2Ory/uMusEic8k7RRdTNRabbMAoAgAABPkCAABGsAIAAAMlw
Date: Thu, 25 Jul 2019 12:37:33 +0000
Message-ID: <DBBPR08MB46788EBBB3BF3BB8C54FAD1283C10@DBBPR08MB4678.eurprd08.prod.outlook.com>
References: <20190724072008.6272-1-guillaume.gardet@free.fr>
 <20190725083433.6505-1-guillaume.gardet@arm.com>
 <CAJKOXPejSxxH5DJPyEHTt=VEOdVgiXOm1c3MKKir-qRxtDcLLA@mail.gmail.com>
 <DBBPR08MB4678546DF9EE76EE6427DBB783C10@DBBPR08MB4678.eurprd08.prod.outlook.com>
 <CAJKOXPdLd5C0FPwijGwTWW9t46exysdqgeb07txPhp-f_b5DFA@mail.gmail.com>
In-Reply-To: <CAJKOXPdLd5C0FPwijGwTWW9t46exysdqgeb07txPhp-f_b5DFA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 9ca59ba5-3caf-476b-9730-0c4adda7ef52.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Guillaume.Gardet@arm.com; 
x-originating-ip: [2a01:e0a:d7:1620:a088:a1e8:d605:49de]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: d81a679b-cac8-4a15-66d2-08d710fce2aa
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DBBPR08MB4315; 
X-MS-TrafficTypeDiagnostic: DBBPR08MB4315:|AM5PR0801MB1844:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <AM5PR0801MB18444961E480FA1FC2557A8783C10@AM5PR0801MB1844.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0109D382B0
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(189003)(199004)(13464003)(46003)(74316002)(478600001)(486006)(2906002)(476003)(446003)(76176011)(256004)(229853002)(6246003)(305945005)(7736002)(71200400001)(71190400001)(14444005)(11346002)(6436002)(81156014)(53546011)(6506007)(7696005)(66946007)(66476007)(64756008)(66556008)(76116006)(4326008)(54906003)(81166006)(6116002)(99286004)(8936002)(14454004)(186003)(25786009)(86362001)(6916009)(102836004)(66446008)(5660300002)(33656002)(966005)(316002)(52536014)(55016002)(68736007)(8676002)(9686003)(6306002)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4315;
 H:DBBPR08MB4678.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: qBcMaK0aV4tKVM4Z/TIJJRel36kUeXDPITxPWTBbg8gU0KxfTVF4AaSqFq8qy+0QYgnMYQJUvfwkjO27Ei4tkNRe0VvNHX+tWv8G7HvoIZngYaSCXdD7/ucomqNCtfeVyltOpyzUtWigy9SIZ1ODBg8URvbt1INWch17NeBtz/WjFT8LWnny5/GHbtwqejejmYIoSQ0umxm6FMEba5YXfotlx+ued9NvPvpckgu/iAM81XGgfveAsI4J4NNlKJEAXS9ue9uDa7Zjwx6I+GHloopn94nnoY+KU+su0CyOZd1dsz0BA3vfRhDNYFn3BrkhZMssclt6aZmotDRUqcA0ach8I3x7Aj/tIQ3SMAOXWCOwxP3EnfZELLwYBmhC6GMpLuk+edcvhXytw7LzEoSlcQZT8gsyikVysNv9wz81b/Y=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4315
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Guillaume.Gardet@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT015.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(39860400002)(2980300002)(40434004)(13464003)(189003)(199004)(76176011)(316002)(486006)(102836004)(74316002)(305945005)(8676002)(8936002)(6506007)(81156014)(436003)(23676004)(14454004)(966005)(50466002)(53546011)(26826003)(478600001)(476003)(6116002)(5024004)(36906005)(11346002)(54906003)(14444005)(186003)(6306002)(446003)(336012)(63370400001)(55016002)(5660300002)(6862004)(7696005)(4326008)(2486003)(33656002)(99286004)(26005)(2906002)(6246003)(52536014)(356004)(22756006)(7736002)(25786009)(70206006)(70586007)(47776003)(81166006)(86362001)(229853002)(9686003)(63350400001)(126002)(76130400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB1844;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: ee37060e-b2ac-43eb-5189-08d710fcde14
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM5PR0801MB1844; 
X-Forefront-PRVS: 0109D382B0
X-Microsoft-Antispam-Message-Info: bJEaPiZDcGb26IOQp0E7F2oOeQw4K7zTqn4reMqeahXRx7+uIbP/gQT4uwOXTG86co9iRcYcKDpFfSQzvHO9AV5adLMY5bws46b98SiM2Gk92pUELOQfWRqoyR9iOKtQAouv80UzpJaNrWn94ZzLmf4ZQBU3RzvhNu880ZBomx+7Ylx2+f+OiLZXcKc8iyO1T8LfKjf6Ie6MHhtTzAYZDs+IEyGI07w1NJAuDwdy7To/BQbTtYz6P7z8sloRcj7haLfODgQV2wnT5yQDKFqduWXbP1tzPC3VP+zsIDPkmHn1TZGNaevP7VWZGlLguArhyiEEdT9DXf4uvle0imzpeNe/a4MQdOvNdWybOR5Ddpzx3SCbfi6gCNDoClBJ9eCnvxmVjxEfCzr0SjM1ah9ghdZwLd++ausIvaqgI1zeKNI=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2019 12:37:41.5514 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d81a679b-cac8-4a15-66d2-08d710fce2aa
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_053752_122070_08E6F23B 
X-CRM114-Status: GOOD (  23.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:606 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: 25 July 2019 14:27
> To: Guillaume Gardet <Guillaume.Gardet@arm.com>
> Cc: linux-samsung-soc@vger.kernel.org; Kukjin Kim <kgene@kernel.org>; linux-
> arm-kernel@lists.infradead.org
> Subject: Re: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
> exynos5250
>
> On Thu, 25 Jul 2019 at 13:35, Guillaume Gardet <Guillaume.Gardet@arm.com>
> wrote:
> >
> >
> >
> > > -----Original Message-----
> > > From: Krzysztof Kozlowski <krzk@kernel.org>
> > > Sent: 25 July 2019 13:19
> > > To: Guillaume Gardet <Guillaume.Gardet@arm.com>
> > > Cc: linux-samsung-soc@vger.kernel.org; Kukjin Kim
> > > <kgene@kernel.org>; linux- arm-kernel@lists.infradead.org
> > > Subject: Re: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node
> > > to
> > > exynos5250
> > >
> > > On Thu, 25 Jul 2019 at 10:34, Guillaume <guillaume.gardet@arm.com>
> wrote:
> > > >
> > > > From: Guillaume GARDET <guillaume.gardet@arm.com>
> > > >
> > > > Add nodes for GPU (Mali T604) to Exynos5250.
> > > > Tested with kmscube and glmark2-es2-drm on Chromebook snow.
> > > > Load tested on arndale board.
> > > >
> > > > Signed-off-by: Guillaume GARDET <guillaume.gardet@arm.com>
> > > >
> > > > Cc: Kukjin Kim <kgene@kernel.org>
> > > > Cc: Krzysztof Kozlowski <krzk@kernel.org>
> > > > Cc: linux-arm-kernel@lists.infradead.org
> > > > ---
> > > > V2 changes:
> > > >   * move mali node as /soc sub-node
> > > >   * move gpu_opp_table as mali sub-node
> > > >   * minor style updates
> > > >   * test on arndale board
> > > >   * enable by default
> > >
> > > I was not specific enough. It can stay disabled in the DTSI because
> > > not all resources are provided. The board DTSes (all or ones which
> > > are
> > > tested) will enable it and provide missing resources - mali-supply.
> >
> > I think all resources are provided, since no mali-supply property is needed here.
>
> No, regulator is not provided. On all Exynos boards Mali uses its own dedicated
> regulator (and sometimes additional one). It worked in your case because the
> regulator was set as always-on but this is a workaround for lack of consumers.
> Once there is a consumer, the regulator should not be always-on to save the
> energy when not used.

I do not have the required info here. Do you have it, or could I skip the mali-supply for now?

>
> > So, I can either enable it by default for all exynos5250 platforms there, or I can
> enable it only for Arndale board and Chromebook snow. What do you prefer?
>
> Then please enable it on tested platforms.

Ok.

>
> >
> > > Just like:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/c
> > > ommit/?id=f
> > > 0a6208b90bdd44f48f5718c8bb0eb1e763d14c0
> > >
> > > >   * add dt bindings, in a separate patch
> > >
> > > Put the bindings before DTS change.
> >
> > Yes, makes sense.
> >
> > >
> > > >
> > > >  arch/arm/boot/dts/exynos5250.dtsi | 47
> > > > +++++++++++++++++++++++++++++++
> > > >  1 file changed, 47 insertions(+)
> > > >
> > > > diff --git a/arch/arm/boot/dts/exynos5250.dtsi
> > > > b/arch/arm/boot/dts/exynos5250.dtsi
> > > > index d5e0392b409e..f7f34d469bde 100644
> > > > --- a/arch/arm/boot/dts/exynos5250.dtsi
> > > > +++ b/arch/arm/boot/dts/exynos5250.dtsi
> > > > @@ -328,6 +328,52 @@
> > > >                         iommus = <&sysmmu_rotator>;
> > > >                 };
> > > >
> > > > +               mali: gpu@11800000 {
> > > > +                       compatible = "samsung,exynos5250-mali", "arm,mali-t604";
> > > > +                       reg = <0x11800000 0x5000>;
> > > > +                       interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
> > > > +                                    <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> > > > +                                    <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> > > > +                       interrupt-names = "job", "mmu", "gpu";
> > > > +                       clocks = <&clock CLK_G3D>;
> > > > +                       clock-names = "g3d";
> > >
> > > According to bindings this is not proper clock name. I wonder why it
> > > was working... it seems the driver expects first clock to be always the core
> clock.
> >
> > Yes, it works, because 1st clock is assumed to be the core clock.
> > Clock names are optional and could be omitted as in
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tre
> > e/arch/arm/boot/dts/rk3288.dtsi?h=v5.3-rc1#n1284
> > Not sure if it would be better to rename it to 'core', or  just skip it? Any opinion?
>
> The driver can change anytime and it might look for "core" so DTS should follow
> the bindings. Additionally, Panfrost might behave differently than Arm driver. So
> "core" please.

Ok.

Thanks,
Guillaume

>
> Best regards,
> Krzysztof
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
