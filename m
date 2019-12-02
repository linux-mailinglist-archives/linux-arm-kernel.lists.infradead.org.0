Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E608210F2F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 23:52:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUnxvJlC1yNeCthwxmAmNaW8vPYy/OxlmCqqeK/MsL8=; b=eSWdOFdJi29Kl9
	AF2TS2vke6Zs1fv2TLYbzBFI/5UKndbS05Evcdd4y9sN/FybIbl84JmPycwjTQVZlmfMZf1q/g+rM
	lZedYelbGTxgYbUFNAWFnfZI+st0U99xrqgh2zusTwhBuX23SWCD8guQX2SfZuimFkiQUFOpX4lpw
	vFZiXK6xb6hjsxPXwa57zUlcD997C1i1hxHzpm9DvnOVSBYmenmfRsXVdQ1yryApFITWoW+sPv3c8
	m/K1rM2TjnW4DXGqYs7xAfnOGfpQwKXc+RyfHkvfADIzuLngKXfT4sfYI85YJqQuM7T1vwA8G2oH+
	b6zaq3KNCo/5Vbyox4WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibuY7-00026N-Is; Mon, 02 Dec 2019 22:52:11 +0000
Received: from mail-eopbgr10053.outbound.protection.outlook.com ([40.107.1.53]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibuY0-00025u-B2
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 22:52:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+L6IKyFsPNxONHE8p32DtpovjvFP+0kx3L6s7LJ1s+3yRVAyGcloIE92RKyQ+rEJfnELTb8juTIgeHa0A+NALKzoR/0uXviYZ0fg77VPsWSPQJSeqzB8d8nqf1054O50gFNTmfi97XryzU0/VN+5Y4VjUt4ZLoT5L1n8nFBpGDoJ2bktqAIpr4Hv8GGatueo7qMZ1n+aWweCmkvJfWx2/w0Dfx2wEzXaoHJw1qkToO/7MzeeNnuzEET7udzhvknrz/31fjoe+NZWNLS6zoyUO9PpQC1zCxD1RPC34+e1o/mDF4SsbCGVaSvha8bwwyNOee4iic19KONefK/dvVQAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z8FyuXm79w//A8asyiSVH3/UepC+XF9SGERVHtcW1+M=;
 b=SuHlgac0rtibdh4w5zlA7vIFhDUrxUTBpt2UeCp5vH3t2DxyF4Vvn2hkmXt/4mZz8w6xon4/qUChN/8+wSlkwNuNgNyxYcQVeXVKpKlFhJl/e4lkYk3J11PIBguDcGmlMP9Tb4F1Voloaepucu+ED+ts6Zmzo6VV8CKp56fcrz1pPQ2z0Siz84m6Qu3LBFOyrYXsI0GkyHjR24POoZibHGTgOMWbYzvA5UqUhoOtWDokaBk6VGkvJs4WjdKZ3O2yC1lagvOrz+Oq8XN1bL1CQoXGRdeMTJY81uj4TBjNEdMlPIv8kj8WoZQEGz0pSvymw9Ytnl/nAacu55gBovkkVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z8FyuXm79w//A8asyiSVH3/UepC+XF9SGERVHtcW1+M=;
 b=ImnkRo0m+54eJ7tv6jesz+T8D2BzdKsVkjbHT2kcVdiKR3s0PahkfVUAx7NFp6DqetPb6j/WWqtre/KrPTjFKscd/fUFD7LbyiX/LiwkERoRNqSfKo4w64qvDZKQAn0gbXqOd4Vnqy/WfDXVO/I9VowiKPrgrNggGfTr+E0Th+Q=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6639.eurprd04.prod.outlook.com (10.255.118.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Mon, 2 Dec 2019 22:51:58 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::e948:7a32:ae88:906d]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::e948:7a32:ae88:906d%4]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 22:51:57 +0000
From: Leo Li <leoyang.li@nxp.com>
To: David Miller <davem@davemloft.net>
Subject: RE: [PATCH v6 44/49] net/wan/fsl_ucc_hdlc: avoid use of IS_ERR_VALUE()
Thread-Topic: [PATCH v6 44/49] net/wan/fsl_ucc_hdlc: avoid use of
 IS_ERR_VALUE()
Thread-Index: AQHVpfw8xYSflyw9IkOdsMxlnEQBn6enLxpw
Date: Mon, 2 Dec 2019 22:51:57 +0000
Message-ID: <VE1PR04MB6687B5428E3E4FA0F8F77DF08F430@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
 <20191128145554.1297-45-linux@rasmusvillemoes.dk>
In-Reply-To: <20191128145554.1297-45-linux@rasmusvillemoes.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f8e19fe5-4c13-4dc1-c242-08d7777a3c6a
x-ms-traffictypediagnostic: VE1PR04MB6639:|VE1PR04MB6639:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB66394E3D2D3794331BAA4C378F430@VE1PR04MB6639.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(346002)(366004)(39860400002)(13464003)(189003)(199004)(71190400001)(54906003)(305945005)(7696005)(6436002)(55016002)(478600001)(66556008)(9686003)(6116002)(66476007)(3846002)(33656002)(81166006)(6506007)(53546011)(102836004)(229853002)(316002)(26005)(52536014)(81156014)(8676002)(186003)(5660300002)(76176011)(446003)(8936002)(64756008)(66946007)(74316002)(256004)(76116006)(11346002)(2906002)(66066001)(99286004)(6246003)(25786009)(86362001)(14454004)(6916009)(71200400001)(66446008)(7736002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6639;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oHI+Ro1l1oUKotJ9dFwGUR+h9jhDj4qj0OJdjxd8pXEJUo0HpRfigtCooYWyPQfW3GPxUZPCykti0e545kdIT94ePVd5XGWj/FNPFCDpaBYRtD3Q/nmrFKtCn6bV/PJlG9qWesacx4regJGyHnok8vtkptn7Ktt1OCpHC5844G4Mxz0ZDfqZGiOj/dZ8gPVO14talZsntRqOIyQWDAyyZnS7InFxQM5vPjDM6rGXh36yBdx29NQV5QXUQzW0L86toxKPeT2HG2tdiNnxu6bMAUg4UdUJ4DP9qwERov4ky2l+mTQjRyLFEbZx+1e3/pPav/5kuQS/hLzD6kHVUReKAyN+eJ1LayTZyTzqnUa/h3ti8mFtqrzEQDuCARuMAYiTe1FBI9B3i4IavS86M96BjeVfcYFzH0hv/gz5EhDlfLH4wnkjQHnTDycWo+NcFpqV
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8e19fe5-4c13-4dc1-c242-08d7777a3c6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 22:51:57.8420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Cmoq7GJ25Rua++mGquLIq17ARcLHN5IKcLl5Fy30JWq85NVWNdYgiCKuMpoDkPteTmltYYeK4m4dPjOifD+EA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6639
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_145204_567081_35D91F25 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, Timur Tabi <timur@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Sent: Thursday, November 28, 2019 8:56 AM
> To: Qiang Zhao <qiang.zhao@nxp.com>; Leo Li <leoyang.li@nxp.com>;
> Christophe Leroy <christophe.leroy@c-s.fr>
> Cc: linuxppc-dev@lists.ozlabs.org; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; Scott Wood <oss@buserror.net>; Timur Tabi
> <timur@kernel.org>; Rasmus Villemoes <linux@rasmusvillemoes.dk>;
> netdev@vger.kernel.org
> Subject: [PATCH v6 44/49] net/wan/fsl_ucc_hdlc: avoid use of
> IS_ERR_VALUE()

Hi David,

Would you help to review patch 44-47 in the series?  If it is fine with you, I can take these 4 patches with the whole series though soc tree to enable the QE drivers on ARM and PPC64 with your ACK.

Thanks,
Leo

> 
> When building this on a 64-bit platform gcc rightly warns that the error
> checking is broken (-ENOMEM stored in an u32 does not compare greater
> than (unsigned long)-MAX_ERRNO). Instead, now that
> qe_muram_alloc() returns s32, use that type to store the return value and
> use standard kernel style "ret < 0".
> 
> Reviewed-by: Timur Tabi <timur@kernel.org>
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
