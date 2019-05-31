Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9BD30992
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58obVw+Itr+0FqBHbW/SWUFF/jDRgkwVNg3UAinx/E0=; b=Nw1/DfoNapa9Jo
	F5jtzuiBY2ZQpdbw1J2eMLAXQ/5ZHpYgT5sxh6rURrYYK+9Wd9RBplosUWVCb7Aab+hd5g35QJCub
	VMQlVIkK9cx37UEHRfESoze1IJFJHv27T2KwSjg6i560lOeR9wpJOBXBoE65jkuZMNUXpJ/yQIilQ
	/AnwriTNyPkYFKr5xDo89HBfQnjuBTl9NkKbvcYVXFnZ5p2zCRQprdklzfdvUFyacMnUd9JXlHJ2v
	XxPGm4VqTjTHMO6BcRg0vPVgApHHOL0RI6v0OlLTm9FzIrmiTIGGO10uHXUdN9kbdlp/Al1KyDPAk
	ylqVlDVs4q/BItfrHlaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcAv-0006XH-Kz; Fri, 31 May 2019 07:42:05 +0000
Received: from mail-eopbgr1410094.outbound.protection.outlook.com
 ([40.107.141.94] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcAo-0006Wk-D3; Fri, 31 May 2019 07:41:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dS2PUEhD/OjappvmUraoY8QaAl4V8vxaLKFPsCyxD+8=;
 b=beAINlgbA+eR5K3SfOwGG27fJi0DCJ2M1RXEA1kTM2OdXXhFCHYUBFApzK7DfJ0mqKdcsLY+kWUiJy9QiDYrjm/niX3AEBs5EDTvVgPOvkmAawql0KfOMvIqyzFcKGzA7XiJ2/iRitfUlKcOTPOzqUdYH3hKidmmWCd54UUQ+no=
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com (52.134.242.17) by
 OSBPR01MB4117.jpnprd01.prod.outlook.com (20.178.99.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.23; Fri, 31 May 2019 07:41:52 +0000
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc]) by OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc%7]) with mapi id 15.20.1922.021; Fri, 31 May 2019
 07:41:52 +0000
From: Biju Das <biju.das@bp.renesas.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Rob Herring
 <robh+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heikki
 Krogerus <heikki.krogerus@linux.intel.com>
Subject: RE: [PATCH v6 07/10] usb: roles: Add fwnode_usb_role_switch_get()
 function
Thread-Topic: [PATCH v6 07/10] usb: roles: Add fwnode_usb_role_switch_get()
 function
Thread-Index: AQHVFfJWpqP1rp7HJE+ey5v+4Ztlb6aE3Isg
Date: Fri, 31 May 2019 07:41:51 +0000
Message-ID: <OSBPR01MB2103D590654C4A7A49A3EF37B8190@OSBPR01MB2103.jpnprd01.prod.outlook.com>
References: <1559115828-19146-1-git-send-email-chunfeng.yun@mediatek.com>
 <1559115828-19146-8-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1559115828-19146-8-git-send-email-chunfeng.yun@mediatek.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biju.das@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d714a013-f5c3-4728-bf49-08d6e59b7258
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:OSBPR01MB4117; 
x-ms-traffictypediagnostic: OSBPR01MB4117:
x-microsoft-antispam-prvs: <OSBPR01MB4117D2C9011DF9F485DDCB1FB8190@OSBPR01MB4117.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00540983E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(346002)(366004)(376002)(396003)(136003)(199004)(189003)(51914003)(14454004)(2906002)(26005)(76176011)(486006)(7696005)(6506007)(4326008)(102836004)(66946007)(476003)(52536014)(81166006)(5660300002)(81156014)(11346002)(8936002)(86362001)(446003)(76116006)(6116002)(3846002)(8676002)(73956011)(64756008)(66556008)(66446008)(66476007)(25786009)(54906003)(71190400001)(71200400001)(53936002)(110136005)(68736007)(66066001)(33656002)(44832011)(99286004)(316002)(6436002)(74316002)(229853002)(7416002)(478600001)(55016002)(186003)(305945005)(256004)(6246003)(9686003)(7736002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB4117;
 H:OSBPR01MB2103.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xWUIpcpiXGzBdDN5QMWAj1TG9dCR0QHCi1lpL4PpGlnOO+n+exTJwXzA5UabH3xPLeZW/OnQ8ro+Dm5cuPVjqCAEAiG8iKlXbRckJalAZ5ejXSoNTWpTIuHYQvkJQd1QpXyDk3kj9m7YioXJFMtbDUyS9V5HAqB4Qmk9tGfhzT2VSY22QKZX8h3kh4E0Bslue1HSuwbmDRET+fOz8XELiYh5D1EqQ3ECuD/wA4epi/gzy6sTC0HYQI0/0tyapJ1HlFVlNfyod0mCsWZ3jbEIQ5SPz88Xix0BxBLFLQiDCZXfd4W0icdHcmgXogDXreNPrGH4eAQBqazvb7O/5I6hU+8mkyqjeF60c0D6dwCnEcDkpEsrwZhjcZlAzFG5qgkKX84WdnCx+GYQ7UbqzuPEchO6kfKmI17D2QL2AiGNP9o=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d714a013-f5c3-4728-bf49-08d6e59b7258
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2019 07:41:51.8355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: biju.das@bp.renesas.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB4117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_004158_437937_F086FB0B 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.94 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Linus Walleij <linus.walleij@linaro.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Yu Chen <chenyu56@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for the patch.

> Subject: [PATCH v6 07/10] usb: roles: Add fwnode_usb_role_switch_get()
> function
> 
> From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> 
> The fwnode_usb_role_switch_get() function is exactly the same as
> usb_role_switch_get(), except that it takes struct fwnode_handle as
> parameter instead of struct device.
> 
> Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Tested-by: Biju Das <biju.das@bp.renesas.com>

> ---
> v6:
>   new patch
> ---
>  drivers/usb/roles/class.c | 20 ++++++++++++++++++++
> include/linux/usb/role.h  |  7 +++++++
>  2 files changed, 27 insertions(+)
> 
> diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c index
> f45d8df5cfb8..aab795b54c7f 100644
> --- a/drivers/usb/roles/class.c
> +++ b/drivers/usb/roles/class.c
> @@ -135,6 +135,26 @@ struct usb_role_switch *usb_role_switch_get(struct
> device *dev)  }  EXPORT_SYMBOL_GPL(usb_role_switch_get);
> 
> +/**
> + * fwnode_usb_role_switch_get - Find USB role switch linked with the
> +caller
> + * @fwnode: The caller device node
> + *
> + * This is similar to the usb_role_switch_get() function above, but it
> +searches
> + * the switch using fwnode instead of device entry.
> + */
> +struct usb_role_switch *fwnode_usb_role_switch_get(struct
> fwnode_handle
> +*fwnode) {
> +	struct usb_role_switch *sw;
> +
> +	sw = fwnode_connection_find_match(fwnode, "usb-role-switch",
> NULL,
> +					  usb_role_switch_match);
> +	if (!IS_ERR_OR_NULL(sw))
> +		WARN_ON(!try_module_get(sw->dev.parent->driver-
> >owner));
> +
> +	return sw;
> +}
> +EXPORT_SYMBOL_GPL(fwnode_usb_role_switch_get);
> +
>  /**
>   * usb_role_switch_put - Release handle to a switch
>   * @sw: USB Role Switch
> diff --git a/include/linux/usb/role.h b/include/linux/usb/role.h index
> da2b9641b877..2d77f97df72d 100644
> --- a/include/linux/usb/role.h
> +++ b/include/linux/usb/role.h
> @@ -47,6 +47,7 @@ struct usb_role_switch_desc {  int
> usb_role_switch_set_role(struct usb_role_switch *sw, enum usb_role role);
> enum usb_role usb_role_switch_get_role(struct usb_role_switch *sw);
> struct usb_role_switch *usb_role_switch_get(struct device *dev);
> +struct usb_role_switch *fwnode_usb_role_switch_get(struct
> fwnode_handle
> +*node);
>  void usb_role_switch_put(struct usb_role_switch *sw);
> 
>  struct usb_role_switch *
> @@ -70,6 +71,12 @@ static inline struct usb_role_switch
> *usb_role_switch_get(struct device *dev)
>  	return ERR_PTR(-ENODEV);
>  }
> 
> +static inline struct usb_role_switch *
> +fwnode_usb_role_switch_get(struct fwnode_handle *node) {
> +	return ERR_PTR(-ENODEV);
> +}
> +
>  static inline void usb_role_switch_put(struct usb_role_switch *sw) { }
> 
>  static inline struct usb_role_switch *
> --
> 2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
