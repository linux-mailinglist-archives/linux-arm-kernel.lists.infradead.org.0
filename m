Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF441B5F91
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJ661QHZNv2HFXaXaz/Z+PMXJUWqxpTABJj8yjE7DhY=; b=OBT04qu/cCEWYt
	evUVxPUy7OFsboEwD2YT8lsWaSoPrtrZNERd9Noz9mOXbSzVC31U+JkJtEG6YLnI5TKAR1mOMOG0+
	hPVHsUb18Qy1QUMu3Obkqi+nd/jdQqvFoHwnRpua1z7cWsXqzOOw/RSHIl+ht8HsEBckgzwr95/gj
	mFHOynQu0Ot3SABBcn2yU1xUOgnJvsM56CMEpAFcRvgGl4TGWN2FLNhgXadELLkDYGzpsjECu+bbw
	tGeZ5APmVtAkIkGJU+14fQl+EDfeEDE1UIc8SHNkn24RaYEAdzBJGbtCGf0iOiCMVdsSHx4wIEMNq
	q5pb+z53FPBlE3gJLNLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdx0-0003T5-Gt; Thu, 23 Apr 2020 15:39:42 +0000
Received: from mail-eopbgr30060.outbound.protection.outlook.com ([40.107.3.60]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdwp-0003Pl-5i
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:39:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JcqhEkt2yevtKwGqWB0y+dgEY5GhNWa0tc0M/MnFLZrJiFccfHtNkuGSy449qCFXdvPD4QSIc93L4ob+5Yt3CAFCLHwhvBtrXjWC1MvE3JgE/H+6A2WSP3ISKXlAXuIT0bytgWA+80AC/mlnaBAG2E5lrKtfwpHHhTIjqmWaMDQbD0rO07j+8kYml4TkWkHuy7Nl3eEaTKCpTyr1EkOEtNarnvmat50sAzbpRxGOCde+U7M4gSXLWgIJjQwnyMr8h2FQIfErUSMnp0UWPe5a7fzKACHd6wdymFkFBHFUMl2xBNeCJ9uoRTwS5YxfqdM/4wmvWN6M4M4kuvgxB4Z/mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TIWm0BOwSfWeNSZUykaS0hHq8GTcL3jy9xN51aSqa5Y=;
 b=ma/b3HxxcDFh1hlWMPAoiI8S1QPlLBPYpgwX10dI/Ea7EcXEahfBUj7PPHVGmwUpXsCfJzBrdwievyg7Hh1zW5f37YFFaiIrm8hGpgyqG08zhvUm0Bp3H0aA+LCLDLSg01IHk2o7pgd+qRUXH5076JJh5NNoLj27JK9h0U9ObEuvw5jGdLmQ/N2LDaNVVHS8XSUEGev3SxrdpTSugYxLrwfKjgKjfEldjNlPRkzu7piJ7dCTcbBH9zHBYPewtPWP2ARYQONYeeg99dLctnfZtxZEqUNO+YziMgVADnjO+lVI2/CdSGF5yvVRabGjzMq30NN6wkGwisNl1iWD7ZFQmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TIWm0BOwSfWeNSZUykaS0hHq8GTcL3jy9xN51aSqa5Y=;
 b=idZVkBu5x7e5FON5hOEp5wayuBMPX2e6EVsKKgLv3JGCKCF5QAexTCCClyhGGW5ExCRbAm7vMVmzW8R9Tcq2MGcglZ9RRf5rpGyfwtn9KWjcCoQKv32yHM25fBXj8Y4hMNHH9RxJzGwcQSB/7qeYHnuk3vsksSCQRvFq+NaIYEY=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3899.eurprd04.prod.outlook.com (2603:10a6:8:f::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Thu, 23 Apr
 2020 15:39:24 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 15:39:24 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Amit Kucheria <amit.kucheria@verdurent.com>
Subject: RE: [PATCH 1/3] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Topic: [PATCH 1/3] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Index: AQHWGXizyKpLQyPoM0K6vK6jVENDPKiGxoOAgAAQV6A=
Date: Thu, 23 Apr 2020 15:39:24 +0000
Message-ID: <DB3PR0402MB39167F9D8D3101FDA02E3077F5D30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1587650406-20050-1-git-send-email-Anson.Huang@nxp.com>
 <CAHLCerP3jGUZC+i2i6CEYhOtBjLYKAPe7M0bKUs1b5oQEsdfEg@mail.gmail.com>
In-Reply-To: <CAHLCerP3jGUZC+i2i6CEYhOtBjLYKAPe7M0bKUs1b5oQEsdfEg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 51351c67-cb01-4163-ae22-08d7e79c802a
x-ms-traffictypediagnostic: DB3PR0402MB3899:|DB3PR0402MB3899:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38998B5117959DDDDA7E1167F5D30@DB3PR0402MB3899.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(376002)(136003)(366004)(7416002)(76116006)(9686003)(8676002)(86362001)(64756008)(66476007)(4326008)(478600001)(66946007)(66446008)(66556008)(33656002)(5660300002)(55016002)(4744005)(316002)(186003)(54906003)(6916009)(2906002)(81156014)(71200400001)(52536014)(26005)(44832011)(8936002)(7696005)(6506007)(53546011);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2bNCzmRQmwBbRCntm7MOTMnHzdshrQOzhpHE0wR+oIQ1XK6MX60rxF9mgiJ2I+Z0Cd0GVcdxyIS9iUWJwCbPVuvZHGCWT7eE1SGYdUSvvFWPbMe8WELWJEVw9rfVYjX4FjYs7kRVdjeJU2ztsgUmFNGwI1IPSWLTpem3f/Y30KGrPQsqXtWBVJn7Ol8UkoE2z/TWwrhLdRDlTlhhhiY/DPBZVNvMAf2nJX991D2mubgsvBQx+kIG5Y2tNKZcpLKoQ9YbUtTgEwIiqwtSBmP4UgV89cpp5w7WKXPa0bU48s5QOez/bhZY43FI/asW2SKaOB9hobstqxCsKstYOh8IdEuI8AVpa0pL+PKxeig0aIjooCgs3E+sFGzyPI8lAqLQNQcMnlap1JQa9GDG9784Japvnh2M8xv+mUM76bknazDGUlE9qdlUAKTejCy+FZ2Y
x-ms-exchange-antispam-messagedata: Dw/cntGq1vYYAttlywiimH/vxgYh56tc8l0GU37ZfBU3a1v2xHr3JiVxFYFsbzjCeKb2zx5Ha6awmi015ttWoYkYFzVKGW2JUORKYgg8AO0Wgl/S4QDTQ6cFqje3pdYMCoU0KKvReoRyfJuQO0oZErj53N1o7XLam44cZBY6fpHVSqXFNfSXrsXULZ3qCa4ZwkQfuGGcM8kiaRfViU0tuk9rHwPrbOY3vw9JpuY3vagIhTLA6I3n5p7cn3KcRSaPAd2Xg4OMOc5eVkrWcXYpUZW0CxKsu9nB3J3b9oi+yjLVcfVVx9MY0xc68MfEvHYZO7/O1HQNjQreoYSFPsy3zzd0GwbJUy02EQ3+vk8JUK0xgH+pNapz574g1l+dVG3uYf8ItZP4xi8OnHntpjhVYTG1QGAyM8KnPNwFmp6v2cgjosMSF5vozKhdTLZIKB2gWwwkRZo2r8mk341TZvrkcmHhZW+SzLT5qDi/LlAFldeiNs38deR6bSnuvfbA6eSiO9InuEjISiv51/kKNJ2I2MLXF5pip3WaT6P6RzNbFQDpl29UWGgZFGTpDsIcWklJAptXb3j07wCbwwIh9FpTq22SJq1eHoZYnxN9/QzmeFgx++FmCvpANw/pFz+cgVR0zAq4Bt5EVGEhzUT9Fl3Wc4mCfCQpqSYSJ4/DGUqgOd+OlRlkC9/U0F1wZQ+PDniwCzzRbC0tZ/aLqswBNEeAo2BME2twi9GozVZJtBteppSlVboVlSoe1R601Ex7vbmUZ6ouQwQvcBeT6g6RYb4llBZIHgq4U/irAfX+PNt5pLs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51351c67-cb01-4163-ae22-08d7e79c802a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 15:39:24.6320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k1dEcNp63/K34Y0bMOVtZMZOkgOfOICSQsTbB63VwSah77NnDDhbzXEqBMLOXlMAtR53LaZPIBBmbZptkZUlEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_083931_213240_9EB3C298 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Linux PM list <linux-pm@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Amit

> Subject: Re: [PATCH 1/3] dt-bindings: firmware: imx: Move system control into
> dt-binding headfile
> 
> On Thu, Apr 23, 2020 at 7:38 PM Anson Huang <Anson.Huang@nxp.com>
> wrote:
> >
> > i.MX8 SoCs DTS file needs system control macro definitions, so move
> > them into dt-binding headfile.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Why am I seeing multiple versions of the same series?
> 
> You need to squash this series so that the swapping of the header file happens
> in a single patch otherwise compilation will break with only patch 1 applied.

The first version I sent is having command error by mistake and patch 1/3 is missing,
So I send it again.

Yes, I will squash this series, sometimes I was confused about the patch category, but
making it NOT break the bisect or build should be the most important factor.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
