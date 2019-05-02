Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508E011759
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 12:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHNcembIeILH1pmGRyi+gFT1jdl7HVdA8cBEGqeX3pA=; b=Ox6eDFREvbn6Bz
	XLz4uIaXMM2OdSNbvQeg1PVT07uK0HQ8atdYsEI3t4aw8oRruVoWJdbsGtUHcMqQq0Uaa4sH2Vi9L
	+ZE4PpR/LR2mzllxPycWm7eOMsxHQBCHLH6DXf1NJ5seeAE6X9P9NejD0LzayUknGsN1463mcUG0u
	VT3/MCYbUy1HF6iykcjQXo4SfuAli2GfB9ieFI1Z7bTexsWb8k+oADAY0gNHNYX49v0Rfeer2RtUU
	Ed7Km/aXV2v4bEJ1pT/RjC6mxPutmCT6pKF5WRgYIsDSE83kEwY6B/h2otE9Q+yyZYriUmLumWem+
	/Y8KME8Aajo+UCeMNLBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM94y-0006EE-Gh; Thu, 02 May 2019 10:36:40 +0000
Received: from mail-eopbgr820070.outbound.protection.outlook.com
 ([40.107.82.70] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM94r-0006Dq-Dz
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 10:36:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=infinera.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L40Qc+zMat3uNEKq4ePQ2mqCdXjJ4Y1Njlshcn/ZTio=;
 b=KQrnPe55g3nyuZud6KqHH6HsuPH1Nq9qAgZ4Q9u8XWo6zmhr48869C+2aBuyTFtekiRYeFNJh/x+zdUTQDaRUO4ZSiaHkjc+1Mkezqu3AaX0QgX6wBgwrcIUKbLV1fovz6sA4tsO9IuhhH6s6gFPvjWXX2rqjVulHH91NMz0aDo=
Received: from BN8PR10MB3540.namprd10.prod.outlook.com (20.179.78.205) by
 BN8PR10MB3314.namprd10.prod.outlook.com (20.179.139.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 2 May 2019 10:36:30 +0000
Received: from BN8PR10MB3540.namprd10.prod.outlook.com
 ([fe80::24c5:ea68:cff3:4a16]) by BN8PR10MB3540.namprd10.prod.outlook.com
 ([fe80::24c5:ea68:cff3:4a16%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 10:36:30 +0000
From: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "madalin.bucur@nxp.com"
 <madalin.bucur@nxp.com>, "leoyang.li@nxp.com" <leoyang.li@nxp.com>,
 "laurentiu.tudor@nxp.com" <laurentiu.tudor@nxp.com>, "roy.pledge@nxp.com"
 <roy.pledge@nxp.com>, "camelia.groza@nxp.com" <camelia.groza@nxp.com>
Subject: Re: [PATCH v2 9/9] dpaa_eth: fix SG frame cleanup
Thread-Topic: [PATCH v2 9/9] dpaa_eth: fix SG frame cleanup
Thread-Index: AQHU/MpTw42IuR0fykCaI1+07jqDiqZQPr+AgAdUG4CAABlegA==
Date: Thu, 2 May 2019 10:36:30 +0000
Message-ID: <728fe477849debcc14bb1af01e35bc7b184a0a03.camel@infinera.com>
References: <20190427071031.6563-1-laurentiu.tudor@nxp.com>
 <20190427071031.6563-10-laurentiu.tudor@nxp.com>
 <2c6f5d170edab346e0a87b1dfeb12e2f65801685.camel@infinera.com>
 <VI1PR04MB5134C0D6707E78D674B96898EC340@VI1PR04MB5134.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5134C0D6707E78D674B96898EC340@VI1PR04MB5134.eurprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Joakim.Tjernlund@infinera.com; 
x-originating-ip: [88.131.87.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59f6c7b0-0605-4284-c375-08d6ceea0a1b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BN8PR10MB3314; 
x-ms-traffictypediagnostic: BN8PR10MB3314:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN8PR10MB3314BDAF20A30D8A5603C850F4340@BN8PR10MB3314.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(396003)(346002)(376002)(189003)(199004)(13464003)(316002)(118296001)(186003)(6246003)(11346002)(305945005)(66476007)(73956011)(2616005)(64756008)(66446008)(66946007)(66556008)(53936002)(91956017)(76116006)(446003)(476003)(486006)(66066001)(3846002)(6486002)(71190400001)(71200400001)(86362001)(6436002)(6116002)(5660300002)(2201001)(229853002)(966005)(14444005)(8676002)(6306002)(256004)(68736007)(54906003)(110136005)(8936002)(81166006)(81156014)(7736002)(6512007)(7416002)(4326008)(36756003)(25786009)(102836004)(6506007)(76176011)(72206003)(2501003)(2906002)(14454004)(478600001)(99286004)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR10MB3314;
 H:BN8PR10MB3540.namprd10.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: infinera.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: z1YXU6qwY4gFgNMUgdv6tNcgJcx0akvl9NOnrooCO3wJkEL7lQLeI1wnPht93EPWP+t9WGumHzcxkq2D+4fIhxol5Dbgnql+M/m4y99DaKVSRDuuxMwzdMomXay/IIumcWZtmioQoZTP8rvtcjGgGmBNBsY44L4si3ob6rp+30XdbWjpEqRP72UYTOAkMPmh1I/aGLTHs2kgpD7JWWynf3zXQyXfKshyUn2Ki09g6LCDvlMIyCj2jy2A08ThRHYyfc9Mb4YKvTjMEGrbm2/Pk+PCsEyv9Fm1Oh9KARKFPgJlp5AR7cJUPoIasqudgADddZWTBCd3BBsI/PH40QugrjH+asTGdGXS3cOqzr42unqcD3DreaOrx3Fo9jPyBnoo5DDbaj4Wa3BqGdCf6Om+TLuzmsqx0/zwODN6xP1DLpc=
Content-ID: <1F9602CDEA854A469D9C83B5DEC64BBA@namprd10.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: infinera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59f6c7b0-0605-4284-c375-08d6ceea0a1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 10:36:30.5005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 285643de-5f5b-4b03-a153-0ae2dc8aaf77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR10MB3314
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_033633_574489_9C469F56 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.70 listed in list.dnswl.org]
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

On Thu, 2019-05-02 at 09:05 +0000, Laurentiu Tudor wrote:
> Hi Joakim,
> 
> > -----Original Message-----
> > From: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
> > Sent: Saturday, April 27, 2019 8:11 PM
> > 
> > On Sat, 2019-04-27 at 10:10 +0300, laurentiu.tudor@nxp.com wrote:
> > > From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> > > 
> > > Fix issue with the entry indexing in the sg frame cleanup code being
> > > off-by-1. This problem showed up when doing some basic iperf tests and
> > > manifested in traffic coming to a halt.
> > > 
> > > Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> > > Acked-by: Madalin Bucur <madalin.bucur@nxp.com>
> > 
> > Wasn't this a stable candidate too?
> 
> Yes, it is. I forgot to add the cc:stable tag, sorry about that.

Then this is a bug fix that should go directly to linus/stable.

I note that https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/log/drivers/net/ethernet/freescale/dpaa?h=linux-4.19.y
is in 4.19 but not in 4.14 , is it not appropriate for 4.14?

 Jocke

> 
> ---
> Best Regards, Laurentiu
> 
> > > ---
> > >  drivers/net/ethernet/freescale/dpaa/dpaa_eth.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > > index daede7272768..40420edc9ce6 100644
> > > --- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > > +++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > > @@ -1663,7 +1663,7 @@ static struct sk_buff *dpaa_cleanup_tx_fd(const
> > struct dpaa_priv *priv,
> > >                                  qm_sg_entry_get_len(&sgt[0]), dma_dir);
> > > 
> > >                 /* remaining pages were mapped with skb_frag_dma_map()
> > */
> > > -               for (i = 1; i < nr_frags; i++) {
> > > +               for (i = 1; i <= nr_frags; i++) {
> > >                         WARN_ON(qm_sg_entry_is_ext(&sgt[i]));
> > > 
> > >                         dma_unmap_page(dev, qm_sg_addr(&sgt[i]),
> > > --
> > > 2.17.1
> > > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
