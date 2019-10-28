Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2457FE76DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:43:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ngzmxmf3LpYXrQx80Pqr/sN9hvdfoVaxbIjhs/Nug3Y=; b=ViWfE0rrZ8AHSu
	u1QdjgKpvNQxyeDxNKhc0u6DynOHlu+dLtjOTXjRNPuuOpf4x1f54jlJzxSiGfvBzxMwTDm3p4qZZ
	B9wfViRRXJnksG3aSEJcRrMECgG3CRXtd83M7Cj7sQ14FSJm/BUj+XAg8TtcFtMtIPgvwJsTp8/Bq
	b9LX11gH9SvbHI3kNTjTL7Bp5yCMIG24VkzyjRah6u/OSRxyCed8mwxcGRevF9ExC6gyyPxAtVUO3
	2M5IioroWlin87QyaCWgP78fqYkRv35us7szqeHZS3gBO4e073bfCEpTQodbqg5kOj9nYzIDrLqF/
	Av+x3XOvJWnwVMTI9d6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP87C-0001Fm-PG; Mon, 28 Oct 2019 16:43:34 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7xx-0007Zi-2B; Mon, 28 Oct 2019 16:34:02 +0000
Received: by mail-ot1-f66.google.com with SMTP id b19so4820317otq.10;
 Mon, 28 Oct 2019 09:34:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5gD14iI8UpOKj376Bq/txSzTZsSs0VToSMrptEdmjdQ=;
 b=aIfRqPh3/FSG4OKFcJU4rrihPuhQelf0JRNLdEHPBoFOoQZtfmIn1j2NHxTWPqUDzY
 cEXULGf+RXwyP5BCGgsmq6tjEjZQ11WxA1FY3oMny5OMkzaHc89MVfn1Ih5IBBlIE/l3
 HIHzyE+26zU7i9g/kSHMI8l6i7VunjgjYFGa3HzEAAjEr/j72chZkt3N+8BxEaE3OIoQ
 qqDj2kESZYe45gVyScs8fi1NJn2+IJTxVUYiBzw0+7wqecl2qn/umYkH7jUWVsSjb6RC
 zREZDl/3NQU96TCIupLpXeCt5PskNukxcpCdnPLqku9ZVtBHZapY7cniT8wEyCpNATKh
 jvAQ==
X-Gm-Message-State: APjAAAU+tDxeP1leKH2exw/TfVQ1CZIOLdF0PxcAhNwkYnAsL6dlXkt9
 dbp1q2vtVDxkgpHhl0tajQ==
X-Google-Smtp-Source: APXvYqxwQvVW18ni2MGlR3yza3cM3F7fWkGTz5dS8pb+bIhSeEI2GqTMRaA5bo4tECabCiP8MTGJZA==
X-Received: by 2002:a9d:4616:: with SMTP id y22mr13801201ote.319.1572280439895; 
 Mon, 28 Oct 2019 09:33:59 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:59 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 25/25] PCI: Make devm_of_pci_get_host_bridge_resources()
 static
Date: Mon, 28 Oct 2019 11:32:56 -0500
Message-Id: <20191028163256.8004-26-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093401_185142_75D9990C 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that all the PCI host drivers are using pci_parse_request_of_pci_ranges(),
make devm_of_pci_get_host_bridge_resources() static.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/of.c  |  5 +----
 drivers/pci/pci.h | 17 -----------------
 2 files changed, 1 insertion(+), 21 deletions(-)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index 0b1e4623dfcf..00e4b9fcb41d 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -236,7 +236,6 @@ void of_pci_check_probe_only(void)
 }
 EXPORT_SYMBOL_GPL(of_pci_check_probe_only);
 
-#if defined(CONFIG_OF_ADDRESS)
 /**
  * devm_of_pci_get_host_bridge_resources() - Resource-managed parsing of PCI
  *                                           host bridge resources from DT
@@ -255,7 +254,7 @@ EXPORT_SYMBOL_GPL(of_pci_check_probe_only);
  * It returns zero if the range parsing has been successful or a standard error
  * value if it failed.
  */
-int devm_of_pci_get_host_bridge_resources(struct device *dev,
+static int devm_of_pci_get_host_bridge_resources(struct device *dev,
 			unsigned char busno, unsigned char bus_max,
 			struct list_head *resources,
 			struct list_head *ib_resources,
@@ -384,8 +383,6 @@ int devm_of_pci_get_host_bridge_resources(struct device *dev,
 	pci_free_resource_list(resources);
 	return err;
 }
-EXPORT_SYMBOL_GPL(devm_of_pci_get_host_bridge_resources);
-#endif /* CONFIG_OF_ADDRESS */
 
 #if IS_ENABLED(CONFIG_OF_IRQ)
 /**
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index 6692c4fe4290..118a4974537b 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -630,23 +630,6 @@ static inline void pci_set_bus_of_node(struct pci_bus *bus) { }
 static inline void pci_release_bus_of_node(struct pci_bus *bus) { }
 #endif /* CONFIG_OF */
 
-#if defined(CONFIG_OF_ADDRESS)
-int devm_of_pci_get_host_bridge_resources(struct device *dev,
-			unsigned char busno, unsigned char bus_max,
-			struct list_head *resources,
-			struct list_head *ib_resources,
-			resource_size_t *io_base);
-#else
-static inline int devm_of_pci_get_host_bridge_resources(struct device *dev,
-			unsigned char busno, unsigned char bus_max,
-			struct list_head *resources,
-			struct list_head *ib_resources,
-			resource_size_t *io_base)
-{
-	return -EINVAL;
-}
-#endif
-
 #ifdef CONFIG_PCIEAER
 void pci_no_aer(void);
 void pci_aer_init(struct pci_dev *dev);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
