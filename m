Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A03BFC4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8Zogbu+TSOXj7wL6ueuoYECXj8/d/eA9FSnn5X1GLQ=; b=q2zwH0t3QTpVrw
	xkWo9taHIJycpoeIXGNWuhPKaw59V5uYA349XSvSROFZ/gkrH76/bAM3KT72T+y8woMz1xyxYoKXR
	85xO+NLwMVcPEdxMn89JmQQ1D2blORueDOddouYYC42yPtxVZEKr+pohD3cQCigXLQVjRy/rxQKMK
	L/dd0ewmES5bdas9i93BIVQn9Hl6ijhENYQMgLftsnKDBr0hcZW4YUf5And8Wjrj7nVKoVrkbiCV0
	xIQh58AdULj15+XYVLB54mqYjV/CpkEkC/6lvYSsnk0rn4qVaW3aHuyVkhc4m3rWyebe6+1hh0eA0
	vMXQXBOvioT1p4TYaP2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDe4l-0005IX-E5; Fri, 27 Sep 2019 00:25:35 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDe4B-0003os-SQ
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:25:01 +0000
Received: by mail-oi1-f195.google.com with SMTP id x3so3759969oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 17:24:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+w5IFIxhvLU+cAIOScJHHta0qaO4ZGZGm/wE8/ycgf8=;
 b=iBuVuwf29sVlcIhIMjkrrdhx7HwFzcAPHvGf/f7w6eHbBH0vvTTpVKgcY/rf3ts6Cc
 iZR+gBCvjc5B/3Z1Z1XULgKGYuXxr6pXsgKKy9Y2mspCNppDc6S45oeAH+dYsuOcIzPC
 aw7JZ6UgTCQ0tiQpBsJhTq6gSjzFDNgq8wcNe+VMKXo1DnuTjpnsSaUNERp456yXbu37
 nQ4uOg4o/yXi4AU4V/2E3ttiQymNyxlkr+PCgRSPnzg90QqhGM2TRcbZinQmsBgfLHan
 zNivgYjbk5SvoxI/17NJUYdpnm0M1oZV6dzNGudxO7Q5Po7RcoqfwCEnpC7yJn6lZFy1
 hm6A==
X-Gm-Message-State: APjAAAUMxok5KuqP0PCC6yKH0CyUxulkgE3pWYZ2OEUir1z4wqp+M+Bk
 n0kKivK6G6ofqQTvHoXvBg==
X-Google-Smtp-Source: APXvYqz440W6O64cgvCu2OYrAyaV4fHohe2E6X1Kaj+k2yyGSBSVQGkq2l9TDw1R1g0urlwMQ3JhwA==
X-Received: by 2002:aca:c0d6:: with SMTP id q205mr4827563oif.81.1569543898837; 
 Thu, 26 Sep 2019 17:24:58 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id j11sm339866otk.80.2019.09.26.17.24.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 17:24:58 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 01/11] of: Remove unused of_find_matching_node_by_address()
Date: Thu, 26 Sep 2019 19:24:45 -0500
Message-Id: <20190927002455.13169-2-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
References: <20190927002455.13169-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_172459_913970_A6B85F3E 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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

of_find_matching_node_by_address() is unused, so remove it.

Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/of/address.c       | 19 -------------------
 include/linux/of_address.h | 12 ------------
 2 files changed, 31 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 978427a9d5e6..0c3cf515c510 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -826,25 +826,6 @@ int of_address_to_resource(struct device_node *dev, int index,
 }
 EXPORT_SYMBOL_GPL(of_address_to_resource);
 
-struct device_node *of_find_matching_node_by_address(struct device_node *from,
-					const struct of_device_id *matches,
-					u64 base_address)
-{
-	struct device_node *dn = of_find_matching_node(from, matches);
-	struct resource res;
-
-	while (dn) {
-		if (!of_address_to_resource(dn, 0, &res) &&
-		    res.start == base_address)
-			return dn;
-
-		dn = of_find_matching_node(dn, matches);
-	}
-
-	return NULL;
-}
-
-
 /**
  * of_iomap - Maps the memory mapped IO for a given device_node
  * @device:	the device whose io range will be mapped
diff --git a/include/linux/of_address.h b/include/linux/of_address.h
index 30e40fb6936b..e317f375374a 100644
--- a/include/linux/of_address.h
+++ b/include/linux/of_address.h
@@ -33,10 +33,6 @@ extern u64 of_translate_dma_address(struct device_node *dev,
 extern u64 of_translate_address(struct device_node *np, const __be32 *addr);
 extern int of_address_to_resource(struct device_node *dev, int index,
 				  struct resource *r);
-extern struct device_node *of_find_matching_node_by_address(
-					struct device_node *from,
-					const struct of_device_id *matches,
-					u64 base_address);
 extern void __iomem *of_iomap(struct device_node *device, int index);
 void __iomem *of_io_request_and_map(struct device_node *device,
 				    int index, const char *name);
@@ -71,14 +67,6 @@ static inline u64 of_translate_address(struct device_node *np,
 	return OF_BAD_ADDR;
 }
 
-static inline struct device_node *of_find_matching_node_by_address(
-					struct device_node *from,
-					const struct of_device_id *matches,
-					u64 base_address)
-{
-	return NULL;
-}
-
 static inline const __be32 *of_get_address(struct device_node *dev, int index,
 					u64 *size, unsigned int *flags)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
