Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1F515748B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 13:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LS6fmp3a3UYTkyJXdTL4Hux578X7lufRBqAA3Z0//WM=; b=Z8ZqBmEQ0ju6Ay
	HclyC5/xrNNW3hZ8LY4NZmRUdMqLcJf+wE/hEkNzGxqbcGjBl1mZLuI5bBArXVRmyj+l0ZFR7f5am
	GUtOOtlr95lpWl9Krb7SBSeNon5Jb1wpoj/hbT9/sn5PwXU/HNXMUedDJubOLxpqrT9y6eUqrlGBO
	JLjxezWr4y9BNbf9ZwAIqHeleg6hBzlHAAnHkKaKAIdoXijsDiC3R66DLrodpZK32b5Q7Eat9KflY
	7p00eU+LpKg/AXnIrB346vFMWHWBMRgMgQlgaGFHuplX3WaTDI5j3qiFR/CIFZzGdIkYlmVgvmlXq
	gg1lyEDSe+NMYs9zsolQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j18BR-0000Do-7k; Mon, 10 Feb 2020 12:29:01 +0000
Received: from mail-eopbgr60082.outbound.protection.outlook.com ([40.107.6.82]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j18BI-0000D6-O1
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 12:28:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EOprDAeVfo0mO4iG9EqS4e+HWmZu1VSGLViumG7w0OgUcbJLGsTIBl4d8tIWIfDuv8doC+lPamZZJhqpNZMaTiHyWElffCLm6TC1MJ8gWDsJA3lpKuMA+Qcghv282qf0bVCvvqJZKAQsuSe5wDPE3OTOfXMMFUJQSBRop3yMICrhrrIUzwTgCmWt4IDgdjmibEITNqXs8XIpHKxF5HSDJwV+i9Aryxq/DZNW+xgXEpI4jToHZ/JcMxDm7cXdhFmGfEgaMJjrI/S1ulKRReXxgfwMsDLtmpIxAtoz8dhOPWDjFSBVhjW+AgK4Wfo8VMTyxMU0h5v52e0fVPskyTQ/Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E1wmNYYDYPTr7WKKA8rVMT331HPcD7Klzmesc+l+300=;
 b=QFeBjH1d7D+4EJzrAPngH+gzKnD5HhTtLz1tBPv4qE8ABt/SVB3I2Ee8w7dcLjocYJeL7wVOqqBdwV/8aW6biBJ3D5hBMqBqPtWEKQMMfHAUbftpKbpHSDxyp6D8ti7WncQqP/yEbnj6elzgqu6/DVfBYpc7gSGC4rJctw3bexFvS9CovHCiga7Ebzdys7S8jCgcDOeMldtjxKVxjoh7gAIby0uyZtcNQZoxI5So668ZQgFBqm51Ki3G7DLHfsqmdoKm/cUbSBRLnfoxQNDtaadx6lifjj88FhkIBFTInXm4f7Cza0rXdmBVhoPjdX+DcWrXfQvwdMDh4IB40WkwcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E1wmNYYDYPTr7WKKA8rVMT331HPcD7Klzmesc+l+300=;
 b=AD6I60z9T1NOC0emYpc9cTwOpygOoFzijFAZ205K5C/b1uo68m+UE9sI8yds9Oz0lp2oSEPxM/+aoYRorw/dRlJze6hh8aGoagZYzeuEbQROSyu2yYTmf7GSzHoGWJCwiRGcUsIXXHgEq0GsLmG4SKiDMBwkudXia9OE0qXdDmA=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6655.eurprd04.prod.outlook.com (20.179.232.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Mon, 10 Feb 2020 12:28:43 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2707.028; Mon, 10 Feb 2020
 12:28:43 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: RE: [PATCH v5 11/15] dmaengine: imx-sdma: fix ecspi1 rx dma not work
 on i.mx8mm
Thread-Topic: [PATCH v5 11/15] dmaengine: imx-sdma: fix ecspi1 rx dma not work
 on i.mx8mm
Thread-Index: AQHVH2TUeqmuIEjDz0ugonhEiODBJqc7eN4AgAFtyHCAADyMgIACPgtwgNANLoCABhHsUA==
Date: Mon, 10 Feb 2020 12:28:43 +0000
Message-ID: <VE1PR04MB6638D7886CBADAFF47E5497C89190@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190610081753.11422-12-yibin.gong@nxp.com>
 <29cf9f29-bdb4-94db-00b0-56ec36386f7a@kontron.de>
 <VE1PR04MB6638639EF4F580E04689538E89870@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <1307d229-4c49-80e3-04ba-377c0caeae9c@kontron.de>
 <VE1PR04MB6638B066EE28781A3C21973D89810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <862c498f-3c15-fac4-4f17-a30c2e11bb3e@kontron.de>
In-Reply-To: <862c498f-3c15-fac4-4f17-a30c2e11bb3e@kontron.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [183.192.236.243]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 95a45a6e-8ce7-49f2-b8e0-08d7ae24c4ba
x-ms-traffictypediagnostic: VE1PR04MB6655:|VE1PR04MB6655:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6655CA16FE3531FE81AE842289190@VE1PR04MB6655.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03094A4065
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(136003)(346002)(366004)(199004)(189003)(4326008)(8936002)(7696005)(6506007)(53546011)(33656002)(86362001)(71200400001)(26005)(186003)(7416002)(2906002)(8676002)(81166006)(81156014)(9686003)(52536014)(5660300002)(66946007)(76116006)(316002)(6916009)(66446008)(64756008)(66556008)(66476007)(55016002)(54906003)(4001150100001)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6655;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R+q3GFhxN7qvU2vq75T/vlMbR+cLXs8y70lXjA8IQPWsQGwOjmmkwnY20Yh0PnLIirajyEktobH+QD60uxsovw7ObCCAHPEW/5zxmIlRKRCwKZdLoa03UjGrU05VrqkXw3cFDkni668bw4ZGSGOyOTU2Kn/XBfALDrDupZyusj0WxVHzLhZxmZ+rzFQpCmOf7tPpaL7R8KOETB8tu0kM9baxYDfV5MmxYkRP9AQcl97dp5gqJM+7jujrsIg9h0FEyYR83QLCZ4FBADrXrOLOZ1nHjYE1iJYCIZuVg4JJfzTIumHC9RDa4ND7pC9VNtMLGWXZr0Gmu46OABkcIJJ6tckAekDt7grmVWlLjcfUC/quqpa77H60FGzEcos0a5yocFj/e+iOn7umd/5Jso+1OQ3AhplFZ++7B7gIRzTMHco5w8FmmEJRPpsLSkSCu3hW
x-ms-exchange-antispam-messagedata: X6C9XTwwcxzeAFv6/h/J3wC3bI7YUtK6l4FtRYf7zQR+Sp4GHAOlJgiYqlmTAq/kmpV4WQHDDQok77CUXSFSyRbtCgM+NmM0f8st7+rbRaDz+Gx4vKfEAqMLZdVlrYwsq/1gy77+IK7XSZrb94Amrg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95a45a6e-8ce7-49f2-b8e0-08d7ae24c4ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2020 12:28:43.7182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yKstzxSzm30AUrJWV16YlBM+qMf2swgMMy9cliWyYtjMEvzYkABUSHuEBxOWlZK0Ewcz2qFgO/HCsNN9HVduHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6655
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_042852_890705_5CB9FD91 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.82 listed in list.dnswl.org]
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

On 2020/02/06 Schrempf Frieder <frieder.schrempf@kontron.de> wrote:
> 
> Hi,
> On 27.09.19 03:55, Robin Gong wrote:
> > On 2019-9-25 22:53 Schrempf Frieder <frieder.schrempf@kontron.de> wrote:
> >> On 25.09.19 13:26, Robin Gong wrote:
> >>> On 2019-9-24 21:28 Schrempf Frieder <frieder.schrempf@kontron.de>
> >> wrote:
> >>>>
> >>>> Hi Robin,
> >>>>
> >>>>> From: Robin Gong <yibin.gong at nxp.com>
> >>>>>
> >>>>> Because the number of ecspi1 rx event on i.mx8mm is 0, the
> >>>>> condition check ignore such special case without dma channel
> >>>>> enabled, which caused
> >>>>> ecspi1 rx works failed. Actually, no need to check
> >>>>> event_id0/event_id1 and replace checking 'event_id1' with
> >>>>> 'DMA_DEV_TO_DEV', so that configure
> >>>>> event_id1 only in case DEV_TO_DEV.
> >>>>>
> >>>>> Signed-off-by: Robin Gong <yibin.gong at nxp.com>
> >>>>> Acked-by: Vinod Koul <vkoul at kernel.org>
> >>>>
> >>>> I have a custom board with i.MX8MM and SPI flash on ecspi1. I'm
> >>>> currently testing with v5.3 and as SPI didn't work, I tried two
> >>>> different
> >> things:
> >>>>
> >>>> 1. Removing 'dmas' and 'dma-names' from the ecspi1 node in
> >> imx8mm.dtsi,
> >>>>       to use PIO instead of DMA. This works as expected and the driver
> >>>>       boots with the following messages:
> >>>>
> >>>>           spi_imx 30820000.spi: dma setup error -19, use pio
> >>>>           m25p80 spi0.0: mx25v8035f (1024 Kbytes)
> >>>>           spi_imx 30820000.spi: probed
> >>>>
> >>>> 2. Applying your patchset and use DMA. In this case, the flash also
> >>>>       works fine, but there are some error messages printed while
> >> booting:
> >>>>
> >>>>           spi_master spi0: I/O Error in DMA RX
> >>>>           m25p80 spi0.0: SPI transfer failed: -110
> >>>>           spi_master spi0: failed to transfer one message from queue
> >>>>           m25p80 spi0.0: mx25v8035f (1024 Kbytes)
> >>>>           spi_imx 30820000.spi: probed
> >>>>
> >>>> It would be great to get your patches merged and fix SPI + DMA, but
> >>>> for i.MX8MM, we need to get rid of the error messages. Do you have
> >>>> an idea, what's wrong?
> >>
> >>> Could you check if the length of spi message is bigger than
> >>> fifo_size during spi_nor probe? If yes, at that time maybe sdma firmware
> not loaded.
> >>> if (transfer->len < spi_imx->devtype_data->fifo_size)
> >>
> >> Indeed, most of the transfers triggered by the SPI NOR dirver are
> >> below fifo_size and work fine, but some are bigger. The transfers
> >> therefore try to use DMA, but the firmware is not loaded yet.
> >>
> >> How is this supposed to work? Shouldn't all transfers use PIO as long
> >> as the SDMA firmware is not loaded yet?
> > Yes, for ecspi should work with ram script, it's better check if sdma
> > firmware is ready in spi_imx_dma_configure(), need modification in sdma
> driver too.
> > I'll create another patch after this patch set accepted.
> 
> This still seems to be broken upstream. Is anyone working on fixing SPI
> + DMA for i.MX8MM? Otherwise I will send a patch that removes the DMA
> from the ecspi nodes in the devicetree.
Sorry, Frieder, my patch set has been blocked for so long time because I revert
some patches and need get commit from patch owner, unfortunately, I didn't
get any feedback from them although I got ACK from maintainer. I'll pick up
them, rebase and resend it these days, then could address your issue later.  
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
