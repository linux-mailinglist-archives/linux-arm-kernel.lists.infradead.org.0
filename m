Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB1C5F660
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 12:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1KmQ193Lcxv6WlHxA0T4BNZhyqViCtwqvdU8tRMwBo=; b=cVTlC6NF48K7FA
	mL/TPZhHYtT1isileI75TQRM16Wz195Ulb+lGu06nbt/VDBHfLXfyy/SloNN1IksgGhNTuv3pNbqk
	KStIWszhf+cWR03dnmaif/t3r4sOq/NE80kEg2Q7MEEwtmx2I14/buw6sj9hUgVh1crvrdATbVtwi
	c+k3C761MXgSW1hLXfTK2xxOcTxP1KvJHF9nwsravot2kH2URyDcjocMFn/1ytKEh8BHRtYEVHHHC
	ALv+EI04pEcBpNW5Ossz4muj6CpzqezhewH5AIr/Th4ah/N039qZGDFfFBLXVbjLxo8wKyJBdBWJc
	xKZUvLbdMkoRRTcq2kfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyki-0006bM-R1; Thu, 04 Jul 2019 10:14:08 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiykI-0006b0-UR
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 10:13:44 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E5519C0AC0;
 Thu,  4 Jul 2019 10:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562235221; bh=MiV6q5HB26oAfh7p67P73WEZBvVfjK2jDRsddh7VuhY=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=EtFVhVhPmkdl0Zfx27sC/0zwpgahRGE0u/Glbx4n3JjHSUQ5dmQpTWOsODJSeTL+0
 /qz0XbKhCGd0v8JgyF8Y33fTM/cYnV1Ean5MvOzzL72wlemMgWGl3MIF2MbpzDf4O4
 VcxR60mlsLo2Y+IrFTjMJI+dYvPkVgjgCqQPCfUdiIrb0y/KZFU2PhjZ6/Ydr9WN0B
 CMoQu7ntfR+wL+bOtmappodqipizDV07p/jWW/kmcQohZpc1NCwi7ZKmzwQk1PS/CY
 BSRXnS9QxM1w/LSrbaSSzCypLqXOXXvSycJCJa0U28elHrFUuF5ZB9btsNQeU6puyy
 8o9s6FcM/9jGA==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 80C68A0067;
 Thu,  4 Jul 2019 10:13:39 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 4 Jul 2019 03:13:39 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 4 Jul 2019 03:13:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=roDmDJe5s5LZPlGJ7kdtWOYs0a+MGkoenVZKnCqIN48=;
 b=DfiQkeB91zKV7m6ndi0CrYK2fXIrVxasWwIsoTAt4RgjsoQY9+y5mC9ItdVBKdk/RBLbBlcYLau41bXN3uHpbeEiYf9OJ3v8l8n4P0jCNaCytcifKcoGb+BBfi9+4L76AC2lC1Gg/YcGzbgIV/Gpjwb1YvzgpRuBULGsugPdF8Y=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.66.159) by
 BN8PR12MB3572.namprd12.prod.outlook.com (20.178.212.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Thu, 4 Jul 2019 10:13:37 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d%5]) with mapi id 15.20.2032.019; Thu, 4 Jul 2019
 10:13:37 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>,
 Jose Abreu <Jose.Abreu@synopsys.com>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/aa6O3oAgAABAmA=
Date: Thu, 4 Jul 2019 10:13:37 +0000
Message-ID: <BN8PR12MB3266BC5322AADFAC49D9BAFAD3FA0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <20190704120018.4523a119@carbon>
In-Reply-To: <20190704120018.4523a119@carbon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76af8e59-5f8f-4d6d-432d-08d7006847a6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB3572; 
x-ms-traffictypediagnostic: BN8PR12MB3572:
x-microsoft-antispam-prvs: <BN8PR12MB3572E3E7377D836F6AE4D01AD3FA0@BN8PR12MB3572.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0088C92887
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(136003)(346002)(39860400002)(376002)(52314003)(199004)(189003)(99286004)(7696005)(33656002)(5660300002)(6246003)(2906002)(486006)(55016002)(6506007)(53936002)(76176011)(305945005)(54906003)(11346002)(6436002)(7736002)(446003)(476003)(66556008)(66066001)(66446008)(64756008)(52536014)(14454004)(74316002)(76116006)(9686003)(478600001)(316002)(66946007)(66476007)(73956011)(110136005)(102836004)(81166006)(4326008)(86362001)(8676002)(71200400001)(7416002)(229853002)(8936002)(25786009)(81156014)(186003)(26005)(256004)(6116002)(3846002)(71190400001)(5024004)(68736007)(6636002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3572;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: D1S33XVp7Xxgc3lxTHi3Y3kDAmFleeh9xoTeI2j2dVvdeyJMyl16RpiUSXGDeJHdr5uEs4CWsCL+VRCrR2j0kB4mGfFNE7VE85MyJyinX4dkGxB4IYZh9m+VSj/r3RqTMVjLYetenMk+n4COCMLFwNh6W6Tax2v+xSgoqmoyryTZvts7aeB+F563yicDsWWAI/aVFvfaTEH9UGYwuOVVdnkWNqbD7LS3eRP4FoPSXxZtFx6cwvezLwdB+dVaf3JOtTuThIx2C2Nb7ZuDAVoMCAhBMl+ygUwQDudRHEUVBaznyHMCexYwm4PBFA6OMdwVCck4Ha7UsWdjjGR6X/xh8Kija2K1fYdld2bGsM1f8Ci7Lh4ekzz1Xra8tCbwDMN8wMRvb3KIOxAZzU6SD30aJbwrzZtbB0o8fhU3HBDarJc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 76af8e59-5f8f-4d6d-432d-08d7006847a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2019 10:13:37.2413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3572
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_031343_040927_27180940 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jesper Dangaard Brouer <brouer@redhat.com>

> The page_pool DMA mapping cannot be "kept" when page traveling into the
> network stack attached to an SKB.  (Ilias and I have a long term plan[1]
> to allow this, but you cannot do it ATM).

The reason I recycle the page is this previous call to:

	skb_copy_to_linear_data()

So, technically, I'm syncing to CPU the page(s) and then memcpy to a 
previously allocated SKB ... So it's safe to just recycle the mapping I 
think.

Its kind of using bounce buffers and I do see performance gain in this 
(I think the reason is because my setup uses swiotlb for DMA mapping).

Anyway, I'm open to some suggestions on how to improve this ...

> Also remember that the page_pool requires you driver to do the DMA-sync
> operation.  I see a dma_sync_single_for_cpu(), but I didn't see a
> dma_sync_single_for_device() (well, I noticed one getting removed).
> (For some HW Ilias tells me that the dma_sync_single_for_device can be
> elided, so maybe this can still be correct for you).

My HW just needs descriptors refilled which are in different coherent 
region so I don't see any reason for dma_sync_single_for_device() ...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
