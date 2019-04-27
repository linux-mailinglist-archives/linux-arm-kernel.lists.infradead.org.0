Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 095A2B40C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 19:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jf7Y+yO38/U1HyzVT25M4GlZ4W9kuMQUZlzOJJ5uOgk=; b=DDYx5JI0lQ/lgV
	VPTlXg1lOSSWuNI51Wi5AX6dPBVkS+/JP1W4tNjf/t2ZYxiY5YGDcIEP036wGIVXJtrRe17TPRNtp
	qGoEqu7bFlIT0qCeKkA9TvSw0NkLmRgzlbn3m0RLX+lCsfCT45ajhjzIvoC//zeA3JqbM9VrY1+NT
	69kidBNLMNutbtzFGhLaSDBEmaeRe4x9VyFBRuwVWJeWljPXwts07OKrLVmsr5w0DixZngLUJ6DcS
	R2ThEcvMSaK1W6DMMBJXMBopXav4BV1IwiB3VgnXQt22MwYJHvDWkxCRZABsP9KUyujjEJ3XRJCaV
	h8UAaR0VROOiJK+/7P+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKQqx-0003an-96; Sat, 27 Apr 2019 17:11:07 +0000
Received: from mail-dm3nam03on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe49::610]
 helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKQqp-0003a2-Kk
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 17:11:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=infinera.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FQtJl4bY1DuoaHrUkMBL7N6xDJZq7S7FIB5cMjqNewg=;
 b=TCzeSQ/vHhbIDdZwDmat/CNk2Nks6JGOkm4QXPM87FOppZvRCHQjbYBMhIoga/95SmoZZe3o+XIWSWjHb2csURwpMV7Ophuzvy0KG8330XDsPJfORWGB2YXkfHEz0uGGb+ydgnHuCdarrxrH6YORUBT3MNQ9VUxdSlkxVZBpATA=
Received: from BN8PR10MB3540.namprd10.prod.outlook.com (20.179.78.205) by
 BN8PR10MB3490.namprd10.prod.outlook.com (20.179.78.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Sat, 27 Apr 2019 17:10:53 +0000
Received: from BN8PR10MB3540.namprd10.prod.outlook.com
 ([fe80::51e7:a757:afa8:f4cf]) by BN8PR10MB3540.namprd10.prod.outlook.com
 ([fe80::51e7:a757:afa8:f4cf%7]) with mapi id 15.20.1835.010; Sat, 27 Apr 2019
 17:10:53 +0000
From: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "madalin.bucur@nxp.com"
 <madalin.bucur@nxp.com>, "leoyang.li@nxp.com" <leoyang.li@nxp.com>,
 "laurentiu.tudor@nxp.com" <laurentiu.tudor@nxp.com>, "roy.pledge@nxp.com"
 <roy.pledge@nxp.com>, "camelia.groza@nxp.com" <camelia.groza@nxp.com>
Subject: Re: [PATCH v2 9/9] dpaa_eth: fix SG frame cleanup
Thread-Topic: [PATCH v2 9/9] dpaa_eth: fix SG frame cleanup
Thread-Index: AQHU/MpTw42IuR0fykCaI1+07jqDiqZQPr+A
Date: Sat, 27 Apr 2019 17:10:53 +0000
Message-ID: <2c6f5d170edab346e0a87b1dfeb12e2f65801685.camel@infinera.com>
References: <20190427071031.6563-1-laurentiu.tudor@nxp.com>
 <20190427071031.6563-10-laurentiu.tudor@nxp.com>
In-Reply-To: <20190427071031.6563-10-laurentiu.tudor@nxp.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Joakim.Tjernlund@infinera.com; 
x-originating-ip: [88.131.87.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a2bf90b-4bf3-4692-cb14-08d6cb334df7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BN8PR10MB3490; 
x-ms-traffictypediagnostic: BN8PR10MB3490:
x-microsoft-antispam-prvs: <BN8PR10MB34905036363513E5A4F02C68F43F0@BN8PR10MB3490.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0020414413
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(396003)(346002)(376002)(366004)(189003)(199004)(3846002)(6116002)(2201001)(68736007)(256004)(81166006)(6512007)(54906003)(8676002)(2906002)(8936002)(110136005)(81156014)(36756003)(6246003)(66476007)(64756008)(66556008)(66446008)(316002)(86362001)(229853002)(102836004)(66066001)(53936002)(6486002)(2501003)(14444005)(91956017)(66946007)(73956011)(76116006)(6436002)(2616005)(305945005)(486006)(6506007)(97736004)(71190400001)(478600001)(4326008)(7736002)(5660300002)(476003)(76176011)(14454004)(118296001)(72206003)(99286004)(7416002)(186003)(26005)(25786009)(446003)(11346002)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR10MB3490;
 H:BN8PR10MB3540.namprd10.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: infinera.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: h1A6YhzC8ddJWf79OUo4YI/37lwKzz8kkCAzI+Wvbmn5Qx4PsFp4nPg9K3eOvMV+EDsPamR4VQJR1EOLDeiY9zZhWvyGuaFoosGt3gwvF6z+mrcgvbEAv7j2fhNpdEAzxvlACB47/r5G3aLx5Tmd2ojN4flnheSHbj6XMYpfXs0X30YArUPatOeeApeZ/ubrqp1Z2tFm/eXA6VEHTKq0mBvGV/M2fzdrUK3D0FFK3GG/fPoflzEEM3j2KR/C1zlboXh33rBFaBbUtYurndgwBd8/0ALu2EkTZUve+x7T05sYy0WXkBqzoMX0aKm/0jXsuXcyJhucTTKg3CdzN0718JJb0p8zuVJ3mfIi/Q4wg2VON6ws+1QgQ/nUBeIYRChn8NNw2h3pZtKqS8lcTv7Hb7M/6Z4FmqcBqMFuYkwNRnE=
Content-ID: <4A981E3F453F6540BDBD9A24364D128E@namprd10.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: infinera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a2bf90b-4bf3-4692-cb14-08d6cb334df7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2019 17:10:53.0418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 285643de-5f5b-4b03-a153-0ae2dc8aaf77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR10MB3490
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_101059_876447_06FF1660 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe49:0:0:0:610 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Sat, 2019-04-27 at 10:10 +0300, laurentiu.tudor@nxp.com wrote:
> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> 
> Fix issue with the entry indexing in the sg frame cleanup code being
> off-by-1. This problem showed up when doing some basic iperf tests and
> manifested in traffic coming to a halt.
> 
> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> Acked-by: Madalin Bucur <madalin.bucur@nxp.com>

Wasn't this a stable candidate too?

> ---
>  drivers/net/ethernet/freescale/dpaa/dpaa_eth.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> index daede7272768..40420edc9ce6 100644
> --- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> +++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> @@ -1663,7 +1663,7 @@ static struct sk_buff *dpaa_cleanup_tx_fd(const struct dpaa_priv *priv,
>                                  qm_sg_entry_get_len(&sgt[0]), dma_dir);
> 
>                 /* remaining pages were mapped with skb_frag_dma_map() */
> -               for (i = 1; i < nr_frags; i++) {
> +               for (i = 1; i <= nr_frags; i++) {
>                         WARN_ON(qm_sg_entry_is_ext(&sgt[i]));
> 
>                         dma_unmap_page(dev, qm_sg_addr(&sgt[i]),
> --
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
