Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AD11C52B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 10:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87IlyidR7yaf+Frre0BEeYyQGYg0lobfZy2OS6aeAL0=; b=ILJAqbOczdyQHK
	bsBLjXcQR4OiK6B96tMeMbyV/zA+iRV4p/gesJksAOsOK9XUuNUNYKqbI1263mzAOCLHMk4CuSlbQ
	jXd4bFHfRpI5TP7LXthr8MfJMRlHMQhnSfUtpjhfu8M7POXGkMk4R0xabGJnvwTv0jwtwDCES4GO1
	O7ja/zwMw8r2LINGw9OAIq3zyzrqtcWNml5rnmk5YDZueQZb0/+grXh636KMicbMS/7zWkf4CRy/p
	yq9C2UC50TTWPrfI73eRsttcJ0W8B2xZrTBr8rxnhSAJvWBJmCsqg/yD+U4yda3EKVLp2S61Rm+fc
	ycqwK4MrLxklgEg37O+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQT4Y-0007eW-O1; Tue, 14 May 2019 08:46:06 +0000
Received: from mail-eopbgr30046.outbound.protection.outlook.com ([40.107.3.46]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQT4R-0007e5-1k
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 08:46:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nnx3HLvpY+SYB1SFaSAsRKBv07rHpXbxw/n8NpTlID8=;
 b=fRSStEGRO0iWliTG/nTCtSUitYOl3P9Ca1R9bakPCWT/7W0TMJA+/jXC0Nx811BWsoaKqj94i+u5mQahs9SivPvQHhkSl8/qUC2vgVC8Trgbfsf3VtjG/iePMYjpIO43h3NpqOOZ4YDiGlTKumH8xA7L05DqDHE6dh6DGzwi0ME=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3867.eurprd04.prod.outlook.com (52.134.65.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Tue, 14 May 2019 08:45:55 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Tue, 14 May 2019
 08:45:55 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: RE: [PATCH RESEND 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH RESEND 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVCTfaYqtO/eSQ1UCSJJ4U0eiBlKZpHh8AgACXn+CAAJi7gIAAActg
Date: Tue, 14 May 2019 08:45:55 +0000
Message-ID: <DB3PR0402MB39162FD34C212598380B530CF5080@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557716049-22744-1-git-send-email-Anson.Huang@nxp.com>
 <CAEnQRZDSTuUMrc9AC1S2zfo0PdQ-v35GmNrf70Zoasid_XMJzw@mail.gmail.com>
 <DB3PR0402MB3916A46BFFE5E6F3D4832A33F50F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZB0fs2g=h4pq97t+E9U9LOxSafYhx07Xia_J+snjqefEw@mail.gmail.com>
In-Reply-To: <CAEnQRZB0fs2g=h4pq97t+E9U9LOxSafYhx07Xia_J+snjqefEw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.18.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a4aa5c0-460e-42d7-df51-08d6d848946c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3867; 
x-ms-traffictypediagnostic: DB3PR0402MB3867:
x-microsoft-antispam-prvs: <DB3PR0402MB38676002DD267965F806EEE4F5080@DB3PR0402MB3867.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:293;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(366004)(39860400002)(136003)(199004)(189003)(13464003)(54906003)(99286004)(316002)(6916009)(25786009)(81166006)(81156014)(4326008)(8676002)(8936002)(55016002)(71190400001)(71200400001)(66066001)(52536014)(33656002)(68736007)(5660300002)(53936002)(229853002)(66446008)(76116006)(6436002)(66556008)(66476007)(66946007)(256004)(478600001)(53546011)(7736002)(14454004)(74316002)(9686003)(6506007)(26005)(305945005)(186003)(102836004)(44832011)(2906002)(6116002)(11346002)(3846002)(76176011)(7696005)(7416002)(6246003)(486006)(476003)(64756008)(86362001)(73956011)(446003)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3867;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /5BwR22dF8296OduRE6hP/+AcfSiD0DxDhcyzXLmhvN72Jhut72sum760PzANEeeBaL5NU8sYoe1BrjUpTeV81tMzRGuVzCsKYJA13CX2ctCrCse4Fiu625lnMcR6VGTTAD05DYxo3dZ1E4medwgtUX4flx6/4G+PGEwGu94TcxRZnZU1+u+K47EHknkvsocXlCQOCf8M5JBIUjqIApE/QfKOjNwxdkuDGqoYOF2FyiWZFLLai5HF3aNENSqB5Vr12ZnwTgCd7KKCQasyMl33mqT4FNR24ROUJdrC7c8rDB+yhaR+Ag85fe4yhIZ7z8q/x6jjlZgLBafR++BrakIYMK6BS6Dtt+fmvzIsoTOvH+Ilr8k0Ez5AaOcvpV5/LlEp8CessTeas65WB9QeLXXgTGh1IuoYT/vUTAvFNRQo5k=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a4aa5c0-460e-42d7-df51-08d6d848946c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 08:45:55.7230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_014559_167737_2583945B 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.46 listed in list.dnswl.org]
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



> -----Original Message-----
> From: Daniel Baluta [mailto:daniel.baluta@gmail.com]
> Sent: Tuesday, May 14, 2019 4:39 PM
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
> On Tue, May 14, 2019 at 2:34 AM Anson Huang <anson.huang@nxp.com>
> wrote:
> >
> > Hi, Daniel
> >
> > > -----Original Message-----
> > > From: Daniel Baluta [mailto:daniel.baluta@gmail.com]
> > > Sent: Monday, May 13, 2019 10:30 PM
> > > To: Anson Huang <anson.huang@nxp.com>
> > > Cc: catalin.marinas@arm.com; will.deacon@arm.com;
> > > shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de;
> > > festevam@gmail.com; maxime.ripard@bootlin.com; agross@kernel.org;
> > > olof@lixom.net; horms+renesas@verge.net.au;
> > > jagan@amarulasolutions.com; bjorn.andersson@linaro.org; Leonard
> > > Crestez <leonard.crestez@nxp.com>; marc.w.gonzalez@free.fr;
> > > dinguyen@kernel.org; enric.balletbo@collabora.com; Aisheng Dong
> > > <aisheng.dong@nxp.com>; robh@kernel.org; Abel Vesa
> > > <abel.vesa@nxp.com>; l.stach@pengutronix.de; linux-arm-
> > > kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> > > dl-linux-imx <linux-imx@nxp.com>; Daniel Baluta
> > > <daniel.baluta@nxp.com>
> > > Subject: Re: [PATCH RESEND 1/2] soc: imx: Add SCU SoC info driver
> > > support
> > >
> > > <snip>
> > >
> > > > +
> > > > +static u32 imx8qxp_soc_revision(void) {
> > > > +       struct imx_sc_msg_misc_get_soc_id msg;
> > > > +       struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > > > +       u32 rev = 0;
> > > > +       int ret;
> > > > +
> > > > +       hdr->ver = IMX_SC_RPC_VERSION;
> > > > +       hdr->svc = IMX_SC_RPC_SVC_MISC;
> > > > +       hdr->func = IMX_SC_MISC_FUNC_GET_CONTROL;
> > > > +       hdr->size = 3;
> > > > +
> > > > +       msg.data.send.control = IMX_SC_C_ID;
> > > > +       msg.data.send.resource = IMX_SC_R_SYSTEM;
> > > > +
> > > > +       ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> > > > +       if (ret) {
> > > > +               dev_err(&imx_scu_soc_pdev->dev,
> > > > +                       "get soc info failed, ret %d\n", ret);
> > > > +               return rev;
> > >
> > > So you return 0 (rev  = 0) here in case of error? This doesn't seem to be
> right.
> > > Maybe return ret?
> >
> > This is intentional, similar with current i.MX8MQ soc info driver,
> > when getting revision failed, just return 0 as revision info and it will show
> "unknown" in sysfs.
> 
> Ok, I understand. Lets make this clear from the source code.
> 
>    ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> +       if (ret) {
> +               dev_err(&imx_scu_soc_pdev->dev,
> +                       "get soc info failed, ret %d\n", ret);
>                 /* returning 0 means getting revision failed */
> +               return 0;
> +       }

OK, will add a comment in V2.

Anson.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
