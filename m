Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566B811996
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 14:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2buV6JwlJuDG1CwKOSsR60+Lt37rttIL3b1YkwuOdY=; b=U/RE1HJCIVr11M
	gpwa04q9VO3uxdQNiE/J+JuspSf91N0691t0mABC2WqqYq8L/+uC3A1bPHh1jBy/S9XqJrIu0vEtN
	s9la4K4pofjYArEAoHsSgV260qQi0jmkMQpHWLav36q16j8ylmxF1/l0zDMqcHnBZbQk1Z0wpAk1F
	SsNcgt88WYF8JiceLm+iezhu8gEW3o5aJj1bsfABKTbIDfoAXrnjKbtexkT3PbxnoS/Cx8HQS8NNj
	FyxohXjOUhU3kQFpxuf0RofSIvPFOSCfhQSmgZP8hLXdlxsLtM5ikq/RG5QFc8v8giXQ0B6OwdNNb
	kLulKyXgMb7TJcQcd1Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBI0-0003YB-K7; Thu, 02 May 2019 12:58:16 +0000
Received: from mail-eopbgr140055.outbound.protection.outlook.com
 ([40.107.14.55] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBHs-0003Xd-7S
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 12:58:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RXKzJUgPgE5wSsL1xuganqMQcLHfdvaxVMsbcvTAPIw=;
 b=mTS8Vp+pAqohTzInZHEYm4TuZ3vryiFF2IiAzSlK0f2CSuUO+QZhTFvnSuRavtAAJoZ84538i3x4QOeWm/Z6l0nzuDc9fKyaGwnRhFnRtZakzkElYTQLduNPOyDbInLbQeGLI/fU9O7C6FHFKCPpy2yX3DXvM0UHEOcX6oEvNG8=
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com (20.177.50.159) by
 VI1PR04MB4430.eurprd04.prod.outlook.com (20.177.55.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Thu, 2 May 2019 12:58:05 +0000
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::81d8:f74b:f91e:f071]) by VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::81d8:f74b:f91e:f071%7]) with mapi id 15.20.1835.018; Thu, 2 May 2019
 12:58:05 +0000
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
To: "jocke@infinera.com" <joakim.tjernlund@infinera.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Madalin-cristian Bucur
 <madalin.bucur@nxp.com>, Leo Li <leoyang.li@nxp.com>, Roy Pledge
 <roy.pledge@nxp.com>, Camelia Alexandra Groza <camelia.groza@nxp.com>
Subject: RE: [PATCH v2 9/9] dpaa_eth: fix SG frame cleanup
Thread-Topic: [PATCH v2 9/9] dpaa_eth: fix SG frame cleanup
Thread-Index: AQHU/MhUOSfNbgWjXk28jO3/UbT5S6ZQPsaAgAdTq4CAABnMAIAAIyeg
Date: Thu, 2 May 2019 12:58:04 +0000
Message-ID: <VI1PR04MB5134872815E02B053B383C08EC340@VI1PR04MB5134.eurprd04.prod.outlook.com>
References: <20190427071031.6563-1-laurentiu.tudor@nxp.com>
 <20190427071031.6563-10-laurentiu.tudor@nxp.com>
 <2c6f5d170edab346e0a87b1dfeb12e2f65801685.camel@infinera.com>
 <VI1PR04MB5134C0D6707E78D674B96898EC340@VI1PR04MB5134.eurprd04.prod.outlook.com>
 <728fe477849debcc14bb1af01e35bc7b184a0a03.camel@infinera.com>
In-Reply-To: <728fe477849debcc14bb1af01e35bc7b184a0a03.camel@infinera.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80670efb-ec53-4f70-4c2e-08d6cefdd122
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4430; 
x-ms-traffictypediagnostic: VI1PR04MB4430:
x-ms-exchange-purlcount: 1
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <VI1PR04MB44307FD8A6DB5FA45E44F0A8EC340@VI1PR04MB4430.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(376002)(136003)(366004)(39860400002)(189003)(199004)(13464003)(66556008)(64756008)(7736002)(99286004)(5660300002)(6636002)(26005)(478600001)(8676002)(110136005)(54906003)(186003)(2906002)(66446008)(102836004)(2501003)(76176011)(316002)(229853002)(52536014)(25786009)(66476007)(66946007)(73956011)(76116006)(7696005)(4326008)(6506007)(6246003)(44832011)(6436002)(33656002)(14454004)(6306002)(66066001)(81156014)(55016002)(71200400001)(71190400001)(81166006)(305945005)(8936002)(53936002)(446003)(486006)(3846002)(74316002)(86362001)(11346002)(6116002)(14444005)(256004)(966005)(9686003)(476003)(68736007)(491001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4430;
 H:VI1PR04MB5134.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0LPv1EluzdhCWa85usBocVjm6uEOT0wlatyrvLOoS8VQKA6lbazybzkM3heUWLIGNQcBJoYsGGtKn1hi9xRUVCZOqjI9rGb1bT599gTk/FRLk+snMt/EyPlS7B+P+DWwSVs5RZKzygOGySe5TtC1wegh1AEe6ccQXAqM3sEZpANdpkDzC8zHY2BBBov7+wAosd9cAye1pg4/CuhU8mxizcvUQHLOeB4yTZADM06+ugjksjWhvXMubKMe2RSScskczzJrEEiO9+mjJF7WcorsPhr6nwiJJbYTdWGMpcIZcftlYR3LVUYuXurAODamAmZDTHFlEwCAILbaT+r5kJDf3EUSPz4iq/+63FMIn5tcLQjFyTBA0qPlO6+p/Ri6AZ24mkPHj5j4pbpTtMnuZkihqj2QrP2r9W2ckoqii3WYhZQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80670efb-ec53-4f70-4c2e-08d6cefdd122
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 12:58:04.6674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4430
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_055808_292708_6A03E6B7 
X-CRM114-Status: GOOD (  23.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
> Sent: Thursday, May 2, 2019 1:37 PM
> 
> On Thu, 2019-05-02 at 09:05 +0000, Laurentiu Tudor wrote:
> > Hi Joakim,
> >
> > > -----Original Message-----
> > > From: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
> > > Sent: Saturday, April 27, 2019 8:11 PM
> > >
> > > On Sat, 2019-04-27 at 10:10 +0300, laurentiu.tudor@nxp.com wrote:
> > > > From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> > > >
> > > > Fix issue with the entry indexing in the sg frame cleanup code being
> > > > off-by-1. This problem showed up when doing some basic iperf tests
> and
> > > > manifested in traffic coming to a halt.
> > > >
> > > > Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> > > > Acked-by: Madalin Bucur <madalin.bucur@nxp.com>
> > >
> > > Wasn't this a stable candidate too?
> >
> > Yes, it is. I forgot to add the cc:stable tag, sorry about that.
> 
> Then this is a bug fix that should go directly to linus/stable.
> 
> I note that
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/log/drivers/net/ethernet/freescale/dpaa?h=linux-4.19.y

Not sure I understand ... I don't see the patch in the link.

> is in 4.19 but not in 4.14 , is it not appropriate for 4.14?

I think it makes sense to go in both stable trees.

---
Best Regards, Laurentiu

> >
> > > > ---
> > > >  drivers/net/ethernet/freescale/dpaa/dpaa_eth.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > > b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > > > index daede7272768..40420edc9ce6 100644
> > > > --- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > > > +++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > > > @@ -1663,7 +1663,7 @@ static struct sk_buff
> *dpaa_cleanup_tx_fd(const
> > > struct dpaa_priv *priv,
> > > >                                  qm_sg_entry_get_len(&sgt[0]),
> dma_dir);
> > > >
> > > >                 /* remaining pages were mapped with
> skb_frag_dma_map()
> > > */
> > > > -               for (i = 1; i < nr_frags; i++) {
> > > > +               for (i = 1; i <= nr_frags; i++) {
> > > >                         WARN_ON(qm_sg_entry_is_ext(&sgt[i]));
> > > >
> > > >                         dma_unmap_page(dev, qm_sg_addr(&sgt[i]),
> > > > --
> > > > 2.17.1
> > > >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
