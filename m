Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 506061A3D3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 02:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+W9JgIzFuJ1NYp4/ELzqAJSnoESC6X3AmdqIQJjz3bc=; b=heJkX4nbI6TNV+
	UUStaE3PSApKL9hoe6rK4N/OFgz15wHdRUfhX+hU/n2LmFQyfokWSlwVxxvi0Q48h5mdvv15RiF00
	PR1xXzQWHrGM3qiEU6fSjs+NEaqp5DcyDNWM2rJvB9hGdtWXno9clRpx0qCBZDLfSyyKXSQuBPknO
	Bz+XrE54RjlmG5RvZ83sDsI0uYk2jWvmjW/ErlP5kFGqI1qTRIPK9m2fLgNuD8Aip3QzO87NXEfIl
	cAxn1YMD9M5X9K+fvDz6gR6sT/0UM/sTvQwXvIOYSbWKKqUbufN2N3LONQt7Ki5ZeyYc0f85J3/RG
	X43cUOU6xrmIyziRQwNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMhI0-0008BL-Fm; Fri, 10 Apr 2020 00:12:56 +0000
Received: from mail-eopbgr1400138.outbound.protection.outlook.com
 ([40.107.140.138] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMhHo-0008Ak-Er; Fri, 10 Apr 2020 00:12:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lyPeTa2pgapM49Eq8Dro0JQ/LIRuKVHbUOtykT2HY+/EHyqh5uxyXIjCPzLG3ZNIHp50/zf3DST8M3GD63HejkVpudlDkFI2BtzXeDOVgVXbX5OvIAD03DFeFTbYU8LWWoN3Ils0OUMJONdkPyRGVDBQr+rgGo8FHuZpWi+7hiT8PTUXidhEI+L7aZUzDinSv5niHktOtfy0BDvgYAjaWKzJpY1yDoTweS9bMwEko0tnxWh1iM4UCwLWoZpuMBXHMsJUKnBjKPQNOPRMNQP7DlKNADmmCKMIgNAdJR1QM1oD76dD1Lr5O4Tyh+xsSmR/R1mIJyldzg11Gbh4OWkVRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJMS4nAd3SiJk7CDzJfRcf2i1k2/+5drd5ueJ9cxo9I=;
 b=awNvRB2m2kgr1aDC+4nXovcCF/N6JSKu1QreNg2GZDGaHpyyvMVm6NQvgSLXfh6VUcEOdWcMCbpkmRdC/1QhaPYGD7UgTdP6+OTXmeZ//N7THgFsnxNQKgvTwJc8xl8ZQaYuJNg+KeUFJbvNKNIt8FqCcJnUl9TRYXQEAMSiFVcHTtVzLGQI1GMO3tBeJWgs40yzq2+TyWY36v7KrMpdn8KsIFysE9sBBglUZQelVgakU8Lr21c2C1ndm7qKrbHcb21/RSwhWS0fwzJx30GNcOJGukulhSkGoogoyck0wo4Ahoj/cwFYpvdHIqXLeQ6eIbJk/T/iqXY/tf0XvyLMVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJMS4nAd3SiJk7CDzJfRcf2i1k2/+5drd5ueJ9cxo9I=;
 b=Im4t3OeUhSs6Z2iPzzL6ApfcYdCQs70Ml/efk4VXKtUkRSfVMpIk/1GMtaVAfrY32cw/J2m76DP3cUISVDRAGZ348WoTUIzA0gO1jbLTikk7W27uaIX+xNAAjmaqBiCrf/YBC+liA8ZafYtu/z8qnBRyRIePTTG+gDf6VvyzyIw=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB2559.jpnprd01.prod.outlook.com (20.177.105.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.15; Fri, 10 Apr 2020 00:12:39 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::ed7f:1268:55a9:fc06%4]) with mapi id 15.20.2900.015; Fri, 10 Apr 2020
 00:12:39 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>, Sergei Shtylyov
 <sergei.shtylyov@cogentembedded.com>, Bjorn Helgaas <bhelgaas@google.com>
Subject: RE: [PATCH v7 7/8] PCI: Add Renesas R8A774C0 device ID
Thread-Topic: [PATCH v7 7/8] PCI: Add Renesas R8A774C0 device ID
Thread-Index: AQHWDbvP66ahBIzixkep7RDyHrjTa6hwiR4AgAAICQCAAOwwQA==
Date: Fri, 10 Apr 2020 00:12:38 +0000
Message-ID: <TYAPR01MB4544313471DD93D131E82EF5D8DE0@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1586360280-10956-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586360280-10956-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <e3f5fa77-f78e-edbf-9efc-53b5ea620460@cogentembedded.com>
 <CA+V-a8s1E_kq_GENBTw3zGxKSPFnVKNY-ta9+c8W8nV4JFyEEw@mail.gmail.com>
In-Reply-To: <CA+V-a8s1E_kq_GENBTw3zGxKSPFnVKNY-ta9+c8W8nV4JFyEEw@mail.gmail.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b7930e37-21f2-4db9-f51c-08d7dce3e157
x-ms-traffictypediagnostic: TYAPR01MB2559:|TYAPR01MB2559:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB2559DCE47DACF5B447986E99D8DE0@TYAPR01MB2559.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0369E8196C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYAPR01MB4544.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(39860400002)(366004)(376002)(346002)(396003)(8676002)(71200400001)(54906003)(316002)(110136005)(478600001)(81166007)(33656002)(7416002)(2906002)(4744005)(76116006)(66446008)(186003)(26005)(55236004)(66476007)(52536014)(66946007)(55016002)(6506007)(66556008)(5660300002)(8936002)(7696005)(86362001)(9686003)(4326008)(64756008)(81156014);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7bVv7ATNQrwzzsutT6PHd8Ocsq8cT58KLlfceEF7FQtxshIJdJlbpnuE/VF47cm5Ths/U4XIWFggwmDDr0yJZLWwcuwGyZOWbcGmh/+foyZaehH07Md8THldB7ORJMWQPPdADJyeFsDLBCvETcHjP54i7kaea+Da42IHPEMZiWGAhXkumoZ+H5cdMrc9C2HCT2374EGFcpiwaMUEv9QUaGpWpfB2X3fjsjJATXCUzUGst0H3SSTi9nZx2QCdiz2A2tp9GvcOQUJWVvcfNSdm/iAE/T8Ui/qUJV4P0SH8LD+bn8XFljNE2pKaqulNnFJT4Hi1Qi+hEyjRGQytHjpb6euFFFQXgDDsXd86TFCSJJnkerOayMBukkt0HjXQvGkRw6vRaFk0PBKZ7w3D9zV+/qgx0YmLlIGJyHzbsti1UJ0RvOTVowlKnfr+MA2OzZVz
x-ms-exchange-antispam-messagedata: Y20TwZ9Ft+zMWl7pnsCLL8gkvC79CCwOqHdbHMX+gDN8/reG+/hBlYvGUM3AH6hRGKu/3dRQgUR/ed+8+QFwo3jNRSw8yHA++rmpR9rO2EIKUUrIzF4D6QmsQ+I2xJDdvkRVncxG5lKIdvVay64QyA==
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7930e37-21f2-4db9-f51c-08d7dce3e157
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2020 00:12:39.0540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f87/bCPE86htyXT3bVCRnx2IlQtb8bYWEYF7B4Py1L/E68j0UI/u7BNQ3z+GTZmImKIBMefPMmmThFzmyMqJi6Au16nwkVNVrHZ49intYn7HNuo8Ia7dH91Kswp7AXgU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB2559
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_171244_564129_8B25BE1C 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.138 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-pci <linux-pci@vger.kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>, Jingoo Han <jingoohan1@gmail.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 LKML <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar, Sergei, Bjorn,

> From: Lad, Prabhakar, Sent: Thursday, April 9, 2020 7:05 PM
<snip> 
> > > diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
> > > index 1dfc4e1dcb94..9e957c18abeb 100644
> > > --- a/include/linux/pci_ids.h
> > > +++ b/include/linux/pci_ids.h
> > > @@ -2460,6 +2460,7 @@
> > >   #define PCI_DEVICE_ID_RENESAS_SH7763        0x0004
> > >   #define PCI_DEVICE_ID_RENESAS_SH7785        0x0007
> > >   #define PCI_DEVICE_ID_RENESAS_SH7786        0x0010
> > > +#define PCI_DEVICE_ID_RENESAS_R8A774C0       0x002d
> >
> >     We don't add the device IDs in this file, unless used in several places.
> > Is it?
> >
> My bad I should have checked it before making this change actually it
> was suggested in my previous version of the series but anyway atm this
> was planned to be  used only in pci_endpoint_test driver, so in that
> case Ill drop this patch.

I'm very sorry, this is my fault. I suggested this but I didn't check
this pci_ids.h's rule...

Best regards,
Yoshihiro Shimoda

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
