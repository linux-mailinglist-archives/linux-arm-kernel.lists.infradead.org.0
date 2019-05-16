Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2044520B45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAcskd/AUxCY+2Z8XRhFnYh1DSjDv8Y72GzsVVu9I9s=; b=FqnD6CZ6fMjhxL
	8NI9uJTRL7gxbHvoW4z21o0EQVMyDSq2/xyQFwO4oSgoHoKVHGZZEy/vNfAAWI5ADOYn2Di8m12xd
	jciN40Yjy0B0sSMwp0JahK44tUzJDuOVu1QRNWtKPAS41eIyA7KZsDKLXOWXXDOF26FmoyYdveU8s
	+k2FgJIiHQH9hXc8MIG7a+H694nSoLM3OfLEnbcs4kkmlwSjFK5Xt28Pbdb36uj6pfDQpYCeNanel
	+G0Ief6JGa8/YuwUnlUDZyH1bC7vqpOwuEMaxEQqWmdo/i3BN5MWaXBUnUryLUerUlbK8mYl8F9kV
	pcFtNk/ct93p/+Tqz0Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRILe-0005HC-5I; Thu, 16 May 2019 15:31:10 +0000
Received: from mail-eopbgr50050.outbound.protection.outlook.com ([40.107.5.50]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRILP-0005Ec-TA
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:30:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zjFRyEF+r0iSm1zpGNwtiNGlavM9lqkbECsXY5mbnGU=;
 b=FrUYVidze5zm2O89CUtq2ZsNDAsxldldwYTNn0VJ5AmFyAIzvQBZPvF7My9S8UglrpXZygdqJDpaY9T4K4cmreMocJt0IkT6qmEgnt6oHhbPRPaTiDNinEZMeYs/BjMn9eRwU0aQ0j/sdwfINuSMNYcvNKVkJ4DGbUpJuUc1uTY=
Received: from VI1PR04MB4880.eurprd04.prod.outlook.com (20.177.49.153) by
 VI1PR04MB3165.eurprd04.prod.outlook.com (10.170.229.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Thu, 16 May 2019 15:30:51 +0000
Received: from VI1PR04MB4880.eurprd04.prod.outlook.com
 ([fe80::d9de:1be3:e7e6:757f]) by VI1PR04MB4880.eurprd04.prod.outlook.com
 ([fe80::d9de:1be3:e7e6:757f%3]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 15:30:51 +0000
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: Richard Cochran <richardcochran@gmail.com>, "Y.b. Lu" <yangbo.lu@nxp.com>
Subject: RE: [PATCH 1/3] enetc: add hardware timestamping support
Thread-Topic: [PATCH 1/3] enetc: add hardware timestamping support
Thread-Index: AQHVC84BpTq18Sng3k254t8Y+2yCUKZt0N+AgAAFuTA=
Date: Thu, 16 May 2019 15:30:51 +0000
Message-ID: <VI1PR04MB4880B9B346D29E0EFC715D28960A0@VI1PR04MB4880.eurprd04.prod.outlook.com>
References: <20190516100028.48256-1-yangbo.lu@nxp.com>
 <20190516100028.48256-2-yangbo.lu@nxp.com>
 <20190516143251.akbt3ns6ue2jrhl5@localhost>
In-Reply-To: <20190516143251.akbt3ns6ue2jrhl5@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=claudiu.manoil@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2fa7ec64-6c2e-45da-664a-08d6da137ac7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3165; 
x-ms-traffictypediagnostic: VI1PR04MB3165:
x-microsoft-antispam-prvs: <VI1PR04MB3165156301F587BBBD657544960A0@VI1PR04MB3165.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(366004)(376002)(346002)(39860400002)(189003)(199004)(52314003)(13464003)(71190400001)(305945005)(71200400001)(99286004)(66476007)(66066001)(66556008)(66946007)(6246003)(64756008)(6436002)(66446008)(54906003)(229853002)(14444005)(256004)(33656002)(5660300002)(52536014)(68736007)(73956011)(76116006)(53936002)(110136005)(6636002)(3846002)(6116002)(44832011)(14454004)(25786009)(102836004)(6506007)(186003)(478600001)(446003)(8936002)(26005)(11346002)(81156014)(8676002)(81166006)(2906002)(7736002)(7696005)(486006)(76176011)(4326008)(476003)(74316002)(316002)(9686003)(55016002)(86362001)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3165;
 H:VI1PR04MB4880.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: F9kOkM3tBf8cdsXeggI+RmydGsnaTZrqfv+IYg13HxmUYCvD5KwThJ21Kd6El58ZM/TwgNQXwzX2XpDjWzQ7bhjpjAh3ptlEuNfE5j6pJSls1McnBHjVFbQk1a/VuzmYIdT6ooOP3/EgSSXh+XU6VhaWQnjTNilsOrhXvTXow02cEwokCJwj4X6SnamL154kb23/eNlnkQMsALD7SiQyQo6PdHMmCS2PwzLdZJVABUrm5u6pWR/zH6Jlt6utIidtFAhHi9BgdtYyCGEH3KVcCpDM6TGDpSFlT5xzj24hY4kwberlXCrDmRydgFEb3cSCU7FjDDmPxIch/+7ArwskPHEE/+b1l78OAVEPTS/ZIbNXDl4Tp5sbFbU0Y30IbsuG8LWCtYSEfui20uDbv1/s58viIvLBb+XwrI00q8jn7kQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fa7ec64-6c2e-45da-664a-08d6da137ac7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 15:30:51.6417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_083056_040871_43275F60 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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


>-----Original Message-----
>From: Richard Cochran <richardcochran@gmail.com>
>Sent: Thursday, May 16, 2019 5:33 PM
>To: Y.b. Lu <yangbo.lu@nxp.com>
>Cc: netdev@vger.kernel.org; David Miller <davem@davemloft.net>; Claudiu
>Manoil <claudiu.manoil@nxp.com>; Shawn Guo <shawnguo@kernel.org>; Rob
>Herring <robh+dt@kernel.org>; devicetree@vger.kernel.org; linux-arm-
>kernel@lists.infradead.org; linux-kernel@vger.kernel.org
>Subject: Re: [PATCH 1/3] enetc: add hardware timestamping support
>
>On Thu, May 16, 2019 at 09:59:08AM +0000, Y.b. Lu wrote:
>
[...]
>
>>  static bool enetc_clean_tx_ring(struct enetc_bdr *tx_ring, int napi_budget)
>>  {
>>  	struct net_device *ndev = tx_ring->ndev;
>> +	struct enetc_ndev_priv *priv = netdev_priv(ndev);
>>  	int tx_frm_cnt = 0, tx_byte_cnt = 0;
>>  	struct enetc_tx_swbd *tx_swbd;
>> +	union enetc_tx_bd *txbd;
>> +	bool do_tstamp;
>>  	int i, bds_to_clean;
>> +	u64 tstamp = 0;
>
>Please keep in reverse Christmas tree order as much as possible:

For the xmass tree part, Yangbo, better move the priv and txbd declarations
inside the scope of the if() {} block where they are actually used, i.e.:

		if (unlikely(tx_swbd->check_wb)) {
			struct enetc_ndev_priv *priv = netdev_priv(ndev);
			union enetc_tx_bd *txbd;
			[...]
		}

>
>	union enetc_tx_bd *txbd;
>	int i, bds_to_clean;
>	bool do_tstamp;
>	u64 tstamp = 0;
>
>>  	i = tx_ring->next_to_clean;
>>  	tx_swbd = &tx_ring->tx_swbd[i];
>>  	bds_to_clean = enetc_bd_ready_count(tx_ring, i);
>>
>> +	do_tstamp = false;
>> +
>>  	while (bds_to_clean && tx_frm_cnt < ENETC_DEFAULT_TX_WORK) {
>>  		bool is_eof = !!tx_swbd->skb;
>>
>> +		if (unlikely(tx_swbd->check_wb)) {
>> +			txbd = ENETC_TXBD(*tx_ring, i);
>> +
>> +			if (!(txbd->flags & ENETC_TXBD_FLAGS_W))
>> +				goto no_wb;
>> +
>> +			if (tx_swbd->do_tstamp) {
>> +				enetc_get_tx_tstamp(&priv->si->hw, txbd,
>> +						    &tstamp);
>> +				do_tstamp = true;
>> +			}
>> +		}
>> +no_wb:
>
>This goto seems strange and unnecessary.  How about this instead?
>
>			if (txbd->flags & ENETC_TXBD_FLAGS_W &&
>			    tx_swbd->do_tstamp) {
>				enetc_get_tx_tstamp(&priv->si->hw, txbd, &tstamp);
>				do_tstamp = true;
>			}
>

Absolutely, somehow I missed this.  I guess the intention was to be able to support multiple
if() blocks for the writeback case (W flag set) but the code is much better off without the goto.

>>  		enetc_unmap_tx_buff(tx_ring, tx_swbd);
>>  		if (is_eof) {
>> +			if (unlikely(do_tstamp)) {
>> +				enetc_tstamp_tx(tx_swbd->skb, tstamp);
>> +				do_tstamp = false;
>> +			}
>>  			napi_consume_skb(tx_swbd->skb, napi_budget);
>>  			tx_swbd->skb = NULL;
>>  		}
>> @@ -167,6 +169,11 @@ struct enetc_cls_rule {
>>
>>  #define ENETC_MAX_BDR_INT	2 /* fixed to max # of available cpus */
>>
>> +enum enetc_hw_features {
>
>This is a poor choice of name.  It sounds like it describes HW
>capabilities, but you use it to track whether a feature is requested
>at run time.
>
>> +	ENETC_F_RX_TSTAMP	= BIT(0),
>> +	ENETC_F_TX_TSTAMP	= BIT(1),
>> +};
>> +
>>  struct enetc_ndev_priv {
>>  	struct net_device *ndev;
>>  	struct device *dev; /* dma-mapping device */
>> @@ -178,6 +185,7 @@ struct enetc_ndev_priv {
>>  	u16 rx_bd_count, tx_bd_count;
>>
>>  	u16 msg_enable;
>> +	int hw_features;
>
>This is also poorly named.  How about "tstamp_request" instead?
>

This ndev_priv variable was intended to gather flags for all the active h/w related
features, i.e. keeping count of what h/w offloads are enabled for the current device
(at least for those that don't have already a netdev_features_t flag).
I wouldn't waste an int for 2 timestamp flags, I'd rather have a more generic name.
Maybe active_offloads then?

Anyway, the name can be changed later too, when other offloads will be added.

Thanks,
Claudiu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
