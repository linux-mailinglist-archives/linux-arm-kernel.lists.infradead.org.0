Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEBC17D240
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 08:34:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FlxJ7hiXEyJ73Xif/zBtTPqVEBVxB9GHfFz8XniL23s=; b=NiQL6tNlXIjQv/
	L9J8qByHwSbFha+sYzD0rM/y/b4+KZ2tupWDDst1R8shg4pVV27GUi4bAF3k4eQmnCV1TCHkyttPS
	/cwcK5bPt/u0dDH3qQXfWUnBmAO2cspNg4kftKRoYCLn/7p6azd0NZaOIehSNyCPNePy8z4TVdHme
	oaPoOZgpPemYKWP3qEqFk8i67mUw7Nqqqe4e/f9F67NQe1ltAjJvrBXgOWXG3SYGxSLi4YsOo2Pxo
	1js46itg6V4b6an/EbiXxMhC59hLYqKfVEAQO7ijrKONQ4m+GIv12zS22WGwXa7/8rBiXKEjQPZTJ
	e9tOFUYnFi7V16u0dylw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAqSL-00055w-8m; Sun, 08 Mar 2020 07:34:37 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAqSE-00055a-9v
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 07:34:31 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0287TNEI014310; Sat, 7 Mar 2020 23:33:30 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=FYILC87QcXc2U2cN9bN6Lkz2rJ+8q83Pq/KmFhFgKSs=;
 b=TwzjbKEzLK+uJlFo9k/vDXYGANNwJjCSznOZD4sEW7wAW6O1+gCsfaFyIIK65ZCSl746
 E2h8NcecaYdaVjnCAUxyIoEIfgG951twaFr1RHJCTdInM3alguOKAPXtxhifAinATrDN
 5ADcJFxh/DdsGBut31M3gXzg7Lz2rdBnS1ihl257V5rjCAZM3HVota9Cnr8sPOXyjVZC
 U0LsORefDvpSsznrg5oaBw0woGeM33J++1hX3SVEip1u0vaaTxkQcZkhzJp09O6pE9aL
 w2Fu5bHOb7JDJrkA9bHf53i9tD4KATyxchCnjYNj4mtq7DDE2691rfAdNLrwNKMWgE6o vg== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ymc0sje5c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 23:33:30 -0800
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 7 Mar 2020 23:33:28 -0800
Received: from SC-EXCH04.marvell.com (10.93.176.84) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 7 Mar 2020 23:33:28 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 23:33:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ayFqJrBWHaxDPMSdLUI5w9lpHVHGA1xo0ID2HcHbOTDX8ibTax7bE9TWnDpn9wcUnVUMDZHqlHrsmsKzHBoRG5cZA6FBuazBzrlm2Cvq7tanKXDtTYtCTRrRbpmckGAjtLl3yy1+BbkGTafpImd7eEK2Lebtd1reG3cK7LkwOPCSNvG7ND8rOgydj9JSxAuIUGQJhnWAky9qZvWQshN6GGTAJ4HCceDNumeY3XK5stA+eJU7PvbHB3967XYAv2Mdp69oLaXle6lqV4TM9Oa5SD4E8v7gVt+/RdP0IJza5BVf1UpRfwVOjflJW91JspMRqbeFc6SHzkXuZ9AG/thGaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FYILC87QcXc2U2cN9bN6Lkz2rJ+8q83Pq/KmFhFgKSs=;
 b=g07qWvK0qq4K38TJ0wfYijx9PRjNQMEmN8ZtcCiVFV+87aIp1VmUiK5KAW0etY6We4MKbFW15ozus7yUeUT2cmidCCexbNGb90bQpv4Cb82QRI+4n3QXuDKJ3x8sU9bkXH237G6/4TVXY2a6oolUdQ0Rj3taFUJ2CaoTwVlZ+5qIfW1fI+bvKYiSdBZU9qr2dNdUGc3TQJifdKqrsfsQcCpXqXVrmruWG1epBcMv0xZlO+eAc56NY0xSLYVyetgOeyzacYL/WToTMb2/oEIkwrEG2CDsWzptUHd+YJoefuQAxD7W/NE4iA8OyxE8mQLmfDVbZLBWbdCzzxMeM2oIRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FYILC87QcXc2U2cN9bN6Lkz2rJ+8q83Pq/KmFhFgKSs=;
 b=TOAROHTPO0i8UCBz95IT7GTa/+UyfsGHd2ZeBbGRlSnGoSgoxG2AxkK9dKwf02lQi+JBta/7gLk0bQvyIq2jMM7Nbwe/Ha0qoLpNB8IpgcylW95InPJfbsDvlL4NVZ4qJVr4qrM1lc7HU+UCednWBEPOc8brW8s+vCCm1z3Qkb0=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2472.namprd18.prod.outlook.com (2603:10b6:a03:13d::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Sun, 8 Mar
 2020 07:33:26 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 07:33:26 +0000
From: Alex Belits <abelits@marvell.com>
To: "stephen@networkplumber.org" <stephen@networkplumber.org>
Subject: Re: [EXT] Re: [PATCH v2 03/12] task_isolation: userspace hard
 isolation from kernel
Thread-Topic: [EXT] Re: [PATCH v2 03/12] task_isolation: userspace hard
 isolation from kernel
Thread-Index: AQHV9Pw+p8WFE2eefk2Rf0eNEw4Ad6g+LtsAgAAe4IA=
Date: Sun, 8 Mar 2020 07:33:26 +0000
Message-ID: <f0b4a621cf3b49d649ea0b23d93721cf7ca24d6e.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <105f17f25e90a9a58299a7ed644bdd0f36434c87.camel@marvell.com>
 <20200307214254.7a8f6c22@hermes.lan>
In-Reply-To: <20200307214254.7a8f6c22@hermes.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b97d4d2-77ab-4123-d256-08d7c332fd55
x-ms-traffictypediagnostic: BYAPR18MB2472:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB24720CFFEE77227AA4250E24BCE10@BYAPR18MB2472.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39850400004)(396003)(366004)(136003)(376002)(199004)(189003)(66446008)(71200400001)(186003)(26005)(5660300002)(4744005)(4326008)(6486002)(64756008)(66946007)(76116006)(6506007)(91956017)(66476007)(66556008)(86362001)(6512007)(316002)(2616005)(2906002)(81166006)(81156014)(8676002)(478600001)(36756003)(8936002)(54906003)(7416002)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2472;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0nKFWkJXDWKjBizSb1/rly8h1ej+KKK95M0CgUzT4xr7ah7VBmkMFsZb8N47xPczk2bH4++K2WaI83UZqD2yCKUV6aCNoLDw+D2zIToVJmWbfUxt6Sqt6qUWsKbuHZ/OyRayKSLm+JV7V7KDw6JH+va8eY+pZF/ih89sl1xW1nt1CQQ1RN5TlEOb/LBtve6TkwaLyaDZbdUAKqICePbVnM6bxiSVeLiSkvRzg7SU/nQiXxGhAkka/2kXVR1JSyJPzwLqY2dL51H9coeqUQPdwZemPBp3Mnd0Ieuc9AxdbCs6PeqNm0/BW1DxVE9eBDtTSJSaYNV3YDAEkz79fLaN+zCC0H2bmSsPlg5Bc1hjM/NROLlgKLI4AUlhjoLWIHa7q5LMqIO9CEvrtMWT9s3+rdDeXnnj2mygbL57n0jQWzJMBp6EAmZU8l83l86VGcaF
x-ms-exchange-antispam-messagedata: OEtlV3+He81DuDHwmTvCgZPA2is+FAdJF4bpEMjvNmpIqBqo7mGgtW1LV/peWOoQZVGfOXxabnPUB1VTsfkoUwXfCP9q4J3FT+mGM83zuxkRSHv/T73pVjNESSFtAZ7whOZhxwbb4FqR1lSc/3BHsg==
Content-ID: <964184D5A0236941AA1717025730F649@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b97d4d2-77ab-4123-d256-08d7c332fd55
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 07:33:26.0266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uycCeeMpbOkvd4TjzruSTucbPhJ82xtnPmm6LAlYsPcr572pwFeJNjYe8RbgXeep/8yNi7RAp+ooweJzxWKbzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2472
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-08_01:2020-03-06,
 2020-03-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_233430_470993_F6131131 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2020-03-07 at 21:42 -0800, Stephen Hemminger wrote:
> On Sun, 8 Mar 2020 03:47:08 +0000
> Alex Belits <abelits@marvell.com> wrote:
> 
> > +int task_isolation_message(int cpu, int level, bool supp, const
> > char *fmt, ...);
> 
> Since you are doing printf/printk var args you should use the GCC
> format attributes
> like printk.

Agreed.

-- 
Alex
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
