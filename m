Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACFE14317C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 19:32:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7udCyXu8lT/w8/K/1WIiQwxS7Tn6k7LSCpzjxAu3LBY=; b=ubBt/t9iSetdUN
	aBgTNtY2c1HfVpGVlcmKBEoQwCTBAClqJK+5AkikwyhyYzu1RJ+42lIUVDx03AhhAExfe7D/wJk9P
	PKooUvfbga0bth3MUZJvsV1UF2QtLQMrr9MLGbuX+Y8rFB1Hp0air+e3W+veWMKDoy6cdYBx5fXr5
	fVgZMRH2zXMaxlE1GsBV6ypI7nsqC+dwsEZ0z7IgBBow1/OdgyfPl6zd7pLuNS4XkhHsrRfRnxcUf
	ZcpCQmCVZ18xS++2Xr02pFBjQhviKGttWIQlkNg1qH8jHPcPzmia4sVYMkZKx2Oc1EVX5+qXzXcQ6
	vnRMMAbGI5LUYtQmuapg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itbqe-00063n-Au; Mon, 20 Jan 2020 18:32:28 +0000
Received: from mail-dm6nam10on2041.outbound.protection.outlook.com
 ([40.107.93.41] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itbqO-00062s-Kz
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 18:32:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CeFp+sykQJgo9Gs0zVhdB2ecgYUNuci1rFaYP3nX6kmYB2h7WswSHqLKDGljUPAF2Ov1s8R3RUt8EA+QQl8VWalmjZn8BWje6sw+U7+HgPS8tXinTlBVWnoliYWeXKfdbyHqXfB9sYIpBcJbL8YgrhTjfyBz4SerEZ0TMTNt575HQIvA3PkgRCVBqzfbzKP/lK8ltPXviFnluGWggvf9AC8qIJyiZqUBQa26Q4o5oNhHRu0vSww17YU0IyJ9bQRDbdUkJw/phz795fSKAK7dAXyrMr/ORX7FlZPhlrWNoUq7Jlm7AIgVsxV3z2mXINfMGND2HDF5F0kMKEMxxspfNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YBx9+UPzMP25sh/3PiNlNsjcXaSwIzai+8HL9QZ7IFs=;
 b=bha5KGYRRqXa8W7azwnVZwnuqa4e0FLwMSLU8CJI9EiWU6cnKANJtFpPNvZc/M1F5jXDErcGh0p7c34m3smUsimuxAMyhvX7CxH1uPpjo86tyZzc8l/3DQyEFiQor9iMKt+sOXBt0EbgtzeapwGHOWKiLiKqcqyI6rW4hcdGp7w3JgA+JIdU+4ywXjhTzzYjZP4cCe8K3cL9EQfeS8R2rq+NeZxK97rq/fSRJg/J5yFqfBii1In1G2KkY8v1iMRxbcOKYp1AFTyyC5OMkrvHK6efJjtjA+Q/Rd7lHCqkID/AcrWnRVaMOdFFrQV6Au7FzDxJ+XdXPtQxJI8QiFvPXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YBx9+UPzMP25sh/3PiNlNsjcXaSwIzai+8HL9QZ7IFs=;
 b=k9+eqfl9R6wgfyH4L/fFrQdcTtJZYkRejQDh1JEgPEj/ePfhWcZ70srRt6CQK9mhDWklJ+16nxdBTwT9SrxzINTbs97nBdQdqdJX+V7ZoRXhFy25PVIG+XYI9Yg6ITlE1RBiU2QiTj0tS56p4nfOaFqNwWdBK2cfiylXrEHRUmY=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6055.namprd02.prod.outlook.com (10.255.156.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.21; Mon, 20 Jan 2020 18:32:09 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2644.026; Mon, 20 Jan 2020
 18:32:09 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: RE: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
Thread-Topic: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
Thread-Index: AQHVx6y2ShwELFcgQk2RmkO2ceD3dafj/VgAgAAMtgCAABRgIIAJgLgAgAZRIvA=
Date: Mon, 20 Jan 2020 18:32:09 +0000
Message-ID: <CH2PR02MB70003F8D2662BB1F9D144A55C7320@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-4-andre.przywara@arm.com>
 <CH2PR02MB7000F64AB27D352E00DC77A7C7380@CH2PR02MB7000.namprd02.prod.outlook.com>
 <20200110154328.6676215f@donnerap.cambridge.arm.com>
 <CH2PR02MB70008D24DA7D1426E8A71013C7380@CH2PR02MB7000.namprd02.prod.outlook.com>
 <20200116180326.47c93ce2@donnerap.cambridge.arm.com>
In-Reply-To: <20200116180326.47c93ce2@donnerap.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=radheys@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 54ffc32e-5d4a-4a12-092e-08d79dd70f18
x-ms-traffictypediagnostic: CH2PR02MB6055:|CH2PR02MB6055:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB60558E5D32FE4E47E7269FC3C7320@CH2PR02MB6055.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0288CD37D9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(376002)(396003)(346002)(189003)(199004)(86362001)(478600001)(6916009)(54906003)(33656002)(316002)(66556008)(66476007)(66946007)(76116006)(64756008)(66446008)(7696005)(26005)(52536014)(8676002)(53546011)(6506007)(8936002)(55016002)(5660300002)(81166006)(186003)(4326008)(71200400001)(81156014)(2906002)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6055;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: idhwUSwgcSwPsYFN0pVF/JdFiWpKP2udKnXM8inWH1K1FPHxr3RZH6IQ8a0bKGnO+GZsNVZlfvCUvP2J1O9P11Bm6GgJ0tvKf5jODO/fk/EcmA4POgKkogPdQwbez/3MBQywBgazd8wBL3r7B8S0tlkxxRsmXd+CSzrFYbHejeGZ0PtCMV/iHxu9pmL+JPE/CRfAhZcMkV+Jxv45pyBIMgrsEQynu03qxQYkzpUot51RrO/rKxBtApIc9dLDTsJfoS64zFuyfdOcS8UL5keadikli/20WMGkl2V6Wz1lY99s1nnMRnzVDZSYo+V0rdguffEScYxNGMb2UmlODtIUNxRSEtmLOSMN+snBbwine2uxlzYXajC81lnnGYMYt8k0UKITvBkIuw/0PMYX5L8Avsh9VSa/8bU5j0neF/U/zWclYSgh9hJ4iD+gT5ENFGiv
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54ffc32e-5d4a-4a12-092e-08d79dd70f18
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2020 18:32:09.1454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zyelcvfBmTS+xFzjGLKvZdVi8Ff10oT3DN4TLQ9OumeNZ6Ocw1TGjTszdHDxa8TNloh5H3gppt+exPvV2MU+Nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_103212_694509_FD666DB5 
X-CRM114-Status: GOOD (  31.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Hancock <hancock@sedsystems.ca>, Michal Simek <michals@xilinx.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 -----Original Message-----
> From: Andre Przywara <andre.przywara@arm.com>
> Sent: Thursday, January 16, 2020 11:33 PM
> To: Radhey Shyam Pandey <radheys@xilinx.com>
> Cc: David S . Miller <davem@davemloft.net>; Michal Simek
> <michals@xilinx.com>; Robert Hancock <hancock@sedsystems.ca>;
> netdev@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup path
> 
> On Fri, 10 Jan 2020 17:05:45 +0000
> Radhey Shyam Pandey <radheys@xilinx.com> wrote:
> 
> Hi,
> 
> > > -----Original Message-----
> > > From: Andre Przywara <andre.przywara@arm.com>
> > > Sent: Friday, January 10, 2020 9:13 PM
> > > To: Radhey Shyam Pandey <radheys@xilinx.com>
> > > Cc: David S . Miller <davem@davemloft.net>; Michal Simek
> > > <michals@xilinx.com>; Robert Hancock <hancock@sedsystems.ca>;
> > > netdev@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > > kernel@vger.kernel.org
> > > Subject: Re: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup
> > > path
> > >
> > > On Fri, 10 Jan 2020 15:14:46 +0000
> > > Radhey Shyam Pandey <radheys@xilinx.com> wrote:
> > >
> > > Hi Radhey,
> > >
> > > thanks for having a look!
> > >
> > > > > -----Original Message-----
> > > > > From: Andre Przywara <andre.przywara@arm.com>
> > > > > Sent: Friday, January 10, 2020 5:24 PM
> > > > > To: David S . Miller <davem@davemloft.net>; Radhey Shyam Pandey
> > > > > <radheys@xilinx.com>
> > > > > Cc: Michal Simek <michals@xilinx.com>; Robert Hancock
> > > > > <hancock@sedsystems.ca>; netdev@vger.kernel.org; linux-arm-
> > > > > kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> > > > > Subject: [PATCH 03/14] net: axienet: Fix DMA descriptor cleanup
> > > > > path
> > > > >
> > > > > When axienet_dma_bd_init() bails out during the initialisation
> > > > > process, it might do so with parts of the structure already
> > > > > allocated and initialised, while other parts have not been
> > > > > touched yet. Before returning in this case, we call
> > > > > axienet_dma_bd_release(), which does not take care of this corner case.
> > > > > This is most obvious by the first loop happily dereferencing
> > > > > lp->rx_bd_v, which we actually check to be non NULL *afterwards*.
> > > > >
> > > > > Make sure we only unmap or free already allocated structures, by:
> > > > > - directly returning with -ENOMEM if nothing has been allocated
> > > > > at all
> > > > > - checking for lp->rx_bd_v to be non-NULL *before* using it
> > > > > - only unmapping allocated DMA RX regions
> > > > >
> > > > > This avoids NULL pointer dereferences when initialisation fails.
> > > > >
> > > > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > > > ---
> > > > >  .../net/ethernet/xilinx/xilinx_axienet_main.c | 43
> > > > > ++++++++++++-------
> > > > >  1 file changed, 28 insertions(+), 15 deletions(-)
> > > > >
> > > > > diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > > > > b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > > > > index 97482cf093ce..7e90044cf2d9 100644
> > > > > --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > > > > +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > > > > @@ -160,24 +160,37 @@ static void axienet_dma_bd_release(struct
> > > > > net_device *ndev)
> > > > >  	int i;
> > > > >  	struct axienet_local *lp = netdev_priv(ndev);
> > > > >
> > > > > +	/* If we end up here, tx_bd_v must have been DMA allocated.
> */
> > > > > +	dma_free_coherent(ndev->dev.parent,
> > > > > +			  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
> > > > > +			  lp->tx_bd_v,
> > > > > +			  lp->tx_bd_p);
> > > > > +
> > > > > +	if (!lp->rx_bd_v)
> > > > > +		return;
> > > > > +
> > > > >  	for (i = 0; i < lp->rx_bd_num; i++) {
> > > > > -		dma_unmap_single(ndev->dev.parent, lp->rx_bd_v[i].phys,
> > > > > -				 lp->max_frm_size, DMA_FROM_DEVICE);
> > > > > +		/* A NULL skb means this descriptor has not been
> initialised
> > > > > +		 * at all.
> > > > > +		 */
> > > > > +		if (!lp->rx_bd_v[i].skb)
> > > > > +			break;
> > > > > +
> > > > >  		dev_kfree_skb(lp->rx_bd_v[i].skb);
> > > > > -	}
> > > > >
> > > > > -	if (lp->rx_bd_v) {
> > > > > -		dma_free_coherent(ndev->dev.parent,
> > > > > -				  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
> > > > > -				  lp->rx_bd_v,
> > > > > -				  lp->rx_bd_p);
> > > > > -	}
> > > > > -	if (lp->tx_bd_v) {
> > > > > -		dma_free_coherent(ndev->dev.parent,
> > > > > -				  sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
> > > > > -				  lp->tx_bd_v,
> > > > > -				  lp->tx_bd_p);
> > > > > +		/* For each descriptor, we programmed cntrl with the
> (non-
> > > > > zero)
> > > > > +		 * descriptor size, after it had been successfully
> allocated.
> > > > > +		 * So a non-zero value in there means we need to
> unmap it.
> > > > > +		 */
> > > >
> > > > > +		if (lp->rx_bd_v[i].cntrl)
> > > >
> > > > I think it should ok to unmap w/o any check?
> > >
> > > Do you mean because .phys would be 0 if not initialised? AFAIK 0 can
> > > be a valid DMA address, so there is no special check for that, and
> > > unmapping DMA address 0 will probably go wrong at some point. So
> > > it's unlike kfree(NULL).
> >
> > I mean if skb allocation is successful in _dma_bd_init then in release
> > path we can assume .phys is always a valid address and skip
> > rx_bd_v[i].cntrl check.
> 
> I don't think we can assume this. If the skb allocation succeeded, but then the
> dma_map_single failed (which we check with dma_mapping_error()), we would
> end up with a valid skb, but an uninitialised phys DMA address in the registers.
> That's why I set .cntrl only after having checked the dma_map_single() result.
> 
> Or am I missing something?

Got it. Looks fine then.
> 
> Cheers,
> Andre
> 
> > > > > +			dma_unmap_single(ndev->dev.parent, lp-
> > > > > >rx_bd_v[i].phys,
> > > > > +					 lp->max_frm_size,
> > > > > DMA_FROM_DEVICE);
> > > > >  	}
> > > > > +
> > > > > +	dma_free_coherent(ndev->dev.parent,
> > > > > +			  sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
> > > > > +			  lp->rx_bd_v,
> > > > > +			  lp->rx_bd_p);
> > > > >  }
> > > > >
> > > > >  /**
> > > > > @@ -207,7 +220,7 @@ static int axienet_dma_bd_init(struct
> > > > > net_device
> > > > > *ndev)
> > > > >  					 sizeof(*lp->tx_bd_v) * lp-
> > > > > >tx_bd_num,
> > > > >  					 &lp->tx_bd_p, GFP_KERNEL);
> > > > >  	if (!lp->tx_bd_v)
> > > > > -		goto out;
> > > > > +		return -ENOMEM;
> > > > >
> > > > >  	lp->rx_bd_v = dma_alloc_coherent(ndev->dev.parent,
> > > > >  					 sizeof(*lp->rx_bd_v) * lp-
> > > > > >rx_bd_num,
> > > > > --
> > > > > 2.17.1
> > > >
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
