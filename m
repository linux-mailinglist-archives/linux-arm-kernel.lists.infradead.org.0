Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0A5119AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0Ui/5J2V+xo3isQR58ofbTnJ8PCK5GrE6tEvrkxil0=; b=OcLpvsGOhmSBcY
	vhwmfQPjRdjGRaH5WlGeIeY7zJF+bhEWis6BZ1yL/X7zCkMccH1QJqgVMC5X4JdAi+cZ9kvehqtNK
	8gW14wTAunm3986tzuXMfqi/D6fWEjAYi6X/014dM5xI+3ja/0yOyynDIZuPUCFY3dfRyDZkYOjzX
	DD0I+hjVXMMzbkfhW+TUOLYfFlJFlRWZ5Gohe9/uUq0E0hXjgGb+nzyrZDpj53QeDAfBXrAVbNxWD
	NbcBPhulYwLs1bzTZxnZ1/w4gyOxhd1LxodHBWq2fjKzV1W/5UJ9hloMmT7vDKrO1ce7Nj6Y5bRPD
	IDyAQpDrOjKwKSqitLmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBNN-00060w-Hl; Thu, 02 May 2019 13:03:49 +0000
Received: from mail-eopbgr680052.outbound.protection.outlook.com
 ([40.107.68.52] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBNE-0005zg-QZ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 13:03:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=infinera.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JW4XPgFDsXQJa5k67B4n9DPlHcQfpWP5ZoXLjXxQvrs=;
 b=Geq3ySXFMlALoIABE6L3xoDDLZ7iwzY8tdWH3F9/UMvFZUhqxNoHkTMkOU7yyoJ08fGtSEgo3Q437rIyvXGDjZ5gMvRItIYPMv3iKMr9mlO2a/7cszGXGr54+dndvKTtmDbLOniA7dfzQ5bZ05hFiENQ7Y8sA5MRGgVUXtvbrGg=
Received: from BN8PR10MB3540.namprd10.prod.outlook.com (20.179.78.205) by
 BN8PR10MB3265.namprd10.prod.outlook.com (20.179.138.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Thu, 2 May 2019 13:03:38 +0000
Received: from BN8PR10MB3540.namprd10.prod.outlook.com
 ([fe80::24c5:ea68:cff3:4a16]) by BN8PR10MB3540.namprd10.prod.outlook.com
 ([fe80::24c5:ea68:cff3:4a16%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 13:03:38 +0000
From: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "madalin.bucur@nxp.com"
 <madalin.bucur@nxp.com>, "leoyang.li@nxp.com" <leoyang.li@nxp.com>,
 "laurentiu.tudor@nxp.com" <laurentiu.tudor@nxp.com>, "roy.pledge@nxp.com"
 <roy.pledge@nxp.com>, "camelia.groza@nxp.com" <camelia.groza@nxp.com>
Subject: Re: [PATCH v2 9/9] dpaa_eth: fix SG frame cleanup
Thread-Topic: [PATCH v2 9/9] dpaa_eth: fix SG frame cleanup
Thread-Index: AQHU/MpTw42IuR0fykCaI1+07jqDiqZQPr+AgAdUG4CAABlegIAAJ48AgAABjYA=
Date: Thu, 2 May 2019 13:03:38 +0000
Message-ID: <da2c4ec6e08d39aff6fb3baa39e84e0f3966d84c.camel@infinera.com>
References: <20190427071031.6563-1-laurentiu.tudor@nxp.com>
 <20190427071031.6563-10-laurentiu.tudor@nxp.com>
 <2c6f5d170edab346e0a87b1dfeb12e2f65801685.camel@infinera.com>
 <VI1PR04MB5134C0D6707E78D674B96898EC340@VI1PR04MB5134.eurprd04.prod.outlook.com>
 <728fe477849debcc14bb1af01e35bc7b184a0a03.camel@infinera.com>
 <VI1PR04MB5134872815E02B053B383C08EC340@VI1PR04MB5134.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5134872815E02B053B383C08EC340@VI1PR04MB5134.eurprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Joakim.Tjernlund@infinera.com; 
x-originating-ip: [88.131.87.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 82caffae-9918-4a35-2597-08d6cefe97d0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BN8PR10MB3265; 
x-ms-traffictypediagnostic: BN8PR10MB3265:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BN8PR10MB326539BEBBFBF4667553E1CCF4340@BN8PR10MB3265.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:989;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(136003)(366004)(376002)(39860400002)(13464003)(199004)(189003)(7416002)(66946007)(54906003)(68736007)(110136005)(316002)(6306002)(2501003)(86362001)(476003)(45080400002)(446003)(71200400001)(11346002)(2201001)(256004)(5660300002)(71190400001)(2616005)(478600001)(6512007)(7736002)(91956017)(14444005)(66476007)(73956011)(76116006)(486006)(66446008)(64756008)(305945005)(66556008)(6116002)(81156014)(6436002)(6246003)(229853002)(3846002)(4326008)(102836004)(25786009)(8676002)(2906002)(36756003)(26005)(186003)(118296001)(53936002)(14454004)(66066001)(76176011)(99286004)(8936002)(81166006)(6506007)(966005)(72206003)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR10MB3265;
 H:BN8PR10MB3540.namprd10.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: infinera.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iaU6lYL+GJbgbD4A6ntM50Fg1kNUjByUjOEtSUVQ1wsu/0q331h5Ovm/5hCzIuL/e6VrEDV/MeXTNnFghn5Nla7i37POaBuLRbljgh4m31ad27rxPSmdXbuxgn8pUbf9BUcTDidK60dyvMSOt22r9MG68jPvzQT9lWcaNszWyLf5/AmRaU+9Jq6ePQ4isAgDW3ExZeYA+BXc5kNaciLn6AYSJWYtOzUIsN1SAu18aeW9ebr9tm2ijtA8DzFjdnpPSlu/jsQXsJDmc3+sFecn8UnRyGufASDuGOtipiaqbyDTf7wYWEfc/CLgPOz3ha/r/LKZ/rCcflmB/T3ULy9lKOJrnPvwQgVDWpF1kRlk6+4Ds/bt2ukEknJrNrYIsTMe8gg+Rf4diNIp4oufO3dbgX1sUAUnijCTHShMJS9GwCM=
Content-ID: <08443AE914E9FA43B03F2C49BA1D8A6C@namprd10.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: infinera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82caffae-9918-4a35-2597-08d6cefe97d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 13:03:38.2220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 285643de-5f5b-4b03-a153-0ae2dc8aaf77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR10MB3265
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_060340_942522_AC77F6F8 
X-CRM114-Status: GOOD (  25.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.52 listed in list.dnswl.org]
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

On Thu, 2019-05-02 at 12:58 +0000, Laurentiu Tudor wrote:
> 
> > -----Original Message-----
> > From: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
> > Sent: Thursday, May 2, 2019 1:37 PM
> > 
> > On Thu, 2019-05-02 at 09:05 +0000, Laurentiu Tudor wrote:
> > > Hi Joakim,
> > > 
> > > > -----Original Message-----
> > > > From: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
> > > > Sent: Saturday, April 27, 2019 8:11 PM
> > > > 
> > > > On Sat, 2019-04-27 at 10:10 +0300, laurentiu.tudor@nxp.com wrote:
> > > > > From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> > > > > 
> > > > > Fix issue with the entry indexing in the sg frame cleanup code being
> > > > > off-by-1. This problem showed up when doing some basic iperf tests
> > and
> > > > > manifested in traffic coming to a halt.
> > > > > 
> > > > > Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> > > > > Acked-by: Madalin Bucur <madalin.bucur@nxp.com>
> > > > 
> > > > Wasn't this a stable candidate too?
> > > 
> > > Yes, it is. I forgot to add the cc:stable tag, sorry about that.
> > 
> > Then this is a bug fix that should go directly to linus/stable.
> > 
> > I note that
> > https://nam03.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fstable%2Flinux.git%2Flog%2Fdrivers%2Fnet%2Fethernet%2Ffreescale%2Fdpaa%3Fh%3Dlinux-4.19.y&amp;data=02%7C01%7CJoakim.Tjernlund%40infinera.com%7Cb88ecc951de649e5a55808d6cefdd286%7C285643de5f5b4b03a1530ae2dc8aaf77%7C1%7C0%7C636923986895133037&amp;sdata=ueUWI1%2BmNBHtlCoY9%2B1FreOUM8bHGiTYWhISy5nRoJk%3D&amp;reserved=0
> 
> Not sure I understand ... I don't see the patch in the link.

Sorry, I copied the wrong link:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/drivers/net/ethernet/freescale/dpaa?h=linux-4.19.y&id=0aafea5d4b22fe9403e89d82e02597e4493d5d0f

> 
> > is in 4.19 but not in 4.14 , is it not appropriate for 4.14?
> 
> I think it makes sense to go in both stable trees.
> 
> ---
> Best Regards, Laurentiu
> 
> > > > > ---
> > > > >  drivers/net/ethernet/freescale/dpaa/dpaa_eth.c | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > > > b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > > > > index daede7272768..40420edc9ce6 100644
> > > > > --- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > > > > +++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> > > > > @@ -1663,7 +1663,7 @@ static struct sk_buff
> > *dpaa_cleanup_tx_fd(const
> > > > struct dpaa_priv *priv,
> > > > >                                  qm_sg_entry_get_len(&sgt[0]),
> > dma_dir);
> > > > >                 /* remaining pages were mapped with
> > skb_frag_dma_map()
> > > > */
> > > > > -               for (i = 1; i < nr_frags; i++) {
> > > > > +               for (i = 1; i <= nr_frags; i++) {
> > > > >                         WARN_ON(qm_sg_entry_is_ext(&sgt[i]));
> > > > > 
> > > > >                         dma_unmap_page(dev, qm_sg_addr(&sgt[i]),
> > > > > --
> > > > > 2.17.1
> > > > > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
