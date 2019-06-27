Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9487257C81
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UEo89Qpc94KEHd78AWcd8z1k52wIOows1samVSM5KkA=; b=rzQDncrppndBWu
	pfZ3/KU0phTpMtIRXdVSgihsZ3jEql0w+iR/HJiFxZze+U8v6U/WF2doaAFd7zKIrD6YM3NyO1ghO
	G5cgiRzD7bgWJyo9xcwjuWJdwLbya0UMnr3mjDrGOks3YOg9J/nye1MxZDcFMG5TrGx3hCNuoKcta
	Amd/2hyCVGabL6wZ0OwvfeNJlWz/3mMXkq0mC+U3KQhgsGidb7LW3LaLEyf2f/gkT5Pn+oCQGuNau
	fbOkHg2jZH0NYsuVISUaZYDrMQLvtVRcj/99beUsccdFzKQRI5psMhTgONlOIeMj8yWIBXaqoHj68
	oBCXN9LeGujCUvnM0A2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOH7-0007i1-Q1; Thu, 27 Jun 2019 06:52:53 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8j-0006KM-4t
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QwmSDdNmX4wepY6JoJZmubKfzNFEHYtW6KdWw5XpZ6g=; b=SKDnScUnfvB8wd1Kz6RxcoTnkV
 AT+Xppkh2yvWbQVVfJX+/j50X6ykumfyieMjPKZhdl7EqP9lXosEYWU7TvRQj/3ruJwBiG74SjXc/
 EWfJHKBIk9R66BfC8C2OuwsNfZGZCoxwMFWoz9TgGdrPtQ6XINORRsVGY7zN3AQdfdwGAFMVEhFCL
 /RTi3OJ7PsCA8cjmBIuPhiZ3BhbIYkK5F05uK37jWIeFdKl0tQ7XrgER4zpwYVoev9H5xmHAJfOl+
 30seARlvNPUWNpQAeTHmtWu2wnqJePGSYRCIdTnRmwrcXsG+KWaHbT/A0QWnaXvzLC6DqJztVGG9N
 L8g7QaEQ==;
Received: from mail-eopbgr60060.outbound.protection.outlook.com ([40.107.6.60]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIau-0004al-A1
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 00:48:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QwmSDdNmX4wepY6JoJZmubKfzNFEHYtW6KdWw5XpZ6g=;
 b=iatkcrjvttC+FJ/lHgHFOKaNyuXtSMoAJtaR8eD8REcUld2TVa8xmnf1Ss4BcKPExQZMBKaKi4Odo3DbyIAwBX5KwSmTTtk3XamNChO2mLBoSDSGiuG92IOtAfJBG05fbqa/X1Jl8P9qGDf/5IGvRLRfd6DdVOvo/XFXptdCGDU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3914.eurprd04.prod.outlook.com (52.134.71.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Thu, 27 Jun 2019 00:48:22 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Thu, 27 Jun 2019
 00:48:22 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: RE: [PATCH] soc: imx-scu: Add SoC UID(unique identifier) support
Thread-Topic: [PATCH] soc: imx-scu: Add SoC UID(unique identifier) support
Thread-Index: AQHVK+2BIBe0XayoFkyLTDr8gJYgQqat4TYAgADJtNA=
Date: Thu, 27 Jun 2019 00:48:22 +0000
Message-ID: <DB3PR0402MB3916A4093CFB363B51523AA7F5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190626070706.24930-1-Anson.Huang@nxp.com>
 <CAEnQRZBsT=KY3-Gk8p1byJOqx1_y_EX-KqiBs6WnroWkT5oe_Q@mail.gmail.com>
In-Reply-To: <CAEnQRZBsT=KY3-Gk8p1byJOqx1_y_EX-KqiBs6WnroWkT5oe_Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a8cc862-0c94-4c60-f182-08d6fa992817
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3914; 
x-ms-traffictypediagnostic: DB3PR0402MB3914:
x-microsoft-antispam-prvs: <DB3PR0402MB3914CFCD446B0A6BBCD7E3C4F5FD0@DB3PR0402MB3914.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(396003)(39860400002)(376002)(346002)(13464003)(199004)(189003)(52536014)(7696005)(71200400001)(5660300002)(66556008)(4326008)(76176011)(64756008)(53546011)(53936002)(73956011)(66446008)(55016002)(6436002)(14454004)(68736007)(229853002)(26005)(6506007)(66946007)(25786009)(7736002)(6246003)(66476007)(9686003)(74316002)(305945005)(99286004)(102836004)(478600001)(76116006)(66066001)(2906002)(6116002)(54906003)(8936002)(6916009)(86362001)(11346002)(8676002)(186003)(33656002)(486006)(316002)(44832011)(81166006)(446003)(71190400001)(476003)(81156014)(3846002)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3914;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 04gtP1sBHQqE6AzyJYO0unrSzbtefpGomM9Sb6JbNE7hd8r/xHMbDfipF8L7yfaNT1DnwRwVigU0o076xYGUOw529QXlZjrfZxUIrAIW1GwQJKfG0SI4hZlwqh3tQ6itohk8ZnprfuvrttPDWuieW9R+nRZ7nHrTgr5fbntNiQdYVCnWFIfa2oSD/mCmiDyh87e33Jqhx3L6Bloo1POBWeB6eHijz/ElDZBY+UD20F/NtIjn8OqQ/Dz5+Cm2qrKPmh8AxDOedT5fWyBHSMXx/lxsxdrQn5BbCsVU+nhbjdDBNNLpdJGhEMub+HUhGajDmcKCQaSXaa6DOUrbzH/MQBk3Uqi2W11HYcu70kOax1BuGBDtnLMB5tCYfQFBMsuy+939iz6Miok5bRFhUZZsBBzQbCeJz+9HTszhOrLw0Sg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a8cc862-0c94-4c60-f182-08d6fa992817
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 00:48:22.7742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3914
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.60 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> -----Original Message-----
> From: Daniel Baluta <daniel.baluta@gmail.com>
> Sent: Wednesday, June 26, 2019 8:42 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: Shawn Guo <shawnguo@kernel.org>; Sascha Hauer
> <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>; Aisheng
> Dong <aisheng.dong@nxp.com>; Abel Vesa <abel.vesa@nxp.com>; linux-
> arm-kernel <linux-arm-kernel@lists.infradead.org>; Linux Kernel Mailing List
> <linux-kernel@vger.kernel.org>; dl-linux-imx <linux-imx@nxp.com>; Daniel
> Baluta <daniel.baluta@nxp.com>
> Subject: Re: [PATCH] soc: imx-scu: Add SoC UID(unique identifier) support
> 
> On Wed, Jun 26, 2019 at 10:06 AM <Anson.Huang@nxp.com> wrote:
> >
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Add i.MX SCU SoC's UID(unique identifier) support, user can read it
> > from sysfs:
> >
> > root@imx8qxpmek:~# cat /sys/devices/soc0/soc_uid
> > 7B64280B57AC1898
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/soc/imx/soc-imx-scu.c | 35
> > +++++++++++++++++++++++++++++++++++
> >  1 file changed, 35 insertions(+)
> >
> > diff --git a/drivers/soc/imx/soc-imx-scu.c
> > b/drivers/soc/imx/soc-imx-scu.c index 676f612..8d322a1 100644
> > --- a/drivers/soc/imx/soc-imx-scu.c
> > +++ b/drivers/soc/imx/soc-imx-scu.c
> > @@ -27,6 +27,36 @@ struct imx_sc_msg_misc_get_soc_id {
> >         } data;
> >  } __packed;
> >
> > +struct imx_sc_msg_misc_get_soc_uid {
> > +       struct imx_sc_rpc_msg hdr;
> > +       u32 uid_low;
> > +       u32 uid_high;
> > +} __packed;
> > +
> > +static ssize_t soc_uid_show(struct device *dev,
> > +                           struct device_attribute *attr, char *buf)
> > +{
> > +       struct imx_sc_msg_misc_get_soc_uid msg;
> > +       struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > +       u64 soc_uid;
> > +
> > +       hdr->ver = IMX_SC_RPC_VERSION;
> > +       hdr->svc = IMX_SC_RPC_SVC_MISC;
> > +       hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> > +       hdr->size = 1;
> > +
> > +       /* the return value of SCU FW is in correct, skip return value
> > + check */
> 
> Why do you mean by "in correct"?

I made a mistake, it should be "incorrect", the existing SCFW of this API returns
an error value even this API is successfully called, to make it work with current
SCFW, I have to skip the return value check for this API for now. Will send V2 patch
to fix this typo.

> > +       imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> > +
> > +       soc_uid = msg.uid_high;
> > +       soc_uid <<= 32;
> > +       soc_uid |= msg.uid_low;
> > +
> > +       return sprintf(buf, "%016llX\n", soc_uid);
> 
> snprintf?

The snprintf is to avoid buffer overflow, which in this case, I don't know the size
of "buf", and the value(u64) to be printed is with fixed length of 64, so I think
sprint is just OK.

Anson.
> 
> > +}
> > +
> > +static DEVICE_ATTR_RO(soc_uid);
> > +
> >  static int imx_scu_soc_id(void)
> >  {
> >         struct imx_sc_msg_misc_get_soc_id msg; @@ -102,6 +132,11 @@
> > static int imx_scu_soc_probe(struct platform_device *pdev)
> >                 goto free_revision;
> >         }
> >
> > +       ret = device_create_file(soc_device_to_device(soc_dev),
> > +                                &dev_attr_soc_uid);
> > +       if (ret)
> > +               goto free_revision;
> > +
> >         return 0;
> >
> >  free_revision:
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
