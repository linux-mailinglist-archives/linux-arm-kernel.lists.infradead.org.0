Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8AC166C63
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 02:35:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCWowFvOniprNs9ihWqMM0wuGH7R4X87RpB6yDiChBk=; b=iVmaRrMFQDFaxu
	yCiWUI2ioD8n/VqWhrilrD7nscGz0netmT3k90m3j3OfVCR1K7RCkPtM1e/5XYjDnBhi83WMIoUM5
	ZQn0rbJLwLZ2ySKai3QBs9/9gcBnTueDzHF43NKqYjgYJBPBy+Jg8ufrgxFhIbLlEIKMr7/iHA8aT
	pqrCugeVEZulR9w7+sIzxN8P3AlomUuSR7me7JC1Hf6tBe0yBUl120bPaqt1PSzZRmWmm7ZrfTtzY
	CrDX/aHE9uUEbDs+EyL7Mh/9Ehyapgjbo0fWYskdgVNMLO8AZIXt51xsLXg2k5inwAnvRSFgKEmC9
	mV7myJ7iUytNIA/sHDAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4xE6-0007yF-9U; Fri, 21 Feb 2020 01:35:34 +0000
Received: from mail-eopbgr20063.outbound.protection.outlook.com ([40.107.2.63]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4xDx-0007xj-Ap
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 01:35:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B8i5intzCVNB9iT9N5IknXHIcMVBKA/SIVb0ZLm6XZFd0oo2iZJ3QByu5fIXYEMK9jJh0vUFMIwR3ExhbhF/llheclY8gxERS/2uyKie4aQzvkDi0nSR4j0s940iwagTZdnixxAQ2YVJMrIRaBh3Ldc9iD9UGSpEmdW2N03SeF8r3hjtKDl27bhrWRxDPGhrPUAj308+nDpQZHGFmiid6Xlzy/GzHkqCGhm5ZbCqxiCCFJpmU33bBFv2hu0QJ1Q4+jmto0HsPBTHWeO+WG8Nb/CmVuDRUOxiR48Pexm4jf3/vDGdHEcguNEkx9Aa+q6IybUequuAdqf4mm6wX88ZGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g6gQZqvnwwCMQqGihDxATY1PFNCSYVkXOJIzVuv6k4Q=;
 b=AmaztkqiutapW9pBbDw/E/x/9avx+QndGDgpO9S3cOQaE4w78blo/8CVT94hr/KBAuKBF7qVQJzKGcFiIEsSXJ3wNiuYDlSqjRtq0UNE8JObVrIV8/wvDgph6OL7CcQLKqqt1/+XJZ9xvBZkuYz608QOo+lw/pJ/mh3V3ljqucrKbCkZ65GrXpLhk3kBenfFqYSHWCUMQHHsJ8v7DEPyCc5f0bc1BJS+UdgAfGA81BKgMo3UPPk8frUb66DdmiI9UyEcJLOD9hpRkD+SCduWJti61JufLbowrcvbagvQJxE3OZr2HgE+eISLkGz7ckWYxK8MWRHGahOkugpv2WoQoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g6gQZqvnwwCMQqGihDxATY1PFNCSYVkXOJIzVuv6k4Q=;
 b=p6IHtzhRTzlp9cyNKclEH1y0kDuZUBbUWjYAGyN+5sRSuFZpC72hIX7Mokqh3bQj1+UHF95Dh/nKRdzKmLja+MfShgTuqDBTisk9/GoqIpX1M+hpys900dB1RtY/2C8L3bTsYXIecBmPTyd6jBH9QBlwvhESYEIICGaAq3agAvg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4257.eurprd04.prod.outlook.com (52.134.124.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Fri, 21 Feb 2020 01:35:19 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 01:35:19 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: RE: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
Thread-Topic: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
Thread-Index: AQHV5vbmWntOo1W/0E+zZvFdhH2I6Kgi1bgAgAB3WRCAAU11gIAAROWg
Date: Fri, 21 Feb 2020 01:35:19 +0000
Message-ID: <AM0PR04MB4481446CA33057E2138C077B88120@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
 <CANLsYkzeAyGhYqewGaHfd-myW5EzE83WUOwAbKwTP-34pbUR-w@mail.gmail.com>
 <AM0PR04MB448114DF702180D0CF0553A688130@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CANLsYkx_6R_rJ198k4bf2Y4q6WqfHj9bzFzdBFhgOEFrwjcLeQ@mail.gmail.com>
In-Reply-To: <CANLsYkx_6R_rJ198k4bf2Y4q6WqfHj9bzFzdBFhgOEFrwjcLeQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b78e413a-6c72-4fcf-665d-08d7b66e4f9b
x-ms-traffictypediagnostic: AM0PR04MB4257:|AM0PR04MB4257:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB42572BAF360651A0DF1C709788120@AM0PR04MB4257.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(39850400004)(346002)(136003)(396003)(366004)(376002)(199004)(189003)(6506007)(966005)(44832011)(5660300002)(7696005)(6916009)(4326008)(478600001)(186003)(45080400002)(26005)(33656002)(66946007)(2906002)(9686003)(8676002)(81156014)(7416002)(55016002)(81166006)(316002)(66446008)(86362001)(66476007)(54906003)(71200400001)(64756008)(52536014)(8936002)(66556008)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4257;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MqZJJP2KzZAPWtfKCyScSfqSNx1G8YrGCgFyipyUoX6utZlzbQS8L6Fd9qJ8rGDYba8ArGwhuQmkLqY7ZCeB9FNxnqw6OKAdI8yODfoSSgMR4btVvj12FXfIAi8cM1TdBnhuTsPg6UMB5FFgElJy2X2ndFvKFe2+ZqVlNwal/jpSO/L/BG0y9lcLLSoxEcH4NiT6GghzwUgk1Hv/GLs5YUbXYuUxWZhBC3wXk5yCJ01AdXsj/OCr6YxDxg6rCmtmjf+k2DQWE2gZ3Ss4h/cYy+Ok4HL/QkiRstnDn7IWp5KWrQZmgMG1N7HVKUS2ibBg98GV+JW4597VRtnSlnUZKCVlRoehGyOO7fUFlKFg5C8ZFzAaiOLotqWNJlcn+owPgi706M+92Ijvxsg1ZC52iU/JpmafIKWT2x7pxIJHDP5vIb0bk5wWsRxGSY4WLY7fCQQ3IqjRaI6juWelsmz/X/NGh2E+BzJrMwSnbP+57FQSjy9pJBXSPto7aOEe2LfioUoUSUcpRn2pgtaXCd5zM7O9BsjLHKrmOj8Lghx2laWcmlCz8ZP1/SfaKnV5PdAkG3nlFqa4oDW580TQvwGyGg==
x-ms-exchange-antispam-messagedata: BhIoV0CXEOZuwG1sUM4GEFl32Ml72wW9PwaDVWlonm+pI5pDG1yVqudN1JN3XC3fZP1NfEH1tZfHp5ZiaW3JnutRf+tgxkaiFMLNEFOPu+LTB8H9ydm9pBDZlNtyTj5h10owCiMiqkmiF3wR2QIgAQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b78e413a-6c72-4fcf-665d-08d7b66e4f9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 01:35:19.3427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QPDttdMJgW0qsxT99is8nj+GOquaPBuRwuJS+iqhhdsvab/PdyGTPjnv8lyI+REP8I1XSUHB8Xv1zJVZN870Ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4257
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_173525_533880_08222FF8 
X-CRM114-Status: GOOD (  28.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
> 
> On Wed, 19 Feb 2020 at 18:36, Peng Fan <peng.fan@nxp.com> wrote:
> >
> > Hi Mathieu,
> >
> > > Subject: Re: [PATCH 0/9] remoteproc: imx_rproc: support
> > > i.MX8/8M/7ULP
> > >
> > > Hi Peng,
> > >
> > > On Wed, 19 Feb 2020 at 00:33, <peng.fan@nxp.com> wrote:
> > > >
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > This patchset aim to replace NXP vendor imx_rpmsg.c driver.
> > >
> > > You mean remoteproc/imx_rproc.c ?  Upstream rpmsg/imx_rpmsg.c
> > > doesn't exist.
> >
> > imx_rpmsg.c only in NXP vendor tree. This pachset is to use
> > imx_rproc.c for rpmsg/virtio functions for i.MX SoC.
> >
> > >
> > > >
> > > > This patchset is tested with Loic PALLARDY's patch
> > > > "remoteproc: add support for co-processor loaded and booted before
> > > kernel"
> > > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2F
> > > > patc
> > > >
> > >
> hwork.kernel.org%2Fpatch%2F11265869%2F&amp;data=02%7C01%7Cpeng.f
> > > an%40n
> > > >
> > >
> xp.com%7Ce1cb19e535a14b63d0da08d7b568fd56%7C686ea1d3bc2b4c6fa9
> > > 2cd99c5c
> > > >
> > >
> 301635%7C0%7C0%7C637177334839497832&amp;sdata=aKQ%2Bulco63ba
> > > YT%2BDZDk0
> > > > VLt1NpkNuhrY3ssxiRCOcrM%3D&amp;reserved=0,
> > > > and inspried from st's remoteproc early boot support.
> > > > Since Loic's patch is still under review, just expect your
> > > > comments :)
> > >
> > > Did you base your work on top of Loic's because your MCU firmware is
> > > always loaded by the bootloader?
> >
> > I only took Loic's early-boot patch as base and apply my patchset.
> >
> > The mcu firmware currently only loaded by bootloader or system controller
> firmware.
> > NXP released mcu firmware not support being loaded by Linux remoteproc.
> 
> Thanks for bringing this use case to the front.  I suspected such a scenario
> existed but didn't spend too much time thinking about it since none had been
> brought to our attention. 

Actually to i.MX7ULP, M4 is booted first from hardware design and it
controls every things, A7 is under control of M4

To i.MX8/8X, M4 is booted by system control unit firmware for quick boot
for automotive CAN and Linux is booted later. Linux could only IPC to M4,
and nothing else.

To i.MX8M, M4 is booted by bootloader, but it could also be booted by Linux,
It is just NXP only support bootloader case.

 I will review your patchset and continue the
> conversation with Arnaud with it in mind.  I also invite you to join that
> conversation.

Appreciate.

Thanks,
Peng.

> 
> Regards,
> Mathieu
> 
> >
> >  If not please send another revision of your work
> > > without early boot support.  When we have a clear view on how to
> > > proceed with the early boot support you can send another set to enable
> that.
> >
> > I'll wait your new patch for early boot in remoteproc-core. Then I'll
> > rebase and send a new version. Since I introduce big changes to
> > imx_rproc.c, so I'll see whether any comments there.
> >
> > Thanks,
> > Peng.
> >
> > >
> > > Thanks,
> > > Mathieu
> > >
> > > >
> > > > Patch [1,2]/9: dt-bindings convert to json and new SoC support
> > > > Patch
> > > > 3/9: skip firmware load when recovery. To i.MX8, firmware is not
> > > >            handled by Linux.
> > > >
> > > > Patch [4-9]/9: i.MX specific part to support rpmsg/virtio with mbox.
> > > >       because NXP release image not have resoure table, so add
> resource
> > > >       table in dts
> > > >
> > > > My test dts diff for i.MX8QXP MEK, but I have tested this patchset
> > > > for i.MX8QXP MEK, i.MX8MM EVK, i.MX7ULP EVK:
> > > >
> > > > +
> > > > +       imx8x-cm4 {
> > > > +               compatible = "fsl,imx8qxp-cm4";
> > > > +               rsrc-table = <
> > > > +                       0x1 0x2 0x0 0x0 0x18 0x5c
> > > > +                       3
> > > > +                       /*fw_rsc_vdev*/
> > > > +                       7 0 1 0 0 0x200
> > > > +                       /*fw_rsc_vdev_vring*/
> > > > +                       0x90000000 4096 256 1 0
> > > > +                       0x90008000 4096 256 2 0
> > > > +                       3
> > > > +                       /*fw_rsc_vdev*/
> > > > +                       7 1 1 0 0 0x200
> > > > +                       /*fw_rsc_vdev_vring*/
> > > > +                       0x90010000 4096 256 1 0
> > > > +                       0x90018000 4096 256 2 0
> > > > +               >;
> > > > +               early-booted;
> > > > +               mbox-names = "tx", "rx", "rxdb";
> > > > +               mboxes = <&lsio_mu5 0 1
> > > > +                         &lsio_mu5 1 1
> > > > +                         &lsio_mu5 3 1>;
> > > > +               mub-partition = <3>;
> > > > +               memory-region = <&vdev0vring0>, <&vdev0vring1>,
> > > <&vdev0buffer>,
> > > > +                               <&vdev1vring0>,
> <&vdev1vring1>,
> > > <&vdev0buffer>;
> > > > +       };
> > > > +
> > > > +       reserved-memory {
> > > > +               #address-cells = <2>;
> > > > +               #size-cells = <2>;
> > > > +               ranges;
> > > > +
> > > > +               vdev0vring0: vdev0vring0@90000000 {
> > > > +                       compatible = "shared-dma-pool";
> > > > +                       reg = <0 0x90000000 0 0x8000>;
> > > > +                       no-map;
> > > > +               };
> > > > +
> > > > +               vdev0vring1: vdev0vring1@90008000 {
> > > > +                       compatible = "shared-dma-pool";
> > > > +                       reg = <0 0x90008000 0 0x8000>;
> > > > +                       no-map;
> > > > +               };
> > > > +
> > > > +               vdev1vring0: vdev1vring0@90010000 {
> > > > +                       compatible = "shared-dma-pool";
> > > > +                       reg = <0 0x90010000 0 0x8000>;
> > > > +                       no-map;
> > > > +               };
> > > > +
> > > > +               vdev1vring1: vdev1vring1@90018000 {
> > > > +                       compatible = "shared-dma-pool";
> > > > +                       reg = <0 0x90018000 0 0x8000>;
> > > > +                       no-map;
> > > > +               };
> > > > +
> > > > +               vdev0buffer: vdev0buffer {
> > > > +                       compatible = "shared-dma-pool";
> > > > +                       reg = <0 0x90400000 0 0x100000>;
> > > > +                       no-map;
> > > > +               };
> > > > +       };
> > > > +
> > > >
> > > > Peng Fan (9):
> > > >   dt-bindings: remoteproc: Convert imx-rproc to json-schema
> > > >   dt-bindings: remoteproc: imx-rproc: support i.MX[8,8M,7ULP]
> > > >   remoteproc: add support to skip firmware load when recovery
> > > >   remoteproc: imx_rproc: surport early booted remote processor
> > > >   remoteproc: imx_rproc: parse early-booted property
> > > >   remoteproc: imx_proc: enable virtio/mailbox
> > > >   remoteproc: imx_rproc: add i.MX8QM/QXP
> > > >   remoteproc: imx_rproc: support i.MX7ULP
> > > >   remoteproc: imx_rproc: add i.MX8MM support
> > > >
> > > >  .../devicetree/bindings/remoteproc/imx-rproc.txt   |  33 --
> > > >  .../devicetree/bindings/remoteproc/imx-rproc.yaml  |  95 +++++
> > > >  drivers/remoteproc/imx_rproc.c                     | 455
> > > +++++++++++++++++++--
> > > >  drivers/remoteproc/remoteproc_core.c               |  19 +-
> > > >  include/linux/remoteproc.h                         |   1 +
> > > >  5 files changed, 531 insertions(+), 72 deletions(-)  delete mode
> > > > 100644 Documentation/devicetree/bindings/remoteproc/imx-rproc.txt
> > > >  create mode 100644
> > > > Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
> > > >
> > > > --
> > > > 2.16.4
> > > >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
