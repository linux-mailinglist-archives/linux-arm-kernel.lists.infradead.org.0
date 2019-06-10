Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174653B888
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3eJdtAnfsmcGUtD+XpdKY2uSpvlyh72u0RKrE4koH3s=; b=O6sH+HsYKpfsiY
	Fjl7Ivn+32sxeEamZmfdv2KbHSfK6IJ0esgmmGntjLGTISIdJM8jShE4Dnjam/311FzCWSHCXD315
	wYaxl5EQXCykrscDSWwXxZXLhHqq18huFUKlgjGdurw2Pe0ncmBakEYFyT4YNMPSHaFotD1k4rHjT
	A45bHs5peZkA6DGnPRqADiHvZsSMy9BL4jFPqXuECfvnRPvu6lP+jwjJ4I95eiQtP5s8EMMtggUOq
	q5THmUC8vGXHhSl1Nxv+iQxi35CGDxkkIfF9kykL2Eal3Vxy1UlNH7pFUR0ZzYBVuPlBLG3PkLA3T
	1taSrimhcEjqasO7gViw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMaf-0002z7-Sq; Mon, 10 Jun 2019 15:52:09 +0000
Received: from mail-eopbgr770134.outbound.protection.outlook.com
 ([40.107.77.134] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMaV-0002xk-9K
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:52:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aampusa.onmicrosoft.com; s=selector2-aampusa-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vhQ7Jlo+CG6aHOTtB2lYlyVwVYjEgJQozE785PtbeUE=;
 b=euRjqUvPd6PJhuv5l2SuZU00bR8UMyhnnF9BOU1PzrVaWDAkZmANItVCcyJkb6QjW4YLzAALaXrrgAdSN0WiWscIovvh71SZdMBwTO9J5yDaoKFB8OIigX+Nn4Z6X9NbwMzdw6JlVAEK0lZKDiLY5m1u9CccrEcYlhCj5GVWEwg=
Received: from BL0PR07MB4115.namprd07.prod.outlook.com (52.132.10.149) by
 BL0PR07MB5457.namprd07.prod.outlook.com (20.177.207.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.17; Mon, 10 Jun 2019 15:51:52 +0000
Received: from BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e]) by BL0PR07MB4115.namprd07.prod.outlook.com
 ([fe80::f064:5129:63c6:d3e%6]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 15:51:52 +0000
From: Ken Sloat <KSloat@aampglobal.com>
To: "Nicolas.Ferre@microchip.com" <Nicolas.Ferre@microchip.com>
Subject: [RFE]: watchdog: atmel: atmel-sama5d4-wdt
Thread-Topic: [RFE]: watchdog: atmel: atmel-sama5d4-wdt
Thread-Index: AdUfoOr5PB/8HxffRU28PtnqCbe4YA==
Date: Mon, 10 Jun 2019 15:51:52 +0000
Message-ID: <BL0PR07MB41152EDB169FE9ED1AD3B4C9AD130@BL0PR07MB4115.namprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=KSloat@aampglobal.com; 
x-originating-ip: [100.3.71.115]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 41b96d04-6d08-4938-3f0f-08d6edbb8ea1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR07MB5457; 
x-ms-traffictypediagnostic: BL0PR07MB5457:
x-microsoft-antispam-prvs: <BL0PR07MB5457093A55D420BF05ABCFE6AD130@BL0PR07MB5457.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39850400004)(396003)(376002)(366004)(346002)(136003)(189003)(199004)(102836004)(5660300002)(6506007)(186003)(14454004)(316002)(52536014)(55016002)(9686003)(33656002)(25786009)(66066001)(71190400001)(80792005)(7696005)(5640700003)(26005)(71200400001)(6436002)(74316002)(8936002)(76116006)(2501003)(86362001)(66476007)(54906003)(64756008)(476003)(73956011)(66556008)(2351001)(2906002)(6916009)(66946007)(81166006)(66446008)(81156014)(256004)(14444005)(68736007)(53936002)(7736002)(478600001)(486006)(99286004)(305945005)(3846002)(8676002)(6116002)(4326008)(72206003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR07MB5457;
 H:BL0PR07MB4115.namprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: aampglobal.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kq+GWHL/SGmKL4Q9XwZPd0cvqM9NcyUR3OUxudN6tHa1IxDOYL3sI1LT3CC+fqAjhDjzKSrBkT1mTR0/vP2ainpYN8yZZPCV6z7z3wYUNfAZp9BUAKFSMLbZKSBiTf6oQ54uSAO1b3fGJJ7b+fKVcb7vckhPR39T0kXZRgS8W6MDKRrScmrIlzxcJqtEvVwfyuPX/aa+HMaD+WMOXXzEnJgNqsiSNAi+HXjSeVIsuB4QLKojuB3irrNdWFlzYGEN49LnYA7Si+YFHepUcQ4EueJgVrVggygIbCyVe43OWySd03TaaQGMQ4h7fQxXWMftEoiSBCQpbEePYnsxRipC8ls5zmqPRrGtpEnhP3KZWmg77oFcXfBuse07PB2wRC4REbzSNLos7kRS4Y8FCE9a6veF9Y7AvJbiQ0i/zaTXT3U=
MIME-Version: 1.0
X-OriginatorOrg: aampglobal.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41b96d04-6d08-4938-3f0f-08d6edbb8ea1
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 15:51:52.6063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e20e3a66-8b9e-46e9-b859-cb654c1ec6ea
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ken.sloat@aampglobal.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR07MB5457
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 04
X-MS-Exchange-CrossPremises-AuthSource: BL0PR07MB4115.namprd07.prod.outlook.com
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-TransportTrafficSubType: 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-messagesource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-originalclientipaddress: 100.3.71.115
X-MS-Exchange-CrossPremises-transporttraffictype: Email
X-MS-Exchange-CrossPremises-transporttrafficsubtype: 
X-MS-Exchange-CrossPremises-antispam-scancontext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-processed-by-journaling: Journal Agent
X-OrganizationHeadersPreserved: BL0PR07MB5457.namprd07.prod.outlook.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_085159_353059_C4736F95 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.134 listed in list.dnswl.org]
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
Cc: Ken Sloat <KSloat@aampglobal.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "wim@iguana.be" <wim@iguana.be>,
 "alexandre.belloni@free-electrons.com" <alexandre.belloni@free-electrons.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Nicolas,

I wanted to open a discussion proposing new functionality to allow disabling of the watchdog timer upon entering 
suspend in the SAMA5D2/4.

Typical use case of a hardware watchdog timer in the kernel is a userspace application opens the watchdog timer and
periodically "kicks" it. If the application hits a deadlock somewhere and is no longer able to kick it, then the watchdog
intervenes and often resets the processor. Such is the case for the Atmel driver (which also allows a watchdog interrupt
to be asserted in lieu of a system reset). In most use cases, upon entering a low power/suspend state, the application 
will no longer be able to "kick" the watchdog. If the watchdog is not disabled or kicked via another method, then it will
reset the system. This is the current behavior of the Atmel driver as of today.

The watchdog peripheral itself does have a "WDIDLEHLT" bit however, and this is enabled via the "atmel,idle-halt" dt
property. However, this is not very useful, as it literally only makes the watchdog count when the CPU is active. This 
results in non-deterministic triggering of the WDT and means that if a critical application were to crash, it may be
quite a long time before the WDT would ever trigger. Below is a similar statement made in the device-tree doc for this
peripheral:

- atmel,idle-halt: present if you want to stop the watchdog when the CPU is
		   in idle state.
	CAUTION: This property should be used with care, it actually makes the
	watchdog not counting when the CPU is in idle state, therefore the
	watchdog reset time depends on mean CPU usage and will not reset at all
	if the CPU stop working while it is in idle state, which is probably
	not what you want.

It seems to me, that it would be logical and useful to introduce a new property that would cause the Atmel WDT
to disable on suspend and re-enable on resume. It also appears that the WDT is re-initialized anyways upon
resume, so the only piece missing here would really be a dt flag and a call to disable.

I would be happy to submit a patch implementing this change, but wanted to open up a discussion here as to the
merits of this idea as perhaps it has been considered in the past.

Thanks,
Ken Sloat


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
