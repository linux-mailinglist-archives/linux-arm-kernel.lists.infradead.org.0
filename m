Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7384D12D5A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 03:01:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEvRXpMFMEej8Fa9BrL2VmwpwaeUY7Y+Rk8VMo2UP3s=; b=GjhUPkrf1wOzq1
	bqD1wXtyvzJChArF3yEUuGUdGZtmfvhMTxx4ef0dfzlb/LPqrMA2JJLcx21F7tP/aMGWX+1iLkIYL
	7XQ9vK0tnomo3IpzFU81/TvHI191FM3x6cPs9wh1o/uDEjkxhikvMD1xdCXmIRyEs9qp7I08aKXGM
	8GnuLHlJtS4Q3xjru8jNB2Wsg+7S8ngheg2ih0mcI+vAL1FrqoBwdawGemKc+kOPwNSKwub0RfquH
	oEL6dwSrxCwQUmKFm2QWYQ6LHfXBtfZg3NXcnpoYiLaRnp78cHMbyEQ48k+YYMVdFeqnZWEiEZSf9
	dt5c1CwPPzAzGAaiJqXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im6r0-0006Lf-JI; Tue, 31 Dec 2019 02:01:50 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im6qa-0006Bh-L2; Tue, 31 Dec 2019 02:01:26 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 18:01:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,377,1571727600"; d="scan'208";a="244016589"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 30 Dec 2019 18:01:18 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1im6qU-000HId-8e; Tue, 31 Dec 2019 10:01:18 +0800
Date: Tue, 31 Dec 2019 10:00:48 +0800
From: kbuild test robot <lkp@intel.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 3/3] mtd: onenand: Enable compile testing of OMAP and
 Samsung drivers
Message-ID: <201912310904.9iM6MaFr%lkp@intel.com>
References: <20191229183612.22133-3-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191229183612.22133-3-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_180124_746511_5F167509 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, kbuild-all@lists.01.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.5-rc4 next-20191220]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Krzysztof-Kozlowski/mtd-onenand-samsung-Fix-pointer-cast-Wpointer-to-int-cast-warnings-on-64-bit/20191230-030838
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git bf8d1cd4386535004c4afe7f03d37f9864c9940e
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-129-g341daf20-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/mtd/nand/onenand/samsung_mtd.c:678:17: sparse: sparse: incorrect type in argument 2 (different address spaces)
>> drivers/mtd/nand/onenand/samsung_mtd.c:678:17: sparse:    expected void const *from
>> drivers/mtd/nand/onenand/samsung_mtd.c:678:17: sparse:    got void [noderef] <asn:2> *[assigned] p
>> drivers/mtd/nand/onenand/samsung_mtd.c:679:19: sparse: sparse: incorrect type in assignment (different address spaces)
>> drivers/mtd/nand/onenand/samsung_mtd.c:679:19: sparse:    expected void [noderef] <asn:2> *[assigned] p
>> drivers/mtd/nand/onenand/samsung_mtd.c:679:19: sparse:    got unsigned char *
   drivers/mtd/nand/onenand/samsung_mtd.c:682:9: sparse: sparse: incorrect type in argument 2 (different address spaces)
   drivers/mtd/nand/onenand/samsung_mtd.c:682:9: sparse:    expected void const *from
   drivers/mtd/nand/onenand/samsung_mtd.c:682:9: sparse:    got void [noderef] <asn:2> *[assigned] p

vim +678 drivers/mtd/nand/onenand/samsung_mtd.c

e23abf4b774322 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  614  
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  615  static int s5pc110_read_bufferram(struct mtd_info *mtd, int area,
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  616  		unsigned char *buffer, int offset, size_t count)
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  617  {
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  618  	struct onenand_chip *this = mtd->priv;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  619  	void __iomem *p;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  620  	void *buf = (void *) buffer;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  621  	dma_addr_t dma_src, dma_dst;
08b3af3092bb2c drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-11-02  622  	int err, ofs, page_dma = 0;
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  623  	struct device *dev = &onenand->pdev->dev;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  624  
9aba97ad004ed0 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-08-27  625  	p = this->base + area;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  626  	if (ONENAND_CURRENT_BUFFERRAM(this)) {
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  627  		if (area == ONENAND_DATARAM)
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  628  			p += this->writesize;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  629  		else
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  630  			p += mtd->oobsize;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  631  	}
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  632  
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  633  	if (offset & 3 || (size_t) buf & 3 ||
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  634  		!onenand->dma_addr || count != mtd->writesize)
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  635  		goto normal;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  636  
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  637  	/* Handle vmalloc address */
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  638  	if (buf >= high_memory) {
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  639  		struct page *page;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  640  
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  641  		if (((size_t) buf & PAGE_MASK) !=
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  642  		    ((size_t) (buf + count - 1) & PAGE_MASK))
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  643  			goto normal;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  644  		page = vmalloc_to_page(buf);
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  645  		if (!page)
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  646  			goto normal;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  647  
08b3af3092bb2c drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-11-02  648  		/* Page offset */
08b3af3092bb2c drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-11-02  649  		ofs = ((size_t) buf & ~PAGE_MASK);
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  650  		page_dma = 1;
08b3af3092bb2c drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-11-02  651  
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  652  		/* DMA routine */
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  653  		dma_src = onenand->phys_base + (p - this->base);
08b3af3092bb2c drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-11-02  654  		dma_dst = dma_map_page(dev, page, ofs, count, DMA_FROM_DEVICE);
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  655  	} else {
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  656  		/* DMA routine */
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  657  		dma_src = onenand->phys_base + (p - this->base);
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  658  		dma_dst = dma_map_single(dev, buf, count, DMA_FROM_DEVICE);
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  659  	}
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  660  	if (dma_mapping_error(dev, dma_dst)) {
102f66a740cfbe drivers/mtd/nand/onenand/samsung_mtd.c Krzysztof Kozlowski 2019-12-29  661  		dev_err(dev, "Couldn't map a %zu byte buffer for DMA\n", count);
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  662  		goto normal;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  663  	}
81d46c59550997 drivers/mtd/onenand/samsung.c          Arnd Bergmann       2014-05-08  664  	err = s5pc110_dma_ops(dma_dst, dma_src,
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  665  			count, S5PC110_DMA_DIR_READ);
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  666  
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  667  	if (page_dma)
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  668  		dma_unmap_page(dev, dma_dst, count, DMA_FROM_DEVICE);
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  669  	else
dcf08227e964a5 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-09-28  670  		dma_unmap_single(dev, dma_dst, count, DMA_FROM_DEVICE);
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  671  
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  672  	if (!err)
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  673  		return 0;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  674  
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  675  normal:
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  676  	if (count != mtd->writesize) {
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  677  		/* Copy the bufferram to memory to prevent unaligned access */
9aba97ad004ed0 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-08-27 @678  		memcpy(this->page_buf, p, mtd->writesize);
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28 @679  		p = this->page_buf + offset;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  680  	}
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  681  
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  682  	memcpy(buffer, p, count);
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  683  
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  684  	return 0;
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  685  }
46f3e88bd9da01 drivers/mtd/onenand/samsung.c          Kyungmin Park       2010-04-28  686  

:::::: The code at line 678 was first introduced by commit
:::::: 9aba97ad004ed0cde9747a9daf5b1484edb746cd mtd: OneNAND: Fix 2KiB pagesize handling at Samsung SoCs

:::::: TO: Kyungmin Park <kyungmin.park@samsung.com>
:::::: CC: David Woodhouse <David.Woodhouse@intel.com>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
