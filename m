Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FC2BFC67
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Inr6ngqy/1PKuWooez/eCeGMl3BRIw+Kd5q6yCSj4r8=; b=QfoC8FIxqjLoVU
	aFogYUnN/KIrvOw2Xtf82zo30nUXSr4PLeTGzIdzlzhWvvnsAioCqfpGqdECdmizOZlVy5WGRuleS
	YmlNUh2SAy00cP7fTt7REaYJ2iyYsGlNhFHJUNvbVe5V1xrEpBgmXbqEsE6nQzYhylr1YQAiSS4jr
	l1xExuIc6rTo0WveXE3eHXDgVniWBb5g1oIA9+I248wG+n8OqRszHengXoiyi+wc0ahR7WC76fGOk
	TD8u1snGwaq44Xjb71gJMfB+fzNWFtaH1qoM9yR+pSVoEk0t9rVGfzPYrpiGk/LmFKX8RYLYNX0z3
	CrgwyMNpvb9yyVo+eQ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDe6I-0006o5-88; Fri, 27 Sep 2019 00:27:10 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDe4K-0004e1-NH
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:25:10 +0000
Received: by mail-oi1-f194.google.com with SMTP id w17so3725247oiw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 17:25:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2eJmO98TJvWjef7NL2xv0z4jdHs/rDOAySInsQ51HYo=;
 b=EorhD2Ell4zILGRfiYUW3bi7TZXIMwJNvsWfMUqPjHyPmX39wgbgkHfOX5fRh+zz+p
 Fc3PDnZEmE4auKqfd8ClL3h7UTcHsNBe+vBXF0dHkIJMz0mDBm6EIjjSwTfTY5hhxVtf
 2whvMJ1XWU34bt6jhqnnhRXQ5hWXS9M5P7+hhzCkhlZcGN0YZWXw58ei2BYOKmyGoANx
 X4w/x9nSfLUSPUABEN1+QegfxPdWyqCfYVBrulkm7TJzuSqV3kGSOcdvAXvgxHakWSr2
 pfo3GGzeyac4qa9UQheFG/bK12g7Ky8Oi7q4ZDu3KSrrKwCpokZxJTHVTyGYQQE1gAVL
 IgWQ==
X-Gm-Message-State: APjAAAUQRiIN4SCCJQO/uchFrbwko1/smuQFz5igxs/DhiEKidNTrYyr
 5DKxzxTUeaLprZ1NnaAqog==
X-Google-Smtp-Source: APXvYqymF9L96mPxVpqSA9nOQNOKKwoPIHBbCEwP0jWqbUfs1Sl2A8wDMIuZP/zjDv51L0/QcKzRIQ==
X-Received: by 2002:aca:4890:: with SMTP id v138mr5031090oia.57.1569543907590; 
 Thu, 26 Sep 2019 17:25:07 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id j11sm339866otk.80.2019.09.26.17.25.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 17:25:07 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 07/11] of: address: Follow DMA parent for "dma-coherent"
Date: Thu, 26 Sep 2019 19:24:51 -0500
Message-Id: <20190927002455.13169-8-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
References: <20190927002455.13169-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_172508_813196_EC6D45A0 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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

Much like for address translation, when checking for DMA coherence we
should be sure to walk up the DMA hierarchy, rather than the MMIO one,
now that we can accommodate them being different.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/of/address.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index e9188c82fdae..3fd34f7ad772 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -999,7 +999,7 @@ bool of_dma_is_coherent(struct device_node *np)
 			of_node_put(node);
 			return true;
 		}
-		node = of_get_next_parent(node);
+		node = of_get_next_dma_parent(node);
 	}
 	of_node_put(node);
 	return false;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
