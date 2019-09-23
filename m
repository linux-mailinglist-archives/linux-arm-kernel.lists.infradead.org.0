Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94608BB0F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxcZ+zISqwBKnKPVrGJuIw2pr9kcl9GMod562etx23g=; b=lQgHA26F8o7mXn
	diZgAvZMK8s+itE1Scsjft3rKnS71rO09qnkc3a7mvdCtNbv+id3EiCtTachN3oYOE6pjUOIafgjW
	FpCGVqNeL0Nx6IUP1EUV37KBra3r9O7T7zc4V1WLZfdWw6pdonomCbs5zvFCeMryia0TdeeFUg7/V
	L7+IMPMi6SNypeYHuFO9jP6WoASA0MpAQMnPnMbHztl1TEI5hjgQMaTEUlkBoJCs6z/1R3n4h4oTv
	l83K+EOdH0fTi0nwXEc4Z15kJ7+hhdWCqMWWgceMIoqWhgDpn9rbOobEP3v1S4FXYtSW6QKgc5Yyr
	m7bMncVCHFZmuUWd2G7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKK6-0005Qn-IN; Mon, 23 Sep 2019 09:07:58 +0000
Received: from mail-am5eur02on0722.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::722]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKJp-0005Pd-FY
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:07:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ue7R7a4HZaau7RElEm0W36wIc9B07O/hVvqHpbJ1tOq7e92LrR85iQdSBoDZ3awcE0FmhFZgu03XzZwoILl6MksJlTvGlQx+uQ1ii+xgabnx0PzJz4wAobjrIXUERQYNt0zC8+F7ExDN09X89hliqpG64PdUA0tJ2xax3z0J8cEiohgwyZ9gtsrsYdYiMz7E6C6miaTeBrkJnBM6d+sWC0C9sKPXzkpuFzlczi04RFqXIyK69ynS2s827pSHTwKsJV0E+qnwCkNVz58eSgKSyDLnd3MvAn8L9mtD8dGR4GOOcfSOt2Yfy0mbaR00mxI3g5KuqMmJ52+nOkgx0IzWkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kvquhNSsVtQb+bdWIl5cbds+dAgrB0L/xnIFrbx7OaM=;
 b=NBTugUFqeYNTrmLKpiwA9LZBP4ZGrP4F5C2fH05OIYyFRYFcVRpnrdj9oJNYfmJbXsp29/b241iNi74qOPWTR55wU0F7fWenKPG0/ZuUKGHFIZ/JZ81l7CyKdMUKIbV74EQIe7kn5kElEkkM7UBYkZQoUD+N7fksytc3bo9u2z9ewrlJ/0fEJB7ZhbfUzvTguBbzHG0hj0B4rKaSyX8T0Zj0XIt0sLPlKksnjydum6RFlHcUxqsOX/uskaEWNYuVi3uIyewWanU9jqUWcgJpf01PShNI7CstgiZMZ3caLJcYuv6g60qsJTv+efJyZONSbaQeCPRxHUlMI24j65fn0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kvquhNSsVtQb+bdWIl5cbds+dAgrB0L/xnIFrbx7OaM=;
 b=oM22KBNHUgAz/m9JRugOr8SJUorn+wbm8k8CPwc3CnTIwjfKAw5xxEzTMwo/n1g32Vop9iB9tdgM3+/IwZ/g/XOdaXYupKHjrK0EkLZU8Hx3PXqsplOkTX9lqZtydGyn0ZHNFn0IGLgUXSz4JFhkYpgvgWiRvs6VVIuu1sWLuYU=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3998.eurprd05.prod.outlook.com (52.134.18.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Mon, 23 Sep 2019 09:07:31 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::1179:c881:a516:644d]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::1179:c881:a516:644d%3]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 09:07:31 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "marcel@ziswiler.com" <marcel@ziswiler.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH v1 1/2] dt-bindings: add vendor prefix for logic
 technologies limited
Thread-Topic: [PATCH v1 1/2] dt-bindings: add vendor prefix for logic
 technologies limited
Thread-Index: AQHVb4i4IUSP2AwIZ0a1numwyARFt6c4/ZYA
Date: Mon, 23 Sep 2019 09:07:31 +0000
Message-ID: <c01adde46cbae1d1fd96142699964be4cc50b1fb.camel@toradex.com>
References: <20190920075411.15735-1-marcel@ziswiler.com>
In-Reply-To: <20190920075411.15735-1-marcel@ziswiler.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 623a0d77-bed4-45d3-6ddf-08d740057763
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3998; 
x-ms-traffictypediagnostic: VI1PR0502MB3998:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3998A148721ED8CB3A04AE9AF4850@VI1PR0502MB3998.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(396003)(366004)(39840400004)(136003)(346002)(376002)(199004)(189003)(966005)(478600001)(2906002)(86362001)(2501003)(14454004)(25786009)(305945005)(2616005)(476003)(64756008)(66556008)(66476007)(66946007)(6506007)(102836004)(99286004)(7736002)(36756003)(11346002)(486006)(186003)(26005)(76176011)(7416002)(6116002)(3846002)(76116006)(91956017)(66446008)(66066001)(6512007)(6486002)(446003)(44832011)(118296001)(6246003)(6436002)(4326008)(6306002)(54906003)(71200400001)(71190400001)(110136005)(316002)(8676002)(5660300002)(229853002)(8936002)(256004)(81156014)(81166006)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3998;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gPFlSnaogp6aXGBQO3RrjoCJpRHa6scdpe3vSTu/LsDJXvk53snJ2OEIfipfQUFd6Uj3Xph3fG3UydjSaQLjySpjKWelSoL1JvWMwF1lY/9Aw3hZgdZ2MzgszoQSBdpFVLCvW1YNdZAPn8l+bfF3o7B19a+KukhTyLf9QIrlC5zhADcSFQmIxQVN+x2umymMyEBPuKhQZqhZVB1u8BF5sB+sZIp+mJpPhyrICXd8l27/SzNe5zwaE5ubiSAiUlKtNpUme3J+R+jUAWh4qq0TrwIfWzy3Loz3NvcZCxWeYDZPRem1zs9nbI+51uo35ivTITgsycoxWpmoeeAsZTqNGb3r8UzP4mDpkMjhTC4fO6yO4jDVksn7KO9LRP7s0zbye6Jn30MCyFHzzbuQtK9lbPv3U4GFXfOkVuPr4qN4dRw=
Content-ID: <DD1B69EE8639114A9D5A17707CD8BDA9@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 623a0d77-bed4-45d3-6ddf-08d740057763
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 09:07:31.6304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zQcetqy9A8CW5zDJoD3ovptEgL0XW+2IjYp7o9nhb0jzxuhg28i1dcLIir+gzhQ9zOWyTNNsH6IQ4haL+YOL+qAxWXdcpMEaQcG9qCrzhz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_020741_520732_60284435 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 "j.bauer@endrich.com" <j.bauer@endrich.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "info@logictechno.com" <info@logictechno.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>,
 "hverkuil-cisco@xs4all.nl" <hverkuil-cisco@xs4all.nl>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "icenowy@aosc.io" <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-09-20 at 09:54 +0200, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Add vendor prefix for Logic Technologies Limited [1] which is a
> Chinese
> display manufacturer e.g. distributed by German Endrich Bauelemente
> Vertriebs GmbH [2].
> 
> [1] https://logictechno.com/contact-us/
> [2] 
> https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Reviewed-by: Philippe Schenker <philippe.schenker@toradex.com>

> 
> ---
> 
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 967e78c5ec0a..1441146f394f 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -541,6 +541,8 @@ patternProperties:
>      description: Linear Technology Corporation
>    "^logicpd,.*":
>      description: Logic PD, Inc.
> +  "^logictechno,.*":
> +    description: Logic Technologies Limited
>    "^longcheer,.*":
>      description: Longcheer Technology (Shanghai) Co., Ltd.
>    "^lsi,.*":
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
