Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B03183051
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 13:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l3L+hBcVgsF0Ifmaq1rpFbAsqV6kk/6fpOw1rIFwh30=; b=MSvVs8aZnOb0e+
	BuCLsNtxiTLHAbBjGF65k+qgyqRXPB/n0OSQScQ2yUVr4KkPWo7dVZX3Z/koGF2cA+HjrdAxgKwvz
	qDBtZAf6YighGNPAFNHCnavbCtBqTBGRg+38ktSFwSexWetZRhGT6roFU7JeT7CX+I82Ue7TFquMi
	zJx9eLH3ubPYxVWOb2dodwrhS06w/7q110IE652OJIUAGzE/n3KPsnhpMtX3UqmmTxbegk/wAG9b0
	Jk1wQ3v4maQqTbDWG9XVqBRVmudV3feG5lgyX81IzDwB9o5bkBEeSzn19W3Kp3kW8WzmkQFLj2rr4
	gkfBb61X1VKC4NmMLrQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCN3U-0000xq-EP; Thu, 12 Mar 2020 12:35:16 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCN39-0000uk-LF
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 12:34:57 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 05:34:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,544,1574150400"; d="scan'208";a="442034201"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 12 Mar 2020 05:34:52 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jCN35-000ByG-LA; Thu, 12 Mar 2020 20:34:51 +0800
Date: Thu, 12 Mar 2020 20:33:51 +0800
From: kbuild test robot <lkp@intel.com>
To: Russell King <rmk+kernel@arm.linux.org.uk>
Subject: [arm:clearfog 9/10] drivers/pci/pci-bridge-emul.c:278:33: sparse:
 sparse: incorrect type in assignment (different base types)
Message-ID: <202003122049.MO6Ygh4l%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_053455_767819_9EE8F4A0 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git clearfog
head:   60358028cb7ae864f9ea84eac86804c92f623951
commit: ba8248ab8ce8c1c3e68d176e608490205d0ee5d0 [9/10] mvebu/clearfog pcie updates
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-174-g094d5a94-dirty
        git checkout ba8248ab8ce8c1c3e68d176e608490205d0ee5d0
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/pci/pci-bridge-emul.c:278:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le16 [usertype] bridgectrl @@    got e] bridgectrl @@
   drivers/pci/pci-bridge-emul.c:278:33: sparse:    expected restricted __le16 [usertype] bridgectrl
   drivers/pci/pci-bridge-emul.c:278:33: sparse:    got int

vim +278 drivers/pci/pci-bridge-emul.c

   263	
   264	/*
   265	 * Initialize a pci_bridge_emul structure to represent a fake PCI
   266	 * bridge configuration space. The caller needs to have initialized
   267	 * the PCI configuration space with whatever values make sense
   268	 * (typically at least vendor, device, revision), the ->ops pointer,
   269	 * and optionally ->data and ->has_pcie.
   270	 */
   271	int pci_bridge_emul_init(struct pci_bridge_emul *bridge,
   272				 unsigned int flags)
   273	{
   274		bridge->conf.class_revision |= cpu_to_le32(PCI_CLASS_BRIDGE_PCI << 16);
   275		bridge->conf.header_type = PCI_HEADER_TYPE_BRIDGE;
   276		bridge->conf.cache_line_size = 0x10;
   277		bridge->conf.status = cpu_to_le16(PCI_STATUS_CAP_LIST);
 > 278		bridge->conf.bridgectrl = PCI_BRIDGE_CTL_SERR;
   279		bridge->pci_regs_behavior = kmemdup(pci_regs_behavior,
   280						    sizeof(pci_regs_behavior),
   281						    GFP_KERNEL);
   282		if (!bridge->pci_regs_behavior)
   283			return -ENOMEM;
   284	
   285		if (bridge->has_pcie) {
   286			bridge->conf.capabilities_pointer = PCI_CAP_PCIE_START;
   287			bridge->pcie_conf.cap_id = PCI_CAP_ID_EXP;
   288			/* Set PCIe v2, root port, slot support */
   289			bridge->pcie_conf.cap =
   290				cpu_to_le16(PCI_EXP_TYPE_ROOT_PORT << 4 | 2 |
   291					    PCI_EXP_FLAGS_SLOT);
   292			bridge->pcie_cap_regs_behavior =
   293				kmemdup(pcie_cap_regs_behavior,
   294					sizeof(pcie_cap_regs_behavior),
   295					GFP_KERNEL);
   296			if (!bridge->pcie_cap_regs_behavior) {
   297				kfree(bridge->pci_regs_behavior);
   298				return -ENOMEM;
   299			}
   300		}
   301	
   302		if (flags & PCI_BRIDGE_EMUL_NO_PREFETCHABLE_BAR) {
   303			bridge->pci_regs_behavior[PCI_PREF_MEMORY_BASE / 4].ro = ~0;
   304			bridge->pci_regs_behavior[PCI_PREF_MEMORY_BASE / 4].rw = 0;
   305		}
   306	
   307		return 0;
   308	}
   309	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
