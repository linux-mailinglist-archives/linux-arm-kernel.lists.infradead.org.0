Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBB8D1D96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 02:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/QOlIQKpa/yvdpnE7bq9TaUJLl3F2myxdD+ic0tQojE=; b=G/fUlbCqyHVKky
	3mFNa6NFA9KiWuXpA58kvWWvi2SktqpyBaYy1sVV8cx7FYiH5jqIBpr2M6vGfpOW0JYmetYPXXy5F
	ffga1c6cJNDz8VXvwpLgT9OnOTziRXc+ojCQ1DYGy+kptdyvzo5HW78U9zdaf4GfJ+Bm9uKnVd3WS
	sXctr7xECtoQ8tgvnlPfsghaHwzMPEpSuNyUh54QzeuBB02idGxYSQk4lqfF9IxdmT1dm3kVlH8gA
	iMKfL9fJreT5/rfxu8lhl4av0xL4JtqYzvRjkEceoXXSMfkP/HMp+bPvgsT0jq3+hBtoldWR2ovBU
	0Lw3zDg2JxRItKwkjglA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIMZ7-0002aW-J0; Thu, 10 Oct 2019 00:44:25 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIMYy-0002a2-Oa
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 00:44:18 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 17:44:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,278,1566889200"; d="scan'208";a="393863029"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 09 Oct 2019 17:44:13 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iIMYv-000DGa-1j; Thu, 10 Oct 2019 08:44:13 +0800
Date: Thu, 10 Oct 2019 08:44:10 +0800
From: kbuild test robot <lkp@intel.com>
To: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Subject: [arm:cex7 10/41]
 drivers/pci/controller/mobiveil/pcie-mobiveil.c:44:49: sparse: sparse:
 incorrect type in return expression (different address spaces)
Message-ID: <201910100807.s230bnQA%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_174417_357740_92ECE882 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Minghuan Lian <Minghuan.Lian@nxp.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>, kbuild-all@01.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git cex7
head:   9de8c9294924dc903e79ca03162cbd208a834330
commit: 2729e9ee9e99b04171a1cddddcd3027dd350dbde [10/41] PCI: mobiveil: Refactor Mobiveil PCIe Host Bridge IP driver
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-42-g38eda53-dirty
        git checkout 2729e9ee9e99b04171a1cddddcd3027dd350dbde
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/pci/controller/mobiveil/pcie-mobiveil.c:44:49: sparse: sparse: incorrect type in return expression (different address spaces) @@    expected void * @@    got void [noderef] <asvoid * @@
>> drivers/pci/controller/mobiveil/pcie-mobiveil.c:44:49: sparse:    expected void *
>> drivers/pci/controller/mobiveil/pcie-mobiveil.c:44:49: sparse:    got void [noderef] <asn:2> *
   drivers/pci/controller/mobiveil/pcie-mobiveil.c:48:41: sparse: sparse: incorrect type in return expression (different address spaces) @@    expected void * @@    got void [noderef] <asvoid * @@
   drivers/pci/controller/mobiveil/pcie-mobiveil.c:48:41: sparse:    expected void *
   drivers/pci/controller/mobiveil/pcie-mobiveil.c:48:41: sparse:    got void [noderef] <asn:2> *
>> drivers/pci/controller/mobiveil/pcie-mobiveil.c:106:34: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void [noderef] <asn:2> *addr @@    got oderef] <asn:2> *addr @@
>> drivers/pci/controller/mobiveil/pcie-mobiveil.c:106:34: sparse:    expected void [noderef] <asn:2> *addr
>> drivers/pci/controller/mobiveil/pcie-mobiveil.c:106:34: sparse:    got void *[assigned] addr
   drivers/pci/controller/mobiveil/pcie-mobiveil.c:120:35: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void [noderef] <asn:2> *addr @@    got oderef] <asn:2> *addr @@
   drivers/pci/controller/mobiveil/pcie-mobiveil.c:120:35: sparse:    expected void [noderef] <asn:2> *addr
   drivers/pci/controller/mobiveil/pcie-mobiveil.c:120:35: sparse:    got void *[assigned] addr

vim +44 drivers/pci/controller/mobiveil/pcie-mobiveil.c

    38	
    39	static void *mobiveil_pcie_comp_addr(struct mobiveil_pcie *pcie, u32 off)
    40	{
    41		if (off < PAGED_ADDR_BNDRY) {
    42			/* For directly accessed registers, clear the pg_sel field */
    43			mobiveil_pcie_sel_page(pcie, 0);
  > 44			return pcie->csr_axi_slave_base + off;
    45		}
    46	
    47		mobiveil_pcie_sel_page(pcie, OFFSET_TO_PAGE_IDX(off));
    48		return pcie->csr_axi_slave_base + OFFSET_TO_PAGE_ADDR(off);
    49	}
    50	
    51	static int mobiveil_pcie_read(void __iomem *addr, int size, u32 *val)
    52	{
    53		if ((uintptr_t)addr & (size - 1)) {
    54			*val = 0;
    55			return PCIBIOS_BAD_REGISTER_NUMBER;
    56		}
    57	
    58		switch (size) {
    59		case 4:
    60			*val = readl(addr);
    61			break;
    62		case 2:
    63			*val = readw(addr);
    64			break;
    65		case 1:
    66			*val = readb(addr);
    67			break;
    68		default:
    69			*val = 0;
    70			return PCIBIOS_BAD_REGISTER_NUMBER;
    71		}
    72	
    73		return PCIBIOS_SUCCESSFUL;
    74	}
    75	
    76	static int mobiveil_pcie_write(void __iomem *addr, int size, u32 val)
    77	{
    78		if ((uintptr_t)addr & (size - 1))
    79			return PCIBIOS_BAD_REGISTER_NUMBER;
    80	
    81		switch (size) {
    82		case 4:
    83			writel(val, addr);
    84			break;
    85		case 2:
    86			writew(val, addr);
    87			break;
    88		case 1:
    89			writeb(val, addr);
    90			break;
    91		default:
    92			return PCIBIOS_BAD_REGISTER_NUMBER;
    93		}
    94	
    95		return PCIBIOS_SUCCESSFUL;
    96	}
    97	
    98	u32 csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size)
    99	{
   100		void *addr;
   101		u32 val;
   102		int ret;
   103	
   104		addr = mobiveil_pcie_comp_addr(pcie, off);
   105	
 > 106		ret = mobiveil_pcie_read(addr, size, &val);
   107		if (ret)
   108			dev_err(&pcie->pdev->dev, "read CSR address failed\n");
   109	
   110		return val;
   111	}
   112	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
