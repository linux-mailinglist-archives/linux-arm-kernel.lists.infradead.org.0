Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E9D15C882
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:41:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bO0gnbV2+51dhADcmYk/qnYssvIr4mG/SmJMjbLT4Qw=; b=JM7q95R6Xb8zVi
	3rKkmbXz0r0mg7jyUr0hCfjhVl2DgeaCnse54vVyEtsGmTrzsDGlVPz12QcQSBGDzG2RbagVU1Ivg
	qo3oSynPFFO61zX5jYvt4q/EGeH99ED/Wc0jigIK9zEosRw92/YZBY4VS3yqKb/NqMxyFKvXFzBPy
	jxqWFTd7GdmvVYPb0xjufX9hiTfsYENPhwUl441naeURWHRxanPevg0c+aFv522U21OzffeYw0P64
	yBitF0ZwERE+h4+veWx2Ylv8qjaNQ6vUUoYedauBGSiT7Er1SkV3qY3rcrcXxy1ZA4AkXfeSp9vfo
	cU5olOi5lfHLXM7pPTWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HXv-0000wd-5g; Thu, 13 Feb 2020 16:40:59 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HXB-0000RA-EC
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:40:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id b17so7517939wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WYs51DTWcpY/Z0Mrusx8O/2oW5iuRXCgerYN0ZZKm9Y=;
 b=RSxmEE/jHbfX+qZPdrlhKUfzfZB0bOqYvOreeIMwy4VplOCTAPR6mhE8oQfjshT1U9
 5vYdcMghcYmzE4iAQHAUxqnfxAhfDHq63+XWobt34fNdDBrHbkXZ1okFQy3xLwbinAdO
 t4yRTBfxS7O9wiBOKiCCIjuvS4Pw2s8DYtvTJuIMZKkDtLy77EAdqJPzrGO0LdI/tdas
 adTfiqeBzrx/DvG6UZxpPKOHhR+hJF4T6CxRxiVsbTQo6tjfE286KoXQvV0IRHI27OTl
 SGovm73hq2DEDoElDGTDLsZPGcLCdRzEFSwfRkA1nfQc/ui+1CBhTG1bqmZMgTipkVHO
 v3TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WYs51DTWcpY/Z0Mrusx8O/2oW5iuRXCgerYN0ZZKm9Y=;
 b=tQO3NsiE1ReUhyzEVtyddlFLvJdEEizhxHxZX3rKjUyOcBZo3qwgkft5cI05DQnxdi
 E5FUUZozrPVCx/I22sw87y4ectY13e5/gjgNQhJ7kDM7PbjnxWO1GPJeGi3hzRcYkFXP
 Z1TCuROXbyH1ewDkbKsM2VhHuhedVa+hazTDDwDwYOEjgC0cntVh+HSNEaV1gdHJoETE
 UuD77Ewq6y5DuUTv72zF57Q1fBbBN8at23iHNlclS8NpzX4ZRsaqVzwW4aOMs+t/xjwx
 KLfiSBWmsD6TYd5yCdzVubj5WNQB4gZn29rE1vFbDLyCSSWI2XIz/cu+Kat9ddREOsJV
 VC6Q==
X-Gm-Message-State: APjAAAXs+aRd9LzWCejsopIwr6LX/TDh32joOeZhRQNXqrT2UnWhForU
 awWWagwNaVDGfZHU4KCcNLQ=
X-Google-Smtp-Source: APXvYqw7j8Tekzs4LcNAuJ1ri+Mrd+LCBOLE2GE/xwhUFmLwrvqbghwhx63vfIvD8Gy3IDaZ3tHtcw==
X-Received: by 2002:a1c:e007:: with SMTP id x7mr6518555wmg.3.1581612012009;
 Thu, 13 Feb 2020 08:40:12 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id q1sm3347264wrw.5.2020.02.13.08.40.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:40:11 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 2/5] of: Use memory-controllers property for DMA parent
Date: Thu, 13 Feb 2020 17:39:56 +0100
Message-Id: <20200213163959.819733-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213163959.819733-1-thierry.reding@gmail.com>
References: <20200213163959.819733-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_084013_517644_FB9B4CB5 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org, iommu@lists.linux-foundation.org,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Prefer the memory-controllers property to determine the DMA parent of a
device over the interconnects property, which can be ambiguous since it
can be used to describe multiple paths to system memory.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/of/address.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index e8a39c3ec4d4..ae841bd36bb0 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -697,17 +697,24 @@ static struct device_node *__of_get_dma_parent(const struct device_node *np)
 	struct of_phandle_args args;
 	int ret, index;
 
-	index = of_property_match_string(np, "interconnect-names", "dma-mem");
-	if (index < 0)
-		return of_get_parent(np);
+	ret = of_parse_phandle_with_args(np, "memory-controllers",
+					 "#memory-controller-cells",
+					 0, &args);
+	if (!ret) {
+		return of_node_get(args.np);
+	}
 
-	ret = of_parse_phandle_with_args(np, "interconnects",
-					 "#interconnect-cells",
-					 index, &args);
-	if (ret < 0)
-		return of_get_parent(np);
+	index = of_property_match_string(np, "interconnect-names", "dma-mem");
+	if (index >= 0) {
+		ret = of_parse_phandle_with_args(np, "interconnects",
+						 "#interconnect-cells",
+						 index, &args);
+		if (!ret) {
+			return of_node_get(args.np);
+		}
+	}
 
-	return of_node_get(args.np);
+	return of_get_parent(np);
 }
 
 static struct device_node *of_get_next_dma_parent(struct device_node *np)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
