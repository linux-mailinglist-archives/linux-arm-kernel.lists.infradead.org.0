Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB8C1F325B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 04:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VI7ZftstLMYKo6ODMjV3FN9vKyQJEZffVjjdFTSahsE=; b=TNLMPg5qeS98LN
	z/iFBbZN+A8jfV/U2SGLLqQcKTzPuIOfmz0OUQd2PAkFhAZWITLjiKTGyG7vGpYqJwrV2xel5blfC
	sG6qQAw+kSbn9LaFV4XUOuwH5cOfMKPga/MGdplxZeKo6L65TqoWqBs+zh+/wvfrl96gK8VZ9Tyey
	9RQqT57H0AofoybV+q7688QqiYOGKJmXB4YUEteN/mBSIPUMXpJLj0BCR4D+/ODtRVBsZZt5z4HFr
	LNvLt62/XhAiOZuBkJuw3UcKaXw7RsX0TrjjUvagUesEN1G+g1BMbMjntuChppUrruHrO4Fbk8uCm
	omN/EQwbXcIiRcnZxuSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiUGl-0007A3-MB; Tue, 09 Jun 2020 02:45:43 +0000
Received: from mail-eopbgr60082.outbound.protection.outlook.com ([40.107.6.82]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiUGe-00079E-Tv
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 02:45:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d4sZAjPcjgT5J9cJvMMUl67dL4prIBMPPHPllkrcTTARLKiBl96dIkaLeHGDRNAL3p5FW7IUq4Y+2mDfgqKl3Z3nspHfZCfmaRbWyMD0uBzVcz3jqAC24tqN0E5yY3SCzug53UMe7kcpNfHwEPRJqncHf0L6YnTPOYbdCz/B0fPqY89GV+zYz0hu62w07Hwg4NVUZlourV8cV9tO0MNyq0xk7RLlq6pHF2D8jGCftHc597grdLauHHkptqYkrKH5N+2ZMeP7OwzIecTJ3B36S3fCt6n3c0zLzl7FG9mwa1nB1CQpx0wUhEmC6hcdPWDw2e/gvmdTadVvgZBlPNwJ7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IO76/tfyCIrbLJ0tSwuSMqcd/CCnMGsl+/J4mvn0Se0=;
 b=fk/IsQxsepIZpuvM0qFGtGp+6H3PpmTnn8YPWMTzucVva2jBV9mgsj+R2WrTK1ZhpGqdQ6hxHkv3GetWoSo3mCf3ZX/UTmFNEzWUkP2/srLmhXMjmEFhT9V39+MZ6g2+qqwfu+Py2F1jQVGqbTd2ylJg2IJ1ZopzaCa4LCh/QgetUJ4w74nTLPNZVtDUve2uIIdKHyys6UDN4ccNEnBhpo3P+sgZ9xlvm1OrUwRnTxIOmLfn6aKU+/eDQNGXZ+0lkYonAn6+Pi0BaDkK6ZDpweXt/hyRkh24DSIo85oWhFb8gPxVlcqS04PcMN7sbBmWIGRsqU4h26kWofpMs/qvIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IO76/tfyCIrbLJ0tSwuSMqcd/CCnMGsl+/J4mvn0Se0=;
 b=CX/+Tg4r8jrsUwdAN0LjU59QQdxaVGt1TylYs2Er56+APam7NpxDsgTgJQRwnpU8cJgQ8zPz7iWWulb+xuRv1XfIaWI4F43iQRL42XxCqzgeKMsKG2+UbkD6tr78JF7ouMOYHLhAB0x2Ujsqtn0oFD+SR1Leie//VmwpnI1IOUQ=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6493.eurprd04.prod.outlook.com (2603:10a6:803:11f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Tue, 9 Jun
 2020 02:45:32 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 02:45:32 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Mark Brown <broonie@kernel.org>
Subject: RE: [PATCH v9 RESEND 01/13] spi: imx: add dma_sync_sg_for_device
 after fallback from dma
Thread-Topic: [PATCH v9 RESEND 01/13] spi: imx: add dma_sync_sg_for_device
 after fallback from dma
Thread-Index: AQHWPBYcMy4ZpJEEjkym0JBjSJknZajOy8sAgAABToCAAA6IgIAAsIcw
Date: Tue, 9 Jun 2020 02:45:32 +0000
Message-ID: <VE1PR04MB66386CEECCACEC111BA5D69589820@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
 <1591485677-20533-2-git-send-email-yibin.gong@nxp.com>
 <20200608143458.GH4593@sirena.org.uk>
 <VE1PR04MB66388F89015F774EE3FFF69D89850@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200608153139.GI4593@sirena.org.uk>
In-Reply-To: <20200608153139.GI4593@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cfde2409-ed8f-45c7-a302-08d80c1f2dd6
x-ms-traffictypediagnostic: VE1PR04MB6493:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6493489B171EF7B7C1CD45A489820@VE1PR04MB6493.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 042957ACD7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 75JVlDZTc45ktXLUkkP0wwFoeN4lSzy93Z+eLZwl5NYl33R/h4kWf7rclbPcFfp/Hr7858HRJ+4Dl2l1Xs4f4xZQAOOps5oBtWpzczK+DfnKAbXZa03us6avvsuWbUAoHIo3g/QyqnwkSvURvzW5LJA3domYr3a91ShkiZ92gCGbdAJQsWFeKp1V7oeE48UzGq4hRxYWsn+iiT2ubpTD2WS5EQlrWi838dlLJpFU67FLjizYaewGqqWlkBaLl6o02bGMGpo4R6LU57wCIK2TQ924J5HFvc5VPym3usFSYxHd3AiBJAXiq7y4+EHbbfojrQgTlSVTWFW4i+TqaSl33w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(39860400002)(376002)(366004)(136003)(396003)(478600001)(186003)(8676002)(8936002)(26005)(7416002)(4326008)(52536014)(83380400001)(86362001)(66446008)(76116006)(5660300002)(66946007)(71200400001)(64756008)(6916009)(316002)(9686003)(2906002)(55016002)(66476007)(7696005)(54906003)(53546011)(6506007)(33656002)(66556008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: hO2DvtM4az7TLY4jkICt08OocKPdr5nMGZPCSVXlSaM7PesCPb+NwOR2bc9EsoqeVFSPntKj2WBp/ZnIjBkmMMHzGvJ0+IEnRlb28vo8h2BZu3t7CL8K36CQxzCUfxDlAKkUvhX09mTXkMR5JDJ6okMjYzT/2lGvbvxIPT5tkwX4atjkOki0GHl090oJglqCTilmudVtatWQj5xbwYDbO7hTm3ikI+jGvO0j75uDrQ6ICU9Gb1zl0o+oDoJskTx6/EgPhR0PCoovlYS8cImv74MG91rdjAhmJksafoquYTKZ02tItFEgvJDYWFC/bB4YAkrMSwOmq1FG5YT+ddX/ksIvKmLtXCyo1IqRjWkJOFyS1GRn44VX2X8fUciWvH+ckkQhykFmqpsYOpKv/uLPoYDe3jb6R9Sw6E4Twx7UhAwb1dRfq8AOX78VQUFVe/5K6aYEZBC6gIVjzwZapboQinHCsQB9bmAer/xvcNH00ew=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfde2409-ed8f-45c7-a302-08d80c1f2dd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2020 02:45:32.3926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M/E+eaQ5iDkZ9IIG3FOTrmm8dynedfNcqg8C3Z4cXg3Wfa7AwhLPZVU+XwG+rUaUF8RVauTKayvsvwM0Z/oEOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6493
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_194536_967474_8E8A701D 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.82 listed in wl.mailspike.net]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "matthias.schiffer@ew.tq-group.com" <matthias.schiffer@ew.tq-group.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/06/08 23:32 Mark Brown <broonie@kernel.org> wrote: 
> On Mon, Jun 08, 2020 at 03:08:45PM +0000, Robin Gong wrote:
> 
> > > > +	if (transfer->rx_sg.sgl) {
> > > > +		struct device *rx_dev = spi->controller->dma_rx->device->dev;
> > > > +
> > > > +		dma_sync_sg_for_device(rx_dev, transfer->rx_sg.sgl,
> > > > +				       transfer->rx_sg.nents, DMA_TO_DEVICE);
> > > > +	}
> > > > +
> 
> > > This is confusing - why are we DMA mapping to the device after doing
> > > a PIO transfer?
> 
> > 'transfer->rx_sg.sgl' condition check that's the case fallback PIO
> > after DMA transfer failed. But the spi core still think the buffer
> > should be in 'device' while spi driver touch it by PIO(CPU), so sync it back to
> device to ensure all received data flush to DDR.
> 
> So we sync it back to the device so that we can then do another sync to CPU?
Yes, spi.c will sync to CPU again in spi_unmap_buf() after transfer done finally.
Otherwise, the fresh received data by CPU in this fallback case may be invalidated
by spi.c, which led to the data corrupt on Matthias's side.

> TBH I'm a bit surprised that there's a requirement that we explicitly undo a
> sync and that a redundant double sync in the same direction might be an issue
Considering DMA transfer may be failed(for example, sdma firmware may not be
updated as ERR009165 depends on), we'd better fallback to PIO to ensure no any
function break here. Thus should clean fresh rx data from cache into external memory
as real 'device' received by DMA. Understood a bit confusing here, but that way could
be avoided by any code changing in spi.c. Or make some code changes in spi.c to cancel
spi_unmap_buf() in such fallback case?

> but I've not had a need to care so I'm perfectly prepared to believe there is.
> 
> At the very least this needs a comment.
Okay, I'll add comment here in next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
