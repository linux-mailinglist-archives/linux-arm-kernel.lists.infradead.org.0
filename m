Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F6D1658A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 08:46:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBIfvnNZQMTZB4XyM0xOcC+MlQdBywEECy7NhW0TG/k=; b=IKDhdufemX+5Wg
	s63AKk8z+UhMt248cB56YtYLxXieZIafLp9BJ/kRRSteyZah2il3+nMR4x2eanXoB8inC68osHGVD
	DX02QYtXI/XD0AYElpiBIaZ5CR96bAblYkSsrxGtLJghs2wjz7mU40WL4rwDekXNHSo28WisBORWF
	QN69nj7uHEgEI71UYlOGyJ/PDJ8SeXSAYuuBTFgLdzIAeqrfLwgm1wjcBEHVA20SYQfh6ymzOhwRT
	mbQgcEC3oIOMsRuTucPueAB5R1/IE42aMi/sVQlWA882wkSkCD2TIpV/lSyCz1y04sfJO/mYmt1a5
	5cgBGEAH/v+I0cZFNB5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4gXT-00024D-Lv; Thu, 20 Feb 2020 07:46:27 +0000
Received: from mail-am6eur05on2088.outbound.protection.outlook.com
 ([40.107.22.88] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4gXL-00023J-2D
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 07:46:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k/6N2MShVlhVaLXrmVEQUY6Hi6lY+TYY/41BOCwZ3bO8+9Js+/T96LNBd0ODOZMLLOO/c6QInvaWPree33kCsa4FrAZ37XkXKtINXT/QniMujDT4Byq8yD+XDe0cT8rX2myxuCipjBtbiP31ea20r+GHHtnAHS/xgtI8shPggGGSXpiRYYhI9MB1KZeh0UWxtHtMWzal6HWCR63xzIbxBqXZpmF4ZtFZrl3TrrfohWUcTCS1qEUmfRmJLzLZTI1gSwkI3VyAACl1EFwBzWJJcXb18SJ8TRiTRP3FrKWbKorYLssmuj97i2wS83yA/va/lKQYwTn7xOvKUVg9qmn69g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=leREqLmgPqTFhzWCXfhPjWrK1kHBpcOgD1wqwIrvk1Y=;
 b=e+6iNch5r8ay5Nt6VRIGVXKDA1nwXErmqpXyz6IY/rdYle82eULN6DtTB5xnwm+bW8ydO8+2Ehrnd09/9LeSGfhe9XNu744fO5c9cx34sm8f6MLnQvOkJm3nynWJeFQHo7Hdk0BxjhewhxLRNgAYVMemGm1AfxKGsDQKjOg+VWaBmr1XrXlqs3Ymcm5cgcP8WN0JEpbZojuRj8TTcxm8cnGLLB+mMFg85pP2nITivItLRd0A4hE7gNP2iJ6hMcJ6HYLN1rwk7eijFX9PvvnM+eXfxaRBYVTcxhJw6jK4nIbYLj+sDHVOnWvI2AgkJDPwBbHn/YbQVNkkZKSukuUKQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=leREqLmgPqTFhzWCXfhPjWrK1kHBpcOgD1wqwIrvk1Y=;
 b=EUzR1pE7Hl73MA+9MdHsn7iY/uDR5ATc2GA2QoGLovbLtDyqk0UPV9LcgImUx+BZSjHl9341M/epXMul4MVAydHd2nsPDgrN+2779ZR1Y3ZSPRhHNuWE+EsU/4yDZa3KQRlOyiHEowxK2plrs0M9sifSh4RGfyjSbtsvgqz/Css=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5219.eurprd04.prod.outlook.com (20.177.42.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Thu, 20 Feb 2020 07:46:14 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.033; Thu, 20 Feb 2020
 07:46:14 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Daniel Baluta <daniel.baluta@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH V4 1/2] firmware: imx: add dummy functions
Thread-Topic: [PATCH V4 1/2] firmware: imx: add dummy functions
Thread-Index: AQHV57c69tAonJSx8UC66CYpr4wwt6gjs7AAgAAAUkA=
Date: Thu, 20 Feb 2020 07:46:13 +0000
Message-ID: <AM0PR04MB44817C5B222428272F48FE0088130@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582179843-14375-1-git-send-email-peng.fan@nxp.com>
 <1582179843-14375-2-git-send-email-peng.fan@nxp.com>
 <a5134838-53d4-97f0-d126-b94164871763@nxp.com>
In-Reply-To: <a5134838-53d4-97f0-d126-b94164871763@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: abecfbca-4728-4b65-d7ef-08d7b5d8f60f
x-ms-traffictypediagnostic: AM0PR04MB5219:|AM0PR04MB5219:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB52196A7CACC66B9FF5E1F75488130@AM0PR04MB5219.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(346002)(376002)(136003)(199004)(189003)(33656002)(26005)(6506007)(2906002)(5660300002)(76116006)(86362001)(44832011)(8936002)(53546011)(66946007)(66476007)(66556008)(64756008)(66446008)(186003)(52536014)(478600001)(9686003)(81156014)(55016002)(71200400001)(8676002)(81166006)(4326008)(316002)(54906003)(7696005)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5219;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H0Au8osANIaib63IU157mE1LEGeaNxy5yrivuMGS7B6LTgpmQ4GMuPnA105M3GLsTRAiM/IWvVNo0KvoGlOK6bU+TjYNL9zPZzEXtKkiOK/rY9O0tpAQCSB+dpjZ1x02gXr0M6b6BVt3HDYkwmq1tnnZSCB7r4vJlYHrNYhYNYhFW7kAjwTfWqSrpTSeat6CUp9jrsnTFmqftE0BihVya5iD44EyD0bHtK/M0n9V9+Cq9zEcTowEiyFxbdh2vWi/nNvEN1FCIJYZoVF5o45E0P8d23msheju3awL5r2MeiSyYANvUIiBIWwBPzwlFUzk50o9y5RTbtZM2eLJVAL9qglbSfId8mEpHVhRVj/TLc+M4TBJogIKQgPWXj8yH2IJZ3yvO3PUw/ubf3FHlvpmIYaNqj7j8mMPk9kPYmSKcvEk4lWSAcdW7DI8ZBAygMCM
x-ms-exchange-antispam-messagedata: H7NyWUjaEMVseKZA4RbZj3k4h5t1sG44aWhWPpyzIunx+VQAtvljss96DsUpQIcpi5VykFD9DoThUalhjWVAakbwQHUoE2jNQIlpSSYXyD+BkUqIXYXawrdq3Vr+YgwQpT0B1r1r9V9HEi6voIto1A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abecfbca-4728-4b65-d7ef-08d7b5d8f60f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2020 07:46:14.0032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SaM7jF8nwJ3hzcCYHPXdOU8SA+DrnkQpemk0Mi25IR2gPTx72X38faCjKeGcCVAyKCNbLDY3m+M3q/ozH/ahrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5219
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_234619_111959_13C8949F 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "daniel.baluta@gmail.com" <daniel.baluta@gmail.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: Re: [PATCH V4 1/2] firmware: imx: add dummy functions
> 
> On 20.02.2020 08:24, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > IMX_SCU_SOC could be enabled with COMPILE_TEST, however there is no
> > dummy functions when CONFIG_IMX_SCU not defined. Then there will be
> > build failure.
> >
> > So add dummy functions to avoid build failure for COMPILE_TEST
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >   include/linux/firmware/imx/ipc.h      | 13 +++++++++++++
> >   include/linux/firmware/imx/sci.h      | 22 ++++++++++++++++++++++
> >   include/linux/firmware/imx/svc/misc.h | 19 +++++++++++++++++++
> >   3 files changed, 54 insertions(+)
> >
> > diff --git a/include/linux/firmware/imx/ipc.h
> > b/include/linux/firmware/imx/ipc.h
> > index 6312c8cb084a..30475082f472 100644
> > --- a/include/linux/firmware/imx/ipc.h
> > +++ b/include/linux/firmware/imx/ipc.h
> > @@ -35,6 +35,7 @@ struct imx_sc_rpc_msg {
> >   	uint8_t func;
> >   };
> >
> > +#ifdef CONFIG_IMX_SCU
> >   /*
> >    * This is an function to send an RPC message over an IPC channel.
> >    * It is called by client-side SCFW API function shims.
> > @@ -56,4 +57,16 @@ int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void
> *msg, bool have_resp);
> >    * @return Returns an error code (0 = success, failed if < 0)
> >    */
> >   int imx_scu_get_handle(struct imx_sc_ipc **ipc);
> > +#else
> > +static inline int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void *msg,
> > +				   bool have_resp)
> > +{
> > +	return -ENOTSUPP;
> > +}
> > +
> > +static inline int imx_scu_get_handle(struct imx_sc_ipc **ipc) {
> > +	return -ENOTSUPP;
> > +}
> > +#endif
> >   #endif /* _SC_IPC_H */
> > diff --git a/include/linux/firmware/imx/sci.h
> > b/include/linux/firmware/imx/sci.h
> > index 17ba4e405129..7ea875b186e3 100644
> > --- a/include/linux/firmware/imx/sci.h
> > +++ b/include/linux/firmware/imx/sci.h
> > @@ -16,8 +16,30 @@
> >   #include <linux/firmware/imx/svc/misc.h>
> >   #include <linux/firmware/imx/svc/pm.h>
> >
> > +#ifdef CONFIG_IMX_SCU
> >   int imx_scu_enable_general_irq_channel(struct device *dev);
> >   int imx_scu_irq_register_notifier(struct notifier_block *nb);
> >   int imx_scu_irq_unregister_notifier(struct notifier_block *nb);
> >   int imx_scu_irq_group_enable(u8 group, u32 mask, u8 enable);
> > +#else
> > +static inline int imx_scu_enable_general_irq_channel(struct device
> > +*dev) {
> > +	return -ENOTSUPP;
> > +}
> > +
> > +static inline int imx_scu_irq_register_notifier(struct notifier_block
> > +*nb) {
> > +	return -ENOTSUPP;
> > +}
> > +
> > +static inline int imx_scu_irq_unregister_notifier(struct
> > +notifier_block *nb) {
> > +	return -ENOTSUPP;
> > +}
> > +
> > +static inline int imx_scu_irq_group_enable(u8 group, u32 mask, u8
> > +enable) {
> > +	return -ENOTSUPP;
> > +}
> > +#endif
> >   #endif /* _SC_SCI_H */
> > diff --git a/include/linux/firmware/imx/svc/misc.h
> > b/include/linux/firmware/imx/svc/misc.h
> > index 031dd4d3c766..3f4a0f526b73 100644
> > --- a/include/linux/firmware/imx/svc/misc.h
> > +++ b/include/linux/firmware/imx/svc/misc.h
> > @@ -46,6 +46,7 @@ enum imx_misc_func {
> >    * Control Functions
> >    */
> >
> > +#ifdef CONFIG_IMX_SCU
> >   int imx_sc_misc_set_control(struct imx_sc_ipc *ipc, u32 resource,
> >   			    u8 ctrl, u32 val);
> >
> > @@ -54,5 +55,23 @@ int imx_sc_misc_get_control(struct imx_sc_ipc *ipc,
> > u32 resource,
> >
> >   int imx_sc_pm_cpu_start(struct imx_sc_ipc *ipc, u32 resource,
> >   			bool enable, u64 phys_addr);
> > +#else
> Functions for dummy case below should be static inline.

Opps. Forgot to add these three.

Thanks,
Peng.

> > +int imx_sc_misc_set_control(struct imx_sc_ipc *ipc, u32 resource,
> > +			    u8 ctrl, u32 val)
> > +{
> > +	return -ENOTSUPP;
> > +}
> > +
> > +int imx_sc_misc_get_control(struct imx_sc_ipc *ipc, u32 resource,
> > +			    u8 ctrl, u32 *val)
> > +{
> > +	return -ENOTSUPP;
> > +}
> >
> > +int imx_sc_pm_cpu_start(struct imx_sc_ipc *ipc, u32 resource,
> > +			bool enable, u64 phys_addr)
> > +{
> > +	return -ENOTSUPP;
> > +}
> > +#endif
> >   #endif /* _SC_MISC_API_H */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
