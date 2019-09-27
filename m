Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93307BFC64
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GcChKGshvS3ngXIgQ5b3sQRktbF9B/hCqd7MM9WUSc=; b=h5wu8hzbzbqRKF
	hLFNC51NusgTN9PXZKow9ZbpmEcXjz3cZ2f7KJTjaqVPAZQZYAtyi6O1HkoG3dulug3TEpQ/pfUmo
	o9Atm2V85GRikoiX2/4oc9nsmUirfCguw63nhnaNz8lYo2azGrbgx9V6B3wlBlURiWDiLIkMSyhM0
	hrDPR9WmC4YUG2NYvtulauYybEDYPn+C/OU1OXG+zq3MuZ5Hnt7LGOoD85jpAMSCT5iea0fBVCRz/
	SzRHJqx00SWe0eeb7/h2OFMlMjjZ4DUWulBMvcsnCXs9fLnM8GUW5Z5ld8pmc05WaQkIna6miqrLG
	X6GkugFD1XXdKom8GGKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDe5Z-000675-QT; Fri, 27 Sep 2019 00:26:26 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDe4J-0004Tk-9s
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:25:08 +0000
Received: by mail-oi1-f193.google.com with SMTP id i185so3713905oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 17:25:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+Kwduh2L3Q3wglxQRQFNc0vVRF7aZPumhA9/VlLU+NE=;
 b=gXxE09SMj2YsRIft3iMPqah9V7KP1DBTwshSKPT3h5Nk2F7Ady0c9Gz+Aj2cpdEBeC
 eq/E8bkkS9O95Iapy4o0lkSWZbA/MMFWWx+DgkME/bAcQ3KoHw8dzK2YJxsexbxMGgAg
 i0wRu30xI4oaaR/fMA9L7G2zlJdImtbZ+gaOGyEvQU/lYqajNkC2uPEXJPQTLOdNvvuh
 ShhPlbkicCsyiS4XZMq5z7yu9kOfjrhBAZsc6319420Magi57BvfxdNmh/qvLLTUD3Xc
 n5IhlKx4eQn61s143a76c2UYMDTgwJiFwvpirTAZ/9DInBjfTCTb/zRt7MKuJt07bMxM
 tbsQ==
X-Gm-Message-State: APjAAAWNaXMqFPu05ZHA/3oGoOf3/Bw5Cg0bZXyhVlr3Ou/yg46j0ayJ
 UgyUvDDDmfC6FSAXSqhI/w==
X-Google-Smtp-Source: APXvYqwZ4lR/YWP5vXy1ugIkWQ7hYP0e0FO8/TUE1SqXSQM+108Okq4ee9Kd9IvMs2n7+cX5zbFRVg==
X-Received: by 2002:aca:540a:: with SMTP id i10mr4633085oib.108.1569543906002; 
 Thu, 26 Sep 2019 17:25:06 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id j11sm339866otk.80.2019.09.26.17.25.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 17:25:05 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 06/11] of/address: Introduce of_get_next_dma_parent() helper
Date: Thu, 26 Sep 2019 19:24:50 -0500
Message-Id: <20190927002455.13169-7-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
References: <20190927002455.13169-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_172507_366007_D5FB7C13 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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

From: Robin Murphy <robin.murphy@arm.com>

Add of_get_next_dma_parent() helper which is similar to
__of_get_dma_parent(), but can be used in iterators and decrements the
ref count on the prior parent.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/of/address.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 53d2656c2269..e9188c82fdae 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -695,6 +695,16 @@ static struct device_node *__of_get_dma_parent(const struct device_node *np)
 	return of_node_get(args.np);
 }
 
+static struct device_node *of_get_next_dma_parent(struct device_node *np)
+{
+	struct device_node *parent;
+
+	parent = __of_get_dma_parent(np);
+	of_node_put(np);
+
+	return parent;
+}
+
 u64 of_translate_dma_address(struct device_node *dev, const __be32 *in_addr)
 {
 	struct device_node *host;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
