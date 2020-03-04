Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F30178907
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 04:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4b88T0lKe8hO4A0iyG/AI7yd0RHiPMYISKyCNZFJOcY=; b=XgI+8FhKO7yhSL
	N7fTAdqdMn7IRYlXr4wcxmuUwXuosZmE+cSIqUidui+uAFpChtS7E+bQpIKdNUcXDn0xhtlQU/SFB
	pgZQ6xaAGYzTBae9iXknzRIxEdWmKt/GmKxAQxj4cPNeOqCWr9dtb83Vr7keDeQSbxvFdZhC1A0r7
	7U3rUbzRFfWTxnL+pLox5s+c0lAfoEhOzEyiNu50nhb3C8SrIGzWHgH5ECbXVHk4+LGfeUVddOZwf
	Ti7VR3hhDNojJPdHQk1HhrHGfPaoAojf/ka3FQc8fn0tG+WW7fmb/O/sDdzJQkA5z2x81TaTrjo2L
	2J5ApaWshhWhD3NJ5zaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9KXi-00049G-97; Wed, 04 Mar 2020 03:17:54 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9KXZ-00048p-A2
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 03:17:46 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 19:17:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="438975354"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 03 Mar 2020 19:17:43 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j9KXW-000Eof-JJ; Wed, 04 Mar 2020 11:17:42 +0800
Date: Wed, 4 Mar 2020 11:17:00 +0800
From: kbuild test robot <lkp@intel.com>
To: Russell King <rmk+kernel@arm.linux.org.uk>
Subject: [arm:clearfog 9/10] drivers/pci/pcie/portdrv_core.c:328
 pcie_port_device_register() warn: inconsistent indenting
Message-ID: <202003041158.zqAVBlTI%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_191745_360915_5E635E9C 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
head:   37b5143f7596c85d4503125a420368f21140dcd8
commit: 9796468e9417d3a41882bcdf2d1201ce4b6160c9 [9/10] mvebu/clearfog pcie updates

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

New smatch warnings:
drivers/pci/pcie/portdrv_core.c:328 pcie_port_device_register() warn: inconsistent indenting
drivers/pci/pcie/aspm.c:579 pcie_aspm_cap_init() warn: inconsistent indenting

Old smatch warnings:
drivers/pci/pcie/portdrv_core.c:341 pcie_port_device_register() warn: inconsistent indenting

vim +328 drivers/pci/pcie/portdrv_core.c

   308	
   309	/**
   310	 * pcie_port_device_register - register PCI Express port
   311	 * @dev: PCI Express port to register
   312	 *
   313	 * Allocate the port extension structure and register services associated with
   314	 * the port.
   315	 */
   316	int pcie_port_device_register(struct pci_dev *dev)
   317	{
   318		int status, capabilities, i, nr_service;
   319		int irqs[PCIE_PORT_DEVICE_MAXSERVICES];
   320	
   321		/* Enable PCI Express port device */
   322		status = pci_enable_device(dev);
   323		if (status)
   324			return status;
   325	
   326		/* Get and check PCI Express port services */
   327		capabilities = get_port_device_capability(dev);
 > 328	dev_info(&dev->dev, "PCIe capabilities: 0x%x\n", capabilities);
   329		if (!capabilities)
   330			return 0;
   331	
   332		pci_set_master(dev);
   333		/*
   334		 * Initialize service irqs. Don't use service devices that
   335		 * require interrupts if there is no way to generate them.
   336		 * However, some drivers may have a polling mode (e.g. pciehp_poll_mode)
   337		 * that can be used in the absence of irqs.  Allow them to determine
   338		 * if that is to be used.
   339		 */
   340		status = pcie_init_service_irqs(dev, irqs, capabilities);
   341	dev_info(&dev->dev, "init_service_irqs: %d\n", status);
   342		if (status) {
   343			capabilities &= PCIE_PORT_SERVICE_HP;
   344			if (!capabilities)
   345				goto error_disable;
   346		}
   347	
   348		/* Allocate child services if any */
   349		status = -ENODEV;
   350		nr_service = 0;
   351		for (i = 0; i < PCIE_PORT_DEVICE_MAXSERVICES; i++) {
   352			int service = 1 << i;
   353			if (!(capabilities & service))
   354				continue;
   355			if (!pcie_device_init(dev, service, irqs[i]))
   356				nr_service++;
   357		}
   358		if (!nr_service)
   359			goto error_cleanup_irqs;
   360	
   361		return 0;
   362	
   363	error_cleanup_irqs:
   364		pci_free_irq_vectors(dev);
   365	error_disable:
   366		pci_disable_device(dev);
   367		return status;
   368	}
   369	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
