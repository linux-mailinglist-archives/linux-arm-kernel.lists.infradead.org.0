Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A0DBFC46
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pxye/2twCI9hjxWU5MrplvC7TS3XVOzrRWuCNkxPiUs=; b=VYmXOGm15ZAeoo
	VK0pX6moAkBqK10zHS6vRjFVxezFTiH6nqfseBFFq/fYfHkoc51DihoIaAujoFxVAtwnhfuF9vmHk
	pSfE9aVvsLiuB+T1WmOw+u9/emOs+8isePfHqtiFoehsae/+zefZ+aqyQCNpRxTP5gGmhGfGCrTfd
	aX872jnBMd4WzVxhstY+wZGTHEL6bkLFad7b39UKyVNibOyi3bDoEltOnc73n3D61rqc5rVJ2RXCu
	OQJ1h8LneTO1OdP+21aC97ctviz0Qf97fgkFjP2DOg+dJrpq1IdJsKgFkjMIkZmNPhVGl/oiVmc38
	GLptY9SMecxrQ7H5Cb7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDe4S-00044c-CC; Fri, 27 Sep 2019 00:25:16 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDe4B-0003oo-JJ
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:25:01 +0000
Received: by mail-ot1-f68.google.com with SMTP id c10so764472otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 17:24:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MDoHopVetDd/ID0m+/zdRqZFxmnQtClQZalMwkfcSrM=;
 b=GTIGeE8WMbTUG4FpU8kKV6pfwArmvF2Uhnxc4rXXnSQIipV0B+5N6xsf1sihEsJGge
 K3epvQDd0E1GbABQRD1VB1mthTZlJTiEjtXRcMj4+eE66oEoeo6QslX/yquxug2uAVCR
 Qsx8wSgJ/9C1b35l0l3xAE+8IrQHxjvgqTXjbmpj33MgAxjHFjzDcbmwbYpDbxxhhghh
 3N+D0WgvGfxd9qSAsop9NjVLbaJN54gcGTO6RFiI2i1QA4QJqOKeowIq7hyuAPgSNzeH
 yxrWgkVqquSnxrRcIEi7R+ylZeWJMBdz9wdZLGwZVlFrfRLwQOnop9vRaHQ0E0/wNs7h
 Dqag==
X-Gm-Message-State: APjAAAXpouVTRQtf5ftuWOEx3+sAO0RC77J4w/LyKi50Kooux8dT4b40
 +G5tkG7MUVOAgDSnykpO9A==
X-Google-Smtp-Source: APXvYqzH15vdHiGFUOLjLKdgsmpn5XMUNzTaDYTgGKc/l7EtTHCuYhD8i0suwTNWM2dQUMH+HskLHw==
X-Received: by 2002:a9d:3e52:: with SMTP id h18mr1048250otg.275.1569543897338; 
 Thu, 26 Sep 2019 17:24:57 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id j11sm339866otk.80.2019.09.26.17.24.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 17:24:56 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 00/11] of: dma-ranges fixes and improvements
Date: Thu, 26 Sep 2019 19:24:44 -0500
Message-Id: <20190927002455.13169-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_172459_634798_B7A186F3 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Frank Rowand <frowand.list@gmail.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series fixes several issues related to 'dma-ranges'. Primarily,
'dma-ranges' in a PCI bridge node does correctly set dma masks for PCI
devices not described in the DT. A common case needing dma-ranges is a
32-bit PCIe bridge on a 64-bit system. This affects several platforms
including Broadcom, NXP, Renesas, and Arm Juno. There's been several
attempts to fix these issues, most recently earlier this week[1].

In the process, I found several bugs in the address translation. It
appears that things have happened to work as various DTs happen to use
1:1 addresses.

First 3 patches are just some clean-up. The 4th patch adds a unittest
exhibiting the issues. Patches 5-9 rework how of_dma_configure() works
making it work on either a struct device child node or a struct
device_node parent node so that it works on bus leaf nodes like PCI
bridges. Patches 10 and 11 fix 2 issues with address translation for
dma-ranges.

My testing on this has been with QEMU virt machine hacked up to set PCI
dma-ranges and the unittest. Nicolas reports this series resolves the
issues on Rpi4 and NXP Layerscape platforms.

Rob

[1] https://lore.kernel.org/linux-arm-kernel/20190924181244.7159-1-nsaenzjulienne@suse.de/

Rob Herring (5):
  of: Remove unused of_find_matching_node_by_address()
  of: Make of_dma_get_range() private
  of/unittest: Add dma-ranges address translation tests
  of/address: Translate 'dma-ranges' for parent nodes missing
    'dma-ranges'
  of/address: Fix of_pci_range_parser_one translation of DMA addresses

Robin Murphy (6):
  of: address: Report of_dma_get_range() errors meaningfully
  of: Ratify of_dma_configure() interface
  of/address: Introduce of_get_next_dma_parent() helper
  of: address: Follow DMA parent for "dma-coherent"
  of: Factor out #{addr,size}-cells parsing
  of: Make of_dma_get_range() work on bus nodes

 drivers/of/address.c                        | 83 +++++++++----------
 drivers/of/base.c                           | 32 ++++---
 drivers/of/device.c                         | 12 ++-
 drivers/of/of_private.h                     | 14 ++++
 drivers/of/unittest-data/testcases.dts      |  1 +
 drivers/of/unittest-data/tests-address.dtsi | 48 +++++++++++
 drivers/of/unittest.c                       | 92 +++++++++++++++++++++
 include/linux/of_address.h                  | 21 +----
 include/linux/of_device.h                   |  4 +-
 9 files changed, 227 insertions(+), 80 deletions(-)
 create mode 100644 drivers/of/unittest-data/tests-address.dtsi

--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
