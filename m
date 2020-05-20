Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B41F1DA876
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzWgAHA9zmU2rJcrxZyk/Z44KglQiZQJv626inixxYA=; b=e4uKJ9SvcEDvyS
	TBZp+VZlG8zzb8isajJfNXbFVN2aJX+cB+ShK1atZiap4TuIPuHwSjs4kvgWsiojFozRH6JgvJV7g
	7CmS9nZCUYQf3CuOjMONLKVqISZcC5j+8GhV9wNwYktV3kQoRRXkSKPxnoRzmRXEmP5ToPrleEKfi
	VWnM63Sl4k6yhpIDc8Bps6O+M/tG6ktcgUQQAeVASk62239FuPjFbnA9oktBer8jI8+2bmKKrJq8n
	XvMvaE7IjC6vHnGLaku7qPF1Vy78llKnDWQrDw9XXf3e7Bc0VeZu3ZL0xPMlTKF8m/64ESmN9Hzoz
	frD2mUK7SeCNBqf7s3Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbF44-0004bC-FR; Wed, 20 May 2020 03:06:40 +0000
Received: from mail-eopbgr20047.outbound.protection.outlook.com ([40.107.2.47]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbF3u-0004ap-7G
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 03:06:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JQB6Y4dqQ/m62w3KcbC0X3dEzGNMJeViH6ga/CLwq8bohHAo7+Hn4FXWL8R/RxAAIB11T8YL5c9XKSZA9gETANZAYcauWNmcNskLAHRbXR+t3eRe7eRmwsfAv+22wkyIuAeIjC2da1pZYL/3SYCY+4AS4D5g9ICBBUZMCZdFh8aTTRCOpOMCQcxTP57Bk4S0023A+fm7tQldtRZ/PXxLN63OCIwREK2QWp4nrj6TDPG6ta/ARAcJSE36Ic03hKqP6Zv6JQOdEtQMOtvkvjWKCTkJ9uPgX0Ko4MOld20GL3ZREDjXMbQLCUQUCG413xSE55bvxl2OKWbzQZO+KUdGVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sNMNWBRxX+rgdmlCK9LFR+FDctEBp2by/5RDGWssLqI=;
 b=HLW04LDCLj4sIWy+dEUtWjcdsLm3fIhYRPpZzDPpujlKEqWu/0ORqqfvkOdlglo5J1/bfqhUnwcqk3SqtwXbLYGFS51v0j1SJPca2aaARsskMvsQYmliojA854UJHWJu6S0MQ59D8dhsGEAmWRaZs4OYndBuwR9T01rB6PabSA6Olp9kspgjY3FNvV8ebf+tbeUYvD7X/OqQw5u1765uJPR3/U7n7hQ2cm7kdAvIOo6JU5l74FiprPnhfZ2tsymEnPqErJJsrSP1j7df/4rzLwN6eddIcV9eEC4Pxm4rnjLCRxM/DzWGfu3JENdKFVfEaJVCAaLGmn0MdG2k15XI0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sNMNWBRxX+rgdmlCK9LFR+FDctEBp2by/5RDGWssLqI=;
 b=U9cZS+u5LM71G59Ac7EttPyY5RN6VAIgkGOVA+rz4OijXkf/oct5WMAiknoBaZWcY5pqBbq59hFr5/Ung/P4qzl1E0e7wlPjeXAQVery+6Se73xuhW5rFmM4Pbp+BK5/8erS+U4pioirdZ0nvH6YoS+vRPioF2m28WmcL9YzGZE=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2933.eurprd04.prod.outlook.com (2603:10a6:4:9c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.31; Wed, 20 May
 2020 03:06:26 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 03:06:26 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH 3/3] arm64: dts: imx8mp: add mu node
Thread-Topic: [PATCH 3/3] arm64: dts: imx8mp: add mu node
Thread-Index: AQHWLkxzkzQ2vaqxukCIUytKVqWONKiwSJ8A////3aCAAAJDAP///89Q
Date: Wed, 20 May 2020 03:06:25 +0000
Message-ID: <DB6PR0402MB2760A227F497AF7EF22079B888B60@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1589940278-3680-1-git-send-email-peng.fan@nxp.com>
 <1589940278-3680-4-git-send-email-peng.fan@nxp.com>
 <CAOMZO5BPPRy_XGHHyZfE3eOrmCwW_VytueY-An8qqke6HU06TQ@mail.gmail.com>
 <DB6PR0402MB27602682E90E4CED55244BCC88B60@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <CAOMZO5DmiQbfJjTLKPiv6uUNaQ8ae-0h7uOpPf2J9ZMwDoE+Eg@mail.gmail.com>
In-Reply-To: <CAOMZO5DmiQbfJjTLKPiv6uUNaQ8ae-0h7uOpPf2J9ZMwDoE+Eg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [221.225.35.13]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f96cde23-ae68-4bab-b205-08d7fc6ac902
x-ms-traffictypediagnostic: DB6PR0402MB2933:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB29336C9A0A9F97BF589B557888B60@DB6PR0402MB2933.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8Xk8jcBHJj/GqMvI7Y3riMLTMOKvNppneNWILPk3R8vzc92IQbN/uQ53QzflqrqHp4J1pC+VvGBzArQLxEm6Dx7aKv5ZhXPxYZR02+nJFyLgtUkkI3h1MFmUNVTHovoIn+S9GV5uC+avb1eegSi802d+H4/kDbHYVVd6PserqdE7C4MzBtxeyntvwO6B/lVKozjUjg9jUsS/3fl6taVEjKKvDvqjjdUOeQgYYGq9SbcVRM5C169fAfLC3Umr5cjDwc2zIxAYlr/A8RnzbGzZMKN05zblILxkfVTn/fZCzPd1NmWxcdQ/SLDz6n8jmDAeRSxgp/PRYl7f2L0D83m2YF6JHuS8Sc4hJUjf4ZprUjfZC7EGqfrG266IUtK7G/AJrmxFWrfxfhxIgARr2Z7TmhpZKzxu3N/Yy467c4vR+2su0glNK7SRJ2/NsgsYlfsPwKHMlMt6pFOS0YqR1hGKhv4ufRI8MMFKYW3xYbByFdq1fBgZFsR6enCbxgdGGMFZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(52536014)(71200400001)(8676002)(7416002)(86362001)(5660300002)(6506007)(53546011)(6916009)(7696005)(186003)(4326008)(4744005)(33656002)(54906003)(8936002)(44832011)(55016002)(64756008)(478600001)(66556008)(66446008)(76116006)(66476007)(66946007)(316002)(2906002)(9686003)(26005)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ++uOlDS42Bhwq8CUGuvWPMlOUw7vowZY6z+gWGj+pSQD3Uon+OmRdU+wKcXIVp18+mXSPU6whKtZtLO+an6wtY7hvm7lvg6hQk6btgRX4rW4tTka+0JLf4EhQi04HTT4gOQZWfllfE/aTaMaXSJlCNx38kcrhnTWK3TBzCQe2nvxvSk8srl5QiTK3jVbz3N3N1yMuiJd6Y5X26rPBBJKu7Cwc98c/y+GTGP9V5GGNeqHPiaE2Fffil1qc3rTbIsqPVXJScmlef4/PGzqT1dx3F07XHp2LXR8OcuFIdPoYHOKcAWVHAL0sslbYUBJ+b6xMkpVzmoV46nQRzjBarit8PNV+IEE1LG0YMgpay/rNAGSrIQIv1ul8tvQNmmmTgRUTerWugp/xUyAEPjJX+Fh45F+ItrKC0ASsSU/ZZwuLkjD91VVikbK1T4AjGu7ZXu4SfXoDiyOMDoY9TrsxRs3Ws3uuBcOxRWKRMXiFr/602til/uM+kBp7QL7lDuT0c6w
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f96cde23-ae68-4bab-b205-08d7fc6ac902
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 03:06:26.4274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VfKv7Cdug95kFwjvRbTHs8xb4//yZe1vVH37eB4ou1O6apHMnmLKML+rEvHGLZ9qEBiCkpzP6IxIDiK1ID6j7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2933
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_200630_264826_ED653649 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.2.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 3/3] arm64: dts: imx8mp: add mu node
> 
> Hi Peng,
> 
> On Wed, May 20, 2020 at 12:01 AM Peng Fan <peng.fan@nxp.com> wrote:
> 
> > Nothing specific in i.MX8MP for the mu part, so do we really need add
> > "fsl,imx8mp-mu"?
> 
> It is good practice to add a more specific option.
> 
> Let's say in future a bug is found that affects imx8mp MU, then you could fix
> the MU driver and keep the dtb compatibility.

Got it. Thanks for the tips.

Thanks,
Peng.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
