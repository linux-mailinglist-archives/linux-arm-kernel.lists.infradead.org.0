Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF217E41D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 04:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pia2l12yzO7Z4b7ZAOanfrWnKsdMpWioiHHzQJ2itlY=; b=hmHu6eEIbUcehu
	TcbMQNF8f4Lv34p6+WAXxlwASiqwZnWTjp6Cb3Dje55OgsmR8GTdk9HggGVLQIijcswsz74bY8YWw
	BanDVjReAt1Xqj1XdeV1QPyf2Ixh2/OHttYEcowjWUcw8vKZQe0Kgr/Ye1AEMOZceVuKkILH+bAr9
	/nd5kOgK8d6Aq4ZycG9gGuXZYov0wNkrBJQLIznQDDM3rd5WePkm5iDPks4Ao5frOuH6pAx9s8xS7
	DMfx53UI1EWMP5Kxg/kdVDHT6dYV5IVk5T0sdPbmTk05HV/EPRvbjQ6/+shiz6F8NEaRp1Vcoe7By
	PMpvtZTf+MMQcaIrU1Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNpfR-0008WV-S5; Fri, 25 Oct 2019 02:49:33 +0000
Received: from mail-eopbgr1400103.outbound.protection.outlook.com
 ([40.107.140.103] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNpep-0008Im-QR
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 02:49:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nm0MxeGzLwiTKLVJO42ZDRhFKE3YqZSywArJRRwI1X09kZXzSXmohYm+oQTSDRrZMCHNNcW03/G2cUHcuDbBeM0J2OuoKxLGMj8liTksqQMgg8Yt3Ll+Q7eRBMCSQIPpFTllksFUCN1uQcxYSSwOyzIoN2Cg9V+RjUe5UmXmElIqZ+XEkidQMOMz5CcA3W9uUG4DbMZ/vnIXvG/tiOBpD2YUVHmDsTQ4FnHLT7c+4UuOiYR5tkC1yU9aCibFP+yhsuAyFBrQ93qmEVpbXMubxCGZ6fmhgKuK71Tk+DJ/xfI/+QAIS/eAcY7TreJTm6Q7lWTG9b8rjyUjE4BlEZZkMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cqlfTdTQZ6rz9AHQ+DlP0x75SvUewIPP/HhhOTZQkXI=;
 b=j7mXaJd+M5ygNPwY2UND5XTiLeBKiwUzlONGu/M6lMPGP2bSvaUlbkcN/ydelaEoTKkm9PrryNiy5iL2hvxtQGJUbUe9miolWXe46buRnMAKI7B7fhkUNJd7Sm/FhFZNTy0rhpoTT6hsruHSNMJmBEgRRKexdb77umUK8KNqhS4DQ5HZW6UZtWdr4bzTloa4B3+dcTgWszSD0j2ulY5LhyBAQArwZ7X/q1SwTF4Q2hOkG/ILmOlvRwIGG0BYkt9YG3lgS/gUMW4Jy6oA5iX1z5dRw8WN96WWZB1tCpWJbs34yj7jx1oPswzucIre4FlAO4YsgMfiHMNTk8+adXEXNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cqlfTdTQZ6rz9AHQ+DlP0x75SvUewIPP/HhhOTZQkXI=;
 b=Bctyuu4fYQD4GhkAgUhXIjtYg8jnTADTCubmBVPmRLE2v4rTP1c4n52XKh46aGIhQPCT1jHZ0RuoIZtJ/b1ST40zJ6sDiMkxkz1soZi7kk4bK7lvYWJcV8sIJaUsgOvL2okcm6VSq+OIWumKJeWuEgMbfW09Cvy9v0TF/em4KSI=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB2256.jpnprd01.prod.outlook.com (52.133.178.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Fri, 25 Oct 2019 02:48:53 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::548:32de:c810:1947]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::548:32de:c810:1947%4]) with mapi id 15.20.2387.025; Fri, 25 Oct 2019
 02:48:53 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm
 <magnus.damm@gmail.com>
Subject: RE: [PATCH v2 02/11] soc: renesas: Add ARCH_R8A77960 for existing
 R-Car M3-W
Thread-Topic: [PATCH v2 02/11] soc: renesas: Add ARCH_R8A77960 for existing
 R-Car M3-W
Thread-Index: AQHViZ4iImr5zKIEe0GmayNB7TtcD6dqqiEg
Date: Fri, 25 Oct 2019 02:48:52 +0000
Message-ID: <TYAPR01MB4544A1921B1BC6A94610D795D8650@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20191023123342.13100-1-geert+renesas@glider.be>
 <20191023123342.13100-3-geert+renesas@glider.be>
In-Reply-To: <20191023123342.13100-3-geert+renesas@glider.be>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [150.249.235.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f569ddce-acfe-4f2b-2c1e-08d758f5df3c
x-ms-traffictypediagnostic: TYAPR01MB2256:
x-ld-processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
x-microsoft-antispam-prvs: <TYAPR01MB22565479CE14F8F7861E7EDBD8650@TYAPR01MB2256.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(39860400002)(136003)(396003)(346002)(199004)(189003)(5660300002)(86362001)(99286004)(316002)(33656002)(110136005)(54906003)(2906002)(66556008)(64756008)(71200400001)(71190400001)(11346002)(446003)(66446008)(76116006)(66476007)(52536014)(476003)(66946007)(256004)(81166006)(81156014)(76176011)(4744005)(7696005)(186003)(26005)(305945005)(8936002)(6506007)(6436002)(66066001)(7736002)(74316002)(102836004)(486006)(14454004)(4326008)(9686003)(8676002)(25786009)(6246003)(55016002)(229853002)(3846002)(6116002)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB2256;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AMi/4wgETQdXTi9uK0Pkz95n5LApn3f4b7jYnvIp/M6hVo8ilM0jjtaezdmxB0t1SjyJ6oXs2t37vKfMHdEjOebMeOkQNQBNi2UjazZEokm/zkVjU+Xh3CfCYQjxWuUdIMNAwvkLUK/pIdPB9Rop7ZJJoF31FL4VxfuLja1v2+fvTaaBUwoXAT3ukBHG0Xo72MClJ4Lv4/AYFfbhSx+IQKcBFSpRJEVLGK0TItNag1P1syKeo+gAskW+Cw3mX1Uy9vqlUz5z99xx3pq8IqPLFhlRIeO8qDqZdqVNxL1m6vhVzQTfpO1sI4RO9DfDO3GGZUxsHtiTiI1pwErkY7BSWyAVk/dYTFIctVUtXroYajrxqAYMEf6//I+VkS14tqZMvb6QiE/87XgKVOUjCiBJ7sD4P2h6LjVBBHf+yz0RG9hGGSVLiDYYGJ3NH3QdlNii
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f569ddce-acfe-4f2b-2c1e-08d758f5df3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 02:48:53.0069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6m0L7qBBiFsT7dlKFUHvJGXb7udhFXiob2dBBMjJTGFEvREzrKe7cnwRbSThpAWZx9qODtyG9iaWt5IpWaPHonPSWMngKv0l8rBGNw+Lmd+bTJz3o3TcDrqW4M9YDJMB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB2256
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_194906_372575_DE5C5C0B 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.103 listed in list.dnswl.org]
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
> Add CONFIG_ARCH_R8A77960 as a new config symbol for R-Car M3-W
> (R8A77960), to replace CONFIG_ARCH_R8A7796, and avoid confusion with
> R-Car M3-W+ (R8A77961), which will use CONFIG_ARCH_R8A77961.
> 
> Note that for now, CONFIG_ARCH_R8A7796 is retained, and just selects
> CONFIG_ARCH_R8A77960.  This relaxes dependencies of other subsystems on
> the SoC configuration symbol, and provides a smooth transition path for
> config files through "make oldconfig".
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
