Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF71190314
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 01:52:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svpE6V0aEBUrTvaEi1mzUDKSgKJfRDttFUzwu0JPZxQ=; b=klphkXww9PcKWN
	PFP2uCNHixzQsW0BDQjhcTk90RHcf24cQhJfo2lhDMAJ8EUNb3V7678dMNzF3x3lbYoWeyJBo2NGL
	J6pfkpPdyvEdR687cMdjS23ssZ4gxwe5oQ9TEHOVQt5N/PkJDbCmVnj1U8yz89X2zYxDTvn5RYWVy
	ZsPtBgB/5et8CRTXB11PzaF4fLf1rWsNDGthiHdueQNe8uPt9K9acQN+wYAuvDZMX9hF1RZLdf1xX
	Ezjeyisn2kK4h4wsJlanuXi9KkIMJwLSvKWJ8M/3SYHdK5MPBhfYE91drvBZ+hbP7b460t1VVc9L8
	MBeGT9QlnQ9N+r3qgdJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGXnm-0003QT-5L; Tue, 24 Mar 2020 00:52:18 +0000
Received: from mail-eopbgr20040.outbound.protection.outlook.com ([40.107.2.40]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGXnd-0003PV-J2
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 00:52:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JGN3N/Jy/SjCVX6efEp6aNFaJrlgsZ3zR4m7yMANnO/7E0xhup6PBmK18k5XGd0XngUJQ8DymJ7P24hyBOpsNiAlxvLeV0SfNxIA6gsjeddRnnHZaUNySAu5bpw/Gqb6TFN3YloOurQJN6PcU1vkWKDx+Uyt8wDpYUFRCB6iBSY2QSUZRjx3BH8+xluzTLcRftGYMPLt1Fye9twlrRns5ojF1zjqP3/0ITboUjLadqac/1t4yNdFhI6E8jr2gmYUB/p+LTBCnB3XOkw3X88ajb5RIhxHGwcSOwtBlx2jX0VBb/ttR3YFCW1zSetjKbgOHgSEJgWUIWUqswXPcWXLkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ekRiOP5+uDcT0buFROQWK90bLw7SVOf4P1GWSugBm+4=;
 b=n/8a34RjSWlUGMff0yukK6sn7UDRoEQDptxfdxlcBrxQCnF10N1IKo3dOYxOFzx3w2bESzIvqLpWYSpZ+xGRkjWIoTv5V0Ny6XDVAB9HDjyhOOmVZ3Lacp4eJoj2CLIOI20ltNw4F8IgNuoQxDXzSw+6M+CU1O93kmq31SX7O38wo9s/60GE3EyfHWQFOcCal+X0WHckmSeQuX72qFzVbS7ivJaaOLp+l7O4Kx5foUICpsDlChCE+WvQEGPXFn6AkTNcCM1Ms23/jick0IjympElgeU1/BXx2qnOdFDdMpsYzHVZGJyhYZTNRyAalhcntyj7YOK+KVX+7c7jhOtmIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ekRiOP5+uDcT0buFROQWK90bLw7SVOf4P1GWSugBm+4=;
 b=KrsQC9UUX4q9YsRNHbxMdGh8FUZx01wXln4EWJRnlJfAZ6Nqd3R1gEagWUr/iF/ha5wboFy7ysivtHpvYv7M23RSukj1cGzvVBCg+InkYIFe2CpZk/TF94cjpAhzv1NhwZegxBkSyiUvuDhRC3xvbXklV2tJ8g5fC5BKsjYumGw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3914.eurprd04.prod.outlook.com (52.134.71.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Tue, 24 Mar 2020 00:52:01 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2835.021; Tue, 24 Mar 2020
 00:52:01 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "rui.zhang@intel.com"
 <rui.zhang@intel.com>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Horia Geanta
 <horia.geanta@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V3 2/3] thermal: imx8mm: Add i.MX8MP support
Thread-Topic: [PATCH V3 2/3] thermal: imx8mm: Add i.MX8MP support
Thread-Index: AQHWAQ+PMwlXAHkCzkSegBP0Of4mRKhWN38AgACy3VA=
Date: Tue, 24 Mar 2020 00:52:01 +0000
Message-ID: <DB3PR0402MB39163E02D851A95D843B1465F5F10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com>
 <1584966504-21719-2-git-send-email-Anson.Huang@nxp.com>
 <644b108e-596c-64d6-9693-80ac7f706dc7@linaro.org>
In-Reply-To: <644b108e-596c-64d6-9693-80ac7f706dc7@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fd79f8e9-185c-49dd-751c-08d7cf8d9079
x-ms-traffictypediagnostic: DB3PR0402MB3914:|DB3PR0402MB3914:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3914928FD8763E2295637C26F5F10@DB3PR0402MB3914.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 03524FBD26
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(346002)(39860400002)(366004)(33656002)(110136005)(7696005)(4326008)(52536014)(55016002)(9686003)(478600001)(5660300002)(44832011)(186003)(316002)(26005)(71200400001)(4744005)(76116006)(6506007)(53546011)(64756008)(7416002)(66946007)(66476007)(66556008)(66446008)(81166006)(81156014)(2906002)(86362001)(8676002)(8936002)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3914;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MA8ua5c76kn4Wqcb4M+HBlHHxn342mRLpN9bh4SXLT7TP5GNl56yUeXpPu3ytbcxEzYsTJupHLr/yVyJYeD6KM1of48vzcN3BN+UvcRFg+95m9zLYEgzGkefb5k37Fh6hYYFNNaiGleQZGh14REOSDunVjWBWn5uZszv5mvKdpgG2KGQcgWrWb2a0sbRXtpjcwHZUi+iIZjqabXU8+SI5+sZ/RgoQ6gVGswA90a6D8I/rcHt5fijO3EOqXhXtPCUwjqsw4d6ySWR8q2pZD/DdUVuBjKazGBoQ9zZmiKfKHEM7x32N50n8mFiKLPiUC6AJQn8WJDryC7n5E0t8RyviJ+jj6quTgG3rv0xk+LiY5+ZsY0iWUOXtB+V60c/uOBpYd+2sSYG8hIDKFK+pSx/ioOHHkaVx7zjWabRDo3Adw+zF5E2cBPqW7/FJQqjX8QwUGK5aw75qMjzz99N3UJcYuaiv01ptMXb03oc6Ex5IGxoeAMY9wvI5fhqip4goAJ1vGPJLYhAZm4hfg73jvJvqQ==
x-ms-exchange-antispam-messagedata: mE0ScmSpE9xJOOLhxPecFFjbtHnow+ffC6Thh5zThMxA0DJ5UHD2Q1emK0TNjlinYzaEH368E2hyCeIZSBJSlhpDH+hlJtBlggyMQFOoDanxPYHA8NPiZXsQQCiA4S8fR6Bd8Ql4O/orhSMZjsry5Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd79f8e9-185c-49dd-751c-08d7cf8d9079
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2020 00:52:01.6622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aNoKTDtxd5jq91qG48Y7RgpjRydbU/GaFu4ejAm74+Y8YaYNRvU5T5J3Lf0kQWqpO8g0e3rTo8nVro+et6LppQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3914
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_175209_629961_AC493587 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> Subject: Re: [PATCH V3 2/3] thermal: imx8mm: Add i.MX8MP support
> 
> On 23/03/2020 13:28, Anson Huang wrote:
> > i.MX8MP shares same TMU with i.MX8MM, the only difference is i.MX8MP
> > has two thermal sensors while i.MX8MM ONLY has one, add multiple
> > sensors support for i.MX8MM TMU driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V2:
> > 	- Fix build warning about test_bit second argument type.
> > ---
> 
> Please, just send a fix on top of this patch because the series is already
> merged.

The patch 1/3, 2/3 are merged, will you pick up the 3/3?

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
