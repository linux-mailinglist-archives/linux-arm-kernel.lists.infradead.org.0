Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85B41F926D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fsUNOKAypIcfjIeBUo4LB0TZFXkwDMNza18L48xV3QU=; b=eQcqQacylAQHMc
	XcfHyDbLuzx7vqb5C547bhZ9uM0vXGTzgcjr1yXMsd+hQJdTkenVLIfv0neyO5rsBKJAcZmlx1zR9
	FVf/yUYgS+SI/AY4QJVUJmRVUluSj3SUp1CRsGMfmQivYXanGiSo6BIdCYqQLdS/fhDKHozk2Np4i
	LuFpvb4ObJ7dlb4KDrqkWdRbNpYjADiOW0Jr33r7yd0Bdlb0MEI3FPFLudeO5Dau5TJpAnP0HuMT/
	8HuUvg0lNvC18N3LDt7JrxnBpTlfCt4TaPLiLm7RekL41Tr5BWhX5WnvspuspuQmd1cZkmHS2Zcz8
	PBy8g/Xoexjt7gqaDTwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkyx-0005gt-3U; Mon, 15 Jun 2020 09:00:43 +0000
Received: from mail-eopbgr60056.outbound.protection.outlook.com ([40.107.6.56]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkky9-0002xH-HH
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:59:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oacDbpeHfWiSBmKQAFfJoz9l9fWzKOPZybcRqyc4MxuuaWqZRlvnxZLJFkEaB8MveMnEWY6qXcIQLOwpXeHO1Vqf48eWkNy/GxKIxCKp2EU7iuNBCKUV41eCZbUR7960IZkNSJ23bSopkQBO1iQXHFMQ2cKoENfxs5Nea7KC245OMxb1fTu76RVinLzs1OuiparvmhSiDlTfL0+fjHWPWTlbdtpe2J5gHTb/MHn2s3yC14PD4dZ7tnS3zja6eA/nIb3FTDxhXqg0pf14Nj5smCWQITdsxsBhhB3M1Km9EILTrPZcoz5nko1itz5hdFPE//Qcm5mrHs04UxvMFiKlig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wGZeo8CQ2PNbgPckFlEFGlgfVzYUFD2W3ktStc7aU2U=;
 b=A4orayFqyXMLriCGz/jJ1H431t+uAxbgftnfA7sGTABhhVHv1AyrcM9HcI7M7exK0C6lCjAEhYXnHmbsrOxg4YNfd/lDNSnBfmz/hy+lVVm/8eL07hRCI5T3xTLEvzK+NeE6dYdKLZf6VQC38rviqyJQeZKDkrE10xUJu33MhePQevBWu/q9wBs4AsRBGi3M7OI0RMug5t+1U7XnDt9vMtqQUW5oxSrk/EcFx179kCH1192e64pk2HfACz37/KE1iN2XOTD8FJ02iOPpWplhH7MTjwpUMRAFj0ItqWNbxEjGjb8dLYdnnWqKfQFWU3UbNSZH/WRl3w0B0KQBrO+Gmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wGZeo8CQ2PNbgPckFlEFGlgfVzYUFD2W3ktStc7aU2U=;
 b=UI7sIavaZS6uTtet/68yQ4otFQTOvhPobtRiWvrt7JSeSd0cz+A9+84C51S25lufRT55wUU3JykNNi6kj++kp8ERt657yJbwUMmDxZgOI6ifYNB7v5BNC5M8URuwKA4iDBkJOHxC2L0jqb3yIrlWe2JMuDhIewbpsBvY3k8w+lg=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.26; Mon, 15 Jun
 2020 08:59:49 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3088.028; Mon, 15 Jun 2020
 08:59:49 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Vinod Koul <vkoul@kernel.org>
Subject: RE: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Thread-Topic: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Thread-Index: AQHWP6z7CX2etPvPnk+oddH8JEW5FKjTbHIAgADDYUCAAJUwgIAACjoQgAA5dICAAOmA8IADWRSAgAAMGbA=
Date: Mon, 15 Jun 2020 08:59:49 +0000
Message-ID: <VE1PR04MB6638959679C644C76B4D3D3A899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1591880310-1813-1-git-send-email-yibin.gong@nxp.com>
 <1591880310-1813-2-git-send-email-yibin.gong@nxp.com>
 <20200611134042.GG4671@sirena.org.uk>
 <VE1PR04MB66383245FAD2AE33CFEA76F789810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612101357.GA5396@sirena.org.uk>
 <VE1PR04MB66384013797FE6B01943F2A889810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612141611.GI5396@sirena.org.uk>
 <VE1PR04MB6638B43E3AC83286946DABCD899F0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615071931.GK1393454@vkoul-mobl>
In-Reply-To: <20200615071931.GK1393454@vkoul-mobl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d84e088b-260b-43ed-b877-08d8110a75e2
x-ms-traffictypediagnostic: VE1PR04MB6528:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6528D065E10B9B5E1DFA23FE899C0@VE1PR04MB6528.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04359FAD81
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sd4ThGzxoxeMNpxCvi+q0bHpMWJafIBKeryP5hdYHdR8jXkri84orjqbGhVvIDrDmKee/hMI0RfMd1OFtWLj5EyRP12ZDsQmi2uHtG3e/rYAVqSGlZHuZxuZYKJM51mRByLfZpVfndUuu0+xd2Ump2LGX/ieJONc1CbEfWc4dRf8Tr4NbHqA6hmoSjGHslVp7RKSmBhxqOiu2TKxaehxTkW5dJFaJWNcnEJkqRaEMqrLbewxEmwBo+XioHx388KVDZp39WZx15MAcYaWvPRaaMmC2Z7BilnBHwFNyB5EO+FL5JfyBDAazcF9x/VuHsWBZVY+1EEkPrrUDfxaTrlhoB+V+nMPM8O0ZJniz1YgxwDgiPGjhaq4uWoM5rAaq26i
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(136003)(346002)(376002)(366004)(45080400002)(83380400001)(76116006)(71200400001)(478600001)(86362001)(53546011)(52536014)(6506007)(186003)(66446008)(64756008)(66946007)(66476007)(66556008)(26005)(2906002)(7416002)(54906003)(5660300002)(9686003)(55016002)(4326008)(6916009)(7696005)(8676002)(33656002)(8936002)(316002)(2004002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: eUugfjKZUTxXazINsVml92qQ+AZLicA011EF5h4kzR40I8lVc9wMpOJGwY4nvG1zKj7gHpFHjU6CXfAzHaGD5++9A84b5nzscHkKhaSvcVpyJvYmRbrkzXgErJsbOIrFH5Y3issyA8z5fKAKQ0+zZY7Q2v6F18puAGWypJP7oLckwtmL2/okXlunb4ighjDgVJfJFKSYLsdjQfVTlX3oKt7jGSGV/5148+/uNgxQRm4DMDbTgQdv1/D7pGBj2CBAg8ZgCRuuaxEs6f+XQTaq/K/oij4BtDBze1WMEwrQ2TqNpCnFUSXKTFw92teMADI5B1l3QVovhgk4ql8YP1+Gmg/o16wjwJMYosP4rrDw8iwAx8lqpCRkreT41WPuRd2C1cIIhCmx3Fq9QdOvy91MD2eqp1lEjWpVZNESvygr5nZ7qYGDlhpGVlhqB8N6cjz3jPbIKcX2ltR7kWIRlE3D9wLeOw8DvN+0/SjlDiMA/GY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d84e088b-260b-43ed-b877-08d8110a75e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2020 08:59:49.6483 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qMC0d5RYHGt0WI5jbuQBnxQERl+2aR7TiXbSY1oFprmFHiaUBkIb4axdUPCTX4O7zo4eApzUWCIlGb0Zabc3/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6528
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_015953_707335_F6D58AA6 
X-CRM114-Status: GOOD (  33.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.56 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.56 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "matthias.schiffer@ew.tq-group.com" <matthias.schiffer@ew.tq-group.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/06/15 15:20 Vinod Koul <vkoul@kernel.org> wrote:
> On 14-06-20, 13:04, Robin Gong wrote:
> > On 2020/06/12 22:16 Mark Brown <broonie@kernel.org> wrote:
> > > On Fri, Jun 12, 2020 at 01:48:41PM +0000, Robin Gong wrote:
> > > > On 2020/06/12 18:14 Mark Brown <broonie@kernel.org> wrote:
> > >
> > > > > Please look at the formatting of your e-mails - they're really
> > > > > hard to read.  The line length is over 80 columns and there's no
> > > > > breaks between
> > > paragraphs.
> > >
> > > > Sorry for that, seems my outlook format issue, hope it's ok now
> > > > this time :)
> > >
> > > Yes, looks good thanks!
> > >
> > > > > Client could enable this feature by choosing SPI_MASTER_FALLBACK
> > > > > freely without any impact on others.
> > >
> > > > > SPI_MASTER_FALLBACK.  If this works why would any driver not
> > > > > enable the flag?
> > >
> > > > Just make sure little impact if it's not good enough and potential
> > > > issue may come out after it's merged into mainline. TBH, I'm not
> > > > sure if it has taken care all in spi core. Besides, I don't know
> > > > if other spi client need
> > > this feature.
> > >
> > > It's not something that's going to come up a lot for most devices,
> > > it'd be a mapping failure due to running out of memory or something,
> > > but your point about that being possible is valid.
> > >
> > > > > > Any error happen in DMA could fallback to PIO , seems a nice
> > > > > > to have,
> > > > > because it could
> > > > > > give chance to run in PIO which is more reliable. But if there
> > > > > > is also error in
> > >
> > > > > PIO, thus may loop here, it's better adding limit try times here?
> > >
> > > > > An error doesn't mean nothing happened on the bus, an error
> > > > > could for example also be something like a FIFO overrun which corrupts
> data.
> > >
> > > > Do you mean fallback to PIO may cause FIFO overrun since some
> > > > latency involved so that this patch seems not useful as expected?
> > >
> > > No, I mean that the reason the DMA transfer fails may be something
> > > that happens after we've started putting things on the bus - the bit
> > > about FIFOs is just a random example of an error that could happen.
> > >
> > Sorry Mark for that I can't get your point... The bus error such as
> > data corrupt seems not the spi core's business since it can only be
> > caught in spi controller driver or upper level such as mtd driver
> > (spi-nor) which know what's the failure happen at spi bus HW level or
> > what's the correct data/message. In other words, spi core can't detect such
> error by transfer_one().
> >
> > > > > It *could* but only in extreme situations, and again this isn't
> > > > > just handling errors from failure to prepare the hardware but
> > > > > also anything that happens after it.
> > >
> > > > Okay, understood your point. You prefer to some interface provided
> > > > by dma engine before dmaengine_prep_slave_sg so that can_dma() can
> > > > know if this dma channel is ready indeed. But unfortunately, seems
> > > > there is no
> > > one....
> > >
> > > Well, this is free software and everything can be modified!  The
> > > other option would be framework changes in SPI that allowed us to
> > > indicate from the driver that an error occured before we started
> > > doing anything to the hardware (like happens here) through something
> > > like a special error code or splitting up the API.
> > Yes, but both assume spi controller driver could detect such dma
> > failure before dmaengine_prep_*(). Let's wait Vinod's comment for that
> > if dmaengine_slave_config could keep direction.
> 
> The direction is already in the prep_ call, so sending in dmaengine_slave_config
> is not required, pls pass it in the prep_ call
Hi Vinod,
	Is there any way to let the device driver to know dma controller is ready
(in sdma case is sdma firmware loaded or not)before prep_call? Hence, spi core
could map dma buffer or not. Prep_call is too late for spi core since the buffers
have been already mapped. 

	From my view, seems dmaengine_slave_config is the only one...Further,
sdma need direction in dmaengine_slave_config phase, because currently
what's the tx/rx script used on sdma channel is decided not only peripheral_type
but also direction. For example, spi tx dma is running ram script to workaround
ecspi ERR009165 while rx dma is running rom script, so only spi tx dma channel
depends on sdma firmware loaded(now that could be detect by ' load_address
< 0' in sdma_load_context() and prep_ call finally).
   I knew direction is deprecated in dmaengine_slave_config, but that's really
very useful for sdma to check if firmware loaded and spi core could get it earlier
before prep_call(fallback to PIO if dma is not ready).
 
> 
> > But despite of that case, do you think this patch is valid for
> > transfer_one() failue in dma and fallback to pio?
> 
> --
> ~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
