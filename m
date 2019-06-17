Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF6F477DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 04:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuaQzIFgDFElDFosUPySQg2PALGmlFum84CPTSQ14IQ=; b=gWK8I24rfp0/PJ
	let0Mvjkf216dRmKKdy71KfJudURRqPWwTdNouNfNE/g89u7IO1fA3BlYXOwmRwXTj/TEgh7q7AHL
	+H3bjwSysVyUkZgPOYHw4oPNN4tkJxrlaD8q3JVPtEAs4p5itSnG1zNaZDAR9l2LcaN397TfoKY1f
	5ftpYKsPiZyO19CpOtrq5hSeRu8//VJxBU0E7oJIJDpD2VZ0ccV8TZeakeen0uJJCRIouvJ+1gExn
	c/utXGa2m4GWohTF2J6GYUVDF3vLcPsF077QaJjUmTNkENla2uJsKeQZFI1nLGD04EvgVqjcpAt+N
	Xy0/V5gmlaFMYaiPJZTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcgyX-0002uy-DX; Mon, 17 Jun 2019 02:02:25 +0000
Received: from mail-ve1eur03on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::610]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcgyE-0002rZ-8A
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 02:02:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=17/We5wOOLgdC2f17qJYMkg69Vx0v4OWfd6xLFHnyqE=;
 b=CVtcM6JCxl7LT5lbXXEWRqsJVCDOrMlaUrambAgkEWMNPHOGdiDwv2QqN8Is/y1MWcW9kSp94DUjfVrL4nMfsB3kK64lYR+n4gWnn+Lwg4aPn0BfITiXJ95rOnNkGJ2D09uOj3qc3/NnBJEKIZrMO2egbBbf45Jm1U+GZwLUhgE=
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com (20.179.247.83) by
 AM6PR04MB6408.eurprd04.prod.outlook.com (20.179.244.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Mon, 17 Jun 2019 02:02:03 +0000
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::7907:11c9:4eaa:4ea4]) by AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::7907:11c9:4eaa:4ea4%3]) with mapi id 15.20.1987.014; Mon, 17 Jun 2019
 02:02:03 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "festevam@gmail.com" <festevam@gmail.com>, "thesven73@gmail.com"
 <thesven73@gmail.com>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Thread-Topic: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Thread-Index: AQHVIoyD1XkewTwW3U6Cbo4mPhim06aa+IgAgAArvYCABH8JAA==
Date: Mon, 17 Jun 2019 02:02:02 +0000
Message-ID: <1560765934.30149.26.camel@nxp.com>
References: <20190614083959.37944-1-yibin.gong@nxp.com>
 <CAOMZO5Do+BsZEX43w283yWed8fQVtTC+zAvoktPLTj4c_f798w@mail.gmail.com>
 <CAGngYiUWy5FM-zsT55-yY=kahLObZGYw=zU0F9Tzp9T2S3G6LA@mail.gmail.com>
In-Reply-To: <CAGngYiUWy5FM-zsT55-yY=kahLObZGYw=zU0F9Tzp9T2S3G6LA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57135007-5153-4bab-9c60-08d6f2c7cabd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB6408; 
x-ms-traffictypediagnostic: AM6PR04MB6408:
x-microsoft-antispam-prvs: <AM6PR04MB6408702471E270A9A7ABD5CA89EB0@AM6PR04MB6408.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(346002)(366004)(136003)(396003)(189003)(199004)(25786009)(6436002)(6486002)(186003)(50226002)(66476007)(66556008)(66446008)(26005)(66946007)(66066001)(446003)(91956017)(76116006)(73956011)(2616005)(476003)(11346002)(71190400001)(71200400001)(2501003)(103116003)(7736002)(4326008)(36756003)(256004)(64756008)(7416002)(99286004)(102836004)(53546011)(5660300002)(6506007)(486006)(86362001)(478600001)(68736007)(81166006)(110136005)(53936002)(316002)(54906003)(3846002)(81156014)(8676002)(229853002)(2906002)(6116002)(6246003)(76176011)(8936002)(6512007)(14454004)(305945005)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6408;
 H:AM6PR04MB6630.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Tx7hCjqjNw7zA4h6uIoVV/IF/g2EwlqiTvV9xviUisPupD9x5W2YdMI4vc2BhEmV37p7A0OZyhzqpitKQC/6BX89DAiEPvtqMnoYD9sgKRhEOFofFWlwe7Ap6gHbY4+TpQw8lQVS2i1mpCa2SqsROFwj8HYx7VbG+URxZ1ohjZZqBNHFzCze3Vu2vPBwyNgMUJ5kj2j50JuHjIxevM66n3/JlufD7lrmYPaQS4ulfYVYWwqlKueQ8WS2PP18eAp2IeNVJ7D+TIBCOlp6Kko5UetRnfWx0Di8Pq3pkAshcH1pByD/K8IPS1l9F2X2zXXJ5brEhvAsSxzbVjuBKdO2UBjTIA9LzgeJK3bzZn5NZS36ap6FdyhZNnrjsJlgoesH35d5Nk4fWM8KlbkB0i3GKs9EgHKBZKINBpR0yvr2eQg=
Content-ID: <113012975CEC184DAA739606D58E3443@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57135007-5153-4bab-9c60-08d6f2c7cabd
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2019 02:02:03.2162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6408
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_190206_295122_77CE4318 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:610 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
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

On 2019-06-14 at 13:25 +0000, Sven Van Asbroeck wrote:
> On Fri, Jun 14, 2019 at 6:49 AM Fabio Estevam <festevam@gmail.com>
> wrote:
> > 
> > 
> > According to the original report from Sven the issue started to
> > happen
> > on 5.0, so it would be good to add a Fixes tag and Cc stable so
> > that
> > this fix could be backported to 5.0/5.1 stable trees.
> Good catch !
> 
> However, the issue is highly timing-dependent. It will come and go
> depending
> on the kernel version, devicetree and defconfig. If it works for me
> on
> 4.19, that
> doesn't mean the bug is gone on 4.19.
The default imx defconfig and dts should be ok, because firmware load
is delayed after rootfs mounted where firmware located in and before
that, some driver which use sdma such as spi/uart/audio may have
already enable sdma clock which means channel0 interrupt could be
cleared immediately without interrupt storm. That's why I can't
reproduce your issue at first, but catch it once I sync with your
directly firmware load defconfig. So seems not very must to CC stable
tree?
> 
> Looking at the commit history, I think the commit below possibly
> introduced the
> issue. Until this commit, sdma_run_channel() would wait on the
> interrupt
> before proceeding. It has been there since 4.8:
> 
> Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in the
> interrupt handler")
Yes, but Michael's patch is the right direction, at least it fix RT
case and meaningless channel0 interrupt storm coming before clearing
channel0 interrupt status in sdma_run_channel0(). Now, this patch could
fix its minor side-effect.
> 
> But my knowledge of imx-sdma is non-existent, so I invite the more
> knowledgeable
> people in this thread to take a look at this commit.
> 
> [Adding Michael Olbrich to the thread]
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
