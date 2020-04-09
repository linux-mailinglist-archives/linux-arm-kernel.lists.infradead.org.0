Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A771A395B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3VISsXify8/fSALcGaQOHWGMfwUUa2gyWOnVPQq2sc=; b=PYFLlu3VI4JW2T
	oWzfpc1zTaZJwmrepWYU/CaaZRFmd/OURn0mxqYlqmzRjyHdCIkqm1inc4JOoVFJqee9KcDTx0tih
	xnUDDcXFUJN4BgSI/eCB1BTGwyjSeg2oLU5gL06mHVz3GoY/QDA6JTRbdw81HEpeYoe2pU9zr81hs
	LHCa4pThvHlzrTMcOnxOyvD3zUaY5n81GCWsYmJve8DQzte0h/r65VOxt9afeoYvS05ZieG1L9p3P
	zRXsNY60732SQujnVfi0f2Nxuht7KN/ScLxsd0X993UOUnsHGgA1zbL3ZNBq1tBEC56/q0aU4GNBr
	9xQxf7oPa7PTytDBcAcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbMx-0006M7-KG; Thu, 09 Apr 2020 17:53:39 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbM9-0005oW-Hh
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:52:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id t203so655321wmt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bfcqBI3xg0gUATSEy+cBbSVf5etgOy40mC7zxa+FMN0=;
 b=g1fD+FP3CtGTS8Gidx14+z21rlRLYQcTsc1T7unutGm8qkPFEZvbwnfGgipcgDLTqY
 mtThA+8KPcoU87PppJV8VzfYatpAnjt8uC3bNRW9pQNBiromskS9dE+aA1T3OXtuF8Dc
 Umcur96fRTG6ghpUjXJJfPvjLcMc/goqv2CRhVylyYbsXuNJJfu8/OQdxrlJHSeuiJ6d
 IlRfJTkPgtgzzqWxqNBxJG80KZAEbcr1NUxgqpNrp3UxTZlPycZfpRi72gUIamr0bJI9
 A0eJpEl9G8hjdIV55XtZ3MJ/vUvCqOVvB6FgXH40+/qslt3R7HcJLbD6yzKXNb337YzB
 jaZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bfcqBI3xg0gUATSEy+cBbSVf5etgOy40mC7zxa+FMN0=;
 b=of2H1LAdcUiWZ9FdbbF1Zub1tTktnt06EtaoRGiBw2t1mx32F64a6SM0fqz2BCXxNr
 mQYpAOJCd+Par61VluW+bv6KTGtq+/Q7FjI7+l0IPGJL8cXuKJO/f2ThQ6v4o42SHB1I
 GaUzUwoB9yoWAuFttiV+8m+HWiTHTuGVazWlKMVDETFkMGDjLq9ev2xnlF5uBY4lM4Wb
 crdXDzPd+VrK94+kGvnUuwHaEqOJx24x3+a4crchlobigDpApCxl0vNtCIvFfzwDRiBM
 DU0JNP/gGEp6jGk8U2uMsYTm5UroPjfBNMEnrYFc69ckQ52V3kpT0hH/5PM4x/wr2QyM
 T40g==
X-Gm-Message-State: AGi0PuawEAv0pJtdVKi40s3frrKbXdjDozVFqgC9FlPwBVaoJeJ9KY43
 26agPkOG9kMuhzxMFU1s0J0=
X-Google-Smtp-Source: APiQypJdr2akCWptOFhocybblUVKNcNP9vNr9RPMd6bLx3PXA4JtlI5oUQignMcCTYn3wBdf4c+M+Q==
X-Received: by 2002:a1c:2203:: with SMTP id i3mr1012035wmi.0.1586454768341;
 Thu, 09 Apr 2020 10:52:48 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id k184sm4664605wma.13.2020.04.09.10.52.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:52:47 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 02/14] of: reserved-memory: Support lookup of regions by
 name
Date: Thu,  9 Apr 2020 19:52:26 +0200
Message-Id: <20200409175238.3586487-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105249_585242_EA7CE97A 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Add support for looking up memory regions by name. This looks up the
given name in the newly introduced memory-region-names property and
returns the memory region at the corresponding index in the memory-
region(s) property.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/of/of_reserved_mem.c    | 19 +++++++++++++++++++
 include/linux/of_reserved_mem.h | 11 +++++++++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 1a84bc0d5fa8..ed2ff6f01d32 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -357,6 +357,25 @@ int of_reserved_mem_device_init_by_idx(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(of_reserved_mem_device_init_by_idx);
 
+/**
+ * of_reserved_mem_device_init_by_name() - assign named reserved memory region
+ *					   to given device
+ * @dev: pointer to the device to configure
+ * @np: pointer to the device node with 'memory-region' property
+ * @name: name of the selected memory region
+ *
+ * Returns: 0 on success or a negative error-code on failure.
+ */
+int of_reserved_mem_device_init_by_name(struct device *dev,
+					struct device_node *np,
+					const char *name)
+{
+	int idx = of_property_match_string(np, "memory-region-names", name);
+
+	return of_reserved_mem_device_init_by_idx(dev, np, idx);
+}
+EXPORT_SYMBOL_GPL(of_reserved_mem_device_init_by_name);
+
 /**
  * of_reserved_mem_device_release() - release reserved memory device structures
  * @dev:	Pointer to the device to deconfigure
diff --git a/include/linux/of_reserved_mem.h b/include/linux/of_reserved_mem.h
index 60f541912ccf..a1b427ac291b 100644
--- a/include/linux/of_reserved_mem.h
+++ b/include/linux/of_reserved_mem.h
@@ -33,6 +33,9 @@ typedef int (*reservedmem_of_init_fn)(struct reserved_mem *rmem);
 
 int of_reserved_mem_device_init_by_idx(struct device *dev,
 				       struct device_node *np, int idx);
+int of_reserved_mem_device_init_by_name(struct device *dev,
+					struct device_node *np,
+					const char *name);
 void of_reserved_mem_device_release(struct device *dev);
 
 void fdt_init_reserved_mem(void);
@@ -45,6 +48,14 @@ static inline int of_reserved_mem_device_init_by_idx(struct device *dev,
 {
 	return -ENOSYS;
 }
+
+static inline int of_reserved_mem_device_init_by_name(struct device *dev,
+						      struct device_node *np,
+						      const char *name)
+{
+	return -ENOSYS;
+}
+
 static inline void of_reserved_mem_device_release(struct device *pdev) { }
 
 static inline void fdt_init_reserved_mem(void) { }
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
