Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56370118500
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 11:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77bibjeQXnFqxY3JBFMfv3cbrSrK5+4PnvscyMmiG4w=; b=O0U5Av36KC8zEA
	YRJZC3a7sb8sVjvh2OG40lp/mDlagBe/pvjWf0Lb4YOStaTO5MUOt/RXFIg/qFq3O68xE9kZ8n0D0
	8ed3IBFO03/Go1NS37nwx0emHK6v5aWf9jN/l68vTpX6SSqJIrk2cpASb9ArjYsfzcZYvnUFPrLW+
	zgjF7uwJQW39xsNxrHB3CDTJeGa1mEKjdUdouXWy1G6PCL3DOeVTDo5MhHNJ4tiLGjFULh6U6jHXZ
	ltqbw8BZITP4shDcvFElrZlf+qnzpEkf7U1ZR9Ul+CCI9lVv/2ZdJrZN5xpBVstintVMdJzmqjVWA
	y7LxgRdW3A5J4IJGqjtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iecjB-00041D-Po; Tue, 10 Dec 2019 10:26:49 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieciy-0003zN-J6; Tue, 10 Dec 2019 10:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575973597; x=1607509597;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=59PC+vslyVH3+RidnZZvWipI0KF/p468mnOMKVWB+3k=;
 b=cNKIjWu8xi0q+LKKOLodiKpBxs0uKyY3UwetIBZnRZ4NlX5vVmzhR3CG
 AAAKBforIUVDgkYfbYkyeLjlaJgfu99um82Mtq6yQ3siZ6Iarvpgqr2c0
 Nu2OVJXOrd9Yaa8xrvN30bAMbDdMkHFq4BuUQR6ZoqltQmNs5IzwT7qt6
 qCF8tGgq2yAcd9XzwqeeY0spyygBA56tew3bKkgfewsDMi7fUlb+VqJeU
 RX0fiMyw+My74/UrwFzJt4OSaDedRLWKtBIJUikCfxC5UzO13hjtupfAd
 xXXgb4jpB9i/3i7xGcd1nrjK9OHW0G0yt8siobGRB9aLZues5YeHfc/eL g==;
IronPort-SDR: nYLRGXq6AjqiFpZ3kxMbYbz4v/QJ1zwPm+L+JVuU1pRIKw377RQwq+eSK0zuXwLC1++3qelkmQ
 lmaiLBkXeTrXb2Rc1XAUVd0LnqOjBTTxOHWBU9IVc0vX3KKLc4PuI8GZutz6bBp+/8Ps4XZBEQ
 kPHbyidVS8w1piyC65Ww8C+YRZRRsmIuMHjxfNnSAAOHqQukBLc0FtIhkNwn3lXt4LW0MJNRyj
 wjFldA04ndsS54bCU41/ZuZ3THspFVAe3BQmmIQi4PPk3swujKhGy3Db/w+wEjnKjLcKfsrR1W
 YY4=
X-IronPort-AV: E=Sophos;i="5.69,299,1571673600"; d="scan'208";a="125769038"
Received: from mail-co1nam04lp2050.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.50])
 by ob1.hgst.iphmx.com with ESMTP; 10 Dec 2019 18:26:33 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z/LCFfecHHNjwnPRepgfHdfLR7RO5RGUU6GSmfZr05t7h3Enjky6vCwD22FRiFfayNSYvzCPscP37KUcKd9Pb0gjaVV1IZkpvusRXErx7WS21h17QBDz+EuOSsVolahKe9u6cKS0s50XvBSSwOACX9n2k8xKZ2WpWFVEJ1oP5jZnKZEq7uAb/I1FEJfzUbEn/nP+rvJi+kuqZlNj5F50Q5y7S/PkFH4y2cfBZTeV4jvrI+AHhTtUrYre/o3u2wY3Xk13CuXRRylk+vF6eN5m4He491ZvtivsHiLWbGtsyRNxprjuNiCRN2eSb0cosPrkq9u5wrT5caF/LvZWzKTJfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=59PC+vslyVH3+RidnZZvWipI0KF/p468mnOMKVWB+3k=;
 b=jVZSzr4V2kRPpYUxwZjib5jx4cOKWpx1Dt2ULox7z6wEpf2v9D6a9VipOaJQdFOmcaYXdeS3z9QXfRHgemsFxJUmJfdq2fKrV+2mOGC7G4UlgwX9++1QdS24lLN+5M2+epnRFZkvqKwEuwSDpOjZwPADDuNW0rs8mwqGbqtX8HsdGUs+MzwOjYzzfOOOGKSjxYZ0X0S4qgY/05py9wzCnd8t7I+hXBgacGRKMuHf7aAkgzr2Sm0AgWWffGx0ezxALxHxVycr7in6GW8ly1F7jT5LWxgHHNdyjUl+Bmpex//qiJWErm8GiPj8mOhmVt9BcxetEmL6IV0NF/uHR5di3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=59PC+vslyVH3+RidnZZvWipI0KF/p468mnOMKVWB+3k=;
 b=QHwbiNKrt6VFzaFLwmaHeR24jisYkSppTIH5hbVfJPrSUrUi1kliRswkDkAmrapCRrVsdyce1CSl2b+RjP2nyjfLAnwCWjxiHH5+F37YC9y5Q1jp/xKjzRIlw35NnPLVONKOErW3USPrLaju4D6igIImmQm3u4jcQkEBfTgM9UM=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB5599.namprd04.prod.outlook.com (20.178.255.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Tue, 10 Dec 2019 10:26:30 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9447:fa71:53df:f866]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9447:fa71:53df:f866%3]) with mapi id 15.20.2538.012; Tue, 10 Dec 2019
 10:26:30 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "f.fainelli@gmail.com"
 <f.fainelli@gmail.com>
Subject: RE: [PATCH v2 2/2] scsi: ufs-mediatek: add device reset implementation
Thread-Topic: [PATCH v2 2/2] scsi: ufs-mediatek: add device reset
 implementation
Thread-Index: AQHVrmrHDAfAzH7xfkuuIrib76GxA6ezK3ug
Date: Tue, 10 Dec 2019 10:26:30 +0000
Message-ID: <MN2PR04MB6991F59EC0F03596777A782CFC5B0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1575880154-6099-1-git-send-email-stanley.chu@mediatek.com>
 <1575880154-6099-3-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1575880154-6099-3-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0e4d314a-3969-4705-d042-08d77d5b6c42
x-ms-traffictypediagnostic: MN2PR04MB5599:
x-microsoft-antispam-prvs: <MN2PR04MB5599159A89C11B35230DDE92FC5B0@MN2PR04MB5599.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(39860400002)(346002)(396003)(376002)(199004)(189003)(5660300002)(33656002)(55016002)(6506007)(9686003)(8676002)(4326008)(7696005)(186003)(71200400001)(81166006)(81156014)(8936002)(76116006)(66946007)(478600001)(86362001)(66476007)(52536014)(7416002)(26005)(66556008)(316002)(558084003)(54906003)(64756008)(2906002)(66446008)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5599;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uBUwZymv60+2zbn9JKUclQs+vyMloJO/q2qXvOI2RxFllH8lr+xwvfLXkF5syTYJGmk/qBROsePheYftTw3qZ+hPf2lKIopfeJTKYOG5xWFb8EHJhfqnQ8YvLVblMOeVgUVpBaUqTg9956TWjNGRYoMQqZ1GItbRYy7Cz4FSuFhmdpBsg9PBtp5k3BrReulOUwrj+4WbOCEDRiaCHiBbDBvWnq/LJXbgxDAHWzy1dEkqCVz32cI+GsgFzuczT9CUcjd4KAP+2oPDtoQpq/cetsgCfa1FW9EvKY3o7NmN/qaVat/fzALozfTcvQ0tN339lQLjwsUJB/Jtkq0k1wU6e94tGB5w0ZnNCx2WOHrayaWZzbS3hG9P1sB0NlY8EBpLbv/xh7iLE4PQrEAShe5tQ27CLYQjZwEm8PdIHPFRjLzBF8/HCXMPQNGUwPensNV1
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e4d314a-3969-4705-d042-08d77d5b6c42
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 10:26:30.6564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sHyKf3FxNBA2mugSL0fJCcRM/7JkoXUdQCPQkAAnC/GUW43Pct+oWTV5CVHBhujG9wMfSd99XcyXSti5vBVb0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5599
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_022636_727787_F288CAB4 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "leon.chen@mediatek.com" <leon.chen@mediatek.com>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> 
> Add device reset vops implementation in MediaTek UFS driver.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
