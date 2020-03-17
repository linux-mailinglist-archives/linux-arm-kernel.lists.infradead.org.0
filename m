Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C871880A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 12:11:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RtzcdUf5OusISzaflnnijkj3P1Zp8o50FKOll/7VV0=; b=duMZPut7ffG0Rh
	scSWpw6Xiujar7FiOfF4JVR5cVoKnWaXnhFLraIP8pXgnPJv+1qveFR5zvL5jXtCXVJCQI3DfYTD8
	QiehvtGu0AG2jO8n4uFOZJJ70eI/HL/Dh1mkWdpVoyes8gSPasU39Ira5gbl3xmbhwOWwpOTLd50a
	x5QoJdpQm9jYBf0008CrqgPQVufydv0BE+Hz/PqYoNiJS+IU50QrY0YPeHBkliqvW7it+sAU9wTWi
	4YeQswmBKfh/OXHQUq3tU1ngtcp3PtLzrA9O/ike/s9/115aRM3o+N5ucEIJVpGI4lk3X7XDWW4pf
	uASQJVLGGQJW8qCEj+UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEA8O-0003d3-Kp; Tue, 17 Mar 2020 11:11:44 +0000
Received: from mail-eopbgr1410114.outbound.protection.outlook.com
 ([40.107.141.114] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEA8D-0003bj-Ca; Tue, 17 Mar 2020 11:11:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nzmpT585cAMwbD8i6XHhJrUYDM0hp281C7glwyXKfu0xv2lgAv3Ku4LTkPFX5sq9GVbWgmRYXIFTFywY1xoIk3pGTZXuurFwhO+7bmVrORFa/gV7QhbSPKPUB9XNH8AIJD9dPyYtBN8h18nlzucXR7azMz3zSzY8Ee7jzWnzBUeqh1kLP4OdKlp68B17DhbbsmCvvZa2bHD2S6Y3HIIIK8LFUoWeSHlAwd9E1HMpMSJDQGNWCzJJrF4CRE/BB1NYikmcVEbMyxzm6PJrFg9iD4mQg1A6KsZbilKosRkEaPVaxRmRW1m+BEK9ZnmWcHiOjb7bP4IpL4J6Zs8KTwisPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sb2eK4tdzXwFizdYNKLsOoW+5BUoMONAlwS5QSoazNk=;
 b=kB3eUXNUH5EOwMH8D5tQqaYtArmo3l09t9Tq6SDCouzr3y8jV0+QEVeOJgHfNmLR0gSrcT578/1spj4Fa84xWXYLP2Pzj3dgZS2GbEmabwg7qPcVWgjY5dOwK9H5jPyX/PtvIj5TC2YATjhOl8+cz/aoRX4BUgVhpNrXuJX87g1xPf5qwVJJ5AP7FYrem3E/GP7oSv0w9lnEXjYPj0UFTGGqfergBvwkMDUhIJAD1FF4PySoyC3tLj6T3OWpgN/IXEEyVyKUq7pt6zAFjrMF5T1DXbQblTLhdg6FkpCZ+i7WfYtEHPeUEKIq1ZEbyaKJ9d4+P2vIci1SF9G/PIM3nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sb2eK4tdzXwFizdYNKLsOoW+5BUoMONAlwS5QSoazNk=;
 b=fwnmVIQAxOqOwdx+uG6X9xsSDQUR9xO4D0o7Fwme7okKdaLdthr7AxcsUt0DXhhlZIxKdSjT/MK+SASTF7k8ZyGxzgRjyhcEnA9gBLU6pk3bOvTspe6/P55ikAIf2v8Y1lb8DmusXE3D3YKg0mzenXUMqB8X7AETNs4xZ53oqcM=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB5277.jpnprd01.prod.outlook.com (20.178.138.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Tue, 17 Mar 2020 11:11:28 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 11:11:28 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Lad
 Prabhakar <prabhakar.csengg@gmail.com>
Subject: RE: [PATCH v5 5/7] dt-bindings: PCI: rcar: Add bindings for R-Car
 PCIe endpoint controller
Thread-Topic: [PATCH v5 5/7] dt-bindings: PCI: rcar: Add bindings for R-Car
 PCIe endpoint controller
Thread-Index: AQHV7k2mHX0IeWzmbUuqL/cidPXc16hMjZhwgAAghACAAA0gMA==
Date: Tue, 17 Mar 2020 11:11:28 +0000
Message-ID: <TYAPR01MB454402897EA1C1334A7EF5C9D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB454466B8451E3115D8A7DFB7D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <OSBPR01MB3590F13134F6E9BD106EC506AAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
In-Reply-To: <OSBPR01MB3590F13134F6E9BD106EC506AAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 127690c5-e293-4488-98d4-08d7ca63f0c1
x-ms-traffictypediagnostic: TYAPR01MB5277:|TYAPR01MB5277:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB527756263BEBFBF476043DC9D8F60@TYAPR01MB5277.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39860400002)(136003)(396003)(366004)(346002)(199004)(66946007)(71200400001)(66446008)(64756008)(66476007)(66556008)(2906002)(5660300002)(7416002)(9686003)(4326008)(52536014)(4744005)(33656002)(76116006)(7696005)(110136005)(54906003)(81166006)(8676002)(81156014)(55016002)(316002)(6506007)(55236004)(186003)(26005)(8936002)(86362001)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB5277;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RhXkg89RFmaVxRvYMByvI99uFELunUob1vkXOXqQepaGdbuaNuoRoobAflKrMimGej+gK52NjoV9sgCjzsK1X0k/UEYYWms7D1wxVKw6Nr8bvp2AdJPe4Hr+mLEw14fDF9+x0OYVZEgAjTPPWYY0Eesh23B3jMWy4LgoXabO5x3qG5nlVPL/7dwb6m89UYAxwxFJuxg3480cFdcetKGhg0Ie2UsY0I0DrKXQr+TqjeBvIEGhnjRjMWz7GDwDpsGPYShMXAbjrOWksxl648m4vz9uYz9R1tPG1NhYFf8XRo3x97oFAIWC5hQzF75UbSQ82YNZtsmUJY4FDeh5JOP4imqOclLc0eAaWnzI7oa5z1Nw67a+gOjAjLiMZSMGYnKhxRApBViHS7wwtC+jyJLadwfaT0vzmU6qfF57THuzYF30baXfPAjAdHTaHjkGkBVR
x-ms-exchange-antispam-messagedata: 4BGqTl6hLUDX9ohnhyye2U0u2s3FAnHjdfCt3iSg6yL+8f88mGpUGrmsuD0xJem8tqeYJY/WrXEoQJjkaqQtKnMn8IKLGgNnb0xW6DrrKCJag/zZTcif2OPTTsDDE0sT4H/YwJ3IlUqEDSAT95MEaA==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 127690c5-e293-4488-98d4-08d7ca63f0c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 11:11:28.4058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ubKLgSGuMkFFf5knlYIWIk/IwV8yYZw0wHdxKxXVBYoRMSmtGrZhmJ2GL0rLZMSjUUAC84Sy4H4cciwdpmtyaRdhuihVEYntwCglQQFqCgCpeWnjm59npZaj7o1zU+Oj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB5277
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_041133_666466_2625673A 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.114 listed in list.dnswl.org]
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

Hi Prabhakar-san,

> From: Prabhakar Mahadev Lad, Sent: Tuesday, March 17, 2020 7:18 PM
<snip>
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-
> > lad.rj@bp.renesas.com>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> >
> > Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> >
> Thank you for the review. Shall I add this file under "PCI DRIVER FOR RENESAS R-CAR"
> In MAINTAINERS file as a separate patch ?

That's a nice idea! I think we should add the following like for dt-binding:

F:	Documentation/devicetree/bindings/pci/*rcar*

Best regards,
Yoshihiro Shimoda

> Cheers,
> --Prabhakar
> 
> > Best regards,
> > Yoshihiro Shimoda


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
