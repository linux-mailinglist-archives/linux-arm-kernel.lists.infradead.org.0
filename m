Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD72E41C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 04:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaK9sknEfke22TFo9iDNinZbWpEra0M/blh2cd29cNc=; b=X2dyNS8oXrC2HQ
	0A5sVRCYNZ8Bos5x1xNGrDeg3B5RO3l9RVzE3SvR82F702aNXwgqZ4t1xo9UD7XmYFtUSxPZzr1nP
	GlLZBBllLC2fL5BB9a1o2OJOZ7EKA8h4uZxIDfvXLBR73mpTOZA+22DFTIxUfQnhg9/ZHivX5If6h
	2KnoIOcEGoX/Lz0ydLONAuAElPtoK6zB5lwl6OkYa0Llf/Q7lAYu2yIuSPUvtVNIuwsi4lxuPXM1/
	fE9eJqa7W8kVv5Owox0gIGM07kpBp79VuiYvM1vGnY/tTwET5oWJzQxQmyS2xv9+6f+b7VIQLHgWj
	px9soLwd1URhYLNuezhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNpe5-0007k2-CX; Fri, 25 Oct 2019 02:48:09 +0000
Received: from mail-eopbgr1400125.outbound.protection.outlook.com
 ([40.107.140.125] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNpdu-0007jT-Dw
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 02:47:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LWmh74jeA4m+oDNZ2pHfRXeiET+u9fi++aorzubWY2KIiBbkYI3Vl0ECLjMaU3UJ1dY0q65p/V5tfdsLBrYmvcxicENkfq8AhOXiofWX+B9B5CpcUBAif23XxzrIez2Zs3Q2o4yUxobPsnMoR2PIrCtC0yahw+38lPO9QAEmugIU7MafxTVU5eMsMYqd8MTtD5R9pJYnQnDy1lUu/759sd1clvfAiIDh94gFTpf03L8u7QHoWV7BIw30EVvn43by4YdbdUVrucgh9X4xKFYPaG/eTsoNGCMuvhG5b7Fp24YcbDnMmu6jrW9iqkKF7Eyqv8YL93JcKRta47nNuduroQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=av1jNuMHbxXcMObTGyFo1HdeFU6fu8BlWUMCnW9puUs=;
 b=e9IsO4Z7lrvqHB+fWGe/e6aBErAAbE3kkCSzcH+SwQReVX9TpYmgYChxIu5K3fyg3S4qBk6tGvSnSww7Olmuw6d+LIzZMUOEbkMz5XX9jIPycY67+gDlY/8QSeCQrxSy9EMKbvK1KYjkljKypDYBfWal2zPTV+smXmSDbcVdqB1BBsOYVBNLE+Fl+vV60b2WQcrmLWj3tbWsz4UUFqRQUCFigyejvRTnJJcWq+lefbMNOJwwg9uSyHzJZ+JPc0yVJ2nD1+pdvYyIp2URy9OQn8rUzBTGQmJqM22TDzmeKv3cwU04BN4VyWT3hTgGhfp9PQE/5jGB3pfGifR7ZJ5VVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=av1jNuMHbxXcMObTGyFo1HdeFU6fu8BlWUMCnW9puUs=;
 b=p7nv22SiHn+WiNrepp+BgYzOLXSPx7VI+x/XlyEAlrTDiXIntOFLf2NeIbrqYiyM13+gj73wAmNcu402N97bUCSIlLT8VFxRaoArvHpNQzJI8NyKFpmTnRxF/80yRu332gn+PhrLI1KG1O+RlgQV1YuDxA4QfGHxtM0DFfweJ8s=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB2847.jpnprd01.prod.outlook.com (20.177.105.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Fri, 25 Oct 2019 02:47:55 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::548:32de:c810:1947]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::548:32de:c810:1947%4]) with mapi id 15.20.2387.025; Fri, 25 Oct 2019
 02:47:55 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm
 <magnus.damm@gmail.com>
Subject: RE: [PATCH v2 01/11] soc: renesas: Rename SYSC_R8A7796 to
 SYSC_R8A77960
Thread-Topic: [PATCH v2 01/11] soc: renesas: Rename SYSC_R8A7796 to
 SYSC_R8A77960
Thread-Index: AQHViZ4kD8vHtMSr70arGVjkn2d/Xqdqqduw
Date: Fri, 25 Oct 2019 02:47:54 +0000
Message-ID: <TYAPR01MB45445B654E998FF48324A37CD8650@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20191023123342.13100-1-geert+renesas@glider.be>
 <20191023123342.13100-2-geert+renesas@glider.be>
In-Reply-To: <20191023123342.13100-2-geert+renesas@glider.be>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [150.249.235.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 157548e9-0d96-4a6f-cd82-08d758f5bc92
x-ms-traffictypediagnostic: TYAPR01MB2847:
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-microsoft-antispam-prvs: <TYAPR01MB2847D9C4D3256E939C0E9987D8650@TYAPR01MB2847.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(39860400002)(376002)(136003)(366004)(189003)(199004)(446003)(9686003)(66946007)(3846002)(6116002)(229853002)(478600001)(6436002)(4326008)(55016002)(71190400001)(6246003)(11346002)(5660300002)(71200400001)(14454004)(4744005)(256004)(2906002)(7696005)(110136005)(54906003)(102836004)(6506007)(99286004)(76176011)(305945005)(66066001)(7736002)(74316002)(52536014)(8936002)(33656002)(486006)(476003)(25786009)(316002)(186003)(66446008)(81156014)(81166006)(66476007)(66556008)(76116006)(26005)(8676002)(86362001)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB2847;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QizEFl6EEaLkOc8951XCKs/Ju2Bx4u9pAVD1GIv4F3SexZbBR/DaTNby9QwafHXJb20eUKyIOFz0dh1VdRYGwOFdD+uLGDVnL1jlUjX67qG5Wz7fuRz/Yg4DzxrOEPSabCrtS+SBA7Q/STaofS9QN7YlD57JD2428BX8cYvWMZ60S207xx0mdRSQ8ZTmMI3VrY7MEiP47WNEJdlR68ehTFAG1lqZxqEc0avOPUh0mRn7bbyojwu6b8WukcsthSOPGD0X9+dKEkYEgSSsygymsqRbwzl6/FFmmSOb2QLJQgWu3ys36COHLuO+G42HpI7mHtcvTCTb68GzlJmvc7FXbIkjuUgCuoL1BHK+Wc1lP/7FtlI1FS1KfBKqcz5zJ8jxzxqVCHQbYJFU3jYCpiKwUc9jpGuj+BnwUuhEL0A/nHKCgNEhdA44F//aJdVCbTKa
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 157548e9-0d96-4a6f-cd82-08d758f5bc92
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 02:47:54.9194 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mR2HBcVSJZ9KjaAQ20OC1BoO8TLOO4yNFrqTmykvh1vnkG2KIzJh75qu7CBkhphny/4E5JpDYTpORw2FMNwQSHrlDrSChRkVL8E8E5uLCAXGzMK6FridelVVmqdzKVsk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB2847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_194758_470862_EC8DB5D2 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.125 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "REE erosca@DE.ADIT-JV.COM" <erosca@DE.ADIT-JV.COM>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert-san,

> From: Geert Uytterhoeven, Sent: Wednesday, October 23, 2019 9:34 PM
> 
> Rename CONFIG_SYSC_R8A7796 for R-Car M3-W (R8A77960) to
> CONFIG_SYSC_R8A77960, to avoid confusion with R-Car M3-W+ (R8A77961),
> which will use CONFIG_SYSC_R8A77961.
> 
> Rename r8a7796_sysc_info and r8a7796_sysc_init for consistency.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thank you for the patch!

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
