Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 734E51A66CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 15:13:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lL94UbwRBp86a2ch3KOPpdv9vO8Fd70LkMok8Bn6Yz8=; b=NAGLrwEyuxMgnq
	pt5YgBC9viZrwhjxf4bVHQ63c8eEXRhFyYAM2isyqXB+oRlQDwBcbDsbp6nUQPv0JQ9hgzYLoYlMY
	Y1p2kJGg3qmXxlgZh3+MsXBJDZa1E951RY7347/OLUXLVjTjdyUvaX+hZqcfOryMrws0lcAIEX41l
	zYOWAnJ3x8kWLnuUsjiLdnICbpFj99AE9b6/RNZ2ynXBewqp0xRXYNFRqzAygUE7UNWN8R8ZkBN8W
	VOfBuGwC5Pi6C6Enbc+WAx+7d+Tahfe8LqcecAu7hQorWpIEdXBEG3O1YaW1D5C+ziMjH8vAHKtK7
	Uh5W0GjMxbJwhVNXTLAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNyuC-00008s-FK; Mon, 13 Apr 2020 13:13:40 +0000
Received: from mail-eopbgr130052.outbound.protection.outlook.com
 ([40.107.13.52] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNyu6-00007s-BN
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 13:13:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A5ZNyWyYC3bVavvk0ht4exgWWU98Wqx7iZ27hREBJPsxnWtFTE74gcgGf2Z/cIwykLZ3O+fWbi8nNo48szyjTysuRXTYAvwSq5LLxw0dt0X4D/M/FTLmeJHzH2C14rbAe8zq1ZK7J+bDFW1LX6UXQrmtgcno92payNix5ngWZ1GPsSJS0S710NsjORw6cPYTwLyjQcbSeH0i+/UwmhglAJHqIWCiBtFJy3Pvybpva/8TMrsOw2QBCHkStfRNSQPe04CQpJQWeF4Wo8bhDEqMi6x9o16nAf0LtXICzT/UC79nd9E9uJecoLwf9ij857NM3C+HB5yJV8pIwIDF8DHTVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GAYt4QuHIGNrVJA5lk48MVy08csP6tNMhtTpvsA//io=;
 b=GnAIOiT/Mmv9DoTbrQH6adPHVlqucQK6aC9oLvAkm3i6OaWCwHQT6Sa9ObXewp6NK2+5YpnKKnbW4YQG4NOlzb7b0cG+5c3pW5G9SRcWhFYioxzA9u7bneiu8MfNmAWXAUkStejaxQ2OfIFHzvg1OhvYc7rGcWa2AGntg0BDJ8PAA2tC+8alEHOxck5azyFo8fE382OgSavG7S5HPK/XLoETmI8NHQ3pDHnM7U4Od+UblwSe5jAqnciLKZGuQM+7fjiDwpLQtVV7FX4M4CRoUdkbk1Px9kMlXvW9M9dvaorSN1DWVc5CKMOFtn2Qbe6TLe8ZO9wdaQxlFK9/L7CfXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GAYt4QuHIGNrVJA5lk48MVy08csP6tNMhtTpvsA//io=;
 b=lygYX7S7hvhJM2ZnkQsXLrEj3VYxSUDqIKI08wGLa3wHgjDX11n2hnvGYVeGnUoaJQ1JZj1gwoMKbbEUfp6JHzgSm+OJbC1uIy11NMgJO8U3kdZh89C1oVKwfPYNEveIadBz4uzudyAyjVUDegtrmEn4hkU5uW3uEsnN38L9hp0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3835.eurprd04.prod.outlook.com (2603:10a6:8:3::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Mon, 13 Apr
 2020 13:13:28 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2900.028; Mon, 13 Apr 2020
 13:13:28 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] mailbox: imx: Support runtime PM
Thread-Topic: [PATCH] mailbox: imx: Support runtime PM
Thread-Index: AQHWEY+/xCVMpCFwWEOKIpvxyYiJiah3AcmAgAAEhbA=
Date: Mon, 13 Apr 2020 13:13:28 +0000
Message-ID: <DB3PR0402MB3916D05B44D776E5242434B1F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1586780730-6117-1-git-send-email-Anson.Huang@nxp.com>
 <eb0eae78-35e9-1496-0869-94b48270f544@pengutronix.de>
In-Reply-To: <eb0eae78-35e9-1496-0869-94b48270f544@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: da4fc591-4a88-443a-4457-08d7dfac74e6
x-ms-traffictypediagnostic: DB3PR0402MB3835:|DB3PR0402MB3835:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3835EA9BA1A98A68EED34BD5F5DD0@DB3PR0402MB3835.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 037291602B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(396003)(376002)(346002)(81156014)(66946007)(76116006)(6506007)(55016002)(64756008)(316002)(2906002)(44832011)(52536014)(9686003)(8676002)(7696005)(66476007)(66556008)(71200400001)(478600001)(33656002)(86362001)(66446008)(4326008)(26005)(53546011)(5660300002)(15650500001)(110136005)(186003)(8936002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6L/M8ZYaBwjQI7aTzn+6y0Us3AX7TYqI1mIgi3YWuQ/zGlfTOvS5hduB5KcAq0x6lX8PAo2RBmr2HavYsZSeo9oMySNUJmSTRhMdZ1gCrtjAvXQ/oqIWlN2mN0m3aUH1X5gUwvjXhABfXiQo+IvvXQR0RxYwsCrJfWYBoAIkcNr5FH1fOaJ7L+ntsEthST+eX8EzB10PHcOTo9ShKARdMsDhG9/BiliiTmd9ZZ3DUChYQp/H1apZmfJN7G9ZTLBrXyKTJsMEa5Zp756Fk2NRUmM15MkdHnWEr22CLv1CNRxJbgVBonraIjTvx37Q4auW4I0+6IUPAazmv25C1AAXXniV28Jj+OGAaskihRWofks4wnowETLXIo31rz7LaKX+X9aZkMjerbpRc2gT+VB0RlIRku5nNaDv2OAkNlFQESOki0Rrd+YIt8xVpN+9qOQA
x-ms-exchange-antispam-messagedata: zFmZrbqAoRq8BMqZ/K6SHCLSHMXjFdyKhGPwtXduLHeYQX5w+EP49o2rbIDAz2f+MOSE+Ta7cJQ58B4CpXQ4PiFfEjobcAoCcmHS6iq+YAyhaTD9FQKBKSSQpSvqCcHCUesBIHhSclC016MgSrOETw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da4fc591-4a88-443a-4457-08d7dfac74e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2020 13:13:28.3991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r0rtf/QQ5XbzxgJibuzqZZ2ihYqv2UgAIgY4XB+3p127ns/W2InmKduNbnz5jJoNK6/sTaIYs/nw/vDzl/BY6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3835
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_061334_500855_B10C50A0 
X-CRM114-Status: GOOD (  22.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Marc

> Subject: Re: [PATCH] mailbox: imx: Support runtime PM
> 
> On 4/13/20 2:25 PM, Anson Huang wrote:
> > Some power hungry sub-systems like VPU has its own MUs which also use
> > mailbox driver, current mailbox driver uses platform driver model and
> > MU's power will be ON after driver probed and left ON there, it may
> > cause the whole sub-system can NOT enter lower power mode, take VPU
> > driver for example, it has runtime PM support, but due to its MU
> > always ON, the VPU sub-system will be always ON and consume many power
> > during kernel idle.
> >
> > To save power in kernel idle, mailbox driver needs to support runtime
> > PM in order to power off MU when it is unused. However, the runtime
> > suspend/resume can ONLY be implemented in mailbox's .shutdown/.startup
> > callback, so its consumer needs to call
> > mbox_request_channel()/mbox_free_channel() in consumer driver's
> > runtime PM callback, then the MU's power will be ON/OFF along with
> > consumer's runtime PM status.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/mailbox/imx-mailbox.c | 27 ++++++++++++++++++++++++++-
> >  1 file changed, 26 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/mailbox/imx-mailbox.c
> > b/drivers/mailbox/imx-mailbox.c index 7906624..97bf0ac 100644
> > --- a/drivers/mailbox/imx-mailbox.c
> > +++ b/drivers/mailbox/imx-mailbox.c
> > @@ -12,6 +12,7 @@
> >  #include <linux/mailbox_controller.h>  #include <linux/module.h>
> > #include <linux/of_device.h>
> > +#include <linux/pm_runtime.h>
> >  #include <linux/slab.h>
> >
> >  #define IMX_MU_xSR_GIPn(x)	BIT(28 + (3 - (x)))
> > @@ -287,6 +288,7 @@ static int imx_mu_startup(struct mbox_chan *chan)
> >  	struct imx_mu_con_priv *cp = chan->con_priv;
> >  	int ret;
> >
> > +	pm_runtime_get_sync(priv->dev);
> >  	if (cp->type == IMX_MU_TYPE_TXDB) {
> >  		/* Tx doorbell don't have ACK support */
> >  		tasklet_init(&cp->txdb_tasklet, imx_mu_txdb_tasklet, @@ -323,6
> > +325,7 @@ static void imx_mu_shutdown(struct mbox_chan *chan)
> >
> >  	if (cp->type == IMX_MU_TYPE_TXDB) {
> >  		tasklet_kill(&cp->txdb_tasklet);
> > +		pm_runtime_put_sync(priv->dev);
> >  		return;
> >  	}
> >
> > @@ -341,6 +344,7 @@ static void imx_mu_shutdown(struct mbox_chan
> *chan)
> >  	}
> >
> >  	free_irq(priv->irq, chan);
> > +	pm_runtime_put_sync(priv->dev);
> >  }
> >
> >  static const struct mbox_chan_ops imx_mu_ops = { @@ -508,7 +512,27
> @@
> > static int imx_mu_probe(struct platform_device *pdev)
> >
> >  	platform_set_drvdata(pdev, priv);
> >
> > -	return devm_mbox_controller_register(dev, &priv->mbox);
> > +	ret = devm_mbox_controller_register(dev, &priv->mbox);
> > +	if (ret)
> > +		return ret;
> > +
> > +	pm_runtime_enable(dev);
> > +
> 
> First registering at the system and then setting up the power management
> looks racy. Don't know if this is serialized by some other means.

Don't have other means, just refer to
drivers/mailbox/omap-mailbox.c, it has same sequence, NOT sure if there is
special requirement about this sequence.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
