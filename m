Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B99EB1BFF02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1Llf2INtCzn7P3LYQF7/iuCcZoQRThzH2dhUXGGblY=; b=WCsaD9c3kIBDLS
	t6ecFDCdOJ3B5q276SR8cQbcDOOrISlGIgUPf9XXjpRgBHs9sVZ+ZcPN+8XDHn0PupryTuz2Nvddn
	cDYzX58zB8iz2JfltV0nxnE3W4WU5aGR+QM2NFZkwj8fm7uls676wrletOYCnK8LrNl2ibezuiveS
	DVCGByUc2s3PmLwBI7X+7HUA3BC50/OWCmNZEiPXu5swfxfphN08ImYtDGx5eImdkoIIm+Gys89GX
	01TKdnvsiVwZPQkUTvt0DEXII9CrhPXroXBkeuTTXjtNHKaeXCrsxmEGFxPS4upxgxLO/+rw1blH4
	3fNBdjHViP5togLNE52A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUATa-0002Vf-PQ; Thu, 30 Apr 2020 14:47:46 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMn-0002iH-KE
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:48 +0000
Received: by mail-wm1-x343.google.com with SMTP id x25so2160239wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3qbDs4Y7WviMOr0GSY4nlY77EsYqapJLb3Db4qcN97M=;
 b=t+4aT9+cYprXrpA/0QMDQLTv35ltZRsIzsJhL6WzRIlkGwHMzV+TsilZsqBdYO9os+
 LEmbI9poZBOZzYV00yYcZ2MTRGrHanuT7mbSIOQBDmN22wolY/5LERCWxTie3xScd5i+
 mfXPYaSrV/1gc4GJ4hkv337jnn0KZarzUW+GAESnsUgwH5AStIsuGwjPrCaZW9BXvAda
 ze1VdbzDZPXGJXDAcZRAe+Vz+LRVXXtQ68AFPgXXtAqojny8CzAUyLGsI4qjUN9mU9b9
 QuzOYgjkRq/kGh890dDfQT+uQE4XjhOzPT2Qd7+Ro83BK/yAfy1ITFBBF/jLhKZ5c5sA
 0KPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3qbDs4Y7WviMOr0GSY4nlY77EsYqapJLb3Db4qcN97M=;
 b=HVxvw3kyqRn1OBeGYc/TId/rx27fWpcP1aNb7Wcslh8akzfDop7UJx5i31bV5BpwZ5
 vp+OIgtyPn6M3+VWhrTGzlXAyq0HFmTaZqPJnKQhD6vlssnjj5H3KLm9Q7IhV3fs3Ukc
 oFenhl9V4VCTBDLPYmvMVD0UtZrhM+TObIMBbGG4mkDSllgttIUXkowhfF87TgWnL2g3
 DvcXLYwg2aGr/JOC3vaG/jZK7v8seTs3a4Yik4dq+Mum3ZZnQwE4XrH3+jkbIHfjvAUP
 fQNmOdMz41atadZ49vA4DQT5neCdMRh7Z/dIer9OMj+Ce++H5jmyjylTB+XMj15kP+Vy
 emaA==
X-Gm-Message-State: AGi0PubmgzIbzPjFU6TcfAG1Lha21LILhfNivLhdJzfLqjThZscEBt3p
 RGIdlIAI2iD59FY34SBboX1HDg==
X-Google-Smtp-Source: APiQypIZMn/sX8HP3LNRMIS2Wr5t5ivHYBY9IZ/xvKKh7rTp8GxPMClKn6Q3u2r37yB03vTCOANl8Q==
X-Received: by 2002:a7b:c44d:: with SMTP id l13mr3255113wmi.72.1588257643793; 
 Thu, 30 Apr 2020 07:40:43 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:43 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 21/25] dt-bindings: document stall property for IOMMU
 masters
Date: Thu, 30 Apr 2020 16:34:20 +0200
Message-Id: <20200430143424.2787566-22-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074045_854476_6C9BE889 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, fenghua.yu@intel.com, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, jgg@ziepe.ca, catalin.marinas@arm.com,
 joro@8bytes.org, robin.murphy@arm.com, hch@infradead.org,
 zhangfei.gao@linaro.org, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Jonathan.Cameron@huawei.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On ARM systems, some platform devices behind an IOMMU may support stall,
which is the ability to recover from page faults. Let the firmware tell us
when a device supports stall.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 .../devicetree/bindings/iommu/iommu.txt        | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/iommu.txt b/Documentation/devicetree/bindings/iommu/iommu.txt
index 3c36334e4f942..26ba9e530f138 100644
--- a/Documentation/devicetree/bindings/iommu/iommu.txt
+++ b/Documentation/devicetree/bindings/iommu/iommu.txt
@@ -92,6 +92,24 @@ Optional properties:
   tagging DMA transactions with an address space identifier. By default,
   this is 0, which means that the device only has one address space.
 
+- dma-can-stall: When present, the master can wait for a transaction to
+  complete for an indefinite amount of time. Upon translation fault some
+  IOMMUs, instead of aborting the translation immediately, may first
+  notify the driver and keep the transaction in flight. This allows the OS
+  to inspect the fault and, for example, make physical pages resident
+  before updating the mappings and completing the transaction. Such IOMMU
+  accepts a limited number of simultaneous stalled transactions before
+  having to either put back-pressure on the master, or abort new faulting
+  transactions.
+
+  Firmware has to opt-in stalling, because most buses and masters don't
+  support it. In particular it isn't compatible with PCI, where
+  transactions have to complete before a time limit. More generally it
+  won't work in systems and masters that haven't been designed for
+  stalling. For example the OS, in order to handle a stalled transaction,
+  may attempt to retrieve pages from secondary storage in a stalled
+  domain, leading to a deadlock.
+
 
 Notes:
 ======
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
