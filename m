Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA04115F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 11:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bm0EL8eZiC/L76MUjNe/LK06mH9kphNdj1HU54hwO2o=; b=mxd+VCCo6OtgJb
	Dvov/lejiK6XFTpWvW8fBnIRAtOJBTlvld5ZFAMy+gtl5EMKT6lL1WdlNqXQ053KbsDTwRxGYPg5N
	eVfpVzq+6pHLzfEzVmyVUQ3BCD7FDQ5o0YJ8fWSyrQDbQ6TdQU7k0itUi5MRhTk36ysZ/6osFhwRd
	PP111GyHgaMK7z+xBNbc3en/IWZSIHvf3vJ46lO0UlTfdS8NJv4eJ4K2QHLLO5g1tCgZA38zIxypS
	qu+RKOiP84DVM/3AhKqGfkEDCuDxnCMjwIc3U4QSpYbQrDBYqsXoMjpeQu1nKNZu89jJdNsmnwojI
	npe0BTcEBzvyxK09Idqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7f7-00083E-R4; Thu, 02 May 2019 09:05:53 +0000
Received: from mail-eopbgr140040.outbound.protection.outlook.com
 ([40.107.14.40] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7f0-00082Q-NA
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 09:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qdC19H38zi5+A8RC77iYiWFkQGBZunhUFHwr1Ygr+sc=;
 b=rkIIYT8addpS7I+Ki1RBiiRjIhyTvCoM0Z3OeuNNbxzduj29iI4gaIblWxo3h4n0qo0ZnVXInn8FND5TC9UYZKgNo0T36oZ74tQP/JEjKdFZKIOUfPfM3TlInUTO7U+w+cMlQbi03AlQHwpgZKMyrmTv5Mk2IUdoagpl7uSn8GE=
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com (20.177.50.159) by
 VI1PR04MB4253.eurprd04.prod.outlook.com (52.134.31.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Thu, 2 May 2019 09:05:41 +0000
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::81d8:f74b:f91e:f071]) by VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::81d8:f74b:f91e:f071%7]) with mapi id 15.20.1835.018; Thu, 2 May 2019
 09:05:41 +0000
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
To: "jocke@infinera.com" <joakim.tjernlund@infinera.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Madalin-cristian Bucur
 <madalin.bucur@nxp.com>, Leo Li <leoyang.li@nxp.com>, Roy Pledge
 <roy.pledge@nxp.com>, Camelia Alexandra Groza <camelia.groza@nxp.com>
Subject: RE: [PATCH v2 9/9] dpaa_eth: fix SG frame cleanup
Thread-Topic: [PATCH v2 9/9] dpaa_eth: fix SG frame cleanup
Thread-Index: AQHU/MhUOSfNbgWjXk28jO3/UbT5S6ZQPsaAgAdTq4A=
Date: Thu, 2 May 2019 09:05:41 +0000
Message-ID: <VI1PR04MB5134C0D6707E78D674B96898EC340@VI1PR04MB5134.eurprd04.prod.outlook.com>
References: <20190427071031.6563-1-laurentiu.tudor@nxp.com>
 <20190427071031.6563-10-laurentiu.tudor@nxp.com>
 <2c6f5d170edab346e0a87b1dfeb12e2f65801685.camel@infinera.com>
In-Reply-To: <2c6f5d170edab346e0a87b1dfeb12e2f65801685.camel@infinera.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd868a55-ef45-47d3-4c6b-08d6cedd5a3e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4253; 
x-ms-traffictypediagnostic: VI1PR04MB4253:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <VI1PR04MB4253D8E678A58DD5115D9743EC340@VI1PR04MB4253.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(366004)(136003)(396003)(199004)(189003)(13464003)(8936002)(5660300002)(229853002)(8676002)(99286004)(256004)(66066001)(25786009)(14444005)(2906002)(6436002)(55016002)(76116006)(486006)(44832011)(14454004)(74316002)(86362001)(53936002)(2501003)(66556008)(9686003)(66446008)(64756008)(7696005)(66476007)(66946007)(73956011)(316002)(54906003)(110136005)(6246003)(446003)(11346002)(6506007)(4326008)(76176011)(71200400001)(81156014)(71190400001)(68736007)(81166006)(476003)(186003)(478600001)(7736002)(52536014)(305945005)(102836004)(6116002)(3846002)(26005)(33656002)(6636002)(491001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4253;
 H:VI1PR04MB5134.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mOmsPNF9QNL8W5itImUGGLc7AK6Em/IIvhIZKNexYmzVGd2mFgHqrZ9peg8anXyPh9GFF1JEpusyNkFlzgotURUbLsemaYx8Kjl+SPvVS2ZsBr7l5v3W+jCc7dW6RmlcxTOigKPpTAVluSWv6UFRxeMdP7Sxj9x65gjSlYWDOGjvBGEx5ZPLUB47XSGOuXPmM0rJye7Jx9YaDh9aHzVP0SVU10p8wxRTbamMo332n6OlOZvnA8e/Vxq4ynopQFF/goVcb9vPUgU25GnyevbvFTK1pGG5S5ljnmO/W8elvuga6k17JWO0K44RyD/cWWXeZvzYwwO9bAiEAKvVVJTQFuayGautV4+N9YNyX81kZDHilDHvs+NNKYH9iiO7GtHuOW+Cl9lOzjc3E61rdSqwrvbgsQW6ief0jHdgvg3cY18=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd868a55-ef45-47d3-4c6b-08d6cedd5a3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 09:05:41.5379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4253
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_020546_758755_7BBFA5F1 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.40 listed in list.dnswl.org]
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

Hi Joakim,

> -----Original Message-----
> From: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
> Sent: Saturday, April 27, 2019 8:11 PM
> 
> On Sat, 2019-04-27 at 10:10 +0300, laurentiu.tudor@nxp.com wrote:
> > From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> >
> > Fix issue with the entry indexing in the sg frame cleanup code being
> > off-by-1. This problem showed up when doing some basic iperf tests and
> > manifested in traffic coming to a halt.
> >
> > Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> > Acked-by: Madalin Bucur <madalin.bucur@nxp.com>
> 
> Wasn't this a stable candidate too?

Yes, it is. I forgot to add the cc:stable tag, sorry about that.

---
Best Regards, Laurentiu
 
> > ---
> >  drivers/net/ethernet/freescale/dpaa/dpaa_eth.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > index daede7272768..40420edc9ce6 100644
> > --- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > +++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > @@ -1663,7 +1663,7 @@ static struct sk_buff *dpaa_cleanup_tx_fd(const
> struct dpaa_priv *priv,
> >                                  qm_sg_entry_get_len(&sgt[0]), dma_dir);
> >
> >                 /* remaining pages were mapped with skb_frag_dma_map()
> */
> > -               for (i = 1; i < nr_frags; i++) {
> > +               for (i = 1; i <= nr_frags; i++) {
> >                         WARN_ON(qm_sg_entry_is_ext(&sgt[i]));
> >
> >                         dma_unmap_page(dev, qm_sg_addr(&sgt[i]),
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
