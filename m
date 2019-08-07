Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28122841F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMy5rGH/u1CZyNgCtk8lQhHVIxZh2Te0+MIi/BPnuRc=; b=HRcptoVQg7fq9b
	G2+o+0duL8Un81XDFgQUl9pSEIiE1gYMJ8UdY9MlOolyBkkk1UpQRfxxYK75jGezwNQEEIjpAWZ5+
	P3teR+x/UD4UDbFusF3df9Nx5Z/RH0o/CLbclWbwwAcB1F9IN+zC7u0iR4cU5V+kLY1Xha5IFxn9Z
	TrZ8taNmi9QmYE6JwxFIMnYnY6xiDXVnNkIQhu/5ThkWiJKAkKbInW33HQfYPJZcLlNiNIoq2HH01
	7LenV+pSCRzLDhE09VDmRaanWwELMOr+TTNp/Bc6PIqFNfG0Fjg96CiBjlFX9fn1CuEjOM3Ur9SCs
	nAbSs2dYajRXvB6eonaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvB6c-0004uG-Na; Wed, 07 Aug 2019 01:51:10 +0000
Received: from mail-eopbgr130047.outbound.protection.outlook.com
 ([40.107.13.47] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvB6P-0004dv-P0
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 01:50:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YcVk5fmLtSD9t0j1tWpUqM3cu1IO4pXmmRP7NfNdRaioFJ77izcPmvo2EithgHUUpN6C3X+YUzgdqZmGNiqXsRU/qiCrU9wM9Rw+ynUHVRuJJM0VIEtmPLE7x5iyOBZiuIBgbWE0rkWUYQiJZQalTyaZ5QTPHhgme30odZ6igjtxiZpVEXqp7V3fHi2/2NhFhBUOsscZq5OdzNnFvBBavL9MNARhX1JekWsfQvBCxXrNw06KWqpBhdUUJpL2I0wILtjtmRzGfQYGOZQtowsMIov7fPl5sPqND5lV8DJkup3C2PLwYwPt0y0ezdUgZ4b3jh5GCY2ZNmtD74YDBwaO5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dDOihdqEgCzHCLukQuB6lKGR46ShL3XZknhM0ULksjE=;
 b=aijqQQc8w8tkYgpmpc4U+yxlSs00VVFp7itFUVzLrnrK3ZjmcYIqTV+PWVoZQsZgoHQNmXvsXE5OIm64tN/LYG87oAfafxNtQ1sZDeZJy6RSSnky4RUNzQMiOa3XMrNs9iP6o6j+w4jcJOZ+Rq6glBHCm9i4hBJSXp3CDk8Z1pKY+LcrHWsc7VmU0MDDeM+Z3TNgVf0OcPOgYu9Y7YLOroZC+sHYM8F1CH8m6paWQGo8k8pYmqOgleOg6MwobDSoaQzGML271D3c1TPE/Odrr0AWkCpNt3YqPYxoF6ylYpxG75PtaOUNf108CFlsNTPt7CBfDZ2XZy1o3rIxXM6Ufw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dDOihdqEgCzHCLukQuB6lKGR46ShL3XZknhM0ULksjE=;
 b=ntpfG7gvbtUYjSVybqwduBInzMAk0ipTS6fMfuwFP8LtQL4psFC8hEfG0TF0x1v4qJsWTQkQdNlMD1luvfKSkTML/zLaoAp6tB2SUpXHEMY2drE5z03s4INVNy6fijnppqnyQ7rPD/V4oNxh34cH/3ByCqZOwCganTS10/5qLuc=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB3807.eurprd04.prod.outlook.com (52.134.16.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Wed, 7 Aug 2019 01:50:39 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::8026:902c:16d9:699d]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::8026:902c:16d9:699d%7]) with mapi id 15.20.2136.018; Wed, 7 Aug 2019
 01:50:39 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: RE: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: add i.MX8QM platform
 support
Thread-Topic: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: add i.MX8QM platform
 support
Thread-Index: AQHVMnTq2F+gGEqIWEi9imTz4TJ3wKbuF3yAgAEBoAA=
Date: Wed, 7 Aug 2019 01:50:39 +0000
Message-ID: <VI1PR0402MB3600B31267E45EE4EA21FE24FFD40@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190704142032.10745-1-fugang.duan@nxp.com>
 <65afeaaf-f703-02f2-a918-90a8bb8f58b6@linaro.org>
In-Reply-To: <65afeaaf-f703-02f2-a918-90a8bb8f58b6@linaro.org>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eb95cc65-d078-4389-ba38-08d71ad9a648
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3807; 
x-ms-traffictypediagnostic: VI1PR0402MB3807:
x-microsoft-antispam-prvs: <VI1PR0402MB380701633FB059019FEA3672FFD40@VI1PR0402MB3807.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(189003)(199004)(6506007)(26005)(6116002)(76176011)(3846002)(7696005)(71200400001)(68736007)(316002)(6436002)(55016002)(53546011)(9686003)(102836004)(71190400001)(256004)(2501003)(52536014)(7736002)(76116006)(66946007)(305945005)(66556008)(66476007)(66446008)(64756008)(8676002)(25786009)(14454004)(8936002)(4326008)(81166006)(81156014)(5660300002)(86362001)(486006)(53936002)(99286004)(11346002)(476003)(446003)(74316002)(2201001)(186003)(229853002)(54906003)(66066001)(6246003)(478600001)(2906002)(110136005)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3807;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HbAkkZME74gcITpd+cMupuSWMrMrKKyYe515dAlAQyT3niPj8xCOO/m7qPUXPTMZDori4H/mW5Q+bdl5kkvh5snKlng6VVYLXjZXR38zZ0et3kn34vm2+M3so8DD3pr5eDDd0ZSUg4vG1M4tNccXYfhEmRbL7c+4v3R4rrvBg4G8URL0cmfcuABUH7E6ZGaYghk+mci7V+Bz5T/gkHIi55RVLq4jjIIKx3K+8fRSkHrTHHICm5RZuNIxV/RbFhRDajcV3R/9LynkAEr7j+/377vSVkyAfWx0a8P9mCJfPosetOPmhM0WvThDCCzhtzWG4IU3MqQhOKvefLQjzibee0S+dl62UUMYl5peJ5lQ7WyXY8H/mmNgBC3MIo79Sbh6AgF4sQnHKt+jBeoBHZ0sYBMO1N3nFHEfIuKNC3ko+vw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb95cc65-d078-4389-ba38-08d71ad9a648
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 01:50:39.5204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fugang.duan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3807
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_185057_811454_E3011945 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org> Sent: Tuesday, August 6, 2019 6:04 PM
> On 04/07/2019 15:20, fugang.duan@nxp.com wrote:
> > From: Fugang Duan <fugang.duan@nxp.com>
> >
> > i.MX8QM efuse table has some difference with i.MX8QXP platform, so add
> > i.MX8QM platform support.
> >
> > Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
> > ---
> >   drivers/nvmem/imx-ocotp-scu.c | 7 +++++++
> >   1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/nvmem/imx-ocotp-scu.c
> > b/drivers/nvmem/imx-ocotp-scu.c index be2f5f0..0d78ab4 100644
> > --- a/drivers/nvmem/imx-ocotp-scu.c
> > +++ b/drivers/nvmem/imx-ocotp-scu.c
> > @@ -16,6 +16,7 @@
> >
> >   enum ocotp_devtype {
> >       IMX8QXP,
> > +     IMX8QM,
> >   };
> >
> >   struct ocotp_devtype_data {
> > @@ -39,6 +40,11 @@ static struct ocotp_devtype_data imx8qxp_data = {
> >       .nregs = 800,
> >   };
> >
> > +static struct ocotp_devtype_data imx8qm_data = {
> > +     .devtype = IMX8QM,
> > +     .nregs = 800,
> > +};
> > +
> >   static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
> >                                    u32 *val)
> >   {
> > @@ -118,6 +124,7 @@ static struct nvmem_config
> > imx_scu_ocotp_nvmem_config = {
> >
> >   static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
> >       { .compatible = "fsl,imx8qxp-scu-ocotp", (void *)&imx8qxp_data
> > },
> > +     { .compatible = "fsl,imx8qm-scu-ocotp", (void *)&imx8qm_data },
> >       { },
> 
> Looks like you forgot to add this new compatible to device tree bindings
> at ./Documentation/devicetree/bindings/nvmem/imx-ocotp.txt or forgot to
> add me to CC.
> 
> Please resend the patch with it, I can not apply this as it is.
> 
> Thanks,
> srini

Thanks for your review.
I will send the V2 version including the separated device tree bindings patch.

> 
> >   };
> >   MODULE_DEVICE_TABLE(of, imx_scu_ocotp_dt_ids);
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
