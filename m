Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AB71200D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:19:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aO1iXIxFE/MZEheTed1BqulOtEl2FCIjGX/UY55n1vw=; b=bCvqKm+1u4BGUx
	skQUC5G0ic2fp22BWIRsSJP1NHEYb0ugF7Ab0skan5gCaxkeSgOpuN1YKrxNRmKf7n8EOOKIVKcha
	DQ17tKFCYJWxlbZLvpzmA7MYzGcL+QocZ05NjvP5TLp0td9QxOaxB11wAMHnqKiNrCGpBSQY8HWMu
	ScZrZjSnGBMWEwJVp0q8ygA/pWnhz+bSMcxU7zzSLAjjow98c9/BuYbq/J1soLNh8vP71WZOc3VmQ
	xfervrDcUW9AbH8pz9KT4d2Gtpd7yfnwpegEMTJsqWGqGrZA4CjCmth09Cqfww0jDM5kx9i89oMKB
	XVj7YENm8n9/yLxPm8kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmX2-0005qs-JP; Mon, 16 Dec 2019 09:19:12 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmWp-0005ps-1i
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:19:00 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 86FFF42650;
 Mon, 16 Dec 2019 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576487934; bh=TuUBvcwYnuYNXYYCOMVn2LlqQyoLV9WD3AmcOfygKks=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=V9+iyQwQAOugzLlIKzmwgZRUk+lUoIBvPA1tFCYUJolPY6eSth5BhQUMNdKqMG+kQ
 lWh9mtKTzWpsmg5eNieOo2RJqNDp18+hWOqVoA6XFxxw3hznCSPZX3O+pY40uTwrys
 g3x/oBnTb5/KNJQONO+venasY2Pdl3M9jLfzISUZTCPTbWcZLBe/oamoXGoLpgvB1U
 QyYesycoewAyMi64vPG07YBTsSBqT/HGqlasRMyX/Qiub7KPkhoow79NX9YEA+rsEl
 RD+WYhDgW260IiMjTFhe/+pSKuhZ7G832i1HWZEC8jisSIWRnBFdmwLAKJ4eN3vDPr
 szEtT4757+F8Q==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 5F3B1A0085;
 Mon, 16 Dec 2019 09:18:52 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 16 Dec 2019 01:18:52 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 16 Dec 2019 01:18:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mgPWS41eJ3D1bFWhqlWFBevxA8ktRIDqlQAYqMibL9E/glChgP7YLueMMV50VrINKjRYDzxP8cPrhkk43X1Mf0VfNHZmw7/3yM7wQ6tc+VrVWmSmhluER57IOatQ7hAN5YBaM/pS/hP4pUcJTjdAZ8HnxpYVPGdRWeBpZzN/+5HjDu6kmRAZBHVwQmDTvMdODE649jWz0s66hCE50z0tNNxqfbKjk9psmWUpQ0Ou0ilZl8cHhCGERm8g8WUf8Mm9B3/gdAFQpXIn51qwXcRv73ZlVwJHCTQYjaLcxQLDXroc7V5eQRctihmXKT3dMPx11W4uVACwQVlMiWvuOQBjAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oC3dJqay3iflZmkvGKU8yuy9Yrqc7PvExl3sum/ScyE=;
 b=ja8FyP+NTCO1KFOTGwPG+lioWQ5kGZL4MPvwTYzbWICFt6AbXLrfT6oIf2dwRcAuFgs9upOxntIf6ogIFxDJtObar8LZGG0h7OoEZJfxkwtKOt+2Q811OolUaeA3WRAVHM5AqCB8DzYaoL8s3z6jK5L1CWkFGsYKnp1xk/fsFCZBlY5U2OyOLQ44op93N179X3qz4ameRTYqHfDF4uNyuwJAZx4/m8LsgBd4Wj0nptOJolM3HeibZ0Xk/PUIOb7s3cucwHv2S29w1bcYf2hKuboUPSe8rsYwrbuyZiwkTj51aoRcNB0UgOmN6RPpGJmc4UkGZrX0Nw0SRWhchcM8Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oC3dJqay3iflZmkvGKU8yuy9Yrqc7PvExl3sum/ScyE=;
 b=BdhGb3QTiHU/mpzCaIKqBSm0M9G9io7+qgvf4VfmFzyr20Q5Te/WUruyLcHHOL9hiiA2EAO7o8TAay5UT5q5CTYiPSqXlSv+Hz72MHHIOOj5NGwWWg1hDmGxUiDA5b9UaakIQeiJFn9JxCwqyGRFWMd2wwYSXpom/hz406qvkZI=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB2994.namprd12.prod.outlook.com (20.178.210.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Mon, 16 Dec 2019 09:18:50 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::3d20:3a36:3b64:4510]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::3d20:3a36:3b64:4510%7]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 09:18:50 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
Subject: RE: [PATCH net-next 3/4] net: stmmac: Let TX and RX interrupts be
 independently enabled/disabled
Thread-Topic: [PATCH net-next 3/4] net: stmmac: Let TX and RX interrupts be
 independently enabled/disabled
Thread-Index: AQHVr5PIxrei2rB6dEKHZgwzBhKcYqe6HSSAgAJnE7A=
Date: Mon, 16 Dec 2019 09:18:50 +0000
Message-ID: <BN8PR12MB3266288303A6CA6C3CAA5E6CD3510@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1576007149.git.Jose.Abreu@synopsys.com>
 <04c000a3e0356e8bfb63e07490d8de8e081a2afe.1576007149.git.Jose.Abreu@synopsys.com>
 <20191214123623.1aeb4966@cakuba.netronome.com>
In-Reply-To: <20191214123623.1aeb4966@cakuba.netronome.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0c33801-ca34-4fff-9c1a-08d78208f695
x-ms-traffictypediagnostic: BN8PR12MB2994:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB29945FDF293216826AA45EA3D3510@BN8PR12MB2994.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(39860400002)(366004)(396003)(136003)(189003)(199004)(7416002)(186003)(316002)(66946007)(54906003)(6916009)(5660300002)(33656002)(66556008)(66446008)(66476007)(478600001)(76116006)(64756008)(7696005)(6506007)(26005)(2906002)(71200400001)(9686003)(4326008)(55016002)(8936002)(81166006)(52536014)(86362001)(81156014)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB2994;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jCrwCxBOCvWLkIEZAtLoBvcQw/9EOU9GzEynQnO+JcMiD24FbtNSCKzNU7vuDV+8DSi3oP2wU3c9JC9ViHYdRY4srgEnmZYfqZF/xt15W+Ko500tvsVDIJPd5RWIT/CrZ1HtX2FEccAR8JePuGfla2puPTlHabFqprLRzYhsJzXX8d3Ugwlqi+TW97qUyiuvucdhg2I6WbjOKy69KfHtyvk2i3f8aVK4BhvCCj+hLJlakcF7Dc0OLgV2u+KRYrnoy3QGoRshDWEx1jCWC4SqIUQp5wo2XRPEay49bP6G0G+l9ogt8X48q9RD4S7fEKlNbD/TqAJfUEvhk56Cmvq9r6bsy1X4bEv+CaOgzIBXHAtKnZQVeGoOI9pOoKMRaThkr2nZLq8/Y3j4abLzauTl4PuN1vWSe21/EYro+3LnOe6DhFX0vys1wWTnAnYPu+Of
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d0c33801-ca34-4fff-9c1a-08d78208f695
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 09:18:50.1745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HyBSdc2fWqfuP1vsWi+qdphg3EOdN234Qg69/QBA5u7XpIeKbs23csbMWMcUMFpbTTYNNVlkdmzkVEthtFidWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB2994
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_011859_127736_88EE687A 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jakub Kicinski <jakub.kicinski@netronome.com>
Date: Dec/14/2019, 20:36:23 (UTC+00:00)

> On Tue, 10 Dec 2019 20:54:43 +0100, Jose Abreu wrote:
> > @@ -2278,10 +2286,14 @@ static void stmmac_tx_timer(struct timer_list *t)
> >  	 * If NAPI is already running we can miss some events. Let's rearm
> >  	 * the timer and try again.
> >  	 */
> > -	if (likely(napi_schedule_prep(&ch->tx_napi)))
> > +	if (likely(napi_schedule_prep(&ch->tx_napi))) {
> > +		unsigned long flags;
> > +
> > +		spin_lock_irqsave(&ch->lock, flags);
> > +		stmmac_disable_dma_irq(priv, priv->ioaddr, ch->index, 0, 1);
> > +		spin_unlock_irqrestore(&ch->lock, flags);
> >  		__napi_schedule(&ch->tx_napi);
> > -	else
> > -		mod_timer(&tx_q->txtimer, STMMAC_COAL_TIMER(10));
> 
> You should also remove the comment above the if statement if it's
> really okay to no longer re-arm the timer. No?

Yeah, agreed!

> 
> > +	}
> >  }
> >  
> >  /**
> 
> > @@ -3759,24 +3777,18 @@ static int stmmac_napi_poll_tx(struct napi_struct *napi, int budget)
> >  	struct stmmac_channel *ch =
> >  		container_of(napi, struct stmmac_channel, tx_napi);
> >  	struct stmmac_priv *priv = ch->priv_data;
> > -	struct stmmac_tx_queue *tx_q;
> >  	u32 chan = ch->index;
> >  	int work_done;
> >  
> >  	priv->xstats.napi_poll++;
> >  
> > -	work_done = stmmac_tx_clean(priv, DMA_TX_SIZE, chan);
> > -	work_done = min(work_done, budget);
> > -
> > -	if (work_done < budget)
> > -		napi_complete_done(napi, work_done);
> > +	work_done = stmmac_tx_clean(priv, budget, chan);
> > +	if (work_done < budget && napi_complete_done(napi, work_done)) {
> 
> Not really related to this patch, but this looks a little suspicious. 
> I think the TX completions should all be processed regardless of the
> budget. The budget is for RX.

Well but this is a TX NAPI ... Shouldn't it be limited to prevent CPU 
starvation ?

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
