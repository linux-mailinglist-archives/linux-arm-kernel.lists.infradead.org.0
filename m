Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC19722A67
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 05:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urkmXIfHbewfI0yz9bG3Q26Fp2IEcOIKRGaGxg+x5RE=; b=fO3e472WrUqgji
	YXnro0O2OFgnEPB/2p1Ojf4KtWPpMvFbgDvmP0L/u+CQLpkGulsbm0+uo0v2ImJJ/ZMvkMzPgSj5l
	+nKyahPcJnx714Iy3z1UmKNAnTnzXd6Z8EHiIXfHZYII/dEABn76ek774w8Y2+brSUc/46O9hdO7g
	htC12GUNhz1iDNboD6wlu2s/McArsWY1rywcs8vn3V0ax7aTEb7Vf5O9zKsQ8vWB0XMDZPlgYMZdE
	pc+EoRfRJfHTVqcb/X/ezxkgVAtUQGI8sfsjVqoQPYaczwgn72kfxEr9oGPqIrHAGuyZ4UGhes47G
	R1zjVbmjZXvAbES4BuRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSYw3-0007X1-HT; Mon, 20 May 2019 03:25:59 +0000
Received: from mail-eopbgr140054.outbound.protection.outlook.com
 ([40.107.14.54] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSYvv-0007WC-6I
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 03:25:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v5a04ww42klEVPu7XYt2J5twDiXBZiE5QRxS1J7a/MQ=;
 b=ESFJroydoSbPDStFExshrPJ4JBrKKlf0nV+b7PRmADLBY+TJqp5UudQ+OUI79R6QukywTrAXj1Pe8uds4C7w5bbLtA6YuVaZ4kPU6dNKm5SRGZwCLInOeDk5S6lgGAUSC6kb+k6TClx1QiFBRPuy3WhAi6eCoRoVoIBMdw+EqJs=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2366.eurprd04.prod.outlook.com (10.169.134.151) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 03:25:45 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986%3]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 03:25:45 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Claudiu Manoil <claudiu.manoil@nxp.com>, Richard Cochran
 <richardcochran@gmail.com>
Subject: RE: [PATCH 1/3] enetc: add hardware timestamping support
Thread-Topic: [PATCH 1/3] enetc: add hardware timestamping support
Thread-Index: AQHVC/xYQ2w4Gq0RdEuPdLhmipvA1KZzXh8A
Date: Mon, 20 May 2019 03:25:45 +0000
Message-ID: <VI1PR0401MB22377C6B1B8C35F133E86DB4F8060@VI1PR0401MB2237.eurprd04.prod.outlook.com>
References: <20190516100028.48256-1-yangbo.lu@nxp.com>
 <20190516100028.48256-2-yangbo.lu@nxp.com>
 <20190516143251.akbt3ns6ue2jrhl5@localhost>
 <VI1PR04MB4880B9B346D29E0EFC715D28960A0@VI1PR04MB4880.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB4880B9B346D29E0EFC715D28960A0@VI1PR04MB4880.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0791374d-a918-40ba-62a0-08d6dcd2d8d6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2366; 
x-ms-traffictypediagnostic: VI1PR0401MB2366:
x-microsoft-antispam-prvs: <VI1PR0401MB2366CDAE4B7F22EA6BBFCB04F8060@VI1PR0401MB2366.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(376002)(366004)(346002)(396003)(52314003)(13464003)(199004)(189003)(486006)(66946007)(76116006)(66476007)(66556008)(256004)(68736007)(446003)(11346002)(476003)(8676002)(81156014)(81166006)(8936002)(52536014)(66446008)(73956011)(14444005)(64756008)(71190400001)(71200400001)(5660300002)(186003)(110136005)(102836004)(6506007)(6436002)(53546011)(33656002)(26005)(99286004)(54906003)(76176011)(7696005)(229853002)(316002)(55016002)(478600001)(66066001)(14454004)(7736002)(305945005)(74316002)(53936002)(6246003)(25786009)(3846002)(6116002)(9686003)(4326008)(86362001)(2906002)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2366;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ci6XAUG2OaWnwCzIv9y55P5+/auSPPuWyxRjywbb2zhgZAbA4/Eo4PycaQo4zBxB81XuHPAPzuKUKdl6MZaoozplSP6Yh1ZLMSz0m8QHwPm70PgrlsQWk1KRTnSx1RghhdS+WAqMiJ2h+A40tsdh8vKrk3DvJEgv/cUW9amLcCplVEXR57Dug4oy2AEvIAasV2+pA3QMgwNEafmY2S++0DU/gNRoF+5TStGY2BfGSLAjU4lzch+w66RJx7CwGv6BVpgWqzIg1Y8bzL+Iyxce8s+MMT0Ggqtypv7iQ6Bbd/Y32nQhTbNGEpvfuhXkI93orLO/ZD2kpu+UBYWquBboKohkoX+J7OvHAwxEVam4PBvV9ZrQmPsUYNewhTwj4bF8ZvvRj6/6ZP1xo8R18veVqejLLAl6hYBh/QNz/fu4t6Q=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0791374d-a918-40ba-62a0-08d6dcd2d8d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 03:25:45.7504 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2366
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_202551_236252_FBEB4B97 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 David Miller <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> -----Original Message-----
> From: Claudiu Manoil
> Sent: Thursday, May 16, 2019 11:31 PM
> To: Richard Cochran <richardcochran@gmail.com>; Y.b. Lu
> <yangbo.lu@nxp.com>
> Cc: netdev@vger.kernel.org; David Miller <davem@davemloft.net>; Shawn
> Guo <shawnguo@kernel.org>; Rob Herring <robh+dt@kernel.org>;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org
> Subject: RE: [PATCH 1/3] enetc: add hardware timestamping support
> 
> 
> >-----Original Message-----
> >From: Richard Cochran <richardcochran@gmail.com>
> >Sent: Thursday, May 16, 2019 5:33 PM
> >To: Y.b. Lu <yangbo.lu@nxp.com>
> >Cc: netdev@vger.kernel.org; David Miller <davem@davemloft.net>; Claudiu
> >Manoil <claudiu.manoil@nxp.com>; Shawn Guo <shawnguo@kernel.org>;
> Rob
> >Herring <robh+dt@kernel.org>; devicetree@vger.kernel.org; linux-arm-
> >kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> >Subject: Re: [PATCH 1/3] enetc: add hardware timestamping support
> >
> >On Thu, May 16, 2019 at 09:59:08AM +0000, Y.b. Lu wrote:
> >
> [...]
> >
> >>  static bool enetc_clean_tx_ring(struct enetc_bdr *tx_ring, int
> >> napi_budget)  {
> >>  	struct net_device *ndev = tx_ring->ndev;
> >> +	struct enetc_ndev_priv *priv = netdev_priv(ndev);
> >>  	int tx_frm_cnt = 0, tx_byte_cnt = 0;
> >>  	struct enetc_tx_swbd *tx_swbd;
> >> +	union enetc_tx_bd *txbd;
> >> +	bool do_tstamp;
> >>  	int i, bds_to_clean;
> >> +	u64 tstamp = 0;
> >
> >Please keep in reverse Christmas tree order as much as possible:
> 
> For the xmass tree part, Yangbo, better move the priv and txbd declarations
> inside the scope of the if() {} block where they are actually used, i.e.:
> 
> 		if (unlikely(tx_swbd->check_wb)) {
> 			struct enetc_ndev_priv *priv = netdev_priv(ndev);
> 			union enetc_tx_bd *txbd;
> 			[...]
> 		}
> 

[Y.b. Lu] Will do that.

> >
> >	union enetc_tx_bd *txbd;
> >	int i, bds_to_clean;
> >	bool do_tstamp;
> >	u64 tstamp = 0;
> >
> >>  	i = tx_ring->next_to_clean;
> >>  	tx_swbd = &tx_ring->tx_swbd[i];
> >>  	bds_to_clean = enetc_bd_ready_count(tx_ring, i);
> >>
> >> +	do_tstamp = false;
> >> +
> >>  	while (bds_to_clean && tx_frm_cnt < ENETC_DEFAULT_TX_WORK) {
> >>  		bool is_eof = !!tx_swbd->skb;
> >>
> >> +		if (unlikely(tx_swbd->check_wb)) {
> >> +			txbd = ENETC_TXBD(*tx_ring, i);
> >> +
> >> +			if (!(txbd->flags & ENETC_TXBD_FLAGS_W))
> >> +				goto no_wb;
> >> +
> >> +			if (tx_swbd->do_tstamp) {
> >> +				enetc_get_tx_tstamp(&priv->si->hw, txbd,
> >> +						    &tstamp);
> >> +				do_tstamp = true;
> >> +			}
> >> +		}
> >> +no_wb:
> >
> >This goto seems strange and unnecessary.  How about this instead?
> >
> >			if (txbd->flags & ENETC_TXBD_FLAGS_W &&
> >			    tx_swbd->do_tstamp) {
> >				enetc_get_tx_tstamp(&priv->si->hw, txbd, &tstamp);
> >				do_tstamp = true;
> >			}
> >
> 
> Absolutely, somehow I missed this.  I guess the intention was to be able to
> support multiple
> if() blocks for the writeback case (W flag set) but the code is much better off
> without the goto.

[Y.b. Lu] Will use this to support current single tstamp writeback case.

> 
> >>  		enetc_unmap_tx_buff(tx_ring, tx_swbd);
> >>  		if (is_eof) {
> >> +			if (unlikely(do_tstamp)) {
> >> +				enetc_tstamp_tx(tx_swbd->skb, tstamp);
> >> +				do_tstamp = false;
> >> +			}
> >>  			napi_consume_skb(tx_swbd->skb, napi_budget);
> >>  			tx_swbd->skb = NULL;
> >>  		}
> >> @@ -167,6 +169,11 @@ struct enetc_cls_rule {
> >>
> >>  #define ENETC_MAX_BDR_INT	2 /* fixed to max # of available cpus */
> >>
> >> +enum enetc_hw_features {
> >
> >This is a poor choice of name.  It sounds like it describes HW
> >capabilities, but you use it to track whether a feature is requested at
> >run time.
> >
> >> +	ENETC_F_RX_TSTAMP	= BIT(0),
> >> +	ENETC_F_TX_TSTAMP	= BIT(1),
> >> +};
> >> +
> >>  struct enetc_ndev_priv {
> >>  	struct net_device *ndev;
> >>  	struct device *dev; /* dma-mapping device */ @@ -178,6 +185,7 @@
> >> struct enetc_ndev_priv {
> >>  	u16 rx_bd_count, tx_bd_count;
> >>
> >>  	u16 msg_enable;
> >> +	int hw_features;
> >
> >This is also poorly named.  How about "tstamp_request" instead?
> >
> 
> This ndev_priv variable was intended to gather flags for all the active h/w
> related features, i.e. keeping count of what h/w offloads are enabled for the
> current device (at least for those that don't have already a netdev_features_t
> flag).
> I wouldn't waste an int for 2 timestamp flags, I'd rather have a more generic
> name.
> Maybe active_offloads then?
> 
> Anyway, the name can be changed later too, when other offloads will be
> added.

[Y.b. Lu] How about using active_offloads, and add TODO comments in enum enetc_active_offloads?

> 
> Thanks,
> Claudiu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
