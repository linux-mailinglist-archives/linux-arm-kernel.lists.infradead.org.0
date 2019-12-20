Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C51512756C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 06:52:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CkC7WfFtRYrZdsOdQ9SQwjjA9pNlo6wMJrKC68/RJw=; b=jEsXg9MR7QHTb7
	UXrE+MY+O72wBTFqXjkYB0p0ccpaVRQRijZElU8zDm6+Ut90gGCilgqhn9Y4HBwtWVfdTsvW2Eild
	HkwaFiVlZmj+kQHwta7VWycthcJzKExg+KDHEOIwdrM2ZzCPHkV8vC7jSY5K78lOgBP1S0JTHsFkR
	Rc+ljyAemSEfxmWXc/vyOMUQkJ9OS0faDj2ets2AZSJ9ztZf1bJzzdbiqp6OvECnT1/M71suC2XDO
	IEmdcYhAFD7NWQSNkdRL5kecuNQ8emcv8YColmY4yIHDmFQuk5PEzL2QU4WkAK4n8qMfAQ+Z+G8Zh
	zXwnsv3FN/TNKXQ1T0NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiBCh-0007sC-TI; Fri, 20 Dec 2019 05:51:59 +0000
Received: from mail-co1nam11on2043.outbound.protection.outlook.com
 ([40.107.220.43] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiBCZ-0007rl-Ig
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 05:51:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iAhun1mHn7CMmMAnwo+GrcqhGWsVsiwShUwqXNisp803czCcryJ5UW8UMOiT1l47YxhWQRJAfMq2SWV9gqQcGoXo2rCl13E1fAGxRYjOpGan6vfWOtS1BgkrluJ8docK7fH3fyFKpkQAJFGV0nYiB0IrKFNUxrHY29Qd+ljCvG2kXP4PDFlos+7ddTQiWVrtc4oqGXitql5E+HyipzIxkBLzWYQNmjtSbs/GFtywN06s8mzypy2aPIvv9/O5Wzd1sw16tEKhaYQE2wj5tYvB5egtEtqwmq/we4j5w1yHw97WzF/sLH/Bmy6kjR2sZ+W4E+I271CqVuiqkGpr001/Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yPewZla1yNPJsp49l8KcSZaCvnYJJUBGxHf+vnY5u5s=;
 b=EpD8x6CBDKfs9HatdMNepXwsGNbnS1pKyDEgje2xfEnaFAgfPb4ZGUxjuzlFIjj70eIcu4RORLgclU9jaMKN+71oFvjANlRDhYXcqbE69ynEPDQHLhgddA5Pfj6t32Q7uE5DYss12xgEkyWfYWMMAzeQOE8H9NqlGNDuzd9SxvVMIXjS1D3ZTWXRY7dJEkRofFv9F0vjIp+ckFJO4adQ4YNOymEO1+StXCavqsw9tEHnH85Qha0GsWHXfX1Gam0KfVFxTJyzySpWUnWCOVJtjLNJAvC6YnK2fUrqByuAwVuEHfLSir1E1F3s9aN4y4wDobrf0kiHgEYQU3bFAxLDGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yPewZla1yNPJsp49l8KcSZaCvnYJJUBGxHf+vnY5u5s=;
 b=NqiUXVLXG2vTtne21jHFHlAm8LRjbdTxe/HftGoOWhHGvY0Xfh9xk0J+0WcFDP/M8dHUk0zaH32W94ZoU6iOPlNc1k6eyC5KeVJSAWo6UUXg3ZmjdwRMyBQhBPUc/pTc+mKvgqsjDVGNCiFT3B7C2V5H/+plvmbsIfrGD8QJTzU=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6024.namprd02.prod.outlook.com (52.132.228.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Fri, 20 Dec 2019 05:51:48 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2559.012; Fri, 20 Dec 2019
 05:51:48 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Richard Cochran <richardcochran@gmail.com>
Subject: RE: [PATCH net-next 1/3] net: axienet: Propagate registration errors
 during probe.
Thread-Topic: [PATCH net-next 1/3] net: axienet: Propagate registration errors
 during probe.
Thread-Index: AQHVtD8/PHqqoL6sF0eYA6GsnGF+CKe92YtQgAChMQCAA0uZIIAAu0yAgAAFTOA=
Date: Fri, 20 Dec 2019 05:51:48 +0000
Message-ID: <CH2PR02MB7000F55F495C7083772697A7C72D0@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <cover.1576520432.git.richardcochran@gmail.com>
 <42ed0fb7ef99101d6fd8b799bccb6e2d746939c2.1576520432.git.richardcochran@gmail.com>
 <CH2PR02MB70009FEE62CD2AB6B40911E5C7500@CH2PR02MB7000.namprd02.prod.outlook.com>
 <20191217154950.GA8163@localhost>
 <CH2PR02MB700039E0886AE86B9C731A90C7520@CH2PR02MB7000.namprd02.prod.outlook.com>
 <20191220051933.GA1408@localhost>
In-Reply-To: <20191220051933.GA1408@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dab0db75-c7ba-481d-9262-08d78510b41e
x-ms-traffictypediagnostic: CH2PR02MB6024:|CH2PR02MB6024:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB6024797B6F706EA3EC88FCB4C72D0@CH2PR02MB6024.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(189003)(199004)(13464003)(54906003)(6916009)(4326008)(26005)(107886003)(7696005)(55016002)(9686003)(6506007)(53546011)(186003)(33656002)(86362001)(5660300002)(4744005)(81166006)(52536014)(81156014)(316002)(64756008)(478600001)(71200400001)(2906002)(66556008)(8676002)(66446008)(8936002)(66476007)(76116006)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6024;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y5k8J2farWyWgTyE7YviUucZENpkPUyXwITwDkpUTy2Mt+24ACzvWPTPTqAmEVwLAR0D3ZUp7jtRE0jnhrxP949ifeMtn2DtETTaglZOcas6uG0vaHfZ49xYU8rpz/6K6vNruQvGuTpZvvxbfMTa2iQvKnGqNFg1AVFFKUKYqzalBuetfl78ZzFK315VJYX1AN84AT9G1ZIsJ3xSFzCWc88HcGyNeQmxHxb2ud8Lflt4R+8IWRzCyINnR0SeYFDMYIuvTLjYCwQV1vnZMrdN8/krxoATd7MR7161Qnr5eAN5Obtd5/f24m+os+YoRWIMHCLvWAkCuPAk55VQ5z7/lWWrUvhdQoU+yKdBfeFAAKKRnMDBkLR377752nz+a49QUBHikYogpaV2wTRMSKwQQ3uLkN4iJUyU9C5dl17Rkqa575kLZZo6ool0S4RjnfL6l52CClNcH9Vmm3WR7rIpOm9geUUd2pallMFSiupTYSAz+1cQj4cZuRzSzdReoPYs
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dab0db75-c7ba-481d-9262-08d78510b41e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 05:51:48.1349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 56nsiIsExPeB9lLpw+Y4oxAGI8kSZiQ1M6WvF8k4WwA3EsyFVMyMyJjToj1y7Y8iWSGQCLRF5Ezx5gNxDMWiKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_215151_618967_3AA6F9B8 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.43 listed in list.dnswl.org]
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>, David Miller <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Friday, December 20, 2019 10:50 AM
> To: Radhey Shyam Pandey <radheys@xilinx.com>
> Cc: netdev@vger.kernel.org; linux-arm-kernel@lists.infradead.org; David
> Miller <davem@davemloft.net>; Michal Simek <michals@xilinx.com>
> Subject: Re: [PATCH net-next 1/3] net: axienet: Propagate registration errors
> during probe.
> 
> On Thu, Dec 19, 2019 at 06:13:34PM +0000, Radhey Shyam Pandey wrote:
> > I mean in which scenario we are hitting of_mdiobus_register defer?
> 
> of_mdiobus_register_phy() returns EPROBE_DEFER.
Thanks. For defer we can skip "error registering MDIO bus" reporting.
> 
> Thanks,
> Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
