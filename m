Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F60B72BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 07:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBTbunt4xaBq73eFiCiAdWYjy+5eH8csCoLQQFSOmS4=; b=CHCrONnUPNI5hg
	tQa394HFaJXV+DyIqKskCQFOpMoe1uh40/YbpRNDxn/nsx1pDtnGrOg5j6Kw9nPKJNEWQbZZsz0vq
	DgPEnEYQkLWo21WxuqSEcC197EymTxNJGkEmyRLGJrfXHoD2J/1zLaUHFq2MzOOwp6HaGw3DzQuiK
	Llt5N+unjamfWY2G9O8b2wWf6ZTH0oXfPojl8OBR/Wvrmekc5z5ScWdzP9yULdQ5xdiaqyY6es8o/
	O6DMQlBfL0KjOBSy/VGusmVyzAqY8llhjStwULEitYnf19Z6LixxpitVujViRbTB2QCPNCsYxkCl8
	Q5r+B6DWQrxzdpM6z2xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAp7z-0001t0-Pf; Thu, 19 Sep 2019 05:37:15 +0000
Received: from mail-eopbgr00073.outbound.protection.outlook.com ([40.107.0.73]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAp7j-0001sZ-0H
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 05:37:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VrlsqKdZAcbSNHZOqBsUuSiScDbyHC9W9pRcjSy0MvDPKCPPjsZgf2Sw7IYNk59PQ15wRres93/lT9AhY0oeLMj5P/Ht7YUOKowmls3qpowkZO0kRnIRP66d5zyGH3WvEesdB1EDT5I1f5IYRs5O7zKPKwt4WIzcJ+m2d/wP48KHBLcjJSLkpjqAzyXKGP2xMh0o3Ox31+N334EWD5AcZHmrwECgQOlyGzUjkdo0F2uDSOfxpIGjTZdW3oxsm1EXi4tpOGF/Fx2VPs197O9rsssYXulLzwCBNSCalgQBku0l2P7T0jqs56sGsgecOWhh5GorIcnMnEA0V2pTvvEEtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HQZoUPdEtsiUpNAx+bVS7cNzlcIveB4QjuafgnUvWRk=;
 b=Xo76GuX+qPW4ovkIZGE9VmFwcAyQDS+LmMMwVattCB68eMozFbPF3LMqCJXMxFFQFdKjl9MfYgbFC7SKXsYupU3VQbWlEImCSBzl4TQWUZQanMa6FyUolq7oql2XwCXeUIn22TvsgmbFO46NGOuq8lHtju1QlBZNgjhuGwIAHPTgW6/H56P0ad12gh/PATGx1GhmyWrscPCnZqPO/en8HwnHyUwXtq1UMwleiSVZQPhIgC+2yBKEy0AmOJZog1y0QMippafLy1Wi/9Q/999YAGC+47h4o4034OrnPjBlmhrrS9guojSYnrqZ4s6a6dJNOAfmOcREK5cqNCBk1gocGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HQZoUPdEtsiUpNAx+bVS7cNzlcIveB4QjuafgnUvWRk=;
 b=j80nvRxDcUGciSo46EQxupbTCmRORaR7QJumo45VLjlLnEpMKhxdiCdIqfRsCkUcJgiGM68YcSvdOLTRdcrHkCgLkZg/wb5LfRxWpgV/f/NJn6fKwpmzhPdU9vKqGpSGJ7o3Kg/diBkP8IUnYgGtlF6ZqlWFM4mIUqr0GlParIY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5105.eurprd04.prod.outlook.com (52.134.89.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Thu, 19 Sep 2019 05:36:56 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2263.023; Thu, 19 Sep 2019
 05:36:56 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Andre Przywara
 <andre.przywara@arm.com>
Subject: RE: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVbHNdulW1qSzh8kulKbzCOfhGf6cwJKgAgAECNoCAABASgIAAOwuAgAENcaA=
Date: Thu, 19 Sep 2019 05:36:56 +0000
Message-ID: <AM0PR04MB4481AC40243BFFF45CFD6E7988890@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-3-git-send-email-peng.fan@nxp.com>
 <20190917183856.2342beed@donnerap.cambridge.arm.com>
 <AM0PR04MB44813D62FF7E6762BB17460E888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20190918110037.4edefb2f@donnerap.cambridge.arm.com>
 <CABb+yY2G8s9gV8Pu+f__8-bubjCJsVQrQikbVMZXmpTwSMBxiQ@mail.gmail.com>
In-Reply-To: <CABb+yY2G8s9gV8Pu+f__8-bubjCJsVQrQikbVMZXmpTwSMBxiQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc42f6cb-0614-483f-4fd8-08d73cc3626c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB5105; 
x-ms-traffictypediagnostic: AM0PR04MB5105:|AM0PR04MB5105:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5105680853FDC7211AAF46E488890@AM0PR04MB5105.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(396003)(136003)(376002)(39860400002)(189003)(199004)(14454004)(33656002)(102836004)(81156014)(9686003)(6436002)(2906002)(110136005)(6246003)(54906003)(14444005)(486006)(44832011)(229853002)(99286004)(66066001)(256004)(55016002)(6506007)(26005)(66446008)(76176011)(76116006)(71200400001)(305945005)(15650500001)(53546011)(11346002)(86362001)(64756008)(446003)(316002)(5660300002)(476003)(71190400001)(66946007)(66556008)(52536014)(7696005)(186003)(478600001)(66476007)(7736002)(25786009)(74316002)(8936002)(6116002)(8676002)(4326008)(3846002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5105;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mCqkHOP0QRQb5th+Al78KNQtIbF1GaKwoyYY/y+j0JpFaDhuWaRm6V1uVert4Lu+1UeX877xoDLabT38hZbEegCDPwbuspc4xDpjUbqGVdadMI7uhk3PgM9F5nG+b0rD2SFq2mk7AVLo4Gs+IEUPvCq2XvXxQFVvHyjvchoEYNWzea+v+dIJ/YfY+Kf7JKx4UhB4hSYdJg2UTj/UrjgKvmweqsabUIR/9HvrCAX8cq8MtqQaaNAS2AzN9iRgPHdzTU0tRoNZ5QcxW3K+t60k59Z6xJQLsXTPU/tKSwVSWUGJMT9pkkk0NNwdBIJFgaRVbcr4I57OAxcPjQFKNTkJMkZBvqes4T3AYf2dmP7P/yK8YULnAexsG9SRFdhfsISRoEZkNs47dplIRBH3jfd4WsVTrvC4FSON4xFO0jmDMN8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc42f6cb-0614-483f-4fd8-08d73cc3626c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 05:36:56.2859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BSx4FrzlzJAdR/D/QH2t3Ws1dP2RWzy4CYQP8hRYrO6BeDyFz0hIDYb69y5ZGeeqzZhnCKG94KBCmsLnKJ/Jqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_223659_333590_DE7AAC34 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jassi,

> Subject: Re: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
> 
> On Wed, Sep 18, 2019 at 5:00 AM Andre Przywara
> <andre.przywara@arm.com> wrote:
> 
> > >
> > > >
> > > > > + };
> > > > > +};
> > > >
> > > > If this is the data structure that this mailbox controller uses, I
> > > > would expect this to be documented somewhere, or even exported.
> > >
> > > Export this structure in include/linux/mailbox/smc-mailbox.h?
> >
> > For instance, even though I am not sure this is really desired or helpful, since
> we expect a generic mailbox client (the SCPI or SCMI driver) to deal with that
> mailbox.
> >
> > But at least the expected format should be documented, which could just be
> in writing, not necessarily in code.
> >
> Yes, the packet format is specified by the controller and defined in some
> header for clients to include. Other platforms do that already.

So you prefer add the structure in include/linux/mailbox/smc-mailbox.h?

Thanks,
Peng.

> 
> 
> 
> > > > > +
> > > > > +typedef unsigned long (smc_mbox_fn)(unsigned int, unsigned long,
> > > > > +                             unsigned long, unsigned long,
> > > > > +                             unsigned long, unsigned long,
> > > > > +                             unsigned long); static
> smc_mbox_fn
> > > > > +*invoke_smc_mbox_fn;
> > > > > +
> > > > > +static int arm_smc_send_data(struct mbox_chan *link, void
> > > > > +*data) {  struct arm_smc_chan_data *chan_data = link->con_priv;
> > > > > +struct arm_smccc_mbox_cmd *cmd = data;  unsigned long ret;
> > > > > + u32 function_id;
> > > > > +
> > > > > + function_id = chan_data->function_id; if (!function_id)
> > > > > +         function_id = cmd->function_id;
> > > > > +
> > > > > + if (function_id & BIT(30)) {
> > > >
> > > >     if (ARM_SMCCC_IS_64(function_id)) {
> > >
> > > ok
> > >
> > > >
> > > > > +         ret = invoke_smc_mbox_fn(function_id,
> cmd->args_smccc64[0],
> > > > > +                                  cmd->args_smccc64[1],
> > > > > +                                  cmd->args_smccc64[2],
> > > > > +                                  cmd->args_smccc64[3],
> > > > > +                                  cmd->args_smccc64[4],
> > > > > +                                  cmd->args_smccc64[5]); }
> else
> > > > > + {
> > > > > +         ret = invoke_smc_mbox_fn(function_id,
> cmd->args_smccc32[0],
> > > > > +                                  cmd->args_smccc32[1],
> > > > > +                                  cmd->args_smccc32[2],
> > > > > +                                  cmd->args_smccc32[3],
> > > > > +                                  cmd->args_smccc32[4],
> > > > > +                                  cmd->args_smccc32[5]); }
> > > > > +
> > > > > + mbox_chan_received_data(link, (void *)ret);
> > > > > +
> > > > > + return 0;
> > > > > +}
> > > > > +
> > > > > +static unsigned long __invoke_fn_hvc(unsigned int function_id,
> > > > > +                              unsigned long arg0, unsigned
> long arg1,
> > > > > +                              unsigned long arg2, unsigned
> long arg3,
> > > > > +                              unsigned long arg4, unsigned
> long
> > > > > +arg5) {  struct arm_smccc_res res;
> > > > > +
> > > > > + arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4,
> > > > > +               arg5, 0, &res);
> > > > > + return res.a0;
> > > > > +}
> > > > > +
> > > > > +static unsigned long __invoke_fn_smc(unsigned int function_id,
> > > > > +                              unsigned long arg0, unsigned
> long arg1,
> > > > > +                              unsigned long arg2, unsigned
> long arg3,
> > > > > +                              unsigned long arg4, unsigned
> long
> > > > > +arg5) {  struct arm_smccc_res res;
> > > > > +
> > > > > + arm_smccc_smc(function_id, arg0, arg1, arg2, arg3, arg4,
> > > > > +               arg5, 0, &res);
> > > > > + return res.a0;
> > > > > +}
> > > > > +
> > > > > +static const struct mbox_chan_ops arm_smc_mbox_chan_ops = {
> > > > > + .send_data      = arm_smc_send_data,
> > > > > +};
> > > > > +
> > > > > +static int arm_smc_mbox_probe(struct platform_device *pdev) {
> > > > > +struct device *dev = &pdev->dev;  struct mbox_controller *mbox;
> > > > > +struct arm_smc_chan_data *chan_data;  int ret;
> > > > > + u32 function_id = 0;
> > > > > +
> > > > > + if (of_device_is_compatible(dev->of_node, "arm,smc-mbox"))
> > > > > +         invoke_smc_mbox_fn = __invoke_fn_smc; else
> > > > > +         invoke_smc_mbox_fn = __invoke_fn_hvc;
> > > > > +
> > > > > + mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL); if
> > > > > + (!mbox)
> > > > > +         return -ENOMEM;
> > > > > +
> > > > > + mbox->num_chans = 1;
> > > > > + mbox->chans = devm_kzalloc(dev, sizeof(*mbox->chans),
> > > > > + mbox->GFP_KERNEL);
> > > > > + if (!mbox->chans)
> > > > > +         return -ENOMEM;
> > > > > +
> > > > > + chan_data = devm_kzalloc(dev, sizeof(*chan_data), GFP_KERNEL);
> > > > > + if (!chan_data)
> > > > > +         return -ENOMEM;
> > > > > +
> > > > > + of_property_read_u32(dev->of_node, "arm,func-id",
> > > > > + &function_id); chan_data->function_id = function_id;
> > > > > +
> > > > > + mbox->chans->con_priv = chan_data;
> > > > > +
> > > > > + mbox->txdone_poll = false;
> > > > > + mbox->txdone_irq = false;
> > > >
> > > > Don't we need to provide something to confirm reception to the
> > > > client? In our case we can set this as soon as the smc/hvc returns.
> > >
> > > As smc/hvc returns, it means the transfer is over and receive is done.
> >
> > I understand that, but was wondering if the Linux mailbox framework knows
> about that? In my older version I was calling mbox_chan_received_data()
> after the smc call returned.
> >
> The code already does that at the end of  send_data
> 
> > Also there is mbox_chan_txdone() with which a controller driver can signal
> TX completion explicitly.
> >
> No. Controller can use that only if it has specified txdone_irq, which is not the
> case here.
> 
> Thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
