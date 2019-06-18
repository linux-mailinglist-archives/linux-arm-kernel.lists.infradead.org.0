Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDE7498BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 07:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lDBVew6lG0lwIPyA2ZTFyWVeV+TBhA9wlyR1qrl+eI=; b=Mf4aoQl98eMUFo
	1VxxvmOXcVrLMQkO+cIFM4NudA5qE3tTdvZVQTnjVAebfNEumTBvK0z06etrPqwrFR9Yc/GnVTZf3
	CFDc5W7xT5Nn9MnhYf2O4sO45H/uI+CFBW9LDbjuK050gT77RhDP4r43zrdnAauoBXaAPJe11FZsp
	FW3Wu8kIA6otOtLiYnpX+llt7VAubn3bBGqBdhsyggSzBeoJEKREGemwrgzu7I5EEI96e9pGYPyrO
	NI4cGOK5jF6L1YhsCi7Kx4bOTRDl4P+VHpBmoOyGd8f15UiK2HCy6qBxiPoqi0WtEUcbmVeIE5OLx
	MaBedoALR0Uvy+MrKdvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd71D-0000NV-3X; Tue, 18 Jun 2019 05:50:55 +0000
Received: from mail-eopbgr140083.outbound.protection.outlook.com
 ([40.107.14.83] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd712-0000N4-Bo
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 05:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aXTXVLwOQccmH5Thz0oDuh3qFF1mw7M4vpWaXyEDF/Q=;
 b=kBXT/GS9//Js7lmSeOJp4Q9Cj6Rc8uIoi4II688xJ6IT1Eh03UVHl0or9EKhJEujqslI0gLXJS2lT4czvfNCshoWIaZfgUAqNMqH59elhcsGysCSIBSeSdUDl4z4WNx2ytZvWD+7fW7z1ppo7KSJm3BzOcUiE0kTp/95L4ApbGE=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6671.eurprd04.prod.outlook.com (20.179.235.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Tue, 18 Jun 2019 05:50:39 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::a4a8:729f:e664:fa8]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::a4a8:729f:e664:fa8%2]) with mapi id 15.20.1987.014; Tue, 18 Jun 2019
 05:50:39 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "thesven73@gmail.com" <thesven73@gmail.com>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Thread-Topic: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Thread-Index: AQHVIoyD1XkewTwW3U6Cbo4mPhim06aa+IgAgAArvYCABH8JAIAAOHoAgAGZugA=
Date: Tue, 18 Jun 2019 05:50:39 +0000
Message-ID: <1560866050.26847.2.camel@nxp.com>
References: <20190614083959.37944-1-yibin.gong@nxp.com>
 <CAOMZO5Do+BsZEX43w283yWed8fQVtTC+zAvoktPLTj4c_f798w@mail.gmail.com>
 <CAGngYiUWy5FM-zsT55-yY=kahLObZGYw=zU0F9Tzp9T2S3G6LA@mail.gmail.com>
 <1560765934.30149.26.camel@nxp.com>
 <CAGngYiU_kxRXbk1vSzV+hBZ=SQdxe2h7TXj3dbK6Q=YyXcDr0g@mail.gmail.com>
In-Reply-To: <CAGngYiU_kxRXbk1vSzV+hBZ=SQdxe2h7TXj3dbK6Q=YyXcDr0g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c064ad8b-c6d1-407e-21ab-08d6f3b0e4b5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6671; 
x-ms-traffictypediagnostic: VE1PR04MB6671:
x-microsoft-antispam-prvs: <VE1PR04MB6671B9B8EDF34EF7400C2C6B89EA0@VE1PR04MB6671.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 007271867D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(396003)(346002)(376002)(199004)(189003)(5660300002)(76116006)(103116003)(6512007)(6436002)(25786009)(8676002)(81156014)(50226002)(5640700003)(2501003)(81166006)(53936002)(76176011)(229853002)(2351001)(102836004)(6486002)(316002)(7416002)(54906003)(53546011)(1361003)(6916009)(6506007)(8936002)(99286004)(14454004)(478600001)(1411001)(186003)(2616005)(476003)(68736007)(446003)(11346002)(26005)(486006)(6246003)(4326008)(6116002)(3846002)(66556008)(64756008)(36756003)(256004)(66446008)(66066001)(66946007)(7736002)(305945005)(66476007)(2906002)(86362001)(73956011)(71190400001)(71200400001)(91956017)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6671;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZNGI54MFTYZ7waBbMS7a1lwumeQtu9+xNC4ZfFoDhXgnoBOk16bz4+PIGqb5vcMoHZzUIuPBaumLhhlKQ3KXOrpIbnzFnhKphoVlVsXj0s3G9JM6b3X9bd0AnvegvDCOi1geQiFCJVCFN8YdffuTtNlBMVLvB7AFzmnNKhwlpLt/szV2wsLtl4SYvYd6qdz4NOTBsRxBSaY/TJItQXezeckwKWOEc27lNBURU3hPJBMrGuuFP8fHBR9dEYYbGlimd+5A4VT2p8f6HMGWx5miOHE0Es7kzuAV6iw4rhuoXhAkQqreOyDPn4Sqw0r7DyI18MrJKA9lEAIAiQcqqM80X/XxrsJUdxRjJc+lneyqM4K8DW6t7l+7CEtgG6hbqzp/93cwwV4qplA3T9kNdibeXbiiYnQR3tzyXXpgB59HNaQ=
Content-ID: <6115E413E08DFC479D99A3D37A990FD0@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c064ad8b-c6d1-407e-21ab-08d6f3b0e4b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2019 05:50:39.4834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6671
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_225044_409307_9D280BB0 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "m.olbrich@pengutronix.de" <m.olbrich@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-06-17 at 09:27 -0400, Sven Van Asbroeck wrote:
> Hello Robin,
> 
> On Sun, Jun 16, 2019 at 10:02 PM Robin Gong <yibin.gong@nxp.com>
> wrote:
> > 
> > 
> > The default imx defconfig and dts should be ok, because firmware
> > load
> > is delayed after rootfs mounted where firmware located in and
> > before
> > that, some driver which use sdma such as spi/uart/audio may have
> > already enable sdma clock which means channel0 interrupt could be
> > cleared immediately without interrupt storm. That's why I can't
> > reproduce your issue at first, but catch it once I sync with your
> > directly firmware load defconfig. So seems not very must to CC
> > stable
> > tree?
> As far as I know, the bug/crash does not happen if you're loading the
> sdma firmware from a filesystem. So the vast majority of users would
> never see the crash.
> 
> I agree that this is not a high-priority bugfix. But it's worthwhile
> for the
> stable trees to have it.
> 
> > 
> > Yes, but Michael's patch is the right direction, at least it fix RT
> > case and meaningless channel0 interrupt storm coming before
> > clearing
> > channel0 interrupt status in sdma_run_channel0(). Now, this patch
> > could
> > fix its minor side-effect.
> I'm not suggesting that we should revert or change Michael's patch.
> Just
> that it would be good for the v2 patch to contain:
> 
> Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in the
> interrupt handler")
> 
> This should allow stable maintainers to pull in your patch if and
> only if
> their release already contains 1d069bfa3c78.
Okay, would add Fixes tag into v2.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
