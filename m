Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4447E1B6BBB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 05:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSP/9ZkuS2FCmciDI/ZGkylFmkVGffSosO31fNDMlaE=; b=E2AhIJpWUErcwC
	sSN3Q06nj2BPGFX5zRnYBnqhj0d/sYRT/I0sgBaZfexXnfXvW7UTT6cjNF5FaUxXfdiWREEbk2jfY
	WV5bYXG/KZoGrpcgv6C8gYU8XIhk7LNrJ9zZyWZPPTeWHhEVMdRnKRK0246bAuuSFCdEAq1p+fboF
	az9+apxx9fIRfg8rJZ4kS8/EsUyGlJlMXdqDGauGSj+q5fvt2kRI9P6qlj+b9EjUE0AOd2US43sXf
	J4II62YUE02qBS286TroPVzAikbUFagMNhkezgis40e87QIsl+lyTrgkBe0SpCsKuX060NF0AUJ2C
	/fOtdA7n+BNDmtfPZyYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRoii-0000XV-Lc; Fri, 24 Apr 2020 03:09:40 +0000
Received: from mail-eopbgr30040.outbound.protection.outlook.com ([40.107.3.40]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRoiY-0000Wg-8l
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 03:09:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ed37Mup+iKPyoQw25W0A5coTdgFyjGkpPYdGUgASmeSAt3eMSDxufKKEX9MDMjhSc3zKuAKe+Ak6oCo1gOwPsOOJZzTlKmLsTHmDVV+aExXBqBA5zPO9k+gXB6D5CmOKz89Xg76625Klc6G+4MDhhC/tVAgBBqZsLOVkWDHKDORJ00YwxDB4xt068VMxudNn/bW8AtBvCFLhAHqy7fTYrLhchpHzRleXD3VrbCNbCk8LZba8jV34B7iOGMz5kzpx6A8GDQhWAGO5rFXwJm+RWtVNV7AAp8Yr6wJ2iuy8Se5gKXDl5SgLcboNa4yhangOsL0O2vfvFJxVs/B0T/Cdyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5U6BhGj52TRORxNjTNCcW/dF80j4n0y30WhI+y+pm48=;
 b=PPp5a31EN8Q9gKv+GDfVBp9BUERa0kjP3AMac8migA6PY79RZ4EZ8o3GVifha10QkkI9YyyalKGnpn6SV0tji7wQc/3kScBnbNHjoxQ9bWpmRpY3ee0QI95upsaYZ+m6VhZW0EJReeysBJkajJ9VnzzHcGTfd1D7fuLXfJ9vDnL/8KDmMv44+QvxPw4rvXh43dhsbXkAPPVnW6ZYtJoPVARGGY/3kSiy9aeNLGfyEGgZZqo3Sv+b1XmedGDkF5CSdKkuuzkpZ0GqAW41ds8lF1AJKOVkIzWiUikeMasgfiiQAnCOicGEAgqjvHYx5xke+Y14ayZK37ylznsYbj2Vhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5U6BhGj52TRORxNjTNCcW/dF80j4n0y30WhI+y+pm48=;
 b=a2BNaPcKkJNCVkCZXCEDhtLp3jwnXovbqX6Qe3lmDYnaBa58sAJb4cm5PJRz98qTZ6INQN27XE50VLPZMQWUOMUGXHJ5Xm2omMemMrWi0QOlBw7vavwwtVaBcZE3jVWLHntqm4S3TgPQDMKYBQtu2W4EiGc+6ykP+RyQwerVQVg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3802.eurprd04.prod.outlook.com (2603:10a6:8:f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 03:09:25 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2921.035; Fri, 24 Apr 2020
 03:09:25 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] mailbox: imx: Add context save/restore for suspend/resume
Thread-Topic: [PATCH] mailbox: imx: Add context save/restore for suspend/resume
Thread-Index: AQHWGcRI3NaCUTtP70667RBGRFojq6iHjCeAgAAAeYCAAAouAIAAAIOw
Date: Fri, 24 Apr 2020 03:09:25 +0000
Message-ID: <DB3PR0402MB39164CB0791AB259CE62EC4EF5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1587682871-528-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49666D6A0B015FD1DF3A20B480D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916D588A9432A9F1D1F99BAF5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM6PR04MB496671BFF3496FD1C4C51E7E80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB496671BFF3496FD1C4C51E7E80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 98e4914a-7049-499f-7741-08d7e7fce4f5
x-ms-traffictypediagnostic: DB3PR0402MB3802:|DB3PR0402MB3802:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38029DD99F2EA3E6C57A80CEF5D00@DB3PR0402MB3802.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:644;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(366004)(39860400002)(478600001)(66446008)(64756008)(66476007)(66556008)(66946007)(6506007)(7696005)(26005)(8676002)(33656002)(52536014)(53546011)(8936002)(81156014)(15650500001)(55016002)(71200400001)(86362001)(9686003)(5660300002)(4326008)(76116006)(2906002)(186003)(110136005)(44832011)(316002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KwdI7S5Ueme+Cowpb78uCGqeoDWZ8EUtJlEHL32cqDjdhNIlUmsb307HahJ/WCo1HQgmI7pgfuA5Ti5kXlTiPbhptrLzcJyxQdMv7TSBv3s1HTbxdwu8K0H1uSYGS0RGPFxEvwueYl1vB9QyeiaHHnfMQ4VydPO6SZ5pFZW4petXIxNDcwdQz8OEtP0cKOcV4gg+xDxtY0RYRhvQ+7ZLQBJNvtKVUvjd8IVHl0ahqu8CPwPL1EoL9Jybq9GneComVei9383WTDgPUcS1yX97h19vx0+zZR2IM1x7+Xh3ti425S+Yqkw6w68c7vmGlLjTJui1H+E9rqQY/iFa9CB2ACmjn5M7YGKyx0p8ttbar/GAQPugv9yMDv113iG5uwennc4Sawr78g7YAKhzLdNW7jt1JOvNOF5YUkLaiSWlQSucw0ndpx2sSqy7txkqMruY
x-ms-exchange-antispam-messagedata: RPgKxgY2t2NpMxuK0KWiEu1+7OZpphLOEwj0BwoP3HSG3pUXPFWOK2lPDzhEI5r2PdZX+geaNk8Q2qNCBaBpMkk4Oen5CX5zqvFhM1/YkitserqLumwPB/qwmXer6qyRVtU13gpKU+c3jQvMd7nfeAVJN12TacWNBqAn7QgkJPrDqWLIloHz28qBhyB6vwWe3Ip8ua/YswZfYzXov1ouYW8QWSTYByCvOvJYaYy3j2ZCXseFvafaSlQr9hMZZxsYLXKbf+eJiN1nHGMM5CNdSmHgrflTqcmcNhF7bmPvXcqYX02zDuYQ+F+z7ZXgZkmQ/LGut6HxdHWWK2V0ZKxVgmtlzmb2W1EE3oOVtp8uL23p1QmW/0hD6pLvEfd1XRvfh6tECGtv0PfsDcuWnM9xxF8ReSX5t/rkcNhHAHImifGuipADu5C9cx5CCRD7X6ijuoOGD4eANuxrxG6uXjQ69gM8L/X1BzQxdRT0hUtz7JGNWPs6U4xsmnDjGYa9HVeDHYplBxouvfpHORGmc5uiIDc17EHLh0T2+OiZJElp/hXTHVlx9HcwNZ9dHCqEpjvTXbrPDnIFHAyDHhD+PV1cHEbn4vtvvjltdr/IPmgWb0UQizdsyEqnydUvEHtrtxiX2cb+wPyOsAvtQqNBEL11+ui+wwP614iphXQGFjTUXhHa92qtnpvGrezKfR2VbBVHtnL02VvgnYXEz7OSJtYAIDF9HBsOdbK34zIScFX5FbcaV1+U+qpKnOCl2X68H+VVi+tv8Wi3l5poWbK1+Zu3DuTwkRWIVFqU5rKbsaDHmXA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98e4914a-7049-499f-7741-08d7e7fce4f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 03:09:25.4252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: erIWSvAJZr+kGV0ui4gz6Ii4OM3OaLQpUb9OW+65po5m12vIwe6h00LSDAeTt/0Xa8HvmSnbI+uuwUlpAqSxvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3802
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_200930_311198_C49FAB5D 
X-CRM114-Status: GOOD (  30.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.40 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: RE: [PATCH] mailbox: imx: Add context save/restore for
> suspend/resume
> 
> > From: Anson Huang <anson.huang@nxp.com>
> > Sent: Friday, April 24, 2020 10:33 AM
> >
> > > Subject: RE: [PATCH] mailbox: imx: Add context save/restore for
> > > suspend/resume
> > >
> > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > > Sent: Friday, April 24, 2020 7:01 AM
> > > >
> > > > For "mem" mode suspend on i.MX8 SoCs, MU settings could be lost
> > > > because its power is off, so save/restore is needed for MU
> > > > settings during
> > > suspend/resume.
> > > > However, the restore can ONLY be done when MU settings are
> > > > actually lost, for the scenario of settings NOT lost in "freeze"
> > > > mode suspend, since there could be still IPC going on multiple
> > > > CPUs, restoring the MU settings could overwrite the TIE by mistake
> > > > and cause system freeze, so need to make sure ONLY restore the MU
> > > > settings when it is
> > > powered off.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > As mentioned before, we'd better keep the original author.
> > >
> > > > ---
> > > >  drivers/mailbox/imx-mailbox.c | 35
> > > > +++++++++++++++++++++++++++++++++++
> > > >  1 file changed, 35 insertions(+)
> > > >
> > > > diff --git a/drivers/mailbox/imx-mailbox.c
> > > > b/drivers/mailbox/imx-mailbox.c index 97bf0ac..b53cf63 100644
> > > > --- a/drivers/mailbox/imx-mailbox.c
> > > > +++ b/drivers/mailbox/imx-mailbox.c
> > > > @@ -67,6 +67,8 @@ struct imx_mu_priv {
> > > >  	struct clk		*clk;
> > > >  	int			irq;
> > > >
> > > > +	u32 xcr;
> > > > +
> > > >  	bool			side_b;
> > > >  };
> > > >
> > > > @@ -583,12 +585,45 @@ static const struct of_device_id
> > > > imx_mu_dt_ids[] = {  };  MODULE_DEVICE_TABLE(of, imx_mu_dt_ids);
> > > >
> > > > +static int imx_mu_suspend_noirq(struct device *dev) {
> > > > +	struct imx_mu_priv *priv = dev_get_drvdata(dev);
> > > > +
> > > > +	priv->xcr = imx_mu_read(priv, priv->dcfg->xCR);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int imx_mu_resume_noirq(struct device *dev) {
> > > > +	struct imx_mu_priv *priv = dev_get_drvdata(dev);
> > > > +
> > > > +	/*
> > > > +	 * ONLY restore MU when context lost, the TIE could
> > > > +	 * be set during noirq resume as there is MU data
> > > > +	 * communication going on, and restore the saved
> > > > +	 * value will overwrite the TIE and cause MU data
> > > > +	 * send failed, may lead to system freeze. This issue
> > > > +	 * is observed by testing freeze mode suspend.
> > > > +	 */
> > > > +	if (!imx_mu_read(priv, priv->dcfg->xCR))
> > > > +		imx_mu_write(priv, priv->xcr, priv->dcfg->xCR);
> > >
> > > This could be separate patch if it aims to fix a specific corner case.
> >
> > This is NOT corner case, it can be reproduced with our imx_5.4.y very
> > easily, and this issue cause me many days to debug...Also cause
> > Clark's effort to help test it a lot for many days...
> >
> 
> Is this issue only happen for non-state lost case (eg. Freeze mode)?
> If yes, it's a specific case and worth a separate patch to highlight it IMHO.
> 
> BTW, it seems most drivers have this issue in current kernel because they don't
> know whether the state are really lost, it seems like kernel still doesn't support
> this well.
> 
> > I do NOT think it makes sense to first send out your patch with bug
> > for review, And then add another patch to fix it. 1 patch is enough for this
> feature.
> >
> 
> Anyway, if you really want to go with one patch, for this case, we usually could
> keep original author and add a small fix note in commit message.
> (You could see many community guys do like this if you search kernel commit
> log)
> 
> Basically we try our best to keep origin author in order to respect others' work
> for community work.

I am fine with whoever is the author, my focus is the issue fix and easy rebase.
If maintainer agrees that introduce a patch with bug and add another patch to fix is OK, then I can
rework the patch into 2 patches.

Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
