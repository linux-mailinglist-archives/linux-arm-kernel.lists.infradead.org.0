Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AB11F37AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXUL18gjvQWXnzC63jpIsihxe16Zr7qPGrHO64bryqw=; b=RjHPfSxA/HnTIk
	4BHQljU4K6/40e2Fw8OX/XbrfgHDjS4fUxqG3JvjyMbW2G7rOSWpqCccvF4fuGGdFr/Kyfo5OoMgf
	ZnrnGc/2vMLrLdcrSBpig2xwcgqoNzTVPXTnAZ1feI3GSX59s3oYo41bThfJiRJUn8fsrqMU8bbZ5
	RmjrI6sqMCDX5ty4WVKy5k6f6EUACisb57K/EBCewmt1KLgMdx+pDBUqamEO3rFwiqBk+wm3IIc6T
	4FxhjYbc0n1L8OQbrgywucYjeGNuFzDoYXcITtLrQWOvODcXhuTV/r9gJZBzp6A/rEi8dFpJTB/Lv
	NiEio0JF1e4VwebB3N4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibDf-0001yy-BI; Tue, 09 Jun 2020 10:10:59 +0000
Received: from mail-eopbgr20078.outbound.protection.outlook.com ([40.107.2.78]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibDX-0001y5-F1
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 10:10:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I2G1THQLh4pVb2o6066X0SAl4vi/OAVSGIe2ICkTjwQV+VXHcp7EVwzToFTdFw53bv9EoRH80Bchf9k4cbqxlLzQy8gZLbr+WcxPDXX4Mg9xJjSQ4k6b3q7NglUUgkoIjqZLMFVFbdChud/R7aHFyKcx0V5iTAeGCic9gckmpkOkd5W7n7PBUoVAK7EL910z/4boZ0kH3zAVGUq8YNRQqfOTNYALNXW6aSSdHZAOG3NADtJVFyIgh5L0XA4mlRcuNDCJ4ny5tAVpTOFiqu+8eV/F+JOAyMIKI9z7f87pDBR11/2xeGa3KCgI+XEXvABePAdFqh8U2HOX5UfSLHST8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QSGNTfCiTWhQa2GVPp0vAi0AnCFRCFK/kvfJhrciEX8=;
 b=hq93VmZmhhIrpRypduLI7EKuA+f0uKXxCwu0qT9a73qN4FM2gGY5Un9O+fxl4+2qZvUIv0ih6/0OpD66KcWt3UkAvVPnqIZ9TRjlv57yhq0bWLDA3Tc1g2uT1ovy31DYaDkHZZV9KSQDZ8B53on2IvlWieegk9IFtLyvAmU1ibAq0UI6LTIuH7zw1qi6gDAFll9xwLW1JnUUD9j6ZphieB4/ceKBuQH9nxOtKl/2UrpqIP+jS63ZU3940rSDQo1Vl6Q0DxPBbnwJPZL2lmf2BYBMmIXwt/HgtmXBQOamxIXDZB2m3rTMYqNWzipZyNeepKkY/+Dmq4Y4Bb1CkiW1mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QSGNTfCiTWhQa2GVPp0vAi0AnCFRCFK/kvfJhrciEX8=;
 b=L2Ni22/Jnv2mr+XdxdHUAVgD5RW4x4U2AcvBH/xSODDl/L8TRQ95FCu5KAMq4cCo2b/S8tBTFt7xnK93TSSiTJQYYpz/dFK3bWOg9CuXAAOARE3C8gV6sC7UobfJLDJuvcRqQH+IDkfOvIXE9liKBCm8JRsi2UaR3c8T+QmH6QA=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6381.eurprd04.prod.outlook.com (2603:10a6:803:119::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Tue, 9 Jun
 2020 10:10:47 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 10:10:47 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Robin Murphy <robin.murphy@arm.com>, Mark Brown <broonie@kernel.org>
Subject: RE: [PATCH v9 RESEND 01/13] spi: imx: add dma_sync_sg_for_device
 after fallback from dma
Thread-Topic: [PATCH v9 RESEND 01/13] spi: imx: add dma_sync_sg_for_device
 after fallback from dma
Thread-Index: AQHWPBYcMy4ZpJEEjkym0JBjSJknZajOy8sAgAABToCAAA6IgIAAFFCAgACn/7CAAHmEgIAAASqw
Date: Tue, 9 Jun 2020 10:10:47 +0000
Message-ID: <VE1PR04MB663812B887A6D8DDCE75399B89820@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
 <1591485677-20533-2-git-send-email-yibin.gong@nxp.com>
 <20200608143458.GH4593@sirena.org.uk>
 <VE1PR04MB66388F89015F774EE3FFF69D89850@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200608153139.GI4593@sirena.org.uk>
 <59ce3620-00b9-bac1-30e1-011a29583642@arm.com>
 <VE1PR04MB6638B1EC49D295C64292B7BD89820@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <bcfc3637-65af-577a-ddbd-890b6c83a6e6@arm.com>
In-Reply-To: <bcfc3637-65af-577a-ddbd-890b6c83a6e6@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [101.224.33.92]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 14abfe5a-99a8-4d03-abba-08d80c5d6113
x-ms-traffictypediagnostic: VE1PR04MB6381:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB63814D75066B6743393EF09289820@VE1PR04MB6381.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 042957ACD7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YcFK6y5UHwkvpiiUBT50qAPBFydJtiQ0rxfHFI0DPjTKykAAVs2vGXa2C95X2xCWrKEnSuUngxfYTym45z2QVs1JL94r9iKomhIHKtDPDHO+YeX2WdFhzkGoRMvPvFPS+zo6CrZi+uoZBCN4/Ks8rh1vUvCXNs09xRAHXPpDW6k6ye4oB/HHNq+Z/u8QQ4rkP/A4jDuQltbBx/opoQIrxYQhVr/7R0NOIL2r5J4RID99AzG5iAt7ex/l3l+xquCOcU74eeGOg94aNAmBrk85iNSk4zmWpK/7/s4cZoWVrWTSDMmKQdTQOzQ4+yyeUHsCJTQKG9eK3MBb4uO5XvuMnw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(39860400002)(376002)(366004)(136003)(396003)(26005)(186003)(7416002)(52536014)(8676002)(8936002)(4326008)(83380400001)(478600001)(86362001)(66556008)(71200400001)(5660300002)(9686003)(76116006)(110136005)(54906003)(316002)(7696005)(33656002)(53546011)(6506007)(2906002)(66946007)(66446008)(66476007)(64756008)(55016002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 95JuDsLEkvjLI4wvtIJU80R/BHJhM4NZ4B18Rvxi39hsYD5EAHotX/N3apXHt7jCGCw6ok39GNji1XoYZxODNEBu+R0zurJn/UXnkimOcRyFAWiEs5MLpf1bB6bsXsCaE1n3OppLicQ3H6xl+7/dv6yq0GymmSySnftA4xIbhnsHO3r0hDPOi5/GIE6IBg59ywbfm2jTwlkJFlPw8hopBLt2UPvgiKJ2vCii6GxY/trndTQLXlk4aT3IuWDFrxYFNc0GPcNq9hBPWNDE5L42/VDZSkVi9VLhsfllJ14fPWn6Kp7FlyYPb/1MO9i6x2IktZJdxMKicS9VFeSyxMC5a5AqxzLdD6NIyam1t5HrJrs+aOhzxjgmBv+Ja19Kqv1wRd4UuHk5QmDYe2FpXQW8sVQ/5c0iGCBvpljyzzzuKOyMgRKN5bhUGb1wVP7dtKPiVJSILX/Kvz3ETjuHf4DpdJnb1793wE5XYGlFnjN3sqQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14abfe5a-99a8-4d03-abba-08d80c5d6113
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2020 10:10:47.1557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x2y48SDOenvVl8pwttcut9c722kV3kvVPVaBoOuy/C5fEJq1/GHZVOfHMDsSnz+qgT5BI8DSv/9UEW8g9Qd1ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6381
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_031051_569748_41C8FEDB 
X-CRM114-Status: GOOD (  24.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.2.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.78 listed in wl.mailspike.net]
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
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/06/09 Robin Murphy <robin.murphy@arm.com> wrote: 
> On 2020-06-09 06:21, Robin Gong wrote:
> > On 2020/06/09 0:44 Robin Murphy <robin.murphy@arm.com> wrote:
> >> On 2020-06-08 16:31, Mark Brown wrote:
> >>> On Mon, Jun 08, 2020 at 03:08:45PM +0000, Robin Gong wrote:
> >>>
> >>>>>> +	if (transfer->rx_sg.sgl) {
> >>>>>> +		struct device *rx_dev = spi->controller->dma_rx->device->dev;
> >>>>>> +
> >>>>>> +		dma_sync_sg_for_device(rx_dev, transfer->rx_sg.sgl,
> >>>>>> +				       transfer->rx_sg.nents, DMA_TO_DEVICE);
> >>>>>> +	}
> >>>>>> +
> >>>
> >>>>> This is confusing - why are we DMA mapping to the device after
> >>>>> doing a PIO transfer?
> >>>
> >>>> 'transfer->rx_sg.sgl' condition check that's the case fallback PIO
> >>>> after DMA transfer failed. But the spi core still think the buffer
> >>>> should be in 'device' while spi driver touch it by PIO(CPU), so
> >>>> sync it back to
> >> device to ensure all received data flush to DDR.
> >>>
> >>> So we sync it back to the device so that we can then do another sync
> >>> to CPU?  TBH I'm a bit surprised that there's a requirement that we
> >>> explicitly undo a sync and that a redundant double sync in the same
> >>> direction might be an issue but I've not had a need to care so I'm
> >>> perfectly prepared to believe there is.
> >>>
> >>> At the very least this needs a comment.
> >>
> >> Yeah, something's off here - at the very least, syncing with
> >> DMA_TO_DEVICE on the Rx buffer that was mapped with
> DMA_FROM_DEVICE is clearly wrong.
> >> CONFIG_DMA_API_DEBUG should scream about that.
> >>
> >> If the device has written to the buffer at all since dma_map_sg() was
> >> called then you do need a dma_sync_sg_for_cpu() call before touching
> >> it from a CPU fallback path, but if nobody's going to touch it from
> >> that point until it's unmapped then there's no point syncing it
> >> again. The
> >> my_card_interrupt_handler() example in DMA-API_HOWTO.txt
> demonstrates
> >> this.
> > Thanks for you post, but sorry, that's not spi-imx case now, because the rx
> data in device memory is not truly updated from 'device'/DMA, but from PIO,
> so that dma_sync_sg_for_cpu with DMA_FROM_DEVICE can't be used,
> otherwise the fresh data in cache will be invalidated.
> > But you're right, kernel warning comes out if CONFIG_DMA_API_DEBUG
> enabled...
> 
> Ah, I think I understand what's going on now. That's... really ugly :(
Yeah...The only reason is to avoid touch any spi core code...I'm trying to implement fallback at spi core so that can spi_unmap_buf directly if dma transfer error and no need
such dma_sync_* in spi client driver. Not sure if Mark could accept it. Thanks for your below great thoughts :) 
> 
> Looking at the SPI core code, I think a better way to handle this would be to
> have your fallback path call spi_unmap_buf() directly (or perform the same
> actions, if exporting that to drivers is unacceptable), then make sure
> ->can_dma() returns false after that such that spi_unmap_msg() won't try to
> unmap it again. That's a lot more reasonable than trying to fake up a
> DMA_TO_DEVICE transfer in the middle of a DMA_FROM_DEVICE operation on
> the same buffer.
> 
> Alternatively, is it feasible to initiate a dummy DMA request during probe, such
> that you can detect the failure condition and give up on the DMA channel early,
> and not have to deal with it during a real SPI transfer?
> 
> Robin.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
