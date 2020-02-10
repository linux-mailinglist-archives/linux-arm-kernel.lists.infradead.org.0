Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF79157DEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 15:55:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPCk9yhKh2BsKTJkVly4OqdB4m4VdRjWNAHVkm+gG74=; b=DaBYxkJ2b2hErF
	f/XwTc8DjE9ZjOmw8ErPWGWquuUI95AM8Ai+oeY3TqDxKLHgxAKaXgleMRJ1w31kz1cDUYT+qlKae
	mDBxdF5AC3HpGm6Cv/05pbPTaEGwYhePSZra5yEMiij7vZD2tQAFvIvVKcRJXnxXe6oL+reY/Fuxr
	IlCwtzBmmNCXsaQgPxoudnqAe1fPJ4Rc8BIF61YX0DiaCxjyAPJm5tv46fL12Q4zkWzLU8c5EdzwX
	x6L9fLGI5vwzx+rzv+S+5k76BFbY46kW3gD6oo1l6qnMXd66oS+2tMIx7p7u1r4ibFHpuvVKAUafB
	/SsKENZU0Fpwql+RBu3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ATD-0003k7-Kt; Mon, 10 Feb 2020 14:55:31 +0000
Received: from mail-bn7nam10on2083.outbound.protection.outlook.com
 ([40.107.92.83] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1AT7-0003jR-2T
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 14:55:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=He7m0n3fJs3Ua7+AfxSinZXYutpVWdeezeRiPOFGCBKmquKMHxfXriv5BBF3G36ixECrA9cgz5m6GZe5eC3EssoOa4IRw64LK4PjztZJs0kPVBkM/ayPa4CjIHSg5ypkRdBhMzHN7wTGewqpSltYRIafyYbBrbjdOZfn/1Fpa/P58lGRZXOg1IhmUtK9h2qeEpV6uYMWwCnLw+SQdFsQj6GzQL8UvLAytuRH+TpDehNBsKw3jt8pdhJyxDwndYjMsFb94cqObYF96aFoWgPjUJlTXKKuyaTgzXBLcXnCURZa27a9TKXRh3WQ/+4VLLtXdGlH5y09THRvaP7rLLatyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=riD4gZBUVv7fMJ53Lom5OskEWlCxj/MBYYjfm8MZgtU=;
 b=E1x9KM4YOODCyYgGK2w5zk+JzY89n22F2g4qKTvuvZxF3NPo5ui0XBwsAtEMDRVAFvhTmWvkWt/rCdFDtdez4yppwVP44feTWyKZCrwk8YGY/1gcmnf6/xYg/w0eRt/mnuG2WKf8Knw9UMecTndHHNe5tfJwpdCPdtJktzU1FxuoQFJ5MFSvhjvCORZgDw2u14XqU5M1DHO4LYA6kp/puPzk/LP+iw9HtfuWaZ/58EPbNSpod3weXZBErDaceNQg+kqZQJYWy5ymeXR0ZusrdbZYGyxcaZVAM/Ul76LgrUILHR5p3Dudtm+QLmlDpcVRDirf0Cxnu1PMy9SSxGB5lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=riD4gZBUVv7fMJ53Lom5OskEWlCxj/MBYYjfm8MZgtU=;
 b=OWUTvfLwljTsBi653nA0289TwXDW+uoB6VKlEmBHezbC9EP6pQLJiCbo6+k0n3uiSVGTQeRD2ISGzYw+6nb5t4lfnel5R7RlA+UvvNTW2Tfvrz5/a4bOzLpt3VXt7OGSi0PvI7bmwESb3nPk7JHYX6o2odsjzz3RjDaezCmNDxo=
Received: from CH2PR02MB7000.namprd02.prod.outlook.com (20.180.9.216) by
 CH2PR02MB6456.namprd02.prod.outlook.com (52.132.231.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Mon, 10 Feb 2020 14:55:20 +0000
Received: from CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899]) by CH2PR02MB7000.namprd02.prod.outlook.com
 ([fe80::969:436f:b4b8:4899%7]) with mapi id 15.20.2707.030; Mon, 10 Feb 2020
 14:55:20 +0000
From: Radhey Shyam Pandey <radheys@xilinx.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: RE: [PATCH v3 -next 4/4] net: emaclite: Fix restricted cast warning
 of sparse
Thread-Topic: [PATCH v3 -next 4/4] net: emaclite: Fix restricted cast warning
 of sparse
Thread-Index: AQHV2CxS+JD6AxkE/EyzRBxtS7+UeKgEyfuAgA/Il2A=
Date: Mon, 10 Feb 2020 14:55:20 +0000
Message-ID: <CH2PR02MB70008E426323BBF4EF3BCCA2C7190@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <1580471270-16262-1-git-send-email-radhey.shyam.pandey@xilinx.com>
 <1580471270-16262-5-git-send-email-radhey.shyam.pandey@xilinx.com>
 <20200131134849.GE9639@lunn.ch>
In-Reply-To: <20200131134849.GE9639@lunn.ch>
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
x-ms-office365-filtering-correlation-id: 580922c6-ae18-48f3-f8b5-08d7ae394016
x-ms-traffictypediagnostic: CH2PR02MB6456:|CH2PR02MB6456:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB64569C9530F3B3F221B2839EC7190@CH2PR02MB6456.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 03094A4065
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(396003)(136003)(366004)(189003)(199004)(53546011)(26005)(54906003)(186003)(6916009)(86362001)(71200400001)(316002)(66476007)(66446008)(64756008)(66556008)(4326008)(66946007)(5660300002)(52536014)(7696005)(76116006)(81166006)(2906002)(8936002)(6506007)(478600001)(55016002)(81156014)(8676002)(9686003)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6456;
 H:CH2PR02MB7000.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FaNkBnHsuvA24Synz6SJnC3s1V8v0DHQ22jpT4WWtDJWW7BAMbjhiK72jKP+jl3vRelTRagxcUnvRcBiGQB98icpBbTLeFf2Pl+18NBu1zXe17aLU8jQKfOgcuyYGaD364Vc+PSPQ6dlHD/6V7LAZI3jB+WtEtaJbqxPK8jPAhuAyY8VfBhd8YzKMAkWsYhMsnylReGuX9uAEi7iCv9JLL5BOC79+iSsQxDJ4/K3o+zUqx+xTjC10yQyzw8biLkRTrY1nJtAiwpvathfhHouY4B9NkRFQQVN4GpHk5aUQdwowknK5u0VQ5pOL/MLw1+xvQJu7G6BhoimYU7kgRSj0vVV1Cb/xhEQ9uvmPQzlIF47/EpJgu6TtyoxGG+KlYkJJACLGuZg0qSXxcLGb7ST4Q0WBPJ+YA1m3T1GkfxMaglw1VnvrLenHayldaAaElsN
x-ms-exchange-antispam-messagedata: A7lBoCBujzI/mzvKq6mKjcg9XbMJeHvbrsDtGkQDFKipUxhMS1EsESSilSNF/AG4mf2zqvg5dpX69vc6vpR6bkONXBhAMC4YIjlExBWFNAmio3epUmCDnvcp9NvNjwGsT0ZAwCTiJW5cIrbRCmwlxw==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 580922c6-ae18-48f3-f8b5-08d7ae394016
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2020 14:55:20.6566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lH5LTOEs0OYcQDVq+NyUx9sB6ICTWNA+XaBRlfuOXKbPJlvpbio+BXWfYHwdr9I+xXsykVYaMZdNTwL3dEIK9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6456
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_065525_120546_0F137E80 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 John Linn <linnj@xilinx.com>, Michal Simek <michals@xilinx.com>,
 Anirudha Sarangi <anirudh@xilinx.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Andrew Lunn <andrew@lunn.ch>
> Sent: Friday, January 31, 2020 7:19 PM
> To: Radhey Shyam Pandey <radheys@xilinx.com>
> Cc: davem@davemloft.net; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Anirudha Sarangi <anirudh@xilinx.com>; Michal Simek
> <michals@xilinx.com>; gregkh@linuxfoundation.org;
> mchehab+samsung@kernel.org; John Linn <linnj@xilinx.com>; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [PATCH v3 -next 4/4] net: emaclite: Fix restricted cast warning of
> sparse
> 
> On Fri, Jan 31, 2020 at 05:17:50PM +0530, Radhey Shyam Pandey wrote:
> > Explicitly cast xemaclite_readl return value when it's passed to ntohl.
> > Fixes below reported sparse warnings:
> >
> > xilinx_emaclite.c:411:24: sparse: sparse: cast to restricted __be32
> > xilinx_emaclite.c:420:36: sparse: sparse: cast to restricted __be32
> >
> > Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> > Reported-by: kbuild test robot <lkp@intel.com>
> > ---
> >  drivers/net/ethernet/xilinx/xilinx_emaclite.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/xilinx/xilinx_emaclite.c
> b/drivers/net/ethernet/xilinx/xilinx_emaclite.c
> > index 96e9d21..3273d4f 100644
> > --- a/drivers/net/ethernet/xilinx/xilinx_emaclite.c
> > +++ b/drivers/net/ethernet/xilinx/xilinx_emaclite.c
> > @@ -408,7 +408,8 @@ static u16 xemaclite_recv_data(struct net_local
> *drvdata, u8 *data, int maxlen)
> >
> >  	/* Get the protocol type of the ethernet frame that arrived
> >  	 */
> > -	proto_type = ((ntohl(xemaclite_readl(addr + XEL_HEADER_OFFSET +
> > +	proto_type = ((ntohl((__force __be32)xemaclite_readl(addr +
> > +			XEL_HEADER_OFFSET +
> >  			XEL_RXBUFF_OFFSET)) >> XEL_HEADER_SHIFT) &
> >  			XEL_RPLR_LENGTH_MASK);
> >
> > @@ -417,7 +418,7 @@ static u16 xemaclite_recv_data(struct net_local
> *drvdata, u8 *data, int maxlen)
> >  	 */
> >  	if (proto_type > ETH_DATA_LEN) {
> >  		if (proto_type == ETH_P_IP) {
> > -			length = ((ntohl(xemaclite_readl(addr +
> > +			length = ((ntohl((__force __be32)xemaclite_readl(addr
> +
> >  					XEL_HEADER_IP_LENGTH_OFFSET +
> >  					XEL_RXBUFF_OFFSET)) >>
> >  					XEL_HEADER_SHIFT) &
> 
> If i understand this code correctly, you need the ntohl because you
> are poking around inside the packet. All the other uses of
> xemaclite_readl() are for descriptors etc.
> 
> It would be cleaner if you defined a xemaclite_readlbe32. If you use
> ioread32be() it will do the endinness swap for you, so you don't need
> the ntohl() and the horrible cast.
Thanks for the review. Yes, defining xemaclite_readlbe32 would eliminate the
cast need.  I will address it in the next version. 

> 
>     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
