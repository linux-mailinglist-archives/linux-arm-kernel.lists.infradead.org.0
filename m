Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4E9A324B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 10:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlRZ7lG9no3mab+9AnFAxRnIv0LgAWo9EQCxFkqAaAQ=; b=IXC5CfDosITVz+
	Ns94eNX2hf3+lFNS0kp0NsRa6EH0abAqW153RR5DeZ/JtLGr+Xzou05CsIKvHRiAHyFVuLUb+FXZj
	QW3alr7pVb5bfSmP/39AfCxmkqKS/KCq23Ezr7ZKcBd6L3VBY6g+Sr26dfzXiYiD4wBR55qKiKgRk
	I2YunvAIAFnOAD6xBsrRdKABuV6ezVdWeopsq4FlqHpHXSitnBghwUTtoFweKlpcTqBktp955dEJF
	F8NXaBK2cVsTy1V82FrLQu5NBAwAebfUi5ObBxOcS2QWUoFLMqtHgGMiZSbb0aEfLu1zQrNX6qrC0
	TcbMTkTeRSLcgQNNGS3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cGX-0001J7-RM; Fri, 30 Aug 2019 08:28:17 +0000
Received: from mail-eopbgr150077.outbound.protection.outlook.com
 ([40.107.15.77] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cGM-0001Id-Q4
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 08:28:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kUDe7t9hGERPcTGBwn196GggUFzVYAL+d6akfWcMXUJHlCoDl1kGuQJWxtAEt9f5uDEofRFqQzzjP/8scmr5MWfav4+EwcyYpwRwEEH5Z0IfARGpD9OIMaC3eI6vO2jJ3sTfigyL1w9W4muiLxS3zdBifk/iX8Xv+lBGX3Ul7ZwG6bUGcyf1oYGzfpszAmkp8hS3j0GCRo9r/oY4+Ja6kCOmEzcdPOzg6v6WM/GfDMaYcRKZy9bUQUm8GCzHBTFII5XwFl4z2OacEO5BS4uDF6HtoZPW6mXq7edPeFfsMRPSgawtPFkQBNm+MEzM9jXsA88CYk0sbVkt5OljwY6HGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aeM9B4AEgx+nzadsr56zJ3s/4xI+/RUFmp3jOP96Fg8=;
 b=PYUqcVOL3FNkOupoOISuNaFiQNpfi9EnWGGD/zXay4hi2oVQlPisbY6s9F8sOKqRqTWIVKneE1F0D+4h1NRhHbOs7Iyqk+zqR+2cMvTogtgUWhU98Oq8UilxF8/NmfNSahFL1wOjbShQngz8+8zIB8eFygvEOZnHIsG3LudcYJvZeEeBI67Dkh2Re6xjIVgXzHjqy6J+v9L/fK7p957xwLiep60tf9fS2hMG99TIzndiHe8fVJmh5qpmCuBGKwwLVYcOrL4xjhxSAsffh2RI5vw0MKMKgh7Hw5Ar+4tWRy/Ohi3pE4ZLxl5IlcnyY7E6e2uoSgkWfonpAtHD9bT7fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aeM9B4AEgx+nzadsr56zJ3s/4xI+/RUFmp3jOP96Fg8=;
 b=LCpdonswKbofkmE59ENr6wOLHqLsBsCQvmafBOXeI+diYGEfFVNEWo/hMLUAMWknYQsQN+7ixCwwVqzNYDpmNsNnRm94GEEimc94b+TiuK9KNbrYAYJbVnTXM6tAc1dxM8TBJdpJeV6UkOgs3aLQcn0k7Jz46OBhcueHk64PvWw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4818.eurprd04.prod.outlook.com (20.176.215.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 30 Aug 2019 08:28:01 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.023; Fri, 30 Aug 2019
 08:28:01 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: RE: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Topic: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
Thread-Index: AQHVXU0YJPArUxY1ok6XlIUgkri4VacTNWSAgAAFe+CAABGfAIAAAKjwgAAICwCAAAHRcIAAA7iAgAAARlA=
Date: Fri, 30 Aug 2019 08:28:01 +0000
Message-ID: <AM0PR04MB4481253297D017FF847CF60288BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-2-git-send-email-peng.fan@nxp.com>
 <CABb+yY2tRjazjaogpM7irqgTD+PdwsfqCxk5hP-_czrET3V5xQ@mail.gmail.com>
 <AM0PR04MB4481785CABB44A8C71CFB8D788BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2TREpO7+TFcGgsgQrkmMWwFAgtuJ4GnLPPQ+GEBuh07w@mail.gmail.com>
 <AM0PR04MB448161C632722DF10989008088BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2SrMF8e1iLyLqb-rJyBx4ajA0hZ6D=LFtuMNtXYjgccA@mail.gmail.com>
 <AM0PR04MB448133D1F4C887A82C679CEB88BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY2t-oz6KqvCTsOJZqcMAUaR9Cbj014m7dCFXSBAMCojww@mail.gmail.com>
In-Reply-To: <CABb+yY2t-oz6KqvCTsOJZqcMAUaR9Cbj014m7dCFXSBAMCojww@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85a9f389-4049-4988-28c3-08d72d23f8de
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4818; 
x-ms-traffictypediagnostic: AM0PR04MB4818:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB481862D7FDB389F0D1147A7988BD0@AM0PR04MB4818.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(366004)(376002)(346002)(136003)(39860400002)(396003)(43544003)(199004)(189003)(66066001)(44832011)(478600001)(52536014)(5660300002)(66946007)(476003)(74316002)(1411001)(66476007)(25786009)(6916009)(76116006)(66446008)(66556008)(64756008)(3846002)(71190400001)(4326008)(71200400001)(2906002)(14454004)(9686003)(86362001)(15650500001)(486006)(6116002)(8936002)(186003)(53546011)(7696005)(6246003)(81166006)(8676002)(81156014)(26005)(99286004)(33656002)(256004)(6506007)(229853002)(305945005)(446003)(7736002)(11346002)(6436002)(55016002)(54906003)(102836004)(53936002)(76176011)(316002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4818;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Gcbh/OO7MLhkAPnsHlA1nUxPbJNTgSrfX3SvSPugXzEjzKxBOWn3eBMmtlsaoobqOz1yU4b5AulgPR20DhNATsshz4Es2yd6YvYxh0kBmeujgBo9M4hwKJCINMeUZpObnqiZMRoPT/ZQQ8NQoAf2jnznrRIuPmgkUGfKx7kDD/S/ri9/BfRGgiTSTnZGBtPWoGCg0UZS6UlwhWs5+z9iwas82aX9G5nPdaIFlNO0EXKImARaVlE6YitOKykORcCMtBb1AuvD0gT6prpriEKynAbLPcgx4i/KOmifm5jmk8EC/t2UUqXdiN/r5DkxdYlQ630tFH3hCI2TGFPll80G5hu5lRik4WAPEG5PW7HxjmbLu19D5ECMWiD+tYlxPV69vcALs6c7JdvIR/CZVB1ULAOxAEF8/wlHWbjchBcAh1U=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85a9f389-4049-4988-28c3-08d72d23f8de
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 08:28:01.4920 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dx3R9xh39E/FR89RrBGJBCDBmCpvYIz627rN7x3AfETb+Lk5ZcTQhA0iV0m+j/H0GQCnIs4XLiv8dlC3RcfKZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_012807_137069_068B2CA6 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc for the ARM
> SMC/HVC mailbox
> 
> On Fri, Aug 30, 2019 at 3:07 AM Peng Fan <peng.fan@nxp.com> wrote:
> >
> > > Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding doc
> > > for the ARM SMC/HVC mailbox
> > >
> > > On Fri, Aug 30, 2019 at 2:37 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > >
> > > > Hi Jassi,
> > > >
> > > > > Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add binding
> > > > > doc for the ARM SMC/HVC mailbox
> > > > >
> > > > > On Fri, Aug 30, 2019 at 1:28 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > > >
> > > > > > > > +examples:
> > > > > > > > +  - |
> > > > > > > > +    sram@910000 {
> > > > > > > > +      compatible = "mmio-sram";
> > > > > > > > +      reg = <0x0 0x93f000 0x0 0x1000>;
> > > > > > > > +      #address-cells = <1>;
> > > > > > > > +      #size-cells = <1>;
> > > > > > > > +      ranges = <0 0x0 0x93f000 0x1000>;
> > > > > > > > +
> > > > > > > > +      cpu_scp_lpri: scp-shmem@0 {
> > > > > > > > +        compatible = "arm,scmi-shmem";
> > > > > > > > +        reg = <0x0 0x200>;
> > > > > > > > +      };
> > > > > > > > +
> > > > > > > > +      cpu_scp_hpri: scp-shmem@200 {
> > > > > > > > +        compatible = "arm,scmi-shmem";
> > > > > > > > +        reg = <0x200 0x200>;
> > > > > > > > +      };
> > > > > > > > +    };
> > > > > > > > +
> > > > > > > > +    firmware {
> > > > > > > > +      smc_mbox: mailbox {
> > > > > > > > +        #mbox-cells = <1>;
> > > > > > > > +        compatible = "arm,smc-mbox";
> > > > > > > > +        method = "smc";
> > > > > > > > +        arm,num-chans = <0x2>;
> > > > > > > > +        transports = "mem";
> > > > > > > > +        /* Optional */
> > > > > > > > +        arm,func-ids = <0xc20000fe>, <0xc20000ff>;
> > > > > > > >
> > > > > > > SMC/HVC is synchronously(block) running in "secure mode",
> > > > > > > i.e, there can only be one instance running platform wide. Right?
> > > > > >
> > > > > > I think there could be channel for TEE, and channel for Linux.
> > > > > > For virtualization case, there could be dedicated channel for each
> VM.
> > > > > >
> > > > > I am talking from Linux pov. Functions 0xfe and 0xff above,
> > > > > can't both be active at the same time, right?
> > > >
> > > > If I get your point correctly,
> > > > On UP, both could not be active. On SMP, tx/rx could be both
> > > > active, anyway this depends on secure firmware and Linux firmware
> design.
> > > >
> > > > Do you have any suggestions about arm,func-ids here?
> > > >
> > > I was thinking if this is just an instruction, why can't each
> > > channel be represented as a controller, i.e, have exactly one func-id per
> controller node.
> > > Define as many controllers as you need channels ?
> >
> > I am ok, this could make driver code simpler. Something as below?
> >
> >     smc_tx_mbox: tx_mbox {
> >       #mbox-cells = <0>;
> >       compatible = "arm,smc-mbox";
> >       method = "smc";
> >       transports = "mem";
> >       arm,func-id = <0xc20000fe>;
> >     };
> >
> >     smc_rx_mbox: rx_mbox {
> >       #mbox-cells = <0>;
> >       compatible = "arm,smc-mbox";
> >       method = "smc";
> >       transports = "mem";
> >       arm,func-id = <0xc20000ff>;
> >     }
> >
> >     firmware {
> >       scmi {
> >         compatible = "arm,scmi";
> >         mboxes = <&smc_tx_mbox>, <&smc_rx_mbox 1>;
> >         mbox-names = "tx", "rx";
> >         shmem = <&cpu_scp_lpri>, <&cpu_scp_hpri>;
> >       };
> >     };
> >
> Yes, the channel part is good.
> But I am not convinced by the need to have SCMI specific "transport" mode.

SCMI spec only support shared memory message. However to make this driver
generic, need to take care of message using ARM registers.

If using shared memory message, the call will be
invoke_smc_mbox_fn(function_id, chan_id, 0, 0, 0, 0, 0, 0);
If using ARM registers to transfer message, the call will be
invoke_smc_mbox_fn(cmd->a0, cmd->a1, cmd->a2, cmd->a3, 
cmd->a4, cmd->a5, cmd->a6, cmd->a7);

So I added "transports" mode.

Code as below:
        if (chan_data->flags & ARM_SMC_MBOX_MEM_TRANS) {
                if (chan_data->function_id != UINT_MAX)
                        function_id = chan_data->function_id;
                else
                        function_id = cmd->a0;
                chan_id = chan_data->chan_id;
                ret = invoke_smc_mbox_fn(function_id, chan_id, 0, 0, 0, 0,
                                         0, 0);
        } else {
                ret = invoke_smc_mbox_fn(cmd->a0, cmd->a1, cmd->a2, cmd->a3,
                                         cmd->a4, cmd->a5, cmd->a6, cmd->a7);
        }


Per Sudeep's comments in previous version, better pass chan_id
to secure firmware.
If drop the "transports" mode, I do not have a good idea how to differentiate
the two cases, reg and mem. Any suggestions?

Thanks,
Peng.


> 
> thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
