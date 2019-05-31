Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4093E3098A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToWEh6hQzPQnzbaieEg+1uUO4b+mRJbvPQTt1GV7+nc=; b=qQuN1t7sHzRevc
	++V23DBfT72v9BWs+A0I3/sglMoOGwTtCtynHy/PDcRdtIN4l6T4XfFsu6ZUy6GpkMLigFEO0ymPR
	wCNzsksCGcoHLm6xy0TRV4eyauUjAECs2H9dJQHz2s2WBfvQvVhbvszsdPdQDgSUJJrWvdQ0yHMm4
	sQoohrBbz2oThRVBvO5AqjDtCPcREYqTvl8tJ2d8aBMkVXbrnC3qug+PPqx6J5xN7XaJmIf/ehEwI
	9y11dzOmwa8GFeu6O3BZhaHrBdiu5GKKXkgwi7vaz/WFmvmiKJkNd9bsvxKO6nM0vlRBIOnuRMbkP
	zFYaoRZDa4AEx9eEXR7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcA1-0005kb-NU; Fri, 31 May 2019 07:41:09 +0000
Received: from mail-eopbgr1410130.outbound.protection.outlook.com
 ([40.107.141.130] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWc9t-0005j6-B5; Fri, 31 May 2019 07:41:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2JJfhjlChlsZblk494lEolIoahzYewRVgkt13gf0nWw=;
 b=UuI8pqtaJug4kV9Uu/Oe/3rLCLNq7eiMY4k8vSVqL0yp2kn34OWbUyLri+F2I67YD2C4f6rdN6cRVi8PV4IZYEmMEzal8QtuafREC+3xfKedXeVm8UctCJCkwGFCbMP7wyNhtsYCeJXNji0p1CpPACp6jokK826sebNkCYGVx9w=
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com (52.134.242.17) by
 OSBPR01MB3159.jpnprd01.prod.outlook.com (52.134.253.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Fri, 31 May 2019 07:40:52 +0000
Received: from OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc]) by OSBPR01MB2103.jpnprd01.prod.outlook.com
 ([fe80::a146:39f0:5df9:11bc%7]) with mapi id 15.20.1922.021; Fri, 31 May 2019
 07:40:52 +0000
From: Biju Das <biju.das@bp.renesas.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Rob Herring
 <robh+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heikki
 Krogerus <heikki.krogerus@linux.intel.com>
Subject: RE: [PATCH v6 06/10] device connection: Add
 fwnode_connection_find_match()
Thread-Topic: [PATCH v6 06/10] device connection: Add
 fwnode_connection_find_match()
Thread-Index: AQHVFfJUqUbU7Icg8UiVJq3QJgY4TaaE3Adg
Date: Fri, 31 May 2019 07:40:52 +0000
Message-ID: <OSBPR01MB2103EAE24D36E23BFE8A76A5B8190@OSBPR01MB2103.jpnprd01.prod.outlook.com>
References: <1559115828-19146-1-git-send-email-chunfeng.yun@mediatek.com>
 <1559115828-19146-7-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1559115828-19146-7-git-send-email-chunfeng.yun@mediatek.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biju.das@bp.renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e226b5ac-0d7b-4e75-1332-08d6e59b4f1e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:OSBPR01MB3159; 
x-ms-traffictypediagnostic: OSBPR01MB3159:
x-microsoft-antispam-prvs: <OSBPR01MB31591D0E63212706D3957FACB8190@OSBPR01MB3159.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00540983E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39860400002)(396003)(376002)(346002)(366004)(189003)(199004)(51914003)(305945005)(53936002)(33656002)(110136005)(99286004)(5660300002)(256004)(14444005)(76176011)(4326008)(25786009)(68736007)(6116002)(2906002)(7736002)(6246003)(86362001)(7696005)(74316002)(71200400001)(11346002)(71190400001)(7416002)(476003)(3846002)(54906003)(52536014)(9686003)(66066001)(55016002)(186003)(76116006)(26005)(14454004)(102836004)(64756008)(66946007)(44832011)(229853002)(81156014)(73956011)(6436002)(478600001)(6506007)(316002)(446003)(66556008)(8936002)(66476007)(66446008)(486006)(81166006)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:OSBPR01MB3159;
 H:OSBPR01MB2103.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: bp.renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9ve87iDhwS2Bv2t20CDXq8Lmym3IMLYLmUYuFGiVVhZDrG3GENrS7SgY7pnqrMT3/ZjRVbEDCvmoBaeUENs63lIDw7TKlli4dQ7R8gQO93Q6o1BwEbKkPZM4h+oLnAMB82hoB/8raodlNKKedS6veSvDqegQgbePg6vWFbZXkXSa9O8BxoX3oXr1s+DRjOdGTqj8Y7VW4xCSR2W022adb0g3eFiekoRIPHBAPCc0C92EpbxZgaO2qCnAO559QZESckJFltNM0dkP7Q9tY30XufQO5DiPAvOmuKCf+sCgSKbgMmx36D2CGLm+dKZ6ci/wfdOZa0PUuN3dIMhDzXmpwikBSw1No7LOGoAWbuMpfryrYXjOJdV1NKNRw0bK2z3zK8+jJuKVgqutNW0ICFaVTvV5+LLsk73NkjCaiMEtB9k=
MIME-Version: 1.0
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e226b5ac-0d7b-4e75-1332-08d6e59b4f1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2019 07:40:52.6808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: biju.das@bp.renesas.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB3159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_004101_383780_D2BF9783 
X-CRM114-Status: GOOD (  22.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.130 listed in list.dnswl.org]
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

Thanks for the patch

> Subject: [PATCH v6 06/10] device connection: Add
> fwnode_connection_find_match()
> 
> From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> 
> The fwnode_connection_find_match() function is exactly the same as
> device_connection_find_match(), except it takes struct fwnode_handle as
> parameter instead of struct device.
> That allows locating device connections before the device entries have been
> created.
> 
> Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Tested-by: Biju Das <biju.das@bp.renesas.com>
> ---
> v6:
>   new patch
> ---
>  drivers/base/devcon.c  | 33 +++++++++++++++++++++++++--------
> include/linux/device.h | 10 +++++++---
>  2 files changed, 32 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/base/devcon.c b/drivers/base/devcon.c index
> 04db9ae235e4..8311b70bbca2 100644
> --- a/drivers/base/devcon.c
> +++ b/drivers/base/devcon.c
> @@ -12,9 +12,6 @@
>  static DEFINE_MUTEX(devcon_lock);
>  static LIST_HEAD(devcon_list);
> 
> -typedef void *(*devcon_match_fn_t)(struct device_connection *con, int
> ep,
> -				   void *data);
> -
>  static void *
>  fwnode_graph_devcon_match(struct fwnode_handle *fwnode, const char
> *con_id,
>  			  void *data, devcon_match_fn_t match) @@ -38,6
> +35,28 @@ fwnode_graph_devcon_match(struct fwnode_handle *fwnode,
> const char *con_id,
>  	return NULL;
>  }
> 
> +/**
> + * fwnode_connection_find_match - Find connection from a device node
> + * @fwnode: Device node with the connection
> + * @con_id: Identifier for the connection
> + * @data: Data for the match function
> + * @match: Function to check and convert the connection description
> + *
> + * Find a connection with unique identifier @con_id between @fwnode and
> +another
> + * device node. @match will be used to convert the connection
> +description to
> + * data the caller is expecting to be returned.
> + */
> +void *fwnode_connection_find_match(struct fwnode_handle *fwnode,
> +				   const char *con_id, void *data,
> +				   devcon_match_fn_t match)
> +{
> +	if (!fwnode || !match)
> +		return NULL;
> +
> +	return fwnode_graph_devcon_match(fwnode, con_id, data, match);
> }
> +EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
> +
>  /**
>   * device_connection_find_match - Find physical connection to a device
>   * @dev: Device with the connection
> @@ -61,11 +80,9 @@ void *device_connection_find_match(struct device
> *dev, const char *con_id,
>  	if (!match)
>  		return NULL;
> 
> -	if (fwnode) {
> -		ret = fwnode_graph_devcon_match(fwnode, con_id, data,
> match);
> -		if (ret)
> -			return ret;
> -	}
> +	ret = fwnode_connection_find_match(fwnode, con_id, data,
> match);
> +	if (ret)
> +		return ret;
> 
>  	mutex_lock(&devcon_lock);
> 
> diff --git a/include/linux/device.h b/include/linux/device.h index
> e85264fb6616..9445f068602f 100644
> --- a/include/linux/device.h
> +++ b/include/linux/device.h
> @@ -772,10 +772,14 @@ struct device_connection {
>  	struct list_head	list;
>  };
> 
> +typedef void *(*devcon_match_fn_t)(struct device_connection *con, int
> ep,
> +				   void *data);
> +
> +void *fwnode_connection_find_match(struct fwnode_handle *fwnode,
> +				   const char *con_id, void *data,
> +				   devcon_match_fn_t match);
>  void *device_connection_find_match(struct device *dev, const char
> *con_id,
> -				void *data,
> -				void *(*match)(struct device_connection
> *con,
> -					       int ep, void *data));
> +				   void *data, devcon_match_fn_t match);
> 
>  struct device *device_connection_find(struct device *dev, const char
> *con_id);
> 
> --
> 2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
