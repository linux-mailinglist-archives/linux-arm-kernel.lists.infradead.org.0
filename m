Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBC647C24
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 10:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ukqLxtgUTH/JAdQdBfLrjM2HlGkZRISTVt+3eFmxsFE=; b=rPmAvzXGgBvMh5
	CbkJPAkPL+9U8yG/x+l1iiz5TZBW2WgnWgXDUZO21tcFl0zZav6rlCpAM3jwWLoBT8dxg34ECq+Zy
	dHVMOFXnW9GJ1Ozgc1n7QN10MZPBKtBpqqPzfHoV0Hd4KpLgZuxjNSxWpIe/w0ZbrGn7LtzRrxEyr
	dEtGnknWb+bcVXcw8wLjrMkJh/ARGKTHm/p2nntWQeNaMPjQgPJNOzI9GgF1B7RAtKQmtUb9oP5mN
	94JYkUYupFcb2g8yHmgFibieJOUbWhMLQ2DNl+sgpLTdzo5FD5FzEYLNhmI3/osY5nOLyXT+rf5Cb
	4Y99M49jGcXwygspnmNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmv4-0004Yg-3n; Mon, 17 Jun 2019 08:23:14 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmua-0004XW-Am
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 08:22:45 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5H8EDPq036975;
 Mon, 17 Jun 2019 08:22:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=FGXkU7eOmJXcfpTdOS3rFhVnp4//dWioBuU5JvbAozk=;
 b=HoOGFZ6IDRsf/WaCfXo2ZTPgY5pwDJWXjo1xX+qTvLOMlZocWpKu1Sf00Bmkx3VFzyma
 10WCt0cIJkIFz7mHW+wD9GUOEQ0ivHG8jDJ0t4TRvpEWC+TsmSyquhiRY045QRVvKMqd
 BIDabSi8xq4vX0L9MhRibAwTnUvf3DfPIk//8VY7MahBLoeLEZ2KraHUQ39ijiOHMNDT
 8ndBBvPX7iRqpB2l3z33gYX+RiPyyzfIf8yD1/MNNifpDFIZvAldxXl3FHTYVYXdGTMe
 /6jx2aoi8UlUxIMQRg+jUh/JipGQ+5QpEWrsTOM8x9vyDm7cYa5WG5PQ0L40CVIPJPpn iA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2t4r3td2pj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Jun 2019 08:22:24 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5H8LV8W126648;
 Mon, 17 Jun 2019 08:22:24 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2t59gd3q66-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Jun 2019 08:22:24 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5H8M5I4026605;
 Mon, 17 Jun 2019 08:22:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 17 Jun 2019 01:22:05 -0700
Date: Mon, 17 Jun 2019 11:21:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: use exact allocation for dma coherent memory
Message-ID: <20190617082148.GF28859@kadam>
References: <20190614134726.3827-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9290
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=782
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906170078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9290
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=820 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906170078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_012244_510761_D7CF8FD7 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-rdma@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-media@vger.kernel.org, Intel Linux Wireless <linuxwifi@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, H Hartley Sweeten <hsweeten@visionengravers.com>,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I once wrote a Smatch check based on a commit message that said we can't
pass dma_alloc_coherent() pointers to virt_to_phys().  But then I never
felt like I understood the rules enough to actually report the warnings
as bugs.

drivers/platform/x86/dcdbas.c:108 smi_data_buf_realloc() error: 'buf' came from dma_alloc_coherent() so we can't do virt_to_phys()
drivers/net/caif/caif_virtio.c:414 cfv_create_genpool() error: 'cfv->alloc_addr' came from dma_alloc_coherent() so we can't do virt_to_phys()
drivers/infiniband/hw/cxgb4/qp.c:135 alloc_host_sq() error: 'sq->queue' came from dma_alloc_coherent() so we can't do virt_to_phys()
drivers/infiniband/hw/cxgb4/qp.c:272 create_qp() error: 'wq->rq.queue' came from dma_alloc_coherent() so we can't do virt_to_phys()
drivers/infiniband/hw/cxgb4/qp.c:2628 alloc_srq_queue() error: 'wq->queue' came from dma_alloc_coherent() so we can't do virt_to_phys()
drivers/infiniband/hw/ocrdma/ocrdma_verbs.c:494 ocrdma_alloc_ucontext() error: 'ctx->ah_tbl.va' came from dma_alloc_coherent() so we can't do virt_to_phys()

drivers/infiniband/hw/cxgb4/qp.c
   129  static int alloc_host_sq(struct c4iw_rdev *rdev, struct t4_sq *sq)
   130  {
   131          sq->queue = dma_alloc_coherent(&(rdev->lldi.pdev->dev), sq->memsize,
   132                                         &(sq->dma_addr), GFP_KERNEL);
   133          if (!sq->queue)
   134                  return -ENOMEM;
   135          sq->phys_addr = virt_to_phys(sq->queue);
   136          dma_unmap_addr_set(sq, mapping, sq->dma_addr);
   137          return 0;
   138  }

Is this a bug?

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
