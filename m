Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E71D2118915
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JoK5nsmwUkhciElVEVjpaUl0Zy9IxPrc3EyAj/X5w64=; b=kjIgbP1YgZxzJG
	rkKoV2suBQlNxxkz5NREovVKC7KGpAVLKfkp2RVIFG3db8AvrvAt+ao3huQ1/h82Qx8HWyIGb1avv
	RqEvXGYTflm69hVTYg6GN4NVhr9JNBvzBEqE2SfuXs41z5r5qmYG7nvpLb62vfOKR+6DFZ9WAqX1P
	H50P8+83UPNYbLgMG9BNk6g63INfSiCYGag6VnRnZiKGucmxhQ5LfD7lj7YFlf7Q008SuOn4nbSZq
	oHBue6xPIvMBgOeT0AXM8g7wYYS866VwWK5mRj9Ctx8gsxsuLN+fpaY0i+HxGPWm51rBD98yygALh
	/ogcN2W3f+Dy+AUdJt7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ief9D-0001hS-CM; Tue, 10 Dec 2019 13:01:51 +0000
Received: from mail-he1eur04on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::619]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ief94-0001gC-0K
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:01:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iQws0X9khzbmzvFXomtEdAvuYiPzn8CA9qSP6lTlnqcAkW81rEK/s4ElUbVap5eMCIUUDPsIB4Cw8d6qtNu2yfe9IkrOyg/vV99oHnin5F+gYoTclaGvePVHZ17L5X3r4lbAQgbYVaILlm1v4N8GPzzI2jlRwanQISPnjymI8wWV89nGsBugXZsflpYp2JfzN23YsHemoQqCEXAdHhx2KwvkCz0+Ii9yn4LesoTm7axUixG/mP/I4OyZP4WtRF3GDPHjQalgmrLuKRkHOdjhDcB1/WCk+IcpZIivVriA0ZCQOa+tmgCtnSaSC6MHcs+Y149kyFEstPkOmKuoX56kTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9NaInt2HQ+R9J+/f6Vrg3GacP79RNP36bdBBrL3K8I=;
 b=IVVHD1emWjrBjdIIJ9KCMI+y4qZ/ygzFNSswT4Y1SW1QXocPtWTM/U/B2AfHDpDqfMWAkCPcLnZds+UksGaf+ib5peVL1tPHLQZxCtoC3tv8fIizRSJSH48xydsveFUMbCI0sNdtQbz6Qt5kgNp+HBVkfbsheUCpkdcmLw6LnKdmyQS1TqI6PHyzAnAriMPeAowH8VCvXSkAxermyaHZc5P71Xdor4rA/gfaQ2OsDW2TWT5mcEtUKT+/uCroqanttEXSFgg76mOItx9RY80L/wEDoDOpKMB04raUeEfi9Mo6ZynRXjVgi51ix+tEmpl3vTwawSAlKJoxrhtv0rdZYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9NaInt2HQ+R9J+/f6Vrg3GacP79RNP36bdBBrL3K8I=;
 b=fYcI4Yrp4fWF0CILm5ME4I9sLlFpVJebJ+9XmVfvPKpNHcatRE/HEabEX9hpLJxR6na4Txh83RAj/AMlqUuUgJb5UbiKLREH8N06S/+9YSeT0/4o32pJqbFG03IjeJ4128XCX+VJLHpwczR43+j/eVlo6cidrg12fSGK1cxCQCU=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6446.eurprd04.prod.outlook.com (20.179.233.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Tue, 10 Dec 2019 13:01:29 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::100:f42b:82a1:68c2]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::100:f42b:82a1:68c2%7]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 13:01:29 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Philipp Puschmann <philipp.puschmann@emlix.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v5 1/3] dmaengine: imx-sdma: fix buffer ownership
Thread-Topic: [PATCH v5 1/3] dmaengine: imx-sdma: fix buffer ownership
Thread-Index: AQHVchby6WsIv+QhqUqHYVdym6wSTaeqHbhAgAl68ACAACZmMA==
Date: Tue, 10 Dec 2019 13:01:29 +0000
Message-ID: <VE1PR04MB6638D0553E35E4C09AE0C6AC895B0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190923135808.815-1-philipp.puschmann@emlix.com>
 <20190923135808.815-2-philipp.puschmann@emlix.com>
 <VE1PR04MB6638A9E882D40FB7F8CB7F14895D0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <eb584cf0-2be4-138f-e339-aaf9f6f203b0@emlix.com>
In-Reply-To: <eb584cf0-2be4-138f-e339-aaf9f6f203b0@emlix.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [101.86.224.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9f72167a-4167-4410-8d75-08d77d7112ca
x-ms-traffictypediagnostic: VE1PR04MB6446:|VE1PR04MB6446:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB644635B2118C674264DFDE63895B0@VE1PR04MB6446.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(39860400002)(396003)(346002)(199004)(189003)(54534003)(66556008)(71200400001)(66446008)(66476007)(76116006)(64756008)(316002)(186003)(8936002)(478600001)(55016002)(26005)(4326008)(110136005)(53546011)(6506007)(8676002)(86362001)(54906003)(9686003)(2906002)(81156014)(7416002)(52536014)(4001150100001)(7696005)(81166006)(33656002)(66946007)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6446;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O+FX844x0dFuUxsFLOIxTeupOFEw7NIUgz0R6/OY/SnzpYlXjy1hbKy7sXLh7NJ8U2I0JSrpDMymVzU9JN0R21FhzinleZnrTtWpJrc/kAQfTUCdxhiiXLhD1XRsWhLkHsfsLRMtHs5HJ6s5bHOY87MIpelBvnIgWHtb27SuV5g8gyzhEs62/P+8uhSyByhJ4pSNo/gJG2+RNcVvwJ3095SXB1feKDxv0GM1wv1uBt4dghuqzkhszfbtL/ro+71Llnd1kzsPfyW4YEmzBN7BiBeeNFUk5i8MHBDO1sZcODOvEocOn3UDCxSZw/hnHyjdTUUDyoyv28KZqaOnyLKOkB1x73iSQap6n50RO/Qt11VZ2SEHU3byQ3Ms4eaeV1P2YEx6lWIik/OnMXvz2evAnBqRvhzlNgR9SMQOHsRTTJhs+viZmBRTnpNTAn+c9vhEKHVP2HINZK6HWMIFENVnq3pUv1TTBzPf+xwJLQ0tB5lvqE52rbWl9e2rbAKTzmZb
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f72167a-4167-4410-8d75-08d77d7112ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 13:01:29.4176 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MqnMUBFt/U8b4+KeCpFeBrc7pI1fZT1XeqALOiYz+a/8728tPz7jMU846A80lJ86FhNh9Vgg9vZR+8GJf5xtig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_050142_048362_5D037F05 
X-CRM114-Status: GOOD (  26.73  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:619 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andy Duan <fugang.duan@nxp.com>, "jlu@pengutronix.de" <jlu@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/12/10 17:45 Philipp Puschmann <philipp.puschmann@emlix.com> wrote:
> Am 04.12.19 um 10:19 schrieb Robin Gong:
> > On 2019-9-23 Philipp Puschmann <philipp.puschmann@emlix.com> wrote:
> >> BD_DONE flag marks ownership of the buffer. When 1 SDMA owns the
> >> buffer, when 0 ARM owns it. When processing the buffers in
> >> sdma_update_channel_loop the ownership of the currently processed
> >> buffer was set to SDMA again before running the callback function of
> >> the buffer and while the sdma script may be running in parallel. So
> >> there was the possibility to get the buffer overwritten by SDMA
> >> before it has been processed by kernel
> > Does this patch need indeed? I don't think any difference here move
> > done flag before callback or after callback, because callback never
> > care this flag and actually done flag is setup for next time rather than this
> time.
> The callback doesn't care, but the DMA controller cares about this flag. I see a
> possible race condition here. If i set the DONE flag for a specific buffer
> descriptor before handling the data belonging to this buffer descriptor (aka
> running the callback function) the DMA script running at the same time could
> corrupt that data while being processed.
> Or is there are mechanism that prevents this case, that i havn't considered
> here.
In theory that may happen, but in real world that's not the case:
1. SDMA is running much slower than CPU, for example, on i.MX6Q SDMA is running
at 66MHz while CPU is running at 1GHz. Besides, SDMA transfer data depends on fifo
data output frequency, such as UART 4Mhz. So your case may not be caught unless
time-consuming flow involved in callback which is not right.
2. There are multi descriptors(BDs) setup for cyclic mode, so that SDMA controller and CPU could handle data in parallel without interactions by using BD_DONE. Client driver should choose proper BD number and transfer size of BD to make sure cyclic transfer running smoothly without stop. In your case, all BDs consumed by SDMA during the narrow timing window which is between BD_DONE set and callback done at CPU side(all in interrupt handler). That never happen unless very small BD size set wrongly, such as only 32 byte or 64 byte for one BD, but generally BD size is in KB unit.
> 
> > Basically, this flag should be
> > set to 1 quickly asap so that sdma could use this bd asap. If delay
> > the flag may cause sdma channel stop since all BDs consumed.
> 
> > Could you try again your case without this patch?
> I don't have the hw to reproduce this available at the moment but as i
> remember i did run it without this patch successfully already. The problem i
> have described above was more a logical or theoretical one than a problem
> that really occured with my setup.
> 
> >> leading to kind of random errors in the upper layers, e.g. bluetooth.
> >>
> >> Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
> >> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> >> ---
> >>
> >> Changelog v5:
> >>  - no changes
> >>
> >> Changelog v4:
> >>  - fixed the fixes tag
> >>
> >> Changelog v3:
> >>  - use correct dma_wmb() instead of dma_wb()
> >>  - add fixes tag
> >>
> >> Changelog v2:
> >>  - add dma_wb()
> >>
> >>  drivers/dma/imx-sdma.c | 4 +++-
> >>  1 file changed, 3 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c index
> >> 9ba74ab7e912..b42281604e54 100644
> >> --- a/drivers/dma/imx-sdma.c
> >> +++ b/drivers/dma/imx-sdma.c
> >> @@ -802,7 +802,6 @@ static void sdma_update_channel_loop(struct
> >> sdma_channel *sdmac)
> >>  		*/
> >>
> >>  		desc->chn_real_count = bd->mode.count;
> >> -		bd->mode.status |= BD_DONE;
> >>  		bd->mode.count = desc->period_len;
> >>  		desc->buf_ptail = desc->buf_tail;
> >>  		desc->buf_tail = (desc->buf_tail + 1) % desc->num_bd; @@
> -817,6
> >> +816,9 @@ static void sdma_update_channel_loop(struct sdma_channel
> >> *sdmac)
> >>  		dmaengine_desc_get_callback_invoke(&desc->vd.tx, NULL);
> >>  		spin_lock(&sdmac->vc.lock);
> >>
> >> +		dma_wmb();
> >> +		bd->mode.status |= BD_DONE;
> >> +
> >>  		if (error)
> >>  			sdmac->status = old_status;
> >>  	}
> >> --
> >> 2.23.0
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
