Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116B6BFC6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S++pvVEOtYuY3mBT6f1Laz4yY3zYbomsXKxE1pzOLaQ=; b=XGdeNlk+PuCiAv
	0Yq4XCfHnPT//7FwUVE1lngG/3BtRtU9AbjVffGZPbn804eQQIz5Q7e8ry9BWGzZrzPDAsSiqQGc3
	dDF48bfpdnIpa+81v5Zn3EusvFJfU1aVlOD7Gcakkqe27pXC5MO26JerMhfRxDjBL8s2b9IabSzFZ
	TIfKz9ft1KuTuabET+mJ2SRZr3u5/j69VjLhjh+m+HvyateRAxh/DJnbQHhpnN9a7B95vFo5yOvH/
	IzQ/VH75qfE+wLITbBpD8wqskrQJ/smTF7zyOCGfmPWeO6ZoAtj5mhzDD/IZe/4VGy6i1YgX69G2D
	9QUvqZtJtUs8O+mpvvfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDe7F-0007kS-Bc; Fri, 27 Sep 2019 00:28:09 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDe4P-0005DX-Hu
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:25:15 +0000
Received: by mail-oi1-f196.google.com with SMTP id i185so3714044oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 17:25:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KvE1OjQp2Eo5TOhHCna2F9pDoURrQBiIlsatoh/ojtA=;
 b=uc1qIQA2micmnr/lqKdd1NrEqOD6+o0EwnpTJ0WIoExZ985I9VUSWWpU01IqI9ZQkx
 sy/3RbYgcmXgfZxMTzZjmtjpfc7KZolc1qJTJ06+KlLDBVR8zlmse9F9PbXyB2njJ5us
 Hh+EdGSswxtDPqa2kJ35m+26YbXEm1iazc01uKbU+zgJYOgTEk8RF6MRhCafEWrIGETd
 Fy59b50JrnP0Lq3cfJ3TWZC42TXxB4LAsOzq813FOR8Prjjxts/3bx6DolsMRkaz3dF/
 JA5+rABEk0y9wKVEeKXLpLZcjN9ZmTJw1n1gioD9JyJEXgK/CDMWrbN5/onODDs4mgoV
 pxgQ==
X-Gm-Message-State: APjAAAUYtWha0UIKezOT+3QDrr9+8fxifmtmIOF5VokOPSZOyB1l4GRx
 I/7lMWn5WOxjljHTMHb/fMA0arg=
X-Google-Smtp-Source: APXvYqymzzkGngPSfklXZDXctIqAbqktZ7y7sWXPpqKuwMptW/o1ke/+OGivC0alJNA1OSSWMEbpfg==
X-Received: by 2002:a05:6808:b0d:: with SMTP id
 s13mr4936115oij.52.1569543912890; 
 Thu, 26 Sep 2019 17:25:12 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id j11sm339866otk.80.2019.09.26.17.25.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 17:25:12 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 11/11] of/address: Fix of_pci_range_parser_one translation of
 DMA addresses
Date: Thu, 26 Sep 2019 19:24:55 -0500
Message-Id: <20190927002455.13169-12-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
References: <20190927002455.13169-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_172513_670923_BACBA023 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

of_pci_range_parser_one() has a bug when parsing dma-ranges. When it
translates the parent address (aka cpu address in the code), 'ranges' is
always being used. This happens to work because most users are just 1:1
translation.

Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/of/address.c       | 15 ++++++++++++---
 include/linux/of_address.h |  1 +
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 5b835d332709..54011a355b81 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -243,6 +243,7 @@ static int parser_init(struct of_pci_range_parser *parser,
 	parser->node = node;
 	parser->pna = of_n_addr_cells(node);
 	parser->np = parser->pna + na + ns;
+	parser->dma = !strcmp(name, "dma-ranges");
 
 	parser->range = of_get_property(node, name, &rlen);
 	if (parser->range == NULL)
@@ -281,7 +282,11 @@ struct of_pci_range *of_pci_range_parser_one(struct of_pci_range_parser *parser,
 	range->pci_space = be32_to_cpup(parser->range);
 	range->flags = of_bus_pci_get_flags(parser->range);
 	range->pci_addr = of_read_number(parser->range + 1, ns);
-	range->cpu_addr = of_translate_address(parser->node,
+	if (parser->dma)
+		range->cpu_addr = of_translate_dma_address(parser->node,
+				parser->range + na);
+	else
+		range->cpu_addr = of_translate_address(parser->node,
 				parser->range + na);
 	range->size = of_read_number(parser->range + parser->pna + na, ns);
 
@@ -294,8 +299,12 @@ struct of_pci_range *of_pci_range_parser_one(struct of_pci_range_parser *parser,
 
 		flags = of_bus_pci_get_flags(parser->range);
 		pci_addr = of_read_number(parser->range + 1, ns);
-		cpu_addr = of_translate_address(parser->node,
-				parser->range + na);
+		if (parser->dma)
+			cpu_addr = of_translate_dma_address(parser->node,
+					parser->range + na);
+		else
+			cpu_addr = of_translate_address(parser->node,
+					parser->range + na);
 		size = of_read_number(parser->range + parser->pna + na, ns);
 
 		if (flags != range->flags)
diff --git a/include/linux/of_address.h b/include/linux/of_address.h
index ddda3936039c..eac7ab109df4 100644
--- a/include/linux/of_address.h
+++ b/include/linux/of_address.h
@@ -12,6 +12,7 @@ struct of_pci_range_parser {
 	const __be32 *end;
 	int np;
 	int pna;
+	bool dma;
 };
 
 struct of_pci_range {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
