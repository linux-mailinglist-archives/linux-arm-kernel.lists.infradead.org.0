Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7121E34A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uD+9aldJy/rbPyXm0hIKj7LPYafwDvT5L9fQzlK1V5k=; b=JZm+2YFn8R+Qjz
	QnaRhzseXUQ8Sf6+hH1DvkCdGu/k+wUYBePhLE31tnHx7vxA690DUOOrivkxpBLZY2AowQW0pVzDr
	txZYcyKAqSNaD+HkTN2qnmmfabmubIbNYH1E/niMvabB50TxjZieh6Db4d2VQc9+b3VhNLAE/7XY6
	pKKGXF/FAOAZtswUyRTYMYcIjbbzBlEWyLrSc/ekjci+qkQQdxFjGJ+w7zcx7Wbt9e1FDvJnecdnw
	J2Xrt8A50SnBcqe2YRPgJSfvJhOChhN+2axpyoRT3arMGSP+dSSQw2sQw7SKZI91LpVzEfkCMurYH
	jyRRbnUBP3K/ps7zbZMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkj3-0002Mv-7y; Wed, 27 May 2020 01:19:21 +0000
Received: from mail-eopbgr150045.outbound.protection.outlook.com
 ([40.107.15.45] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkiq-0002Lq-BN
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:19:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hfxlsc3jX6USfxfAnzzXVN3AoMrcSJjKZKV0rSuw6sI=;
 b=P65Bcm9/+FRMs9516UlTcneX7e2VdQM04wuFukBZP83zETB33erCTffn3/uP1WXnaglHWkL+QhwC3rTt1PnGF3/XCDs05A3PMNPjjR2HEsAOl0zBGmv6aZMMifbe654PoEl25h5gOPvTRBfYDhA53vs2MMNE8gFP7tQ+L9+3kt8=
Received: from MR2P264CA0058.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:31::22)
 by DB8PR08MB5193.eurprd08.prod.outlook.com (2603:10a6:10:e6::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Wed, 27 May
 2020 01:18:47 +0000
Received: from VE1EUR03FT019.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:500:31:cafe::79) by MR2P264CA0058.outlook.office365.com
 (2603:10a6:500:31::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17 via Frontend
 Transport; Wed, 27 May 2020 01:18:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT019.mail.protection.outlook.com (10.152.18.153) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Wed, 27 May 2020 01:18:47 +0000
Received: ("Tessian outbound b157666c5529:v57");
 Wed, 27 May 2020 01:18:46 +0000
X-CR-MTA-TID: 64aa7808
Received: from b8f23aa01c1f.3
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 8779F77F-481B-4AC6-A5AD-892AE1A4A799.1; 
 Wed, 27 May 2020 01:18:41 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b8f23aa01c1f.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 27 May 2020 01:18:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nrtw4VeQFHL2X6wTzDHuIOHRHfiXW4uQoyI0+Ui7pMUtBu5DQ0aZ3RH4K/fDKOIuljxhWW5V+OYz6q7ycTKdpbfMuyrqnLtrqlti+zEEjU3bicCzGMbyHGTpbP44YADmCHB8T1PxTlOn+MsQsWvDZWloATkFSk1lAqxIUBjexRSV6SdjYXNOzjySGexC9iqUHYJNu3q2XrCaLEvd/j5vxiDHtZiZmrBiqyCmHRZkq6zNU89V2IEU1Jnz0SWAHsuTxG2iD6oSFvYIR3yPWiiWjMyxptImpbKRZDB2g2OIoac7JfN86Hx8y3rkpH0ax4DdHVjd5oRrm3XjwjBShiRhQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hfxlsc3jX6USfxfAnzzXVN3AoMrcSJjKZKV0rSuw6sI=;
 b=cjZ3HCJcwYTawCnYOEIFz9nPz4B9U/iX9PyB3LVIDQSnulm1a1aTOU1/dG5QqpoLMySgAgwNsT80YEFn4fQPYmkAGP6scYgS7eASFkD2s3Av9qi8DMjL2kTMgxBqUlpHjbzhVljW87siQVi7BCzFPpYKpWSqAYVWJy3n/fJPssKNR/CVMZ8EJfP8sVCFcOzjlbX8GhIy7PkA1aK7eBSNT4n4Z/u9tWkvtnLpLkDjTlPdLFtpvFGyAQaFlujCpwvG3eDdWoCqpGIgVvtMhd3SZecnu96AAD8kYH70xB7nX1GIGaRrRAXAeC40mv91RdTji8meMHyXjoCwnVwxvTasIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hfxlsc3jX6USfxfAnzzXVN3AoMrcSJjKZKV0rSuw6sI=;
 b=P65Bcm9/+FRMs9516UlTcneX7e2VdQM04wuFukBZP83zETB33erCTffn3/uP1WXnaglHWkL+QhwC3rTt1PnGF3/XCDs05A3PMNPjjR2HEsAOl0zBGmv6aZMMifbe654PoEl25h5gOPvTRBfYDhA53vs2MMNE8gFP7tQ+L9+3kt8=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2572.eurprd08.prod.outlook.com (2603:10a6:3:db::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Wed, 27 May
 2020 01:18:39 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be%6]) with mapi id 15.20.3021.029; Wed, 27 May 2020
 01:18:39 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Sudeep Holla <Sudeep.Holla@arm.com>
Subject: RE: [RFC PATCH v12 03/11] psci: export smccc conduit get helper.
Thread-Topic: [RFC PATCH v12 03/11] psci: export smccc conduit get helper.
Thread-Index: AQHWMBRUBAdOXBezXUymOTKynRIElai0FQYAgAP0TiCAAiI7gIAA/S6w
Date: Wed, 27 May 2020 01:18:38 +0000
Message-ID: <HE1PR0802MB255517F7BD5E3E78ACC99F35F4B10@HE1PR0802MB2555.eurprd08.prod.outlook.com>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-4-jianyong.wu@arm.com> <20200522131206.GA15171@bogus>
 <HE1PR0802MB255537CD21C5E7F7F4A899A2F4B30@HE1PR0802MB2555.eurprd08.prod.outlook.com>
 <20200526101019.GB11414@bogus>
In-Reply-To: <20200526101019.GB11414@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: a2136aa6-da3a-4747-aa72-cc10e4192b6a.1
x-checkrecipientchecked: true
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
x-originating-ip: [203.126.0.111]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: dfa789c1-889b-4d30-2d2e-08d801dbe800
x-ms-traffictypediagnostic: HE1PR0802MB2572:|DB8PR08MB5193:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB5193554A5A88D36F03F9AC28F4B10@DB8PR08MB5193.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:3826;OLM:3826;
x-forefront-prvs: 04163EF38A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: DRizxo7Q5GpNNuUh0+p4MhFOUl0nsBEIdtU8FRwxBrGBTxYQCin0tnkJf6nyEpSFr2RX3eK5xMKHqlh9VEDJE/4CdZC/W1Fa4RzpXb27vVt/DDrd1jJIZ55ewkwR3SzWGDBQI9w2v+u+MIvreuimZccUPun/Fgcbx2EqB20W9qGECQBqi8WAgX3RfJbnBKsZqLCBJoaVu9Z4vdhfwCe0FqZwNTU3/tzesXcVkxuMpsTzoJEZ4og8c4SSPhnQ/0YlyrPHp/bG+VGMBlR1B2f8uO1dIYVEahExQVycqHU1Mo4X/O6KqfbMefvtSEk1TYhuBZ79nmCnpziqH5f5Lmx9TA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(346002)(39860400002)(396003)(136003)(366004)(71200400001)(55016002)(33656002)(9686003)(316002)(6636002)(5660300002)(54906003)(64756008)(2906002)(7416002)(66446008)(478600001)(52536014)(53546011)(86362001)(66476007)(186003)(8676002)(6862004)(66946007)(8936002)(76116006)(26005)(4326008)(66556008)(6506007)(7696005)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 55/ZCLMvFOTmC6yxUT23hxqJEMqgWKDCQCcUXLiAzUYs6sRbEECEaJeehv9HKUl2aBzMgP5z0/811qo1ZVKcUQCzxOkaQGtZ2NqG9fn/62CQR5EWA2clEq4zTI95WnqC5jdtTMVoYNDujambgUAfTvBb2ahbzBHpoP5RMSqro32jJne17uhVJO8nR3YrBLfotekN+oYo7D0aIgslzazxoiGZxPwRnBB25v7Wpwv04uWjeT+682XsCQrL5/G/b6HpTj7/ZDjoezS37TxKkm8PiX2dkBrsnGHEJLXEM7449W7dGtLQMPbssVqMuiV++d43IlFjRRC/k4VWlnb7qdpAzXjVc7BqxUVhdjZOlcn8cEq9jmVswZ48vRDy6BxdOkYHUw+tgcb+VvGWipu5e8cjrIrWdV4aHmQqO6fEa7NsIahFrKiNruu8e+y5RoHuuTLDSfc81nRpUWqCmYiMYc6tTaQ23lKnhq2v5hjNsAptDYY=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2572
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT019.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(39860400002)(136003)(396003)(346002)(376002)(46966005)(54906003)(33656002)(316002)(36906005)(70586007)(7696005)(47076004)(81166007)(52536014)(6506007)(82740400003)(83380400001)(86362001)(356005)(53546011)(70206006)(82310400002)(336012)(8936002)(186003)(55016002)(2906002)(9686003)(8676002)(5660300002)(6862004)(478600001)(4326008)(26005)(6636002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 94192dc5-2fe9-4701-ba9c-08d801dbe2fe
X-Forefront-PRVS: 04163EF38A
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n1mxFRIyhAajI66BBHqUpgJFEycMYufrzExuPnCnwVueyyejsSD4YY80IXfN0I/92p8ggV1p4XA6MlVs+APo7AKvDVHAb8PzarCN/g/Qgli9cUhmze+twWuRTgqgXqxIixZuuSLvF+wRQee5TuQIfrzcyamsI1+uL1QcKyy0xChI+1c/JnvrWE498ATqsxcwE4bSXtvsGIlbrItIi/dXAHU2oNy3YITk/PxZS2oS0tfFbVshdprlQzYG/+arXoZOPIhYyOCR+ceZJPIEsDKtjE9nxXnjglSckyVJDvMeCXZkJN7dalrMshil/nAVAPhiUDBVpJe5l2dxz9uwahnGCAU3O7hs5I3jbJPEsjNu2v3mm0K4GbNkstBDzecnScKVliCaaUF7/wxA1Jkyd4ybeA==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2020 01:18:47.3685 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dfa789c1-889b-4d30-2d2e-08d801dbe800
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5193
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_181908_393486_DAAB55BE 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [203.126.0.111 listed in zen.spamhaus.org]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.15.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.45 listed in wl.mailspike.net]
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
> Sent: Tuesday, May 26, 2020 6:10 PM
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
> On Mon, May 25, 2020 at 01:37:56AM +0000, Jianyong Wu wrote:
> > Hi Sudeep,
> >
> > > -----Original Message-----
> > > From: Sudeep Holla <sudeep.holla@arm.com>
> > > Sent: Friday, May 22, 2020 9:12 PM
> > > To: Jianyong Wu <Jianyong.Wu@arm.com>
> > > Cc: netdev@vger.kernel.org; yangbo.lu@nxp.com;
> > > john.stultz@linaro.org; tglx@linutronix.de; pbonzini@redhat.com;
> > > sean.j.christopherson@intel.com; maz@kernel.org;
> > > richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>;
> > > will@kernel.org; Suzuki Poulose <Suzuki.Poulose@arm.com>; Steven
> > > Price <Steven.Price@arm.com>; Justin He <Justin.He@arm.com>; Wei
> > > Chen <Wei.Chen@arm.com>; kvm@vger.kernel.org; Steve Capper
> > > <Steve.Capper@arm.com>; linux- kernel@vger.kernel.org; Kaly Xin
> > > <Kaly.Xin@arm.com>; nd <nd@arm.com>; Sudeep Holla
> > > <Sudeep.Holla@arm.com>; kvmarm@lists.cs.columbia.edu;
> > > linux-arm-kernel@lists.infradead.org
> > > Subject: Re: [RFC PATCH v12 03/11] psci: export smccc conduit get helper.
> > >
> > > On Fri, May 22, 2020 at 04:37:16PM +0800, Jianyong Wu wrote:
> > > > Export arm_smccc_1_1_get_conduit then modules can use smccc
> helper
> > > > which adopts it.
> > > >
> > > > Acked-by: Mark Rutland <mark.rutland@arm.com>
> > > > Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> > > > ---
> > > >  drivers/firmware/psci/psci.c | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > >
> > > > diff --git a/drivers/firmware/psci/psci.c
> > > > b/drivers/firmware/psci/psci.c index 2937d44b5df4..fd3c88f21b6a
> > > > 100644
> > > > --- a/drivers/firmware/psci/psci.c
> > > > +++ b/drivers/firmware/psci/psci.c
> > > > @@ -64,6 +64,7 @@ enum arm_smccc_conduit
> > > > arm_smccc_1_1_get_conduit(void)
> > > >
> > > >  	return psci_ops.conduit;
> > > >  }
> > > > +EXPORT_SYMBOL(arm_smccc_1_1_get_conduit);
> > > >
> > >
> > > I have moved this into drivers/firmware/smccc/smccc.c [1] Please
> > > update this accordingly.
> >
> > Ok, I will remove this patch next version.
> 
> You may need it still, just that this patch won't apply as the function is moved
> to a new file.
> 
Yeah, Thanks for remainder!

Thanks
Jianyong 

> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
