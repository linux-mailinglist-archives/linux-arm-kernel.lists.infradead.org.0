Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA24A1E539A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 04:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2r2zYhQCVYcqnHo6G4AXdzzw+G6QxIUUGYr5CtgajM=; b=Zlw4pXrD9OTMpj
	xNEh27XI1a2wE4UOt/h+PMNxj/4+K/uOowA1TimSf281lH4NhIVUR5t5yb6Golf5ZME7fyTmwo/UC
	0ycchp+UnTOyQnTfkIlRzEI8PZQMuTJnxVJcvJh8Mrhg1QRUzSF/PPEzXnJmJ7DaVNjpI6GdGc18v
	gXpMLqBD/m969FgxK5xk8pzR5ekglhn1xa3BQmY8E7s/K5k5ToeQW1oGC+u2PaGqifKt7RGiDTND0
	3b0ly38TyttfymI3HnTxMyFb+dOizbzj+T//+Tx/FC1tkBp7oIZPFdVRmBOSnLlr0of2gvSwJN465
	NBKiOAebXUKalUX+L2dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7rk-00009C-Be; Thu, 28 May 2020 02:01:52 +0000
Received: from mail-eopbgr70083.outbound.protection.outlook.com ([40.107.7.83]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7rZ-00008e-Ig
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 02:01:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GEsU3CDVfHsHfM/fjCHrfLKEOua+8A9IhFNJPoLjBkb2sDOGpb42R60Xk74iBM/DB7VBfHc2tGKJsinsjIoQboC/IeQsT5RAkZAVBCI+gWT6YDwy4m9Ud5L4KLZxC5ldxL97MqyR6+XAbzV9R25hzklvZwXxDl7P5uIYtiAj1samMLd3xJbXOMwNlBts+Nl9U7cd6mlxRqpv/920CfvK9wuk6tRB8OrCm5Mu8JA6ejPnHqzMU93znYi9SKC/IwvODt0gXTGVdX4Nql85ZR4L01kCaBO2gIWWArH01a5R6o/e4ocG/6C1Z/Sm9OBP3gIdH71rr3m+jMi0UW3mrMkjrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=thoDXsXrKALIEn5T5mZHBEgfmWUC3RVaqx3h11VH+/U=;
 b=KtqHzD4LUkPJ79bJ8mxInYLD0e6PXz8zWbAKkJJPCHJ11uaI9BDLExq4GqCLhCewpuiaBwKBy3I12kNvTaFfgdry4qOyiqgbV8MsK8WogbP+55KV41+AxotAy2V3EwfD4AvgT4rLpKvunM7O8Uo8sUJdyEkqS+YrBb27GDK9cW82Vp22Ld/tOCpyOhVlSj8YGlJ+9w29uZXvSbU53k3C1PJQ7e6YT/cdn9c3PgLVX1Yl0ovHHTgomqk2tu/vOHAyJ5JcUC4egYVnUGKjHEU4pCiAoReDXwFFbU/rZhg3Q2KdqsQZd1CtmU3efLOSPyUr71SecjhKX7UOXAICTNNBaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=thoDXsXrKALIEn5T5mZHBEgfmWUC3RVaqx3h11VH+/U=;
 b=eIjHCrCNR+x8A6LJe5JkeO1sf/cNw8dBCIGr56m7Zwg+ySkEqeogvibhlXL3l9E39DnjtpWeCwwr/2ZLrkvs2Uu7Aw+V+ZFGtkLpq/by5niKZdNvr1ij0//Ev/M0BMIfjtohYimaZC3Ioyt8q34264nA+pClG9KDt5sH6swTJ9k=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3900.eurprd04.prod.outlook.com (2603:10a6:8:e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Thu, 28 May
 2020 02:01:38 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 02:01:38 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] mailbox: imx: Support runtime PM
Thread-Topic: [PATCH] mailbox: imx: Support runtime PM
Thread-Index: AQHWEY+/xCVMpCFwWEOKIpvxyYiJiah3AcmAgAAEhbCARf4/QA==
Date: Thu, 28 May 2020 02:01:38 +0000
Message-ID: <DB3PR0402MB39160D61A38D56E7F416CCFDF58E0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1586780730-6117-1-git-send-email-Anson.Huang@nxp.com>
 <eb0eae78-35e9-1496-0869-94b48270f544@pengutronix.de>
 <DB3PR0402MB3916D05B44D776E5242434B1F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916D05B44D776E5242434B1F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b3c1d09c-5de3-45b6-c6e8-08d802ab0ebc
x-ms-traffictypediagnostic: DB3PR0402MB3900:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB39009BFABFE6C16F31D64898F58E0@DB3PR0402MB3900.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qXIsbQVzB65BPho2EW5WZMs13jAwAnhxdiRd0LY9F/cEB9zDJ9XTcBTBQXDiWsvZHWG/oSQ1Dm67+HTltc3o4Cx6tV8qNR5J51feUCPdhC8wZP8rz5ig9hQM6KIoehuwpuYLTLXG+mFENR+cNqhyrVEaUt+2/Sar2hntWTdzRbCkFe8pME7rkuXhOtQMJiSGjMdxY7Q5LDY7tYojsVCYztvdO9It1du2c2tCHNuKaHDC/W+nBR8U6LEgjzoioHTipxo2nFUglc69vzWyevqC6ONukrgm9uM9pMvNXQY3JX1oVwoFYt6bNBA0uin+l/iKfPie6JRNIuXs5yrheK4lWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(346002)(366004)(136003)(396003)(83380400001)(71200400001)(110136005)(15650500001)(478600001)(66556008)(66476007)(44832011)(66446008)(76116006)(52536014)(64756008)(66946007)(5660300002)(6506007)(8676002)(53546011)(186003)(26005)(7696005)(33656002)(4326008)(55016002)(2906002)(86362001)(8936002)(9686003)(316002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: zo+RXDZ6GG69izufcnivuJcwhvpiX3JCOjzA0et0PziF68CUYe37BconhJSUjCHjZLtCQxeRgoQgUL5zMX3PZKgOa9tV1UfQVBEa7Zb0jaCQOvkSNAfb2Sf5QnVzZkUPQNWooGpIYzgyZf+Qu2blDthJ+9b89cq0Vglrsyr4XD43PvCZ+W6oqDhu2CQVb5Pn8riVPcKuMAJfAfpEbvmOfHvGVCPKrm9Rf+rzUPGRAVau4/qPYd7lCweVx4wqwfSsfE+FBZlMZHkeySywpIZR4wABptoJp9wWM1oI7T3YMbDB7pb48NVM0hFLC3Z94WAJuFZ6y3N36RLtLdIcFYGtBbIBrKoawf5gU8rvOQxHK+vuHSGsQ7e0WoTH9yaQfXgDfswEA0F6V3Yh/AYvGDu1fom3wp1rVN9JD1xMAM5RxxLQoHtKv3W2drKw5K/Oai6Yn0AZ7SatT2XPC8ldXLU6R+EM+U9VjdhoKWL35+gXd1bf3toWULMFOwi7Ia57VBJR
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3c1d09c-5de3-45b6-c6e8-08d802ab0ebc
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 02:01:38.2241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pd1aSv28sktC6ce5ze0eoBmPnRe4wboihCKAk7tzV3fCikUiuPScoSkhidl95BCpFrULNs3ccHQov1jVf+C6RQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3900
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_190141_619031_CCE442F3 
X-CRM114-Status: GOOD (  22.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.83 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gentle ping...


> Subject: RE: [PATCH] mailbox: imx: Support runtime PM
> 
> Hi, Marc
> 
> > Subject: Re: [PATCH] mailbox: imx: Support runtime PM
> >
> > On 4/13/20 2:25 PM, Anson Huang wrote:
> > > Some power hungry sub-systems like VPU has its own MUs which also
> > > use mailbox driver, current mailbox driver uses platform driver
> > > model and MU's power will be ON after driver probed and left ON
> > > there, it may cause the whole sub-system can NOT enter lower power
> > > mode, take VPU driver for example, it has runtime PM support, but
> > > due to its MU always ON, the VPU sub-system will be always ON and
> > > consume many power during kernel idle.
> > >
> > > To save power in kernel idle, mailbox driver needs to support
> > > runtime PM in order to power off MU when it is unused. However, the
> > > runtime suspend/resume can ONLY be implemented in mailbox's
> > > .shutdown/.startup callback, so its consumer needs to call
> > > mbox_request_channel()/mbox_free_channel() in consumer driver's
> > > runtime PM callback, then the MU's power will be ON/OFF along with
> > > consumer's runtime PM status.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  drivers/mailbox/imx-mailbox.c | 27 ++++++++++++++++++++++++++-
> > >  1 file changed, 26 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/mailbox/imx-mailbox.c
> > > b/drivers/mailbox/imx-mailbox.c index 7906624..97bf0ac 100644
> > > --- a/drivers/mailbox/imx-mailbox.c
> > > +++ b/drivers/mailbox/imx-mailbox.c
> > > @@ -12,6 +12,7 @@
> > >  #include <linux/mailbox_controller.h>  #include <linux/module.h>
> > > #include <linux/of_device.h>
> > > +#include <linux/pm_runtime.h>
> > >  #include <linux/slab.h>
> > >
> > >  #define IMX_MU_xSR_GIPn(x)	BIT(28 + (3 - (x)))
> > > @@ -287,6 +288,7 @@ static int imx_mu_startup(struct mbox_chan
> *chan)
> > >  	struct imx_mu_con_priv *cp = chan->con_priv;
> > >  	int ret;
> > >
> > > +	pm_runtime_get_sync(priv->dev);
> > >  	if (cp->type == IMX_MU_TYPE_TXDB) {
> > >  		/* Tx doorbell don't have ACK support */
> > >  		tasklet_init(&cp->txdb_tasklet, imx_mu_txdb_tasklet, @@
> -323,6
> > > +325,7 @@ static void imx_mu_shutdown(struct mbox_chan *chan)
> > >
> > >  	if (cp->type == IMX_MU_TYPE_TXDB) {
> > >  		tasklet_kill(&cp->txdb_tasklet);
> > > +		pm_runtime_put_sync(priv->dev);
> > >  		return;
> > >  	}
> > >
> > > @@ -341,6 +344,7 @@ static void imx_mu_shutdown(struct mbox_chan
> > *chan)
> > >  	}
> > >
> > >  	free_irq(priv->irq, chan);
> > > +	pm_runtime_put_sync(priv->dev);
> > >  }
> > >
> > >  static const struct mbox_chan_ops imx_mu_ops = { @@ -508,7 +512,27
> > @@
> > > static int imx_mu_probe(struct platform_device *pdev)
> > >
> > >  	platform_set_drvdata(pdev, priv);
> > >
> > > -	return devm_mbox_controller_register(dev, &priv->mbox);
> > > +	ret = devm_mbox_controller_register(dev, &priv->mbox);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	pm_runtime_enable(dev);
> > > +
> >
> > First registering at the system and then setting up the power
> > management looks racy. Don't know if this is serialized by some other
> means.
> 
> Don't have other means, just refer to
> drivers/mailbox/omap-mailbox.c, it has same sequence, NOT sure if there is
> special requirement about this sequence.
> 
> Thanks,
> Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
