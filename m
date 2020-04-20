Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4C61B0237
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NBmtlOoY+HNRsBK+JXbW5lfkkrLLQjIl0+/LBFpwEU=; b=qafvcV4hcZmTAo
	bWqSjKE4o9/CJNiCe+wqOCGDnp5zUVzMf+9KOdJhRzNeZEbeU+uZyVrAZRbbop9sKtoIr37Fxp7uP
	UXIibhvKU4jRVgctBfZi5aO5GJPNYh6+B4ohFX+oEjoc87DRyzrM8wIbb9WR71/Mbh7tCmiL0FZAq
	nQE9aQchlFNWGA4hG2mSyG4tdH+PMoWtR3aia7eugvdvaZW+Ik5BfXgvtkEW/9r06RVs3acUQJv9Z
	EbcPs6lp2FdisaKJRsNT98eGhdgKbuMe4Zr5CA+kXZp+BbXaVEv9tBWE3c/cvVMaWcCigO5c1swGd
	0tHO9FOAc8ElsUhqmNzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQUj-00017l-7w; Mon, 20 Apr 2020 07:05:29 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQUP-00076b-84
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 07:05:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587366309; x=1618902309;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PdozEzjWpfuNB5nF6LcsNt6jxdbBBUR0Q5y4dibA62A=;
 b=av3VgZ9LRfPeM2s6r2pIXV2iUMHyKsLMfpAQe8KQ9UVT42Lct0BO9zLX
 uj0k3zVKQLNLMyPUh9JU2WNcROEspEiBcLgtb0Bw8L/RwK/Ut5KDVaip4
 Pm1/pPVr4MFhNy/UjjH4Z56DBVy9U8XczAW7DFUee7Lfe9SgbQ+y9EEO8
 m1j1vaUSnzeBQJNF9Ba/ZZPaOgOG7cXyUUxaLc30XMqXYA8sm49ED+jY5
 7CPzexIllbibzspL0X0wXV6yHx7LA6ShsoJpnmsiRMNBstENmdLA+7YS6
 arLQxsNiDI7Z3A87HYmxuyJhiF4KmnZKYSOMi+BgspxuunrTt0sGJr6Wy w==;
IronPort-SDR: s00gY0LB4BjGRdqARXFlhIDjo14bnCkU0nAFhVytjZe76HTt6rrFg8i8pPyP2DdGSevFgkV1DH
 IUVs4Z1bRxB9+e36iVcWC7YlY/2wqa3nD/lnRKlI3pnqVRS0uKxDeh0fYvQugqtf6e/mxH+pY1
 5nzaUraIX93tMRZER8xJ0S9R/IWURSwmn4mldZAB+XuPdw9D0QZMaa97AW8hzfKntxqHNBvgye
 i4ROpabGaFIdUoTwkjsGUsGYpwaui+ir3HUXf9C7xpfiVJTsdxO0uzxDB16uvu2G1yRdBkrtKn
 cUU=
X-IronPort-AV: E=Sophos;i="5.72,406,1580745600"; d="scan'208";a="137118302"
Received: from mail-bn8nam11lp2171.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.171])
 by ob1.hgst.iphmx.com with ESMTP; 20 Apr 2020 15:05:04 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kY7uZrlZMmE8Vq9jUTlcuTdxV+X0GTzfTwl1nFsUeN5GXwO/B6XG4Iq0cNB26BQpawxs+8Yd2rPit1hYlrjY93hOR8q8ZHgrgly7mktaGIoRHn34QG8BSQ28ylgraO9ZDGToDZuPprdCBr4M7YeQLaiWo4ZgrR+MFY7BFfNQXqATVFIZBS+IGLFpICpDzlMQONzbHSWreK0Lhg0AVfCwDSk3bwhsqs7EzlXljsr8hktAX3j52VbTnN5DNwgwn+9dtYgyWgSpB2oJLk3FalIUJzvHuS8oyRC+Q0rlN2XGcpzHc2Xz/jYCaClfw8rkDH1zgRdfEYGO/RLRT5ti0e4HkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PdozEzjWpfuNB5nF6LcsNt6jxdbBBUR0Q5y4dibA62A=;
 b=V8YQZrP0/d9lqXFr7VM6eYrtEVt60ptLyhhJ2l9hUkUnAhxxpYiTj3KhyJwbm9vYXd7idT/aQJuNrmrlzWXMEk6gpBRcXWiFnOuGyaDQBqw/99kDZ6iRPFTuaDIJOx5Dy6GQWsMT4W8/6skN7qMcKqCYhpQr0OvNYof2W+GVgZqrUx2wK7NjrRa62yEzmCZSrOBRVc68war2JqDQ7JOUBwnnqezsIXe32Vm6jy/GgRAXdscOv1u2NczNW38irarME4XoOVSkp0TWoFcXUvYS677lqoM6XIWaOGhXN4DrR9Z0TIfOALzkbCY08G4rKzmbnkWv/xdhrj4EbVO0/aPzzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PdozEzjWpfuNB5nF6LcsNt6jxdbBBUR0Q5y4dibA62A=;
 b=Emo7IH+nanzSNWSq7qhDlzsDPcPorPTvje1uzADRhDt9I+YlwvrqzklDg+5UA0fQuyWOTwV4ZJOVUNXjt7hvehlFBBX6pfNILpQ8/+begpLZFMzRzxJ7RPc7aawLEcnaVXbDHYdcPz7HI9aIomgAtY3D0kikCaW1DLIjAJYRvUk=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4446.namprd04.prod.outlook.com (2603:10b6:805:3c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Mon, 20 Apr
 2020 07:05:02 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 07:05:02 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh@kernel.org" <robh@kernel.org>
Subject: RE: [PATCH v6 02/10] scsi: ufs: add quirk to disallow reset of
 interrupt aggregation
Thread-Topic: [PATCH v6 02/10] scsi: ufs: add quirk to disallow reset of
 interrupt aggregation
Thread-Index: AQHWFONzXdOgIo5A50O86TEJk9mR2aiBmfhQ
Date: Mon, 20 Apr 2020 07:05:02 +0000
Message-ID: <SN6PR04MB4640A97F3BF5F2073878312FFCD40@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181010epcas5p23cb018eee5b7ae0eba87d81dbaaec3ce@epcas5p2.samsung.com>
 <20200417175944.47189-3-alim.akhtar@samsung.com>
In-Reply-To: <20200417175944.47189-3-alim.akhtar@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c7940835-31ba-4a31-5585-08d7e4f925b3
x-ms-traffictypediagnostic: SN6PR04MB4446:
x-microsoft-antispam-prvs: <SN6PR04MB4446F7F3750D2D48FEBD7DA6FCD40@SN6PR04MB4446.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(366004)(376002)(136003)(396003)(39860400002)(346002)(66946007)(76116006)(66476007)(66556008)(64756008)(66446008)(5660300002)(186003)(81156014)(8676002)(52536014)(33656002)(8936002)(478600001)(26005)(6506007)(86362001)(558084003)(7696005)(9686003)(54906003)(7416002)(316002)(55016002)(2906002)(71200400001)(110136005)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v00E52I/NyrDU5RxMQqDSZjyoEYPyg9E8fWKXnkHfUFTpUFFRLW1CIyrU+aUZ1r6UAL+CT305GPdN07YvcZrnEJ7PWa8LZRSXYc/AyM7Y96y15CjJJ28W8WxiFo1w8ogy8+f02RWGO+IpYarY9xVMXqpix/KH7liy7RRcTQ/7Aac5RUho0Ir8lKlVhIP8Lq5sDy04+7QwpnRg+7a09bTniazR0+WwkiX6AyiI/mZ/AQdLTdT7aZQIaD44JUBd/j64GnKqBR2HeE9UBj6fkpOO8lpH6a7N4QP0++Bb+j/V65KQPH2N6kOgRAzT06306+AN9pf9fkhFta2Zsk1jN2NeeMODEDEDrrHs6l7noVAZTfR7ICL/APYRdDVyYecF++VRCZ7vfeo7qyrbEd55gpW7r1FLh9xkIT6OBKgd858G0cHpVdpJ+Rrr7ulHWgEdRdm
x-ms-exchange-antispam-messagedata: pYMiUMy5wKhkrFi8gPL0um1NWvQ0SwksVMjAFfE503EwPF3zE9gKLlip2IXtUbFSQMB9W1jZ+tGnYwKB3k9ynmdQKMMpUvN3iMy11YF64sedv+rABrRrvkHDTiUBWHL19DsQ+zI26Th3S/ja4avcfw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7940835-31ba-4a31-5585-08d7e4f925b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 07:05:02.5744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eidFk0tU/s77f1xNRl5QS/nRE0KXTbBJ3zfeZDa7PCbQYNbz9ecuMQi5k5YOov1ltAKY0wpdxhvNEfreyVZBzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_000509_386625_C6ACEE7F 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [212.25.79.133 listed in zen.spamhaus.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "kwmad.kim@samsung.com" <kwmad.kim@samsung.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "stanley.chu@mediatek.com" <stanley.chu@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> Some host controllers support interrupt aggregation but don't allow
> resetting counter and timer in software.
> 
> Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
