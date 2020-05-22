Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F621DF33B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OXkodvrnnG/rDTghaIcY03+xyOCEtWFxFjecqXesDHM=; b=RVDBAQHnpVGALr
	s7mAThFDl6Fip6glIwApm4FfE6+3ClTFXbWmG7mnINzjVAEZ2XTINi04ZHLN7pAW+YtiiNrnXsRnz
	khirlCExlx15dh1WbeDHcv7yMTXCKQ/0RpPaUAHpHIS/Db+PQmsgJ0huDKxWr01ImexjTnMM5mScU
	UYp+r3euw1pz0sHWMHe+EKEg3l63Xz6A47vv5I1XukLl6HRxJcvLSyL/gIWXvtRPDikk2Ns4wsS9u
	/2CDwAzs79sTPriW2cJw+ZU/AXxf1ChyBOg83qlrt5l55l+cF8h0paMwJevDCX/OpugvuX1/H+AP/
	2GMYNtsd5Fi8mR0LKiCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHPD-0003LG-90; Fri, 22 May 2020 23:48:47 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHP0-0003Jl-TV
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:36 +0000
Received: by mail-io1-f51.google.com with SMTP id r2so3014366ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uLCU8sQ+woPP04Xr1GwF1ZBRxRs4r1OQvya7FlG8wW4=;
 b=oIipC0riaUm01hwh6N54tWIsb/BpH0lSNtmY3/tx9fozNhe+bnoIOlDjAnf67/yiyG
 WyK1IbCw/c614p4G/nO5+50r9P+XlbPvSLHqhh2j1R7T+RCsCiIZFFpJ8ivjvQ8wIXiw
 VF651ZCarRmvaXuW7eCd+5qyfMFCeUNbmYOGCMd+KNpHR63yQ8A/QqzEQuENjuQJ9M8C
 pU/qu7axJJY5/jXPqO9v9uAlwU4tQjYnY1cLpDeQEIo3GBGyP6oUtj1n41MYED5GF5im
 kc2eMBJSBpL5FdwKsAvF1cpzUXqMFst6U1BUiKe94OiRuXa9yfbppH0l677zMQXiuD3a
 46Og==
X-Gm-Message-State: AOAM5309fUCb9Z6ygs3LuLQECgRdnc9gECiDmC+MaFD5VNOtZ2OPwGuE
 sI9itYyXqPqjkDNdrD6HGg==
X-Google-Smtp-Source: ABdhPJxkRtGiTmqoiwssYgkBwjOwxjP4j719HNs4rmgXrvUoZ+sAiT1xBDeTsinxHc+YEPlbPyeWWg==
X-Received: by 2002:a6b:3b94:: with SMTP id i142mr5281842ioa.76.1590191313944; 
 Fri, 22 May 2020 16:48:33 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:33 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 00/15] PCI controller probe cleanups
Date: Fri, 22 May 2020 17:48:17 -0600
Message-Id: <20200522234832.954484-1-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164834_949723_3822F434 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.51 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.51 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I started this on my last series of dma-ranges rework and am just 
getting back to finishing it. This series simplifies the resource list 
handling in a couple of drivers and converts almost all the remaining 
drivers to use pci_host_probe().

The one holdout is Designware. This is due to the .scan_bus() hook 
which is only used by TI Keystone. I think it could be a fixup instead 
matching on the root bus id. I'm not sure though. See 
ks_pcie_v3_65_scan_bus().

Rob


Rob Herring (15):
  PCI: cadence: Use struct pci_host_bridge.windows list directly
  PCI: mvebu: Use struct pci_host_bridge.windows list directly
  PCI: host-common: Use struct pci_host_bridge.windows list directly
  PCI: brcmstb: Use pci_host_probe() to register host
  PCI: mobiveil: Use pci_host_probe() to register host
  PCI: tegra: Use pci_host_probe() to register host
  PCI: v3: Use pci_host_probe() to register host
  PCI: versatile: Use pci_host_probe() to register host
  PCI: xgene: Use pci_host_probe() to register host
  PCI: altera: Use pci_host_probe() to register host
  PCI: iproc: Use pci_host_probe() to register host
  PCI: rcar: Use pci_host_probe() to register host
  PCI: rockchip: Use pci_host_probe() to register host
  PCI: xilinx-nwl: Use pci_host_probe() to register host
  PCI: xilinx: Use pci_host_probe() to register host

 .../controller/cadence/pcie-cadence-host.c    | 26 ++++----------
 .../controller/mobiveil/pcie-mobiveil-host.c  | 16 +--------
 drivers/pci/controller/pci-host-common.c      | 36 ++++++-------------
 drivers/pci/controller/pci-mvebu.c            | 13 +++----
 drivers/pci/controller/pci-tegra.c            | 11 +-----
 drivers/pci/controller/pci-v3-semi.c          | 13 +------
 drivers/pci/controller/pci-versatile.c        | 14 +-------
 drivers/pci/controller/pci-xgene.c            | 13 +------
 drivers/pci/controller/pcie-altera.c          | 17 +--------
 drivers/pci/controller/pcie-brcmstb.c         | 20 +++--------
 drivers/pci/controller/pcie-iproc.c           | 18 +++-------
 drivers/pci/controller/pcie-iproc.h           |  2 --
 drivers/pci/controller/pcie-rcar-host.c       | 18 +---------
 drivers/pci/controller/pcie-rockchip-host.c   | 18 +++-------
 drivers/pci/controller/pcie-rockchip.h        |  1 -
 drivers/pci/controller/pcie-xilinx-nwl.c      | 14 +-------
 drivers/pci/controller/pcie-xilinx.c          | 13 +------
 17 files changed, 45 insertions(+), 218 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
