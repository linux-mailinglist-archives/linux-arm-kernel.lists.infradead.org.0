Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236CB187E0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:18:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoJpSnyYCngmP0gvra4gh03Ig6mFw7U9l5zdKFINFD8=; b=KFB+yM/j2SJWPH
	LVjT7FmJ7Fb0ru9rslGhEk35PXbCByuRSxh84N7XoNa5hHemS1zrn0z1YoCs62ULxh1h/VLRsY3OF
	xfJznIVW9+qJ/x4bsZOqByfwYtENPLx0At3n7Oh1c2a6JMGu3e4RSrcN0pbGMlzxarSGvAPAH0njY
	x0i9EoTVzxkv3dn6WzGeB82SXGu5ck+44ADN18gpjMtrf1kp4Xm6gf407HCQ2VLS9585QH/MHAsVb
	7miWf8r7ufD/Cn4v3BeyUpf0kRd/U42RT0Ih6UjDRXv8VI8ZzIxqMQ5SDVX4NJYRDQDbeqPi8kXWV
	rzIvnax/y5yOrmOyAzZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9Il-0003SD-Sp; Tue, 17 Mar 2020 10:18:23 +0000
Received: from mail-eopbgr1410121.outbound.protection.outlook.com
 ([40.107.141.121] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9Ib-0003Rd-Dn; Tue, 17 Mar 2020 10:18:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mGON62+el/kSiCRvx5caojw7l4aCLJTGGpOCy52PteJbIW1j59lOJOzHjiv2z/2XFkGovh1qWZ0kXLxWhEsVYt34mIwUBikJwMJ2A6fCK3CTFqDZPc9xS9usP6G5u3LC2ic649Msv8LNDJW+GIDHSZ9KwefeOmFwLV9/ssqK3OUi7oK3C+44HrrjqW9LgAId42GBDwxp+EzwTR0tWmZcY0lqhltQD+sDV1EoXU2g1NQGXoXJ2PsZCs+YVa2ZfKgyj7EcbVNSXxKbgZjdB0FgP/M7ZnUWK/Hq3+9vupQ2mW7n8r39PEqntTVGUK9xQwx+hZ7ZFpUVVtDlE0/sMDkvcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AwUntoL11ukJsITrpHrU6ydIPM8tizbPDa4EU0vKSgE=;
 b=b/rMG2kcwKJJC0HnPq+KX1BtGbP+MqX5AgNhzhRG/jo1wmSK9k8y3nL/l5D/qXtgGunKwSFTqvQ0wiMnhNLIe3AHMXtF7J0/jEppnAjlQT/H0PkWp0IcnuboEWRYaAN9pRlyisHIwRhIgbRxMZq8QB2JYpHasIbbbSjWSIJy8F6jcbO42qpqTwejdw8dEBswPM5n7bTSTT6Rq0A+JWBdngK9+plCfQv1o6+X8z275+DE4ue50RVHBps+xtjKtxMxpsYxjL+D/5JSjOAr/+mPC+B37b9+EEg+i2YALOzAuX43sYktBarstj8oJWTHanQgwWdtP1IIQv7V3220Q+iffg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AwUntoL11ukJsITrpHrU6ydIPM8tizbPDa4EU0vKSgE=;
 b=iFm4sddOXZawW4q3B9Vc0ojmwp7oKWaKxh54r4ECjy3fTW1JW2uwXwnCcEUzhv+J5Y8YgS9XpwmBfKXdXnfpXXUqA/f5sUvCXw3Vjwj++4els3kUQa33x8IAzaBIfCHwl2ZDx6ky2AK+AQBRyWYMgpE3HOqwQDy0JKIkvs4MrDQ=
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com (20.178.97.80) by
 OSBPR01MB2454.jpnprd01.prod.outlook.com (52.134.253.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Tue, 17 Mar 2020 10:18:10 +0000
Received: from OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::490:aa83:2d09:3a0b]) by OSBPR01MB3590.jpnprd01.prod.outlook.com
 ([fe80::490:aa83:2d09:3a0b%5]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 10:18:10 +0000
From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Lad Prabhakar
 <prabhakar.csengg@gmail.com>
Subject: RE: [PATCH v5 5/7] dt-bindings: PCI: rcar: Add bindings for R-Car
 PCIe endpoint controller
Thread-Topic: [PATCH v5 5/7] dt-bindings: PCI: rcar: Add bindings for R-Car
 PCIe endpoint controller
Thread-Index: AQHV7k2mb/v0bc2DvUS+HUsmhvWhMqhMjsmAgAAea9A=
Date: Tue, 17 Mar 2020 10:18:10 +0000
Message-ID: <OSBPR01MB3590F13134F6E9BD106EC506AAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB454466B8451E3115D8A7DFB7D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB454466B8451E3115D8A7DFB7D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=prabhakar.mahadev-lad.rj@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7e099edf-b43f-43ee-8065-08d7ca5c7e92
x-ms-traffictypediagnostic: OSBPR01MB2454:|OSBPR01MB2454:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB2454C261CB16645A0158108EAAF60@OSBPR01MB2454.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(376002)(39860400002)(346002)(366004)(199004)(316002)(110136005)(54906003)(2906002)(76116006)(4326008)(5660300002)(52536014)(33656002)(7416002)(66946007)(66476007)(64756008)(66446008)(8676002)(86362001)(7696005)(26005)(66556008)(186003)(71200400001)(8936002)(53546011)(81156014)(6506007)(478600001)(9686003)(81166006)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB2454;
 H:OSBPR01MB3590.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QUAO5tMnOTmqzudeSh4ZLSAGLD1cQ3tvJiwtrEQLbijr/MVLPR1/muSO3DzkvzIaNZA/OBpBr5CHp0SYi2+3iyW3WMzhXV5ZRVw/3qEos+gCSc1NyXCFU/EMnURjqVX6oSxOC7HhkHBMUk+eUwaneJbCzvYcG4YJOd4qCPjP91/XXdeu1mxs4obCl2ooG9qc+tGsQb5DHG8ENOnXtEmaM+qOiICzlRlgWKQwSSCgAfK7dlvrFy5HHFr+csILHPdZkrv2nthjqCQO9rvWJ1yLEH67g6RKcm45NTDYTrCV7f7IMvXi580ZZ2Aci32Vxpr9DjXMBA62sbnQof1xkDDguWEwgUhz+g0SS7MOi3kt2lfa6/Tse1Pn2Hasyd7CDvkPv8DTWrdxG6suvLXit1FJ2sc7/dyPNQktnNDUmU4WYLh75bmh7Dw8hPmYK6Pn+qvE
x-ms-exchange-antispam-messagedata: w0zgGx/VgV4KExD9yJ8pV7WikUiHfRwYt9btPpF9nPg0jhmlfU6pgaWuSgcEphmgpCkG0+4Fp6IAmbXjncFg3K6p4/1RfLSIdZOY1E4EWni44SUpq4s/pTIz5Y7PqJjE8yPBpFwbLvHVZL6aeTp77g==
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e099edf-b43f-43ee-8065-08d7ca5c7e92
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 10:18:10.3458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LbQJmjNJSX6JMv9MLQ20FG9AW2lwXWMHHysf1RCtDtTHekw0/zVDyIuwrY3cNRHHKL86hSqXgcLbiQDQ4iIt3c1vddDL6l7Gl5yzt6HQSAl5yJeUEUo1gvL3kIHOP3Zs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB2454
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_031813_472923_0E352CB7 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.121 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Will Deacon <will@kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yoshihiro-san,

> -----Original Message-----
> From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Sent: 17 March 2020 08:26
> To: Lad Prabhakar <prabhakar.csengg@gmail.com>
> Cc: Andrew Murray <andrew.murray@arm.com>; linux-pci@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-renesas-soc@vger.kernel.org;
> linux-rockchip@lists.infradead.org; linux-kernel@vger.kernel.org;
> devicetree@vger.kernel.org; Prabhakar Mahadev Lad <prabhakar.mahadev-
> lad.rj@bp.renesas.com>; Rob Herring <robh@kernel.org>; Bjorn Helgaas
> <bhelgaas@google.com>; Rob Herring <robh+dt@kernel.org>; Mark Rutland
> <mark.rutland@arm.com>; Catalin Marinas <catalin.marinas@arm.com>; Will
> Deacon <will@kernel.org>; Kishon Vijay Abraham I <kishon@ti.com>;
> Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>; Arnd Bergmann
> <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>;
> Jingoo Han <jingoohan1@gmail.com>; Gustavo Pimentel
> <gustavo.pimentel@synopsys.com>; Marek Vasut
> <marek.vasut+renesas@gmail.com>; Shawn Lin <shawn.lin@rock-
> chips.com>; Heiko Stuebner <heiko@sntech.de>
> Subject: RE: [PATCH v5 5/7] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
> endpoint controller
>
> Hi Prabhakar-san,
>
> Thank you for the patch!
>
> > From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM
> >
> > This patch adds the bindings for the R-Car PCIe endpoint driver.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-
> lad.rj@bp.renesas.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
>
Thank you for the review. Shall I add this file under "PCI DRIVER FOR RENESAS R-CAR"
In MAINTAINERS file as a separate patch ?

Cheers,
--Prabhakar

> Best regards,
> Yoshihiro Shimoda



Renesas Electronics Europe GmbH, Geschaeftsfuehrer/President: Carsten Jauch, Sitz der Gesellschaft/Registered office: Duesseldorf, Arcadiastrasse 10, 40472 Duesseldorf, Germany, Handelsregister/Commercial Register: Duesseldorf, HRB 3708 USt-IDNr./Tax identification no.: DE 119353406 WEEE-Reg.-Nr./WEEE reg. no.: DE 14978647

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
