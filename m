Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5201FCAE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:30:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WydTMm0+6E932gH3n5vq8qM+pjP8DCNOiwlvpMxBGk=; b=qlBelDWw9GA3Ez
	QFgkCRHrYjST7E2828qEtpM+CVMx5CRbt1TRytUxYLjvSRpEGHBOa37sp04JBv2H/9d+pUpDiuJH4
	xhQJ/FB+E6j2Vzo3zevoIlRqm2NUoMPaqCOhPBlC4kLxRIv7xEd+k1Xn5UwgOi/8ewljy2XZ4bsFp
	07rJUdqI5tzbiYV8o9kjx9qbfMUG5TjLhF7Q2mmvTZkl5mtigV+URcyXd0shrI16lcDRHO32ZVx79
	u1InAzxoksXIJMdIm5O7ITYEedxOAGIjmUUiV6n5XYkA0vsSqny2H/3+7j8eOdS9gS1uv2NZjbka1
	bI6qwmikSHp2h1NKcuaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVKR-0005Qw-GQ; Wed, 17 Jun 2020 10:29:59 +0000
Received: from mail-vi1eur05on2083.outbound.protection.outlook.com
 ([40.107.21.83] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVKI-0005QL-8f
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:29:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XGJci70p00+tn6+VAvjnecTArPiaFtozMfEEybJPD9CmI7gBT6xuSFZQwcTaqqdMMPkYZukVUG/g2y135Udo51rYrB7dxKuuOl/jzl3R1x+FtyXHkcVmUguydkVwj+hax0HYs0tBcijjYYjVMSC4OwmoWXbk4Z9PUaT0zWIvmFnDJRTik7frD0sK8XPoDU8hcJPWZPT2oJ7xJja61CiH5syCLj5dY5Vxta73AHLgoB9jKultcULJ26WEk8LONoTFF026RtygQREYdteqmAO3rnlVRLkpkc3vrhcxc2sU/0hV/f1sX+ORSZcnzuvuR00ceCBITkJ+ba3AjNIeeE7NlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VzNpslDNw3i8luGdWPE8oqB01iM3dIvnonWn8KpVxkc=;
 b=TQ8dlVA0CkXVd/pTfn6yrrHGtxFHsMQg/YWGYbZi9HQVUxzyIQAWixfZdmm3BJww06S32K3gTjRXKvGErcjukpZxUN+ux3fPTPyLxhtm9uD3E03jDOVCHdtZM4rXwq3oTJc0A6qsT1nv+C4Ay2Gf7WeSOufqNSoWANJGlJIMdMJxIb3hrA4l1S12rilCFQq6oVBTgJWaTZqIHOanCc3uJIcGje2TSzVd1ni0KFPS3rkyDgeGASrMhx4wvqx+bfU0D9DKOFIZkYd0xJ9FkquQ4FigJj+HguxCBy3nyptylQhsNDm9ZVBjC18lPlpLVmypTA7wJz4IC0FI1qQSoErtDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VzNpslDNw3i8luGdWPE8oqB01iM3dIvnonWn8KpVxkc=;
 b=G52mDbmea64UD0LM5HEi9PitnTPjuesTIiUHPF1MnsX34FLu/ZVWTzQ//hHdUWFZVp+vnBWynRvpBcl4aKmnjSVRH0z/5tKPNMaSHjW54WhfvpkfjY/5O6DdIxlxvU1hhHXoZdveEERff3+b9oY5W1EX3DDvrmyoiGefcCfPR9k=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4022.eurprd04.prod.outlook.com (2603:10a6:209:42::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.20; Wed, 17 Jun
 2020 10:29:46 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Wed, 17 Jun 2020
 10:29:46 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "festevam@gmail.com"
 <festevam@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "linux-gpio@vger.kernel.org"
 <linux-gpio@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH V5 1/9] pinctrl: imx: Support building SCU pinctrl driver
 as module
Thread-Topic: [PATCH V5 1/9] pinctrl: imx: Support building SCU pinctrl driver
 as module
Thread-Index: AQHWP+Xe3FoK7wvcIE2WhqslqxeLCKja/NXggAAZlYCAAQ64MIAABz+AgABRaxA=
Date: Wed, 17 Jun 2020 10:29:46 +0000
Message-ID: <AM6PR04MB4966243E1116C43C595CDD47809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591875295-19427-1-git-send-email-Anson.Huang@nxp.com>
 <1591875295-19427-2-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966C661D52B43E6938FCBF4809D0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916610502199D90B4BFC5E3F59D0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM6PR04MB49661AA8A25B73D04FFF6769809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB391687D9A9CFAAAEB3E4F236F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB391687D9A9CFAAAEB3E4F236F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d263d2e5-0540-4c76-e1ac-08d812a95b8b
x-ms-traffictypediagnostic: AM6PR04MB4022:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4022DBAC168E4FAE4ABF6021809A0@AM6PR04MB4022.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /uPBJuh2gESHczZV3FS+f6PkUeqgxCfLhP+iFxOLPqilNHkxqskaYACtpuqM6cq7qLGkVb7+IYMGF3cZxhXurqPL/iUrCwwi9bAdyEvBEb/vanOP2TkjYCJS41TX8Hi28XIfLycr74G+pWlXolQCWI63tQ1tkPlAEJvIloqLTRB7oQMme4UhR7/6ZyyBon/WABLwEH1eHfBAvEqnG2tLNh9rFBlzA7kFAvCT3G3visK6pasQlPwgYJpxjLodUJF3C3A7LNVDTsblMDrKjq9H66tsTYYspibX29to1BCzStQ2dQ0DQFCEf7D1wEoe4txoulpPIxL219XmbzFQZH18NJsFE/COpsME+D1hARBadA42KcgIxySa9GboxJCzbU1D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(136003)(39860400002)(346002)(366004)(4326008)(5660300002)(52536014)(86362001)(55016002)(9686003)(478600001)(44832011)(186003)(2906002)(26005)(71200400001)(316002)(66446008)(66946007)(64756008)(66476007)(66556008)(110136005)(76116006)(33656002)(7696005)(8676002)(8936002)(6506007)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: hG1dJnAphRifZlJgS9sGqTO57H7mZhhO3AQUnmdvfDem5gtmJf19sjFUJRLsd+BmhG8vd0ojzLf1dPaqsw8Hpeqk7Yx+AWyK7qQ3MXQaaHyf+H48KQKmjT6nTZN2fGLis4cWzPqkq64ocOYIaOS1s4Y8wx9UQjs7ST8sjrTMgoaRGgZ1rK4g6G8+ubycUdd7JeKmRhTrogzVqD0gZLnB5umIGVLDaxNOjkJzuWDVFKb58wKSPXCK7hFMFhvX713SPv5eJncxfpahIlFWqESUvTa4WFB5rWyLxePGHURl6RGYOA006miWLDX7Yzqv4hVDiGsi1UpXXe+CR11qJdlzreil4qeszZ4lVUMJmHevpcft7Xcp0ghKviKR6Op6YMi/9K8wpm/xIFMp2H6nRApVXiWbeTpKqDFWWTlFi6lkIbeWUOEQq3+uKhmkGz9SBceYIBH0Ohf9Jek64Q41ZzOlr7qWzVay1n4RvIPKLuZHVDghawMvjdFDdhTQIM07pNfX
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d263d2e5-0540-4c76-e1ac-08d812a95b8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 10:29:46.6822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /N1LM/s97LOp87amvDmqy6kCCc4AGXzfbLku5EIicKgck8w8lqr/KgYyHI1EG4HNsqt7hIhDFYpFzAoXY3opjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_032950_306349_9C7E1BA3 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.83 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[...]

> > > > > - * @dev: a pointer back to containing device
> > > > > - * @base: the offset to the controller in virtual memory
> > > > > - */
> > > > > -struct imx_pinctrl {
> > > > > -	struct device *dev;
> > > > > -	struct pinctrl_dev *pctl;
> > > > > -	void __iomem *base;
> > > > > -	void __iomem *input_sel_base;
> > > > > -	const struct imx_pinctrl_soc_info *info;
> > > > > -	struct imx_pin_reg *pin_regs;
> > > > > -	unsigned int group_index;
> > > > > -	struct mutex mutex;
> > > > > +	int (*imx_pinconf_get)(struct pinctrl_dev *pctldev, unsigned
> > > > > +int
> > pin_id,
> > > > > +			       unsigned long *config);
> > > > > +	int (*imx_pinconf_set)(struct pinctrl_dev *pctldev, unsigned
> > > > > +int
> > pin_id,
> > > > > +			       unsigned long *configs, unsigned int num_configs);
> > > > > +	void (*imx_pinctrl_parse_pin)(struct imx_pinctrl *ipctl,
> > > > > +				      unsigned int *pin_id, struct imx_pin *pin,
> > > > > +				      const __be32 **list_p);
> > > >
> > > > Compared with V4, this new implementation seems a bit complicated.
> > > > I guess we don't have to support PINCTRL_IMX=y &&
> > > > PINCTRL_IMX_SCU=m case.
> > > > Will that make the support a bit easier?
> > >
> > > I am NOT sure if such scenario meets requirement, the fact is other
> > > non-i.MX SoC also selects the PINCTRL_IMX which will make
> > > PINCTRL_IMX=y, so in that case, even all i.MX PINCTRL drivers are
> > > set to module, it will still have PINCTRL_IMX=y and
> > > PINCTRL_IMX_SCU=m, then build will fail. And I believe the auto
> > > build test may also cover such case and build error will be
> > > reported, that is why this change is needed and with this change,
> > > function is NOT impacted,
> > >
> >
> > Is it possible to add some constrainst to make sure PINCTRL_IMX_SCU
> > value is the same as PINCTRL_IMX? Or combine them into one?
> > If we can do that, it may ease the implementation a lot and make the
> > code still clean.
> 
> Combine PINCTRL_IMX_SCU and PINCTRL_IMX is NOT making sense, since for
> non-SCU platforms, PINCTRL_IMX_SCU is NOT necessary, to make
> PINCTRL_IMX_SCU same value as PINCTRL_IMX, unless make "select
> PINCTRL_IMX_SCU" in PINCTRL_IMX, but that is also NOT making sense,
> because, PINCTRL_IMX does NOT depends on PINCTRL_IMX_SCU at all.
> 

PINCTRL_IMX_SCU could be conditionally compiled. 
Something like follows:
obj-$(CONFIG_PINCTRL_IMX) += pinctrl-imx-core.o
pinctrl-imx-core-y := pinctrl-imx.o
pinctrl-imx-core-$(CONFIG_PINCTRL_IMX_SCU) += pinctrl-scu.o

Can you try if this way could work?

Regards
Aisheng

> The change is NOT that big IMO, and no better idea in my mind, have tried that
> in previous versions of patch series.
> 
> Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
