Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82D711DFD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 09:49:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIPfk0/hbPrLKPRsyULb0RkMz4qMXPTC2/FqeRQ3mYc=; b=Fwixk509pvBOuS
	tOB5dc98PCfu3Cu21c0MQ6Sa7vBIkzXfACYo5pmwDE4SQN0OVXn4GdAJR8kMDjauMTdHcMrW8l5kk
	6bxsEHktJ3ZJ/lVlX0jhveIjggaRhKfZfkAouugXKyNPT4owyHyrYGt4Oy7pIJXoTet8DT9eSGhIJ
	ikACbQD7uYwAYbNfVophm0KxI512JLose3kjRp8LiTODy8IB8p2wuQLdZY6maZGB1d2E58JNGei3M
	wWqi58xU+Ny7lQvyPc29XeN18XLmNXFOOqVSVjJMdZlO0orhS5m4ed8Yt40rqlSxhUKse1gICic2M
	dIwgZVi3ZSJALtWC8PMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifgdm-0006v8-NU; Fri, 13 Dec 2019 08:49:38 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgcd-0006Dl-Ak; Fri, 13 Dec 2019 08:48:29 +0000
Received: by mail-pl1-x643.google.com with SMTP id d15so963769pll.3;
 Fri, 13 Dec 2019 00:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fPnTIRMILPqM0UWzvBdt6uVoOYvVzYGaVnz/AEQ+U64=;
 b=rLyeugVoRkoz0+Y06IdS4Wvj9dz3kH+OIbgNdfHC9yIGa3u21GzMr6ebQ+/spw5NL8
 T4JsouxJ5/nenY7TSf/8u+jxvvDelNJFFAx/qthYc3UEVoDaYOf1kyUbN3ABNGkgFyF8
 n5q3zbhI2px3oFghB7KFH7Sfi1nVSLGgN3xGxrtqk9bGH3guYHeVBQRtsFUBZktDEm9i
 j7pm72vvgeWvvo5qppTXv1/rkXkkFD8tEtdyUUSuud+XjCSTneFTmeb6McaQLhEPPUj6
 rPXePpFahsxF7SSb1JOnfGWLWy57Z+NpW2RLNcRMC+XfPRc6C6JO9+vSj9Jpev3w5yOz
 uCdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fPnTIRMILPqM0UWzvBdt6uVoOYvVzYGaVnz/AEQ+U64=;
 b=MQOwDa5ApIQEfZs5mdDin+3xuZMh9oCnR4KvZ9BCEUezV1pfpRqtG3YgaSCNpbo+hK
 0N1N1yoSZucpNKtDcgYNIdK8hPrV0H3HSdKpIVlKDdRJc5zfDbbI5/uvb1sAGa7bOqGW
 Qz/6XQXRH2gXJomauvOe4sClh1ZMOqONgCx60VJpLKhmcEY2vKK3KzxhLoLVsNV7F+ag
 EaLn9GyNJpHy3I52cTuP0SZLHDGwCYw/0fb1kPgYNC88CfUErR4b2NYXv+dhJlrGcUEr
 jllP/gE5DHpsvdQw5nfHjgNjsknF0Qknxyf+uC0fhtat9iiGj8rtr1NSTeoxvGjL6ECm
 +nUg==
X-Gm-Message-State: APjAAAXYBvwmOSons6eOA6jeTGZpiwcAo/nJO5bO3f9xucCxl7sU9rR5
 Qk1B3jSJ/IsBqJ8oWDpTlaM=
X-Google-Smtp-Source: APXvYqzwxhAdN8PIyYKjnZsJFAh7Bv/fqcmv6xcJ6UgbSFsLrvOIj5VeKYAqdC0FsVvdvWEhwz3COA==
X-Received: by 2002:a17:902:8b86:: with SMTP id
 ay6mr14490650plb.223.1576226906585; 
 Fri, 13 Dec 2019 00:48:26 -0800 (PST)
Received: from prasmi.domain.name ([103.219.60.167])
 by smtp.gmail.com with ESMTPSA id 68sm9985632pge.14.2019.12.13.00.48.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 00:48:25 -0800 (PST)
From: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org
Subject: [v2 3/6] of: address: add support to parse PCI outbound-ranges
Date: Fri, 13 Dec 2019 08:47:45 +0000
Message-Id: <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_004827_426879_7144A414 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jingoo Han <jingoohan1@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-kernel@vger.kernel.org, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>

this patch adds support to parse PCI outbound-ranges, the
outbound-regions are similar to pci ranges except it doesn't
have pci address, below is the format for bar-ranges:

outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
                   upper32_size lower32_size>;

Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/of/address.c       | 44 ++++++++++++++++++++++++++++++++++++++++----
 include/linux/of_address.h | 21 +++++++++++++++++++++
 2 files changed, 61 insertions(+), 4 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 978427a..ca4643c 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -233,9 +233,9 @@ int of_pci_address_to_resource(struct device_node *dev, int bar,
 EXPORT_SYMBOL_GPL(of_pci_address_to_resource);
 
 static int parser_init(struct of_pci_range_parser *parser,
-			struct device_node *node, const char *name)
+		       struct device_node *node, const char *name,
+		       const int na, const int ns)
 {
-	const int na = 3, ns = 2;
 	int rlen;
 
 	parser->node = node;
@@ -254,17 +254,30 @@ static int parser_init(struct of_pci_range_parser *parser,
 int of_pci_range_parser_init(struct of_pci_range_parser *parser,
 				struct device_node *node)
 {
-	return parser_init(parser, node, "ranges");
+	const int na = 3, ns = 2;
+
+	return parser_init(parser, node, "ranges", na, ns);
 }
 EXPORT_SYMBOL_GPL(of_pci_range_parser_init);
 
 int of_pci_dma_range_parser_init(struct of_pci_range_parser *parser,
 				struct device_node *node)
 {
-	return parser_init(parser, node, "dma-ranges");
+	const int na = 3, ns = 2;
+
+	return parser_init(parser, node, "dma-ranges", na, ns);
 }
 EXPORT_SYMBOL_GPL(of_pci_dma_range_parser_init);
 
+int of_pci_outbound_range_parser_init(struct of_pci_range_parser *parser,
+				      struct device_node *node)
+{
+	const int na = 1, ns = 2;
+
+	return parser_init(parser, node, "outbound-ranges", na, ns);
+}
+EXPORT_SYMBOL_GPL(of_pci_outbound_range_parser_init);
+
 struct of_pci_range *of_pci_range_parser_one(struct of_pci_range_parser *parser,
 						struct of_pci_range *range)
 {
@@ -310,6 +323,29 @@ struct of_pci_range *of_pci_range_parser_one(struct of_pci_range_parser *parser,
 }
 EXPORT_SYMBOL_GPL(of_pci_range_parser_one);
 
+struct of_pci_outbound_range
+*of_pci_outbound_range_parser_one(struct of_pci_range_parser *parser,
+				  struct of_pci_outbound_range *range)
+{
+	const int na = 1, ns = 2;
+
+	if (!range)
+		return NULL;
+
+	if (!parser->range || parser->range + parser->np > parser->end)
+		return NULL;
+
+	range->flags = be32_to_cpup(parser->range);
+	range->cpu_addr = of_translate_address(parser->node,
+					       parser->range + na);
+	range->size = of_read_number(parser->range + parser->pna + na, ns);
+
+	parser->range += parser->np;
+
+	return range;
+}
+EXPORT_SYMBOL_GPL(of_pci_outbound_range_parser_one);
+
 /*
  * of_pci_range_to_resource - Create a resource from an of_pci_range
  * @range:	the PCI range that describes the resource
diff --git a/include/linux/of_address.h b/include/linux/of_address.h
index 30e40fb..93b3be3 100644
--- a/include/linux/of_address.h
+++ b/include/linux/of_address.h
@@ -22,9 +22,18 @@ struct of_pci_range {
 	u32 flags;
 };
 
+struct of_pci_outbound_range {
+	u32 flags;
+	u64 cpu_addr;
+	u64 size;
+};
+
 #define for_each_of_pci_range(parser, range) \
 	for (; of_pci_range_parser_one(parser, range);)
 
+#define for_each_of_pci_outbound_range(parser, range) \
+	for (; of_pci_outbound_range_parser_one(parser, range);)
+
 /* Translate a DMA address from device space to CPU space */
 extern u64 of_translate_dma_address(struct device_node *dev,
 				    const __be32 *in_addr);
@@ -52,9 +61,14 @@ extern int of_pci_range_parser_init(struct of_pci_range_parser *parser,
 			struct device_node *node);
 extern int of_pci_dma_range_parser_init(struct of_pci_range_parser *parser,
 			struct device_node *node);
+extern int of_pci_outbound_range_parser_init(struct of_pci_range_parser *parser,
+					     struct device_node *node);
 extern struct of_pci_range *of_pci_range_parser_one(
 					struct of_pci_range_parser *parser,
 					struct of_pci_range *range);
+extern struct of_pci_outbound_range
+*of_pci_outbound_range_parser_one(struct of_pci_range_parser *parser,
+				  struct of_pci_outbound_range *range);
 extern int of_dma_get_range(struct device_node *np, u64 *dma_addr,
 				u64 *paddr, u64 *size);
 extern bool of_dma_is_coherent(struct device_node *np);
@@ -97,6 +111,13 @@ static inline int of_pci_dma_range_parser_init(struct of_pci_range_parser *parse
 	return -ENOSYS;
 }
 
+static inline int
+of_pci_outbound_range_parser_init(struct of_pci_range_parser *parser,
+				  struct device_node *node)
+{
+	return -ENOSYS;
+}
+
 static inline struct of_pci_range *of_pci_range_parser_one(
 					struct of_pci_range_parser *parser,
 					struct of_pci_range *range)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
