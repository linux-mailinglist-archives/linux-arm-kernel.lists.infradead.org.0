Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904A057CA8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 09:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lHubFUqOfY/Au5QBhhvJO/JS5OMp0BTJCoXEWFWOo0=; b=N5M+rEQFAxaPS2
	YGU6upxJHrOYvfJ9ddYdC8whDySF4gcpCbSFEoPKpAdubrRrsZY7dBJmhy7zEmLxjuVo0Oye1UTEE
	cNdfPZDG0xngbw7893eO6f/bdAZ/ydYzqWK3Hc0Lb3v4K29iY1badulpOoFjkeplyT0fntG0lJkiW
	11ESWEEMhcpbOmSfMTbZxsl4yyRCv6qX6MunAJFd3QFimATDGBzDnFPjncMPboRk0T1RT6sIJxx1v
	nqMLcxg7GdjdhzqlsRkTwIF1gM6gClOphvkjYdhIJHXauGH1rjyaDknKVd9y5He4zmYcA+AyHaBZ5
	x61fMYuP39D0o0lmHdWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOQj-0005Uz-OJ; Thu, 27 Jun 2019 07:02:49 +0000
Received: from mail-ve1eur02on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::614]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgOPZ-0005Tu-Sp
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 07:01:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=AvbBldxWy4o7H/GULf5Haoz/FF0G2u58CKuv11LiDNTYM4Lo2OyiNU7F83fMrpK5dqOKetJowZyQEY7cfJXjJnyusNKqvHP50CrUWuE7pj7ahnFBFm/txY+Mf9yYxa5PddkBHJlw3pN7Pf+wQ6vytTqSF1r2ongM1Aa1ZRtcjoc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vzR6ag0Y9d3jrufjXi7kurctLagV/hCB7EIQNznRGRs=;
 b=WbqOi4BsTXYUjd3ZHNhHg6wDL2boQwgV8MxhudUYqt8JjBw2cgCk7Jl7cxycu/ikegx6GhSr/sn+dEci615LHXWrlAsM0BgPmJDG3ds6Ppa4IV1wy20lvuxRVQwidjZ5lOvytIj0B8BhQPSZ1kyBf8owUYPilozVNOl9jrvJ/ro=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vzR6ag0Y9d3jrufjXi7kurctLagV/hCB7EIQNznRGRs=;
 b=mlVIG4mEKaSfXJCqb95NXDO0y/B/CYFnSMpwejx3NMG7HT43h1Ahs/swxcHo6smv0deEp18zhd2Z3Py7AtdpxuJsj6jitnfUOPFmBMM/oRBMhlS4RlB25Dga2XBy/rzlijyXeXjFos7cNSh0dweCNlZjJ6a1eNFCTEH+KrTGNOk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3754.eurprd04.prod.outlook.com (52.134.67.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Thu, 27 Jun 2019 07:01:32 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2008.014; Thu, 27 Jun 2019
 07:01:32 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: RE: [PATCH] soc: imx-scu: Add SoC UID(unique identifier) support
Thread-Topic: [PATCH] soc: imx-scu: Add SoC UID(unique identifier) support
Thread-Index: AQHVK+2BIBe0XayoFkyLTDr8gJYgQqat4TYAgADJtNCAAGSDAIAABGlg
Date: Thu, 27 Jun 2019 07:01:31 +0000
Message-ID: <DB3PR0402MB3916DFE339C802871F18F9ABF5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190626070706.24930-1-Anson.Huang@nxp.com>
 <CAEnQRZBsT=KY3-Gk8p1byJOqx1_y_EX-KqiBs6WnroWkT5oe_Q@mail.gmail.com>
 <DB3PR0402MB3916A4093CFB363B51523AA7F5FD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZDzFBzgwugaK-CihQNaa=1SPPNsKm6QKOh9LqWACeFGTg@mail.gmail.com>
In-Reply-To: <CAEnQRZDzFBzgwugaK-CihQNaa=1SPPNsKm6QKOh9LqWACeFGTg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5483a03-efa1-4dfb-f38a-08d6facd490c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3754; 
x-ms-traffictypediagnostic: DB3PR0402MB3754:
x-microsoft-antispam-prvs: <DB3PR0402MB3754E86AB162A251B03C747EF5FD0@DB3PR0402MB3754.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(366004)(136003)(376002)(39860400002)(346002)(396003)(199004)(13464003)(189003)(3846002)(6436002)(81166006)(6506007)(64756008)(74316002)(186003)(7736002)(99286004)(68736007)(6116002)(102836004)(53546011)(305945005)(55016002)(6246003)(33656002)(4326008)(2906002)(66066001)(53936002)(8676002)(76176011)(9686003)(81156014)(8936002)(478600001)(7696005)(25786009)(316002)(14454004)(14444005)(229853002)(476003)(66946007)(6916009)(11346002)(73956011)(66446008)(44832011)(446003)(256004)(54906003)(26005)(71190400001)(52536014)(71200400001)(5660300002)(86362001)(76116006)(66556008)(486006)(66476007)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3754;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 36TJwpaBZXbDhkMEg3lntAHfe7V6mmDhfElLgBdHaePfW1PK9HB2luHIoQEH1I78qHdCL8d1CzLdxNTIm0us/UpGasmgdDTtfScD2dof1WSH12hIAigpLLmM4FPwwfpG0Q7mj/npXpy6lULvDGn16lR3yBKSDnhqYxZChN6ZZJjpa/bH/jFSNrAaDjMorlmirEUGoQGaF36ycBs90myp53J25QomL4SLmevGXANHq+sJYU2ucBWvXQjv60tYtXu486miOXTzAsljQoygokbtGEyw347KZnxz1lHArEDcwkJ1AWcaqo9pjZT7CDCIllhxRdI0ewqeyopiI99gf3FYfeY0RZ4qaLhPHDnpy+GX+XVaVCGFKGAE0ZZBg/AoBvlgJoKpYpt1vz8zkfAPDtSAsxpMa4Nw5pjBqkxspV7s1nE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5483a03-efa1-4dfb-f38a-08d6facd490c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 07:01:31.8310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3754
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_000138_588542_B145A48C 
X-CRM114-Status: GOOD (  27.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:614 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> Sent: Thursday, June 27, 2019 2:44 PM
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
> On Thu, Jun 27, 2019 at 3:48 AM Anson Huang <anson.huang@nxp.com>
> wrote:
> >
> > Hi, Daniel
> >
> > > -----Original Message-----
> > > From: Daniel Baluta <daniel.baluta@gmail.com>
> > > Sent: Wednesday, June 26, 2019 8:42 PM
> > > To: Anson Huang <anson.huang@nxp.com>
> > > Cc: Shawn Guo <shawnguo@kernel.org>; Sascha Hauer
> > > <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> > > <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>;
> Aisheng
> > > Dong <aisheng.dong@nxp.com>; Abel Vesa <abel.vesa@nxp.com>; linux-
> > > arm-kernel <linux-arm-kernel@lists.infradead.org>; Linux Kernel
> > > Mailing List <linux-kernel@vger.kernel.org>; dl-linux-imx
> > > <linux-imx@nxp.com>; Daniel Baluta <daniel.baluta@nxp.com>
> > > Subject: Re: [PATCH] soc: imx-scu: Add SoC UID(unique identifier)
> > > support
> > >
> > > On Wed, Jun 26, 2019 at 10:06 AM <Anson.Huang@nxp.com> wrote:
> > > >
> > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > >
> > > > Add i.MX SCU SoC's UID(unique identifier) support, user can read
> > > > it from sysfs:
> > > >
> > > > root@imx8qxpmek:~# cat /sys/devices/soc0/soc_uid
> > > > 7B64280B57AC1898
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > >  drivers/soc/imx/soc-imx-scu.c | 35
> > > > +++++++++++++++++++++++++++++++++++
> > > >  1 file changed, 35 insertions(+)
> > > >
> > > > diff --git a/drivers/soc/imx/soc-imx-scu.c
> > > > b/drivers/soc/imx/soc-imx-scu.c index 676f612..8d322a1 100644
> > > > --- a/drivers/soc/imx/soc-imx-scu.c
> > > > +++ b/drivers/soc/imx/soc-imx-scu.c
> > > > @@ -27,6 +27,36 @@ struct imx_sc_msg_misc_get_soc_id {
> > > >         } data;
> > > >  } __packed;
> > > >
> > > > +struct imx_sc_msg_misc_get_soc_uid {
> > > > +       struct imx_sc_rpc_msg hdr;
> > > > +       u32 uid_low;
> > > > +       u32 uid_high;
> > > > +} __packed;
> > > > +
> > > > +static ssize_t soc_uid_show(struct device *dev,
> > > > +                           struct device_attribute *attr, char
> > > > +*buf) {
> > > > +       struct imx_sc_msg_misc_get_soc_uid msg;
> > > > +       struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > > > +       u64 soc_uid;
> > > > +
> > > > +       hdr->ver = IMX_SC_RPC_VERSION;
> > > > +       hdr->svc = IMX_SC_RPC_SVC_MISC;
> > > > +       hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> > > > +       hdr->size = 1;
> > > > +
> > > > +       /* the return value of SCU FW is in correct, skip return
> > > > + value check */
> > >
> > > Why do you mean by "in correct"?
> >
> > I made a mistake, it should be "incorrect", the existing SCFW of this
> > API returns an error value even this API is successfully called, to
> > make it work with current SCFW, I have to skip the return value check
> > for this API for now. Will send V2 patch to fix this typo.
> 
> Thanks Anson! It makes sense now. It is a little bit sad though because we
> won't know when there is a "real" error :).
> 
> Lets update the comment to be more specific:
> 
> /* SCFW FW API always returns an error even the function is successfully
> executed, so skip returned value */

OK, as for external users, the SCFW formally released has this issue, so for now
I have to skip the return value check for this API, once next SCFW release has this issue
fixed, I will add a patch to check the return value.

Thanks,
Anson.
> 
> 
> > > > +       imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> > > > +
> > > > +       soc_uid = msg.uid_high;
> > > > +       soc_uid <<= 32;
> > > > +       soc_uid |= msg.uid_low;
> > > > +
> > > > +       return sprintf(buf, "%016llX\n", soc_uid);
> > >
> > > snprintf?
> >
> > The snprintf is to avoid buffer overflow, which in this case, I don't
> > know the size of "buf", and the value(u64) to be printed is with fixed
> > length of 64, so I think sprint is just OK.
> 
> Ok.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
