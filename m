Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13956A5F8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 05:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZw1xF4Q8/lDF0feHdo0EHEQfI8mPHTXUZPg7FlBWD4=; b=qnLYaNJl+zhPPp
	CH5xrovLEJR7GvNK0Vgxieyy91zuEI19vBAKx3ykc59yhyMh+DVuO2hjvgThgERljS5FqOdSxkkmS
	ngIGbQdEJeWK3z2ppW6R+zrZb02/x9h0MbvxwvYewKihL18NG4QzWqjjkNT27GEBPAGBUdAKg/uUF
	l8haNTOiQWo3t1KF/Y2KjIP8iXtksOik/29/QLRuut8iglS+7566KwJLrliZZaquvhze3IeDg0VNd
	wQ/m+HtycUXsTr/e92r59H1RhNZ5fK4ASzJ5UXUJftslag0xDuY0rUfXAi/BtL31kSeX3a8ErQs1O
	wZmMFngkyQi1wjODtXxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4zEY-0004Cs-Q5; Tue, 03 Sep 2019 03:11:54 +0000
Received: from mail-vi1eur04on0627.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::627]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4zEJ-0004CT-Uf
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 03:11:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=al+Sn53UeKQZk9VLzdRnMdye9ZQpiSaTs1lq99uDCyeHMtM4Wot/CTp1DFufmpQEj06vRO82w2/QJU+VJhen9ZY+AA4LoN+5O6Zv33+0C+5BPJpMFe+YigZ19zOwKEtgAmPB+PmEYgcBCvtUiZZmv4sPe07f+6N62TkknwAI72lHg2LonwSB0gyWbFGexgz1jfmTWY6b0NXmwW2kBsoyYjaMjXJbk4l7DNdbZz/hsLTK3mD67fgnVfKXR2W6wA4jq+Dy0LzULfiF6d1VnNHekzGszrvVnjE6RKa6lL2NmpszffJJABh0zFcT3U03tLDnIvHmTFZtc1CrnS58hYbCTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Aljlc9VXvbdFHeIbT8N+MLdwfvYLNnBorBRhOCw5sw=;
 b=aiLC7mnGXnCFfF1eRMdfX9VHZgau8wqQ+3zW9moSqDIOxjlkR9PXmDq5tEq6un34kLIRdvFXsEgxHj0vp8w97+Ab3DbiYWqjwTgo8yo93PkDW4MdS4JrhMokaEiGGvWlSQMEvNm0qXRJGLpn4MWlI5AOlXqCX2EZTiBjufNjP/I9JisAXnWHLF2C2eUBU0ADnUqUQZSnrKq1KuyQ3D9+KJF3r7NvxdWOoyHzCsyXjBTU4tyeDmcKG9CQoRGd6zZk5kGlQYu6q5SZuJGJw/otnZFk6D1fvYY6qs4H/Tw9TWhcYJmBxWHfT01tCzT1pCE48r0ueEv2/aemmT8QQEFPcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Aljlc9VXvbdFHeIbT8N+MLdwfvYLNnBorBRhOCw5sw=;
 b=J5gQ0mfgn6eRQtFgY7OrH/5o/corjocPrueGhtO68d9SlvKxAqBXCuJjQE0JrJMH+bHH6P3p+uMG/YZvcW8ASfZWcdobWMhxFSywkQTFjcNjEWvRtueh8GTf1oFEuRhNWlwKFVH9v3x8mMzZB+rS2wDkVwEY1RMh0rpYVtWgxbU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3865.eurprd04.prod.outlook.com (52.134.73.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Tue, 3 Sep 2019 03:11:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2199.021; Tue, 3 Sep 2019
 03:11:36 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH V2 2/5] input: keyboard: imx_sc: Add i.MX system
 controller power key support
Thread-Topic: [PATCH V2 2/5] input: keyboard: imx_sc: Add i.MX system
 controller power key support
Thread-Index: AQHVYfwAkBJd0uw8O0iWCkl8q7ZXAqcZPXwAgAAI/NA=
Date: Tue, 3 Sep 2019 03:11:35 +0000
Message-ID: <DB3PR0402MB391636D31F486639FB8B3BA6F5B90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <1567519424-32271-2-git-send-email-Anson.Huang@nxp.com>
 <CAOMZO5CHmvrbVG_h8hOb7hMjXasV_QwtNoXpEw9kqY=4Jj5HAg@mail.gmail.com>
In-Reply-To: <CAOMZO5CHmvrbVG_h8hOb7hMjXasV_QwtNoXpEw9kqY=4Jj5HAg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c589e467-bde8-4e07-1d6c-08d7301c6e29
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3865; 
x-ms-traffictypediagnostic: DB3PR0402MB3865:|DB3PR0402MB3865:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3865AF11E8B7C6BEA3A58049F5B90@DB3PR0402MB3865.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(39860400002)(136003)(396003)(199004)(189003)(7736002)(2906002)(7696005)(1411001)(25786009)(33656002)(3846002)(14454004)(6436002)(6116002)(478600001)(8676002)(81166006)(81156014)(5660300002)(99286004)(86362001)(229853002)(8936002)(305945005)(4744005)(316002)(66066001)(6916009)(74316002)(52536014)(54906003)(71190400001)(71200400001)(9686003)(53546011)(6506007)(102836004)(53936002)(66476007)(66556008)(64756008)(66446008)(76176011)(4326008)(55016002)(7416002)(66946007)(476003)(486006)(11346002)(446003)(6246003)(256004)(26005)(76116006)(186003)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3865;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /9Tx6X1ZMceFWHG3soSVtE64xxo3QgRGA7RxOTsR4NXOLB/ZFyuvmf2D4gHynn0Tn2m0v+yiV/iQgUO/yCOl/kyfXPysJRaxBChRVDoS379IWz1n5eTJGpZQCR3AfAv2qaLl/2um2O+tZN1FSarLo/Fj07lDJXRx7J3oZIv+ZpF91WjUMoVGOJbWosN1O5BtL9+tA6WXKzMPQuidSN1MepNShSLoNdl4JmqSg8Upj92NhVxeYMj/LpCEbwSieBBWrhbU4jAfe+RuISBjsDtmLYVI+6RAsbpSqRjCfoXe2wzdUbnDjiIGaC9kZJT9ZT4TQI1uxwvpvxFARMBqWVXGtF4Wpw5hmS2KQ45sxVGd/+7RRVp4cw4giHhjYwubMMlfacCbC1YocIihvY2nBDrVqgmvQ8fdTbGj9gcSqcJh4G0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c589e467-bde8-4e07-1d6c-08d7301c6e29
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 03:11:35.9531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e0igZZ8yYn/zyNgTozA60HccOUDKn28F0gnqb8JTeMkzffh+orPvPGJQ8UugIFgt7pfdJlXlfXQ7cWVSuAbI2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3865
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_201139_994135_0156EBD4 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:627 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Peng Fan <peng.fan@nxp.com>, Stefan Agner <stefan@agner.ch>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 dl-linux-imx <linux-imx@nxp.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 Marco Felsch <m.felsch@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, "moderated list:ARM/FREESCALE
 IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Fabio

> On Mon, Sep 2, 2019 at 11:05 PM Anson Huang <Anson.Huang@nxp.com>
> wrote:
> 
> > +       ret = input_register_device(input);
> > +       if (ret < 0) {
> > +               dev_err(&pdev->dev, "failed to register input device\n");
> > +               return ret;
> > +       }
> > +
> > +       pdata->input = input;
> > +       platform_set_drvdata(pdev, pdata);
> > +
> > +       ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE,
> SC_IRQ_BUTTON, true);
> > +       if (ret) {
> > +               dev_warn(&pdev->dev, "enable scu group irq failed\n");
> > +               return ret;
> 
> Better do a 'goto input_unregister' here instead and call
> input_unregister_device().

Agreed, will fix in V3 later.

Thanks,
Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
