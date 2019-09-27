Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0C3BFC62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q8pwpmCLLQv4O52DnlT0VcBZPNuQYQ8amO1kYBijf30=; b=PH7TMygzdwulqz
	5cCm/E6A+s8u4dOBdzAPIEKusnNAa/QvewJnq/OYVv/ULDXX2S3YVAkpF+PsN8a5zRqCxaPVnWfW0
	aTE67OQ2S2t0jvVegShVFyIbsOLihs9HSiMBtfZK+IgoftWn6y7SP0IYuUZ7z6XdfR7DeKDOjY+W8
	Ijn32nTzXESxacVufPwX6FABwAd7IZJUfeRMMGEo02mVR6NFZAyNXydviJGqa7kxogJTRvJgWCO7e
	90kzHUNkEdRXE6AfSurKbs9XZ4AURP0OZoQtwL1Ula0U9BlqcL3d/lBYVWSr170NhrXSuR0HtRsdX
	0euUmdG4GokFrOT3FgHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDe52-0005bQ-Iw; Fri, 27 Sep 2019 00:25:52 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDe4D-0003pM-Gt
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:25:02 +0000
Received: by mail-oi1-f194.google.com with SMTP id x3so3760006oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 17:25:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bFnIODxLI07lEZcLoD/U0DfHP6ZA4NBNR5sSatiO5f0=;
 b=frqA8e/SbEnCwRGtLfA0iXqm1T05stfl+hVSAG0jGZFvPrS/1lIpN3OOWQ4+7ASdZp
 CsBKEMN+eQ7wtmFDSJYJfzrz3iT2SO6TrXHlnYCQQn2EJYhpKl0bgcScpgDqCu7MaAJ7
 LcqdNgUNNewm4uYjUFWJ1mkOE2LJWwknT6cb464XPdavMf/d0p1Vhva3flY9f2Md5mal
 MHoPrVYtu0WPHs47/w3SyRL5XPCxDKTHup0hep2PCPUOBSpEi/Y2BSBDqGIVVlclt0Y1
 8F+xXJCQ5u/7sAyQDvdRwUDRV5NNNykW6MWyK0gQn+C8vOcb15T3mUSun5E51VWuyR2v
 45Bw==
X-Gm-Message-State: APjAAAWZa1PJw/zf+Er9eBEu3nkjWBpVLsnfPQ0o1ufJhWVqhnsDT/pB
 9MCLScQLu6iudSho75/+kQ==
X-Google-Smtp-Source: APXvYqwWVfPVt77YLh4Gv2K4ppvWZ2WTrZfJ1ydtavZRgfmvlui1t3teRXd2GNnOw0HXgwd3DJ7LBA==
X-Received: by 2002:aca:3ed7:: with SMTP id l206mr4922395oia.25.1569543900588; 
 Thu, 26 Sep 2019 17:25:00 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id j11sm339866otk.80.2019.09.26.17.24.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 17:24:59 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 02/11] of: Make of_dma_get_range() private
Date: Thu, 26 Sep 2019 19:24:46 -0500
Message-Id: <20190927002455.13169-3-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
References: <20190927002455.13169-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_172501_572014_97666394 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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

of_dma_get_range() is only used within the DT core code, so remove the
export and move the header declaration to the private header.

Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/of/address.c       |  1 -
 drivers/of/of_private.h    | 11 +++++++++++
 include/linux/of_address.h |  8 --------
 3 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 0c3cf515c510..8e354d12fb04 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -972,7 +972,6 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
 
 	return ret;
 }
-EXPORT_SYMBOL_GPL(of_dma_get_range);
 
 /**
  * of_dma_is_coherent - Check if device is coherent
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index 24786818e32e..f8c58615c393 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -158,4 +158,15 @@ extern void __of_sysfs_remove_bin_file(struct device_node *np,
 #define for_each_transaction_entry_reverse(_oft, _te) \
 	list_for_each_entry_reverse(_te, &(_oft)->te_list, node)
 
+#ifdef CONFIG_OF_ADDRESS
+extern int of_dma_get_range(struct device_node *np, u64 *dma_addr,
+			    u64 *paddr, u64 *size);
+#else
+static inline int of_dma_get_range(struct device_node *np, u64 *dma_addr,
+				   u64 *paddr, u64 *size)
+{
+	return -ENODEV;
+}
+#endif
+
 #endif /* _LINUX_OF_PRIVATE_H */
diff --git a/include/linux/of_address.h b/include/linux/of_address.h
index e317f375374a..ddda3936039c 100644
--- a/include/linux/of_address.h
+++ b/include/linux/of_address.h
@@ -51,8 +51,6 @@ extern int of_pci_dma_range_parser_init(struct of_pci_range_parser *parser,
 extern struct of_pci_range *of_pci_range_parser_one(
 					struct of_pci_range_parser *parser,
 					struct of_pci_range *range);
-extern int of_dma_get_range(struct device_node *np, u64 *dma_addr,
-				u64 *paddr, u64 *size);
 extern bool of_dma_is_coherent(struct device_node *np);
 #else /* CONFIG_OF_ADDRESS */
 static inline void __iomem *of_io_request_and_map(struct device_node *device,
@@ -92,12 +90,6 @@ static inline struct of_pci_range *of_pci_range_parser_one(
 	return NULL;
 }
 
-static inline int of_dma_get_range(struct device_node *np, u64 *dma_addr,
-				u64 *paddr, u64 *size)
-{
-	return -ENODEV;
-}
-
 static inline bool of_dma_is_coherent(struct device_node *np)
 {
 	return false;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
