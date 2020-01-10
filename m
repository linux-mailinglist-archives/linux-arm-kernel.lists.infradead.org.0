Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 781B9137458
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:06:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhMGcb2LNOQuUw0yKcUl+XeCJ0jXoufPlNc9kCH3acE=; b=S6VOENL6C6C++s
	Vfdb1Qa4i6p0YkbXl/OCQglI1B8ZROq9a/LOkhADxg4ky92hZQ1N6xptyGAHG5iRAETudCpFf07zt
	3uLAvA/+tot66jI0+7fUNoRU41GqiYE6kj52Ex5YlojlHzFqR/vXbLgqcJqBFzmTlc4PfFwN6DfeZ
	WCJB/8YFZT/9s25y+GrniEuoz0Wgb5pBdQ6GoZIsqKYbr2HVXzXgHvfOfskeE37cXCi1jYk5WZdYe
	Jgc7fltKZInJaW19L5WigvQWGyx3eGWMQJKNJDcsBgQTOMHkH4sxBvXTvHlYIrvPsgjXB0hIXyOnl
	kQryUhyh6TMtVTAiJDUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxjp-0000iC-9w; Fri, 10 Jan 2020 17:06:21 +0000
Received: from mail-co1nam11on2057.outbound.protection.outlook.com
 ([40.107.220.57] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxjI-0000RF-OH
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:05:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jgaJYFPaG9F0o8iPb1nlK7MqeGHnRmfKcxOPnIEzslE9auysZENmMhmK5bBRIYGMVX4GfOlCNp33KMA5zksMLazBXzUW24t5K2wdoPsLu4VFKlwQEbjvg2/GQGksDUPsiu1YVk4Rjd4cri3A3sCoT+AZIJA9ovRnbar3xwjudo8hpoTsISVEH8DPeCxqny4Xh8cf5MhoiPCr6rstL0JvMvxNYcM+SPHBXALXuJoJ90BTEjX3e3nmEBQXfjMj87cEewbHW0teJi19igXUDuT/+rIfINc/HcmJGCq1jbT55OTRsRTEJVqkS73wNlH7LAsV6JfrD4BKldjNvKvdT60OVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5XCKWg3dcDR4KVwX+2iFNDusQvpM4sTBg4yhzaaVqvw=;
 b=PRr5bPBucnvpN3Ttqc91xfjEZAggPTLtVCK5qNQf0Kl3OPbJpdcmmARfayQPrOaQDB4UC7sjsoUNMSpqqk13mlGzbYqWB/1FX58GYQ9aICU585xUsJ7WWulY5qT8T6uPVEziqAD7U7bcXS0AhBmjjpCnK7ppxigOI9tTi4qnS8H8yTuCscb4U4dzBu3t4rFjwTLVw4PsxN+uxwQQ7PRHKo+NiyB2xxs3OUa3OIfI40ug/gYiDRvzKGUsld04ztaAGDGHpeS1hhZySo4n6TR8Ozk8qzznjxvk9G2MJY89cc1WtiPH6mexGR+CFEOrRtMfOfr42bFV4H5DEpY2t887Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5XCKWg3dcDR4KVwX+2iFNDusQvpM4sTBg4yhzaaVqvw=;
 b=tXfzPTPZ8iwUNFBb2cQAxXpJQYDNJwmQpPN2GHVe0kY565ETg/iRpfiy1NirA3310Ga799IXlIAxndVfOoPf6gXEJikPQ+HJcSdTW/q7IsVJse4I0rv8BUhiR63F+ETfJhJspmMtFQnhaZ8DVBJ0OG0kjGIT7ptoqmgeUBYsvbo=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6262.namprd02.prod.outlook.com (52.132.229.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Fri, 10 Jan 2020 17:05:46 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2623.013; Fri, 10 Jan 2020
 17:05:45 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: RE: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
Thread-Topic: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
Thread-Index: AQHVx6y2ShwELFcgQk2RmkO2ceD3dafj/VgAgAAMtgCAABRgIA==
Date: Fri, 10 Jan 2020 17:05:45 +0000
Message-ID: <CH2PR02MB70008D24DA7D1426E8A71013C7380@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-4-andre.przywara@arm.com>
 <CH2PR02MB7000F64AB27D352E00DC77A7C7380@CH2PR02MB7000.namprd02.prod.outlook.com>
 <20200110154328.6676215f@donnerap.cambridge.arm.com>
In-Reply-To: <20200110154328.6676215f@donnerap.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [183.83.136.244]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 75330d87-fa9c-4a58-e887-08d795ef556c
x-ms-traffictypediagnostic: CH2PR02MB6262:|CH2PR02MB6262:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB62625E269AF4FD829CA853C8C7380@CH2PR02MB6262.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02788FF38E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(346002)(376002)(396003)(366004)(136003)(43544003)(189003)(199004)(13464003)(7696005)(53546011)(33656002)(8936002)(54906003)(86362001)(186003)(26005)(52536014)(71200400001)(5660300002)(316002)(2906002)(76116006)(478600001)(9686003)(66476007)(66446008)(6506007)(66556008)(64756008)(6916009)(55016002)(66946007)(81156014)(4326008)(81166006)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6262;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HKwhNZQjkhPEzpafQWCe4vlhuLnvUKUmM5DJR8TCy4QOEmRSeyd1mZVU/Xe9iXPALSMkskQpkh00RXgnoUfqEuH2mqMBvAoOg1JyQSX+geVCEUnyZ5SEv5xl+IVCOSqbt7TpgpKYVjCSKklCrkU0kzAB8qv6/jij6WDPWU1DsdVoVsfOmal6+uxLrTsUkKvQk7kdecKF+mREJysPtMaenytaHhrttnUasYgGkjirreIGfRuFRKNNyYp31UH3LbU6q+GPB2qZA4GcoaBeK+Ju7zaV8xHYX91YEcB0MOnVRTk+hAMA9wU5r0WgtX/bNlgGOnNbRFijhyDCx+5AWN0+0aO2AYiFecN2f0+E5aWI18DBNuWqWtg9OjWJ4jhmVukdli33SajyAe27Q9ZJrWCkZ28osx08Pq2US9kju+wrN6tL/BDqeZwvQz0dsZR4zLFndlwZpPXUJD0jXb4nta/TTw8/RqsMW4e1UJA2wcuU60RmQLgNBJDOfnGGG0nNbE9WYXvrCwySP43OCZk9CQygQw==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75330d87-fa9c-4a58-e887-08d795ef556c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2020 17:05:45.8321 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wp4d/hBbG1EXbJfSlgUlGbJNl52ELWGC35CTCMm7IbKYSc0PtcZ3kBbzRsq9spHiYUmO4Ip7fKrcioGDUZKDLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6262
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_090548_810462_9748BA92 
X-CRM114-Status: GOOD (  26.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Hancock <hancock@sedsystems.ca>, Michal Simek <michals@xilinx.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Andre Przywara <andre.przywara@arm.com>
> Sent: Friday, January 10, 2020 9:13 PM
> To: Radhey Shyam Pandey <radheys@xilinx.com>
> Cc: David S . Miller <davem@davemloft.net>; Michal Simek
> <michals@xilinx.com>; Robert Hancock <hancock@sedsystems.ca>;
> netdev@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
> 
> On Fri, 10 Jan 2020 15:14:46 +0000
> Radhey Shyam Pandey <radheys@xilinx.com> wrote:
> 
> Hi Radhey,
> 
> thanks for having a look!
> 
> > > -----Original Message-----
> > > From: Andre Przywara <andre.przywara@arm.com>
> > > Sent: Friday, January 10, 2020 5:24 PM
> > > To: David S . Miller <davem@davemloft.net>; Radhey Shyam Pandey
> > > <radheys@xilinx.com>
> > > Cc: Michal Simek <michals@xilinx.com>; Robert Hancock
> > > <hancock@sedsystems.ca>; netdev@vger.kernel.org; linux-arm-
> > > kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> > > Subject: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
> > >
> > > When axienet_dma_bd_init() bails out during the initialisation process,
> > > it might do so with parts of the structure already allocated and
> > > initialised, while other parts have not been touched yet. Before
> > > returning in this case, we call axienet_dma_bd_release(), which does not
> > > take care of this corner case.
> > > This is most obvious by the first loop happily dereferencing
> > > lp->rx_bd_v, which we actually check to be non NULL *afterwards*.
> > >
> > > Make sure we only unmap or free already allocated structures, by:
> > > - directly returning with -ENOMEM if nothing has been allocated at all
> > > - checking for lp->rx_bd_v to be non-NULL *before* using it
> > > - only unmapping allocated DMA RX regions
> > >
> > > This avoids NULL pointer dereferences when initialisation fails.
> > >
> > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > ---
> > >  .../net/ethernet/xilinx/xilinx_axienet_main.c | 43 ++++++++++++-------
> > >  1 file changed, 28 insertions(+), 15 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > > b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > > index 97482cf093ce..7e90044cf2d9 100644
> > > --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > > +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > > @@ -160,24 +160,37 @@ static void axienet_dma_bd_release(struct
> > > net_device *ndev)
> > >  	int i;
> > >  	struct axienet_local *lp = netdev_priv(ndev);
> > >
> > > +	/* If we end up here, tx_bd_v must have been DMA allocated. */
> > > +	dma_free_coherent(ndev->dev.parent,
> > > +			  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
> > > +			  lp->tx_bd_v,
> > > +			  lp->tx_bd_p);
> > > +
> > > +	if (!lp->rx_bd_v)
> > > +		return;
> > > +
> > >  	for (i = 0; i < lp->rx_bd_num; i++) {
> > > -		dma_unmap_single(ndev->dev.parent, lp->rx_bd_v[i].phys,
> > > -				 lp->max_frm_size, DMA_FROM_DEVICE);
> > > +		/* A NULL skb means this descriptor has not been initialised
> > > +		 * at all.
> > > +		 */
> > > +		if (!lp->rx_bd_v[i].skb)
> > > +			break;
> > > +
> > >  		dev_kfree_skb(lp->rx_bd_v[i].skb);
> > > -	}
> > >
> > > -	if (lp->rx_bd_v) {
> > > -		dma_free_coherent(ndev->dev.parent,
> > > -				  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
> > > -				  lp->rx_bd_v,
> > > -				  lp->rx_bd_p);
> > > -	}
> > > -	if (lp->tx_bd_v) {
> > > -		dma_free_coherent(ndev->dev.parent,
> > > -				  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
> > > -				  lp->tx_bd_v,
> > > -				  lp->tx_bd_p);
> > > +		/* For each descriptor, we programmed cntrl with the (non-
> > > zero)
> > > +		 * descriptor size, after it had been successfully allocated.
> > > +		 * So a non-zero value in there means we need to unmap it.
> > > +		 */
> >
> > > +		if (lp->rx_bd_v[i].cntrl)
> >
> > I think it should ok to unmap w/o any check?
> 
> Do you mean because .phys would be 0 if not initialised? AFAIK 0 can be a
> valid DMA address, so there is no special check for that, and unmapping
> DMA address 0 will probably go wrong at some point. So it's unlike
> kfree(NULL).

I mean if skb allocation is successful in _dma_bd_init then in release path
we can assume .phys is always a valid address and skip rx_bd_v[i].cntrl
check. 
> 
> Cheers,
> Andre.
> 
> 
> > > +			dma_unmap_single(ndev->dev.parent, lp-
> > > >rx_bd_v[i].phys,
> > > +					 lp->max_frm_size,
> > > DMA_FROM_DEVICE);
> > >  	}
> > > +
> > > +	dma_free_coherent(ndev->dev.parent,
> > > +			  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
> > > +			  lp->rx_bd_v,
> > > +			  lp->rx_bd_p);
> > >  }
> > >
> > >  /**
> > > @@ -207,7 +220,7 @@ static int axienet_dma_bd_init(struct net_device
> > > *ndev)
> > >  					 sizeof(*lp->tx_bd_v) * lp-
> > > >tx_bd_num,
> > >  					 &lp->tx_bd_p, GFP_KERNEL);
> > >  	if (!lp->tx_bd_v)
> > > -		goto out;
> > > +		return -ENOMEM;
> > >
> > >  	lp->rx_bd_v = dma_alloc_coherent(ndev->dev.parent,
> > >  					 sizeof(*lp->rx_bd_v) * lp-
> > > >rx_bd_num,
> > > --
> > > 2.17.1
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
