Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBAB1DF355
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OTCS06358Cxk280JPsb+2rDVO171LXrIi8OnGmvfeI=; b=sp75jK1S59DnqO
	X6B+Svl7cem67P8r4/UlM0HdkeNxet4ngl0qVf+MIeWO1k8UmxkRgVuS/nk3v/74iEWKatLS0FMjU
	kCDZGa2EEKPA0TMXCZhXoKOp68orP8dvgTaPKRD1D9BAcWod2xLYa2IKVmjZs4pJfcuNzYJEyVkRJ
	NQXawbsk7Fs5K0RUbrVsPKJsYxTWrz6byXqCn2JVzQ4cx45OMjIO2/23mt77qgGntsvR7pr3Z+xcp
	vj5OmhZJkA4fhN6PMo7gkB5cKTHNQ1QfvmFqoiW0SxiksfY6hXyxxZ6XWpm7LUex8ZFD8wBxqlsWK
	pXJYULj1yL9pGpvWib+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHTJ-0000UG-6S; Fri, 22 May 2020 23:53:01 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHPG-0003aY-1h
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:52 +0000
Received: by mail-il1-f195.google.com with SMTP id m6so12482858ilq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t2p41fcnPOx/cmrCAPQSy3Fo8KrPmpfN6+RkySuTptI=;
 b=OidS00vhxHUkmyrlZM2IoYXwGVBhD038jkapVCv82Vt2ao3fF95krpdCWLlPKUhJwP
 WoHJfah0VSY9dAxftMucO5DBdm1TEBCzwxMZpO0QKuiT2P5ySx2rl1Ai3n2SZpYg7A86
 cFD7QfUNiCZ6Sp2IPq6na7Eu9ufXwqwiByU2VMFUhCI6jLnj4sKP5ZL8jgbng/bExM3T
 AFG3PGVZ6th5ggrK9bOibT2Oc7zVCNcI3uG9ik6bevPgt/1NkvNWdIi8Y2kR8vVsZgNW
 vMZ1SIBbYMsasAdZNd378N+Ge3ralEq0tLaJBuOcUPdQK/p0JgClGR9rMcdcvz/X/pbL
 DC5Q==
X-Gm-Message-State: AOAM532cJeCjNxlYaP0FG6JvpPAXYEOtJuOlgPAFVYhRsG2wlmDuVX3+
 Y244BlDAYdZMWNpRUAeJHN6oYbQ=
X-Google-Smtp-Source: ABdhPJxJb8uMVFTBmE5EjVEFecM8hhfGGfXlSi7Mekr5euEb9ImK+hXgQFJSBd65bfpss/2gmn1F4A==
X-Received: by 2002:a92:8d49:: with SMTP id s70mr15410384ild.54.1590191328942; 
 Fri, 22 May 2020 16:48:48 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:48 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 14/15] PCI: xilinx-nwl: Use pci_host_probe() to register host
Date: Fri, 22 May 2020 17:48:31 -0600
Message-Id: <20200522234832.954484-15-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164850_235503_D78008DF 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The xilinx-nwl host driver does the same host registration and bus scanning
calls as pci_host_probe, so let's use it instead.

The only difference is pci_assign_unassigned_bus_resources() was called
instead of pci_bus_size_bridges() and pci_bus_assign_resources(). This
should be the same.

Cc: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-xilinx-nwl.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
index 9bd1427f2fd6..32a0b08d6da5 100644
--- a/drivers/pci/controller/pcie-xilinx-nwl.c
+++ b/drivers/pci/controller/pcie-xilinx-nwl.c
@@ -817,8 +817,6 @@ static int nwl_pcie_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct nwl_pcie *pcie;
-	struct pci_bus *bus;
-	struct pci_bus *child;
 	struct pci_host_bridge *bridge;
 	int err;
 
@@ -871,17 +869,7 @@ static int nwl_pcie_probe(struct platform_device *pdev)
 		}
 	}
 
-	err = pci_scan_root_bus_bridge(bridge);
-	if (err)
-		return err;
-
-	bus = bridge->bus;
-
-	pci_assign_unassigned_bus_resources(bus);
-	list_for_each_entry(child, &bus->children, node)
-		pcie_bus_configure_settings(child);
-	pci_bus_add_devices(bus);
-	return 0;
+	return pci_host_probe(bridge);
 }
 
 static struct platform_driver nwl_pcie_driver = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
