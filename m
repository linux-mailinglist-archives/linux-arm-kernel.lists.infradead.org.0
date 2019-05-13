Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542E21BFD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 01:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D2LQ7e37hzNLSEThuxqfIKT6uh2qo7Zl6FMEA3CCwH4=; b=Vhs1wL7DvD2cdn
	1yYN9uVS4DEh7dw9NvPr+qdR+zpRtQmROhn+MUWv9aFkSbY+5W+aG94LMPTuJrmdMrzzZ6+Yg6iG/
	GZ0FQXJO8jO00gszDjCx1O4vxrRgNEC8vePbUkNECB0hojpraz2L7WBgvoVhqmn7w2bbCPnSG0f34
	N2ajHgf3Bk4mTaoqhkTdc0ErQECC0qCHGTXbFRPYzqujsVcUeEKlSb56k4xhXHnuVy1wWO0+QfQ3U
	XkcqTHGYCxIB81xDNn7F7XKHIby+X3B+lr/3i7WJdFJtEtUin0DbMxc5JemDMwduvIyhtT8sF6SIX
	S0OAreXiMZ9BKWQ4BK5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQKSf-0006bD-V0; Mon, 13 May 2019 23:34:25 +0000
Received: from mail-eopbgr30083.outbound.protection.outlook.com ([40.107.3.83]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQKSX-0006an-Vn
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 23:34:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ivm63irdRJqw1B0UFl9vceTxhPPPFVUSmI9sdgJODZE=;
 b=QW39YRQIIjZw9+k+JSfb4nHP29JZCdAVp/VObEKKqL194N/UMbojPo2CawhknuDyB5XkWCEtI6EmYwriguZQDEHBUfjDgfI3IqidX1FLH2RW69Rs2fJTqN+7HjpFHxhrOy1o97VaR4ZWGDveGqu7glf917AXw3UxKqTzTl4+arU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3835.eurprd04.prod.outlook.com (52.134.65.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Mon, 13 May 2019 23:34:13 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Mon, 13 May 2019
 23:34:13 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: RE: [PATCH RESEND 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH RESEND 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVCTfaYqtO/eSQ1UCSJJ4U0eiBlKZpHh8AgACXn+A=
Date: Mon, 13 May 2019 23:34:12 +0000
Message-ID: <DB3PR0402MB3916A46BFFE5E6F3D4832A33F50F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557716049-22744-1-git-send-email-Anson.Huang@nxp.com>
 <CAEnQRZDSTuUMrc9AC1S2zfo0PdQ-v35GmNrf70Zoasid_XMJzw@mail.gmail.com>
In-Reply-To: <CAEnQRZDSTuUMrc9AC1S2zfo0PdQ-v35GmNrf70Zoasid_XMJzw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1aa44f39-9874-46b3-46e1-08d6d7fb8196
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3835; 
x-ms-traffictypediagnostic: DB3PR0402MB3835:
x-microsoft-antispam-prvs: <DB3PR0402MB3835373BD12968D5CC89C398F50F0@DB3PR0402MB3835.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(346002)(376002)(366004)(396003)(13464003)(199004)(189003)(7736002)(52536014)(71190400001)(81156014)(71200400001)(74316002)(6246003)(5660300002)(14454004)(44832011)(6506007)(53546011)(6116002)(3846002)(102836004)(256004)(8936002)(478600001)(8676002)(86362001)(76176011)(4326008)(7696005)(25786009)(33656002)(66066001)(6436002)(186003)(9686003)(55016002)(99286004)(305945005)(2906002)(6916009)(26005)(486006)(54906003)(11346002)(446003)(476003)(81166006)(66446008)(64756008)(66556008)(66476007)(73956011)(76116006)(53936002)(229853002)(66946007)(316002)(7416002)(68736007)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3835;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YmSGZMdPXcAhbVm2Jbf/Rt0BD0lgzXpkgmYMGuZ0ssf3ZCRRxNbZs4VNkcA0FxQbpgpNpUAoFXbmUmGNjVb53FFz6PlmOFP8hV88Su1QAme/mXpo4Df97ucqYLH8SY2h36TmzStcmAzVv27sC+QVRVwlCwL4TM3fd2a+UCspj08DYNV0L6CMoJUFEp0dzlRb5bvzjSqgTpDT9dt+FMOpqXMX3YRGYBmvfNyWBxVsa/BA8oJSCnrQlduVc7p9yDiTqhcOB1Eombc4VZts2rQA6hOy+1fLeaAlNpc/EAW8I8zeyrVibETpEFTD8EEoUrY0Q424PIB8W/CyTHUwNgVL8ljW6kDXowpd1xlVjY76jyeJkzwNGtlfvelV0hFqtnqf+uPA41Lgf2vfGjafB3gMKOcvov7+voij9KxfBQnpiGA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aa44f39-9874-46b3-46e1-08d6d7fb8196
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 23:34:12.7924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3835
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_163418_126135_6ADBF067 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh@kernel.org" <robh@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel

> -----Original Message-----
> From: Daniel Baluta [mailto:daniel.baluta@gmail.com]
> Sent: Monday, May 13, 2019 10:30 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: catalin.marinas@arm.com; will.deacon@arm.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; maxime.ripard@bootlin.com; agross@kernel.org;
> olof@lixom.net; horms+renesas@verge.net.au;
> jagan@amarulasolutions.com; bjorn.andersson@linaro.org; Leonard Crestez
> <leonard.crestez@nxp.com>; marc.w.gonzalez@free.fr;
> dinguyen@kernel.org; enric.balletbo@collabora.com; Aisheng Dong
> <aisheng.dong@nxp.com>; robh@kernel.org; Abel Vesa
> <abel.vesa@nxp.com>; l.stach@pengutronix.de; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-imx
> <linux-imx@nxp.com>; Daniel Baluta <daniel.baluta@nxp.com>
> Subject: Re: [PATCH RESEND 1/2] soc: imx: Add SCU SoC info driver support
> 
> <snip>
> 
> > +
> > +static u32 imx8qxp_soc_revision(void) {
> > +       struct imx_sc_msg_misc_get_soc_id msg;
> > +       struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > +       u32 rev = 0;
> > +       int ret;
> > +
> > +       hdr->ver = IMX_SC_RPC_VERSION;
> > +       hdr->svc = IMX_SC_RPC_SVC_MISC;
> > +       hdr->func = IMX_SC_MISC_FUNC_GET_CONTROL;
> > +       hdr->size = 3;
> > +
> > +       msg.data.send.control = IMX_SC_C_ID;
> > +       msg.data.send.resource = IMX_SC_R_SYSTEM;
> > +
> > +       ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> > +       if (ret) {
> > +               dev_err(&imx_scu_soc_pdev->dev,
> > +                       "get soc info failed, ret %d\n", ret);
> > +               return rev;
> 
> So you return 0 (rev  = 0) here in case of error? This doesn't seem to be right.
> Maybe return ret?

This is intentional, similar with current i.MX8MQ soc info driver, when getting revision
failed, just return 0 as revision info and it will show "unknown" in sysfs.

Thanks,
Anson.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
