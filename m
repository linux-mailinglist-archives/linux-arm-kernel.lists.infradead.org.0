Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628AA1E5371
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gq5T7qqQE1RLHj8Zr1ttAOO4JjXBMVsY3AXOCrB7vc4=; b=M+48hJqLNOHmqR
	49OW/ulIHH6omoeFhPQabOzKeOvnzK973rj2/agMDNsqS4XmMDp5hR4leiga5XEXpBOcwsOIHXmU3
	/cHU3kMbxTJwPZrpbqEmgmwh+qyiDbzJblFugTrDgUc62RDbY6rdlvx73KuqW4cBuDAhMusdSdKTE
	dyWzZ6+v/x0zMdVfWiOk4oe1t26xIMo3cyuZR3y9UVLVHOzla2rS6zPUJQjiS1C91FnLvgngj20sd
	b6HI/6le/aGONADull+I2g3fmDoCnTfbH59LnMu2PZFARTrix5oXuGdpTdjc87wXmdLBwSW1Bg6dG
	xS4pWXVg0tk+SRlAvREg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7lg-00059i-9J; Thu, 28 May 2020 01:55:36 +0000
Received: from mail-eopbgr20063.outbound.protection.outlook.com ([40.107.2.63]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7lU-00057u-34
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:55:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/olEDBitOBjAp5uBGWVWIcDif6Ti3072VIm/5wzYZXBVPSRnDXOzaDLiqvHSrO+haxcUj//YUJsTPDYyXeZE3pnK7QLQ8uPTuVSjO5gGuL8e7PTtrCncSpjp6YovbdGwtXxt6d5fzOyvtIG1LWKKQWG71YIjDexcg8j6szx21C3Rv2iwBG01CSgXvxEctYVMl+d7MdoM1k7CzlcpYgVJikFVp9tRgWVN60XjeCzi1etXyVUoGL2lOidMhkC65ScyOzfTDkZAg7n5j9HnK7FEliNEZKdSF+3KzLEIYj2j0ZEdd4F147aobnmVHrWvZW7iMGFhiwSkAR3c2uxQxNv/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8sOXvUs1LVqeFhqxoAH47DKdiuBNMOCtkCaTSJ+8W5g=;
 b=YUP2yElRYGgY2YhWmxnnNT7zhHbcxKaIYz02OoSJJPB0eProRrCOS9tsOl5SzvSIB9F7IhMgc70VrpiSzjlwYwvrxr2LS5r4ipVL74eM+mNC5wTCLorkF1uYMlGd21bxePcQAz3d0rb/Mp+CQ/RfVSLKlMfnGPYE849U8+RqGTqKsTsVjRqZo9jVN5q/dS9yYfYXxNap+c4X5Tl4LWWpmHp44qUGdpd/Fk27BFunoi8cb9zT3aEfzp2G2T9BCyNC9gI0RIUNNPdI0o9BuPC3jePu4mxS3fXL6Ph1JgqOkIGqxuDKBcEUbBazNKDPCFHMXty5QdoEVfK1omEMuE+zjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8sOXvUs1LVqeFhqxoAH47DKdiuBNMOCtkCaTSJ+8W5g=;
 b=RJPN56P2X8jY0rWkWzPlRWB7kHr04zsXekMC1ZWmI0JcsJ/uz9yGhN6Ai8Iir3/DFN/2Gfp0BBRN31VF+PmlrwDaMl3Ao2BvWhDE6guEEmCfbZRvR0g/EXWcT7Rx2ptGzbcu0/75pBEDFv9YxDgP8O6PzYV+HmorZrodX+dNiRc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3644.eurprd04.prod.outlook.com (2603:10a6:8:c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Thu, 28 May
 2020 01:55:21 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 01:55:21 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] mailbox: imx: Add context save/restore for suspend/resume
Thread-Topic: [PATCH] mailbox: imx: Add context save/restore for suspend/resume
Thread-Index: AQHWGcRI3NaCUTtP70667RBGRFojq6iHjCeAgAAAeYCAAAouAIAAAIOwgDVbDzA=
Date: Thu, 28 May 2020 01:55:21 +0000
Message-ID: <DB3PR0402MB3916BD0FCF482C124E21D3B1F58E0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1587682871-528-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49666D6A0B015FD1DF3A20B480D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916D588A9432A9F1D1F99BAF5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM6PR04MB496671BFF3496FD1C4C51E7E80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB39164CB0791AB259CE62EC4EF5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39164CB0791AB259CE62EC4EF5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 092e8a2f-58f3-4bd8-b43c-08d802aa2e2c
x-ms-traffictypediagnostic: DB3PR0402MB3644:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3644E2AC403D3620A7FA4DB0F58E0@DB3PR0402MB3644.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:644;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SY750VhbuIFCCso59v+fQHK35Wny8JDAT2701AtZ8FK0BfZmDTRP7iOUnkwhhQ1lqdBV5vU19tp2L1EvAS4y24gJeEfsLY7HzcF5GCcfG+xnNATwUthJeKzJoxuOqafSgqm/1Uh6cgIg4R8gucLATJXu7zNEMvh1y1rFQVqpvV5W0Xz5Vur2yjw981/VPUZeQGKtcGEs6TrfDMo1yl8xX9QCEpvPNXMjLFawWl45AlKYXfuOo7LxrL8HdBZy0WZuWiJaR4s1TEs70bwzy/XivtIJp9nrChwTK1SJZ/xkX8Abu2xe8paV2g9a/ibq33wNOVywrpD9aa0tr19Gl3J9xQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(39860400002)(136003)(376002)(346002)(33656002)(86362001)(8936002)(6506007)(8676002)(44832011)(7696005)(5660300002)(76116006)(64756008)(66556008)(66946007)(26005)(66476007)(83380400001)(186003)(66446008)(71200400001)(55016002)(2906002)(478600001)(15650500001)(52536014)(110136005)(316002)(4326008)(9686003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: tkUjQA6QxLJjZvdJ7t1KZNemNygDoElzKN7iDWGhtZF7EVicKQb+b8ccb4r+ucw17HtkECmb2foESrKP29FDbzPOvvCDzwAM+eYkztLuvsoK2ROr91FAmFIsEXQ015YhPhoGDPDuCXOfvooKYRJTu+ChA9s0NI1Yz36pEN/S9mxWjXy1tQtw9eiliJrAdIPDOMoqDvWPkgc9Hd7OOBA5a0gMfQen4W2V6BEtaSMloF4Kfr8tuiE7tglgWg0zcNcnSnMYf++8EOR1h9soeqURnrJ7dD8s/ayOBCoITYXZd2KLvZvKmXeGCEuxc/m1uRH4G/09n9djxc9QPPaXw6jKXUAecHWxt7hdEkiFQovgyrCfGd35dH5p1lghfcIFEE15HjWIWKxzg1XTmv0ukJ+J41Va5J1tPI58UcMxXG2C7DHi9eB20Lw7u/dOdnXcyf6Sk6ifPtwSUBT3gA+08zcvrsSICXBzG23wWGLOMxQWzytqaDVIx8xlMRFQRe1H7vnE
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 092e8a2f-58f3-4bd8-b43c-08d802aa2e2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 01:55:21.4173 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tz0h0cRS9Yuor/nryvoaSADchFfp44Gzs1l+aWohsXxBTkpVpuv0uzBE/zQmq2T2eCGNRTifl0ZUeXi7kC2EZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3644
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_185524_136620_982F3475 
X-CRM114-Status: GOOD (  31.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.2.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.63 listed in wl.mailspike.net]
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


> Subject: RE: [PATCH] mailbox: imx: Add context save/restore for
> suspend/resume
> 
> 
> 
> > Subject: RE: [PATCH] mailbox: imx: Add context save/restore for
> > suspend/resume
> >
> > > From: Anson Huang <anson.huang@nxp.com>
> > > Sent: Friday, April 24, 2020 10:33 AM
> > >
> > > > Subject: RE: [PATCH] mailbox: imx: Add context save/restore for
> > > > suspend/resume
> > > >
> > > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > > > Sent: Friday, April 24, 2020 7:01 AM
> > > > >
> > > > > For "mem" mode suspend on i.MX8 SoCs, MU settings could be lost
> > > > > because its power is off, so save/restore is needed for MU
> > > > > settings during
> > > > suspend/resume.
> > > > > However, the restore can ONLY be done when MU settings are
> > > > > actually lost, for the scenario of settings NOT lost in "freeze"
> > > > > mode suspend, since there could be still IPC going on multiple
> > > > > CPUs, restoring the MU settings could overwrite the TIE by
> > > > > mistake and cause system freeze, so need to make sure ONLY
> > > > > restore the MU settings when it is
> > > > powered off.
> > > > >
> > > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > >
> > > > As mentioned before, we'd better keep the original author.
> > > >
> > > > > ---
> > > > >  drivers/mailbox/imx-mailbox.c | 35
> > > > > +++++++++++++++++++++++++++++++++++
> > > > >  1 file changed, 35 insertions(+)
> > > > >
> > > > > diff --git a/drivers/mailbox/imx-mailbox.c
> > > > > b/drivers/mailbox/imx-mailbox.c index 97bf0ac..b53cf63 100644
> > > > > --- a/drivers/mailbox/imx-mailbox.c
> > > > > +++ b/drivers/mailbox/imx-mailbox.c
> > > > > @@ -67,6 +67,8 @@ struct imx_mu_priv {
> > > > >  	struct clk		*clk;
> > > > >  	int			irq;
> > > > >
> > > > > +	u32 xcr;
> > > > > +
> > > > >  	bool			side_b;
> > > > >  };
> > > > >
> > > > > @@ -583,12 +585,45 @@ static const struct of_device_id
> > > > > imx_mu_dt_ids[] = {  };  MODULE_DEVICE_TABLE(of, imx_mu_dt_ids);
> > > > >
> > > > > +static int imx_mu_suspend_noirq(struct device *dev) {
> > > > > +	struct imx_mu_priv *priv = dev_get_drvdata(dev);
> > > > > +
> > > > > +	priv->xcr = imx_mu_read(priv, priv->dcfg->xCR);
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > +
> > > > > +static int imx_mu_resume_noirq(struct device *dev) {
> > > > > +	struct imx_mu_priv *priv = dev_get_drvdata(dev);
> > > > > +
> > > > > +	/*
> > > > > +	 * ONLY restore MU when context lost, the TIE could
> > > > > +	 * be set during noirq resume as there is MU data
> > > > > +	 * communication going on, and restore the saved
> > > > > +	 * value will overwrite the TIE and cause MU data
> > > > > +	 * send failed, may lead to system freeze. This issue
> > > > > +	 * is observed by testing freeze mode suspend.
> > > > > +	 */
> > > > > +	if (!imx_mu_read(priv, priv->dcfg->xCR))
> > > > > +		imx_mu_write(priv, priv->xcr, priv->dcfg->xCR);
> > > >
> > > > This could be separate patch if it aims to fix a specific corner case.
> > >
> > > This is NOT corner case, it can be reproduced with our imx_5.4.y
> > > very easily, and this issue cause me many days to debug...Also cause
> > > Clark's effort to help test it a lot for many days...
> > >
> >
> > Is this issue only happen for non-state lost case (eg. Freeze mode)?
> > If yes, it's a specific case and worth a separate patch to highlight it IMHO.
> >
> > BTW, it seems most drivers have this issue in current kernel because
> > they don't know whether the state are really lost, it seems like
> > kernel still doesn't support this well.
> >
> > > I do NOT think it makes sense to first send out your patch with bug
> > > for review, And then add another patch to fix it. 1 patch is enough
> > > for this
> > feature.
> > >
> >
> > Anyway, if you really want to go with one patch, for this case, we
> > usually could keep original author and add a small fix note in commit
> message.
> > (You could see many community guys do like this if you search kernel
> > commit
> > log)
> >
> > Basically we try our best to keep origin author in order to respect
> > others' work for community work.
> 
> I am fine with whoever is the author, my focus is the issue fix and easy rebase.
> If maintainer agrees that introduce a patch with bug and add another patch to
> fix is OK, then I can rework the patch into 2 patches.
> 
> Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
