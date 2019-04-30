Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8378CF1D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 10:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y62ItmpLeXzFgQGoEM6ZTddGn2tslw6jiRcbUm3hI3s=; b=pjb03RtjfiJ3Zw
	KSCmJnvfzz13vtZsx0dDsWouZQx+hhCV4av9gxtlnelcHVuybv0HywOnhBeS0yPNRglkjFAHXN6yp
	dMiegpztdgs1NKhUXQGneaSa94sk6vpRejdQyGRsH82BxJ9hAd+4QXeswKfDK9ufduZtDnKjNRC1z
	HBBF0zLbIHJiARiGcLa0IdeQph9I/1MjWM3sfXVk13qQ/cdZ0RMMRjJhbnMhEXjGzfkxu6fRYwLRb
	BIwfcDo4CAQDx9g+EbX1FM0fQ5eCHQFc7BKW1FvZH1ztI12OkKbB9KhBIjSYvMMliFR3YzHDK9/w5
	UFy2ryiLrVTNAtK7tGVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLNqS-0004S5-2G; Tue, 30 Apr 2019 08:10:32 +0000
Received: from mail-eopbgr70077.outbound.protection.outlook.com ([40.107.7.77]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLNqL-0004RX-22
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 08:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQJcd1V092CHp5ZYUf0tzBNQVT8V4YjiRfdDANKslUY=;
 b=Gw4OwmuDgkqtYmRAFeQCEGCPoDkdH5gc6lC6ZM/0+FBioI7lgELe3iOzqgy/c26QtcF73Hfl9msLGFMsmCk7liwLieTWvp4cIZ5H6viotjfdZ8GqJuEVkWaVDqES0aL6Xm3Q1Q81OdJrjMOHpdth04mFqZ3ODEC3z3V6wsKUXHE=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6354.eurprd04.prod.outlook.com (10.255.182.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 08:10:21 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::8cda:4e52:8e87:8f0e%2]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 08:10:21 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] i2c: imx-lpi2c: Use __maybe_unused instead of #if
 CONFIG_PM_SLEEP
Thread-Topic: [PATCH] i2c: imx-lpi2c: Use __maybe_unused instead of #if
 CONFIG_PM_SLEEP
Thread-Index: AQHU/yJVTGic+X2v4ESo316NmJN4TKZUWBXw
Date: Tue, 30 Apr 2019 08:10:21 +0000
Message-ID: <AM0PR04MB42114EDECD01526E128A323E803A0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1556607314-32401-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1556607314-32401-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2cc87847-e464-47dd-8801-08d6cd434a48
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6354; 
x-ms-traffictypediagnostic: AM0PR04MB6354:
x-microsoft-antispam-prvs: <AM0PR04MB6354723F0293EF858A80BC63803A0@AM0PR04MB6354.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(376002)(39860400002)(366004)(136003)(199004)(189003)(52536014)(64756008)(2201001)(6436002)(99286004)(8676002)(71190400001)(7696005)(86362001)(486006)(229853002)(44832011)(71200400001)(8936002)(2906002)(26005)(9686003)(186003)(7736002)(68736007)(5660300002)(25786009)(74316002)(305945005)(66066001)(110136005)(66556008)(53546011)(256004)(55016002)(73956011)(6246003)(316002)(478600001)(66476007)(53936002)(102836004)(76176011)(4744005)(3846002)(4326008)(97736004)(6116002)(33656002)(2501003)(6506007)(11346002)(81166006)(14454004)(446003)(476003)(81156014)(66446008)(76116006)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6354;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: W0aCUfl0nWOamvaZJW8tWNNbLYPfyq54qqmBYgDQDt4hS/ursHVrQd4fMI2M9vEpBdtME6BOcZduD5oWiZvyeW+aj/JzKn3c6iOw6n2oC5WDCPGgJmO+AY7nhJrS3YYHEPSM0xIm3/8005x+wQ1EqmPockqETHEl04xbGSnEYT8CBND+xNJtuFzk+bCxEQMO2BXzdTmSuymqKmoK+cCwEk13kkEB1LvCoy29iUEKlVzJw9iwwtBglG0sVV83tD7aR0PIbFuxcCmfQ26yTesdNGYFpyOSl8D3nh9xnL4J/IOp9X39ypa6gJfhhfupLUmJcMiUFmW5KmJl4lYSs2GLM8nzoD0avC/czIxfMVP5s0122wQGmer4yioiX15tjmLHw3G163Jet+HXAm3hda7IfuFET7pONTppVzq2k8zROUk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cc87847-e464-47dd-8801-08d6cd434a48
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 08:10:21.1283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_011025_131748_6BD54105 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang
> Sent: Tuesday, April 30, 2019 3:00 PM
> Subject: [PATCH] i2c: imx-lpi2c: Use __maybe_unused instead of #if
> CONFIG_PM_SLEEP
> 
> Use __maybe_unused for power management related functions instead of #if
> CONFIG_PM_SLEEP to simply the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Acked-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
