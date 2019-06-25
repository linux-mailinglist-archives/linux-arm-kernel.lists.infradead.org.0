Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4753D5275B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WB/w/Q2qjDqf+oMna3SNt1donnPRIbmVKTkGkbNkGko=; b=ts5od6Qpjw4fxO
	E4GENlxNTxq1X/guY4iyDuA8gH9VUK1YKk3O1tupm20QDySP38r++fiJeZKACTNyJQi6RMUoQG9Gv
	CnF+m8mHrJUxLyIajfLnGlgn3YRH266RPChfluGo2TD2S52z5Zr8UHN3oB8r3zt039wLcJrZ0hvpj
	EfPaNN4dDLoD1pFVIs5Y87HT3IHmbyAOwB6d0tmzuG2ZRsbbCe8+Jc/J3HF8Voh1hVnfXVrNY15d9
	JKEpJ3L5xssDvZJWsjPNjLGBAbtAE53M9gskqaDyo5kCDl7TJRKugco79rGW4NjPfYU46vXBxrUFB
	JBqwTr/gBHw+wIyTtyjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhJP-0003lc-1f; Tue, 25 Jun 2019 09:00:23 +0000
Received: from mail-eopbgr70057.outbound.protection.outlook.com ([40.107.7.57]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhJ9-0002zx-CB
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:00:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hxsi3zpM+USB1d3CvAQiCHsJAXg2IOOspdzz4okWBMo=;
 b=GD5gFG7V2Io6cXfok0Q+OJtt2RzoxQfnYM1IHToXbzpTpm5sY6R4Yb9JWszfQwZzfQayeaIGhbfCVNip+oVI7Wrz4PQbUqgfHiVAiIi58rZKfcdu/fU2YITZGNRuzxOaNaQR7wBNt4uSnBA3/co8F3UVCL+OOgw4iSHKYdmCGKU=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6494.eurprd04.prod.outlook.com (20.179.233.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 09:00:03 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::a4a8:729f:e664:fa8]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::a4a8:729f:e664:fa8%2]) with mapi id 15.20.2008.014; Tue, 25 Jun 2019
 09:00:03 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Fabio Estevam <festevam@gmail.com>, Russell King - ARM Linux admin
 <linux@armlinux.org.uk>
Subject: RE: [PATCH v2] dmaengine: imx-sdma: fix incorrect conversion to
 readl_relaxed_poll_timeout_atomic()
Thread-Topic: [PATCH v2] dmaengine: imx-sdma: fix incorrect conversion to
 readl_relaxed_poll_timeout_atomic()
Thread-Index: AQHVKSwpS9Y9hkdtT06s9y32rUNxhqaoDoyAgAAQxoCAAR3MAIACylig
Date: Tue, 25 Jun 2019 09:00:03 +0000
Message-ID: <VE1PR04MB663808AF44F01F064C96125089E30@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
 <E1helB3-0005d6-7m@rmk-PC.armlinux.org.uk>
 <20190622192653.puxds354sx5v3jg7@shell.armlinux.org.uk>
 <20190622202655.lwj43wpvw2ylzmcf@shell.armlinux.org.uk>
 <CAOMZO5CdHXXP1X_71SVL4nrV=009xNugPFjbjP8s7NZ3byyP2w@mail.gmail.com>
In-Reply-To: <CAOMZO5CdHXXP1X_71SVL4nrV=009xNugPFjbjP8s7NZ3byyP2w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3cfd9d74-40dc-411f-a7b7-08d6f94b82ee
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6494; 
x-ms-traffictypediagnostic: VE1PR04MB6494:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VE1PR04MB6494DD5C61EE6D3AA114A0A589E30@VE1PR04MB6494.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(346002)(136003)(39860400002)(396003)(189003)(199004)(55016002)(8936002)(478600001)(486006)(446003)(102836004)(9686003)(2906002)(966005)(305945005)(316002)(66066001)(476003)(68736007)(6116002)(86362001)(11346002)(45080400002)(71200400001)(71190400001)(3846002)(7416002)(52536014)(7736002)(6246003)(6436002)(6306002)(53936002)(33656002)(7696005)(256004)(25786009)(14454004)(229853002)(4326008)(74316002)(99286004)(76116006)(186003)(66946007)(73956011)(76176011)(6506007)(66446008)(66476007)(8676002)(53546011)(66556008)(64756008)(81156014)(81166006)(5660300002)(110136005)(26005)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6494;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CQZe20Z8u2bGuijUm4zkRXXuyutSyNRmY39fgyZJo2qo17tuwbxX9zm49+f/bZPDMaA+5yXOKlRTnLA2QZGeXBoFHXU0lOdFAUO0K65x/GldecUMCsJvZ9DO8WKTyMMHGGAhR9r918ErcfEIvUIaww7oJMwRSrBblDUUC5CDgt6CpsoKm/AoTDvB5NJGZCyz5av/OqJGJHyZJINel8jUXOlgaHgj4Vz0Z/rqlvMrPACeoLJl3MJJybcriabQLhBgAryLbqpimR0LUI7fXTA0I4pwudzispbIxelq8iz0/4OrzD+QUjNZ5ohVjtRdlvc4q7+Fi0W2O4Yecm/HCHcPlUPXlY7+ktGYBhQbcfa1Yqde/6iycGUx2Mi8MxlmkKRFScVyo6IvFdDoXrL0mNVuXDNc3uIOm5k0R3a+RXtd1mc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cfd9d74-40dc-411f-a7b7-08d6f94b82ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 09:00:03.2976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6494
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_020007_507881_FDC85D9A 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Michael Olbrich <m.olbrich@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 23, 2019 at 21:30 Fabio Estevam <festevam@gmail.com> wrote:
> Hi Russell,
> 
> On Sat, Jun 22, 2019 at 5:27 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Sat, Jun 22, 2019 at 08:26:53PM +0100, Russell King - ARM Linux admin
> wrote:
> > > Well, this doesn't appear to completely solve the problem either -
> > > one out of four of my platforms still spat out the error (because
> > > the SDMA initialisation can run on a different CPU to that which
> > > receives the interrupt.)
> > >
> > > I've thought about using a completion, but that doesn't work either,
> > > because in the case of a single CPU, the interrupts will be masked,
> > > so we can't wait for completion.  I think we need to eliminate that
> > > spinlock around this code.
> >
> > It looks like iMX6 Dual does not initialise DMA properly using the 1.1
> > firmware - md5sum is:
> >
> > 5d4584134cc4cba62e1be2f382cd6f3a
> > /lib/firmware/imx/sdma/sdma-imx6q.bin
> >
> > I've tried extending the timeout to 5ms, checking HI[0] (both from the
> > interrupt handler and from sdma_run_channel0() to cover the case of a
> > single-core setup).
> >
> > After boot:
> >
> >  60:          0          0       GPC   2 Level     sdma
> >
> > So no interrupt was received.  Looking at the registers:
> >
> > # /shared/bin32/devmem2 0x20ec02c
> > Value at address 0x020ec02c: 0x00000000  <= H_INTRMASK #
> > /shared/bin32/devmem2 0x20ec004 Value at address 0x020ec004:
> > 0x00000000  <= H_INTR # /shared/bin32/devmem2 0x20ec00c Value at
> > address 0x020ec00c: 0x00000000  <= H_START # /shared/bin32/devmem2
> > 0x20ec008 Value at address 0x020ec008: 0x00000001  <= H_STATSTOP
> >
> > Any ideas?
Seems sdma script not run as expected, thus no DONE instruction involved to clear
'HE' of H_STATSTOP and notify ARM by interrupt. So this timeout happened during the
first ' sdma_load_script()' phase ?


> Could you please try this patch from Robin?
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infra
> dead.org%2Fpipermail%2Flinux-arm-kernel%2F2019-June%2F661914.html&a
> mp;data=02%7C01%7Cyibin.gong%40nxp.com%7C7faa18517626429780d908
> d6f7ded3b6%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636968
> 933747699843&amp;sdata=BIipoIgBc5sMahJkz33L5ucqeuHwyYnqg09ornpeLE
> 4%3D&amp;reserved=0
This should be the different case, since in Russell King's case, no any interrupt while my patch
fix the potential interrupt storm.
> 
> Thanks
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
