Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF21BFCF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 03:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WbUHVpBsh/XY/WnmuBGIKmO/kcZLof0KR1GvHQv8cQ=; b=gwzcA2NfrMdaOM
	efMQTBRRPDcjAyPZnYnRY7LYiNhOY9inukQZFWrtCDGqlobuCdDVbhVQ/P1HmxM3wDwYAaQ74SRm0
	y9irJHfTOkUuw8EA+n/AJiolCfBXsUs6C6sMl3uXTbC3kOCMrUftLQKMiEo7vu4Gzr1PZUW3czP6h
	f9JmDBmipMQ4VW0E5lcr/jRH5LtXgM0E9WzLjObj/AcrrjdrXMm+2IxL11PDhppTfFASCCf2lyr2Q
	yOy4NxcCMCUxD3aGCl/u5+WvwdRAtGEBDBmoKTCQZaqxYZmMApZgDaJWJPJeP9TOexpyNqjVC5yzj
	6dDginDR94LRT6VZBmnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDfTp-0003UQ-0f; Fri, 27 Sep 2019 01:55:33 +0000
Received: from mail-db5eur01on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::62f]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDfTa-0003Tc-9g
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 01:55:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XEEhyLbg+dDqB70xDEvkI6Ld6ea1tvW8VyLHHjnvGzP6HZw3h4ULws+FMhQ76v8fuT4e6IOur7oAder1ndjanyLUWC+u5JqX2lREKZjBvpFRoGxqksR1/AwsAf2UohzlAi1QsF0ZRL86zjgtjYiBsGW5g+/lCQsq3zVyYK5JKZVaVT9KSB/t/DzgbfUhq5HJZCerpJojJU6EBkziSSPQFeN8dPudo79cy8eaeZkhkpSRj322ilm2d6Who4mDiBCtXsbHdf6+0IUu/1/KhQ2o/lzrAb6aK1xVsU7eaixohNtfTuEDuaXT6RrDy3Hy8zDhdAYZ7GlNeur12LB0UUBUCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eVV8MyAmvxdBFEEmeG9psM+kbTdh/A5dCpWuBNl+q8o=;
 b=EzqA6z2gfk9MNzgx6XRIk+9WBqYavaZgMmxbjeyAt6vlgdGr9qV8EN41MKZUHayF3UKQlG+urYRkWjpsNgh+gYsj40ZLyyS6O9r2/79BaDiJjNdYY2oatacN9AMHPWevVMQdOIDQtAP/0ufe0IA37Lc8VWw4PLGGhG7Qv8ytLae3mL6OH057illSG9owSeA6SOVMSpnVAsTKNKstEcr7zKv6R7arjXAyyuKMPIXUksWSxfHvhW5M82nNcfHpu40vwX2uDGBmjqO/2W+IMzDDxocGAVTFEw+qdg6LPKeRsYClxQ6WIN0wYdGV6bAtkpyjMtPMnx0HI+ebvrGXPfULig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eVV8MyAmvxdBFEEmeG9psM+kbTdh/A5dCpWuBNl+q8o=;
 b=h0O9c+E4CZ2LIf8WPrrqqOmwmXfm6SDH6gYRwp/iVdDdVZ3VFQfh6lStZSzoVz9bEv/KwxrpB31rILXp7LL17fYzIEEmQeRb3y2eQ05RpAQFHBSdso3iWi+X0gSn8bljbRdsc8gG7nvDQcwMeRe/NZNdYHhVCXgvV5CJIiDKnCc=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6750.eurprd04.prod.outlook.com (20.179.234.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Fri, 27 Sep 2019 01:55:14 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::35d1:8d88:10f4:561]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::35d1:8d88:10f4:561%5]) with mapi id 15.20.2305.017; Fri, 27 Sep 2019
 01:55:14 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: RE: [PATCH v5 11/15] dmaengine: imx-sdma: fix ecspi1 rx dma not work
 on i.mx8mm
Thread-Topic: [PATCH v5 11/15] dmaengine: imx-sdma: fix ecspi1 rx dma not work
 on i.mx8mm
Thread-Index: AQHVH2TUeqmuIEjDz0ugonhEiODBJqc7eN4AgAFtyHCAADyMgIACPgtw
Date: Fri, 27 Sep 2019 01:55:13 +0000
Message-ID: <VE1PR04MB6638B066EE28781A3C21973D89810@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190610081753.11422-12-yibin.gong@nxp.com>
 <29cf9f29-bdb4-94db-00b0-56ec36386f7a@kontron.de>
 <VE1PR04MB6638639EF4F580E04689538E89870@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <1307d229-4c49-80e3-04ba-377c0caeae9c@kontron.de>
In-Reply-To: <1307d229-4c49-80e3-04ba-377c0caeae9c@kontron.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6316e2a2-cdde-4e0b-53cc-08d742edbce8
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VE1PR04MB6750:|VE1PR04MB6750:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB675034C9E3CAA51C3EFDCDA989810@VE1PR04MB6750.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(376002)(136003)(396003)(199004)(189003)(76176011)(25786009)(6916009)(6116002)(3846002)(66476007)(66556008)(256004)(76116006)(64756008)(66446008)(66946007)(86362001)(54906003)(4001150100001)(316002)(71190400001)(71200400001)(8936002)(52536014)(7696005)(81156014)(55016002)(99286004)(9686003)(81166006)(6436002)(7416002)(102836004)(53546011)(6506007)(26005)(66066001)(6246003)(14454004)(74316002)(446003)(486006)(11346002)(476003)(4326008)(5660300002)(8676002)(186003)(33656002)(229853002)(478600001)(7736002)(305945005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6750;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eevZanXK3h0QPuX+Jao5biCE+NeLiCp33NuIsjmyAWLPgvLraqMm80BdiWaqlOJWJpNDZmDh54A9F21FZUMiur4Bp6q+nPql5gn2Q70phVrLlikEn7VsmjJM3XAjS5SIaSOPqVS87Gap8I1qKkY+fXRVUH2x46p71ZHDhqZ46qVemTErkALzOFQ1AU4JzzUGEG1g1/Tyv/PvoNlHor8FkU7xropfJfjrREeec9x6RA/EyjBhK9XeqMmndfA2cg5kDpWBhIPrZW6spL3rerf+MjlFfHlAnrFwXoBLP/Q0iZCJz7epnwWQO87dSPiGX5Q/pmouGOGfufnRU+XYUFG549SsNzIyjn9zSZJV3/L8CyKsYc8ZOaeqKFaaPLqqvxLtuG4eA+yj7id8KV9LDDl7pzQYt3GbSQ9E72cfF6ptSSY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6316e2a2-cdde-4e0b-53cc-08d742edbce8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 01:55:13.9179 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wSvurupapxzvNRrxnYYeFPNtgCrh63t9UkQZjAtYtW/rjXpzQLUd/WKI43LvB90Uaq14Kvqob+ycjouPgEFqMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6750
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_185518_344765_88ACE3CE 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:62f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Fabio Estevam <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-9-25 22:53 Schrempf Frieder <frieder.schrempf@kontron.de> wrote:
> On 25.09.19 13:26, Robin Gong wrote:
> > On 2019-9-24 21:28 Schrempf Frieder <frieder.schrempf@kontron.de>
> wrote:
> >>
> >> Hi Robin,
> >>
> >>> From: Robin Gong <yibin.gong at nxp.com>
> >>>
> >>> Because the number of ecspi1 rx event on i.mx8mm is 0, the condition
> >>> check ignore such special case without dma channel enabled, which
> >>> caused
> >>> ecspi1 rx works failed. Actually, no need to check
> >>> event_id0/event_id1 and replace checking 'event_id1' with
> >>> 'DMA_DEV_TO_DEV', so that configure
> >>> event_id1 only in case DEV_TO_DEV.
> >>>
> >>> Signed-off-by: Robin Gong <yibin.gong at nxp.com>
> >>> Acked-by: Vinod Koul <vkoul at kernel.org>
> >>
> >> I have a custom board with i.MX8MM and SPI flash on ecspi1. I'm
> >> currently testing with v5.3 and as SPI didn't work, I tried two different
> things:
> >>
> >> 1. Removing 'dmas' and 'dma-names' from the ecspi1 node in
> imx8mm.dtsi,
> >>      to use PIO instead of DMA. This works as expected and the driver
> >>      boots with the following messages:
> >>
> >>          spi_imx 30820000.spi: dma setup error -19, use pio
> >>          m25p80 spi0.0: mx25v8035f (1024 Kbytes)
> >>          spi_imx 30820000.spi: probed
> >>
> >> 2. Applying your patchset and use DMA. In this case, the flash also
> >>      works fine, but there are some error messages printed while
> booting:
> >>
> >>          spi_master spi0: I/O Error in DMA RX
> >>          m25p80 spi0.0: SPI transfer failed: -110
> >>          spi_master spi0: failed to transfer one message from queue
> >>          m25p80 spi0.0: mx25v8035f (1024 Kbytes)
> >>          spi_imx 30820000.spi: probed
> >>
> >> It would be great to get your patches merged and fix SPI + DMA, but
> >> for i.MX8MM, we need to get rid of the error messages. Do you have an
> >> idea, what's wrong?
> 
> > Could you check if the length of spi message is bigger than fifo_size
> > during spi_nor probe? If yes, at that time maybe sdma firmware not loaded.
> > if (transfer->len < spi_imx->devtype_data->fifo_size)
> 
> Indeed, most of the transfers triggered by the SPI NOR dirver are below
> fifo_size and work fine, but some are bigger. The transfers therefore try to
> use DMA, but the firmware is not loaded yet.
> 
> How is this supposed to work? Shouldn't all transfers use PIO as long as the
> SDMA firmware is not loaded yet?
Yes, for ecspi should work with ram script, it's better check if sdma firmware
is ready in spi_imx_dma_configure(), need modification in sdma driver too.
I'll create another patch after this patch set accepted. 
> 
> (+ Cc: linux-spi@vger.kernel.org)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
