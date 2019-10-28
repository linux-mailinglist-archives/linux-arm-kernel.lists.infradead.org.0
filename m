Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E8CE7797
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 18:30:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YEl+Z4uezi2Dycvu4bNf8semzascTbeV22V99wqUDRM=; b=HakuwYxur5IKvaZD0m4wWMB0wS
	96XqT8+0IqlWgL7BgAODnKQEkB/n8Zx7lloiGistkB5sG538L99woAhAuiw6QhhqkTAkFi2nxyUe8
	JrjztWlxCMoeAFFwpYg68vCDnCE8+dDqUI3Abbj0TNkHcnD6ldJ3+rD2OYYEXAb9i+m0t05TbTShq
	KgGjd71MwpuEn9EewMi5gyDBnbyFwvkTzLYdrK5ZWh8NiA3+XvgQGh85eM0FHLFJqSVihf3wfs1Zq
	4bNp+OOeK5GN1X8k8DHp8gP/eoOdEseWdW+sVdB0uaJrHywvPs8JT5N2AoHNCPOcxHODtjuxWyT1A
	S2aSZNrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8qN-0004hs-LR; Mon, 28 Oct 2019 17:30:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8pk-0004XX-Al
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 17:29:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id e11so10798734wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 10:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=v9GEYwUiBW+L+lk1Ll0nCRIM3yrtEBZnNM1K9ZrWkdQ=;
 b=qcMCGu6DF0B3wePXP90toGqIgAKLW+CnEkghw5xSWQfJGfmNlbEZJK0PO5BC/cRy2f
 X/TwcnTNYhkakkpEe5D7PUI4V1Kw8XAaGSeuzhL1G0VvYkNV2lP7rWgDSQQHyoujdzXt
 wdfrm7g2jtleviu2U8NrRyjkeosUtpLRhvJ7NYzXRBBZrzOqBtZjq9H4lSrFJ0hqCeqo
 0YgafMyuuHiDurAUOVeRfdyyh5cwGppAGDnXnbuUDPDnUEExP9n+mhZK4BkxNwBQdj0j
 frw8Ae4+y6FB+7y+YgQ54NTGH9LR6AwoVHffkYrq7t20QjpyRdYNdGgZhp9oWSGLEpW8
 COPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=v9GEYwUiBW+L+lk1Ll0nCRIM3yrtEBZnNM1K9ZrWkdQ=;
 b=AeQ8+DtTVEsF7K5g/qRpuSUgX6PbpDvNBygnhYcyudjUqjOGPRFJJW8hhEBoDBg8O9
 S7Xd2bhVFPOlJ15VkL94XAb+SrRxvizCVEOxG42aVV3LCm2A/y5ngdz3Htz9WevG1zC/
 8ePksg2qmm8NsnfqJob2pUSBPTw+7pNlJ92Na/le9jqRAsI3nYufKm8UspV7HH+rl5Bv
 Tul0qmtYsZ7pVcynuudP09WIj82eC4bRHqO3b7rejsVY94NcuWwPKVFvarXbFMAsnUfu
 DDlJyehDqq+IhqJSnL6IEcsmclRCVHAAItJZLXMakEy6JvMDHw9Ul7frfSEnHDEqK49j
 N/1Q==
X-Gm-Message-State: APjAAAVUG1M6+RZhUdSvhmHOmDEY3hxu3ZnmJ07Lg6HQ0qMqGrdXfRU1
 ZLiWzSE/VuH7yw+88/SpiAmiJg==
X-Google-Smtp-Source: APXvYqwT4xmdwNXjjGfUrHMiiVm44xvHEM7ewaFfToPaslCNGykF0jr30f+MGRyEoqtTTbT5W1WwsA==
X-Received: by 2002:adf:b602:: with SMTP id f2mr2425468wre.49.1572283774795;
 Mon, 28 Oct 2019 10:29:34 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:a072:1d10:8dba:cbb])
 by smtp.gmail.com with ESMTPSA id r19sm14273295wrr.47.2019.10.28.10.29.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 10:29:34 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-doc@vger.kernel.org,
	corbet@lwn.net
Subject: [PATCH v4 3/4] coresight: docs: Create common sub-directory for
 coresight trace.
Date: Mon, 28 Oct 2019 17:29:18 +0000
Message-Id: <20191028172919.19662-4-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028172919.19662-1-mike.leach@linaro.org>
References: <20191028172919.19662-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_102936_367472_67EE1E6B 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
 mathieu.poirier@linaro.org, Mike Leach <mike.leach@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two files in the Documentation/trace directory relating to
coresight, with more to follow, so create a Documentation/trace/coresight
directory and move existing files there. Fixup index to reference
new location.

Update MAINTAINERS to reference this sub-directory rather than the
individual files.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../trace/{ => coresight}/coresight-cpu-debug.rst        | 0
 Documentation/trace/{ => coresight}/coresight.rst        | 2 +-
 Documentation/trace/coresight/index.rst                  | 9 +++++++++
 Documentation/trace/index.rst                            | 3 +--
 MAINTAINERS                                              | 3 +--
 5 files changed, 12 insertions(+), 5 deletions(-)
 rename Documentation/trace/{ => coresight}/coresight-cpu-debug.rst (100%)
 rename Documentation/trace/{ => coresight}/coresight.rst (99%)
 create mode 100644 Documentation/trace/coresight/index.rst

diff --git a/Documentation/trace/coresight-cpu-debug.rst b/Documentation/trace/coresight/coresight-cpu-debug.rst
similarity index 100%
rename from Documentation/trace/coresight-cpu-debug.rst
rename to Documentation/trace/coresight/coresight-cpu-debug.rst
diff --git a/Documentation/trace/coresight.rst b/Documentation/trace/coresight/coresight.rst
similarity index 99%
rename from Documentation/trace/coresight.rst
rename to Documentation/trace/coresight/coresight.rst
index 72f4b7ef1bad..a566719f8e7e 100644
--- a/Documentation/trace/coresight.rst
+++ b/Documentation/trace/coresight/coresight.rst
@@ -489,7 +489,7 @@ interface provided for that purpose by the generic STM API::
     crw-------    1 root     root       10,  61 Jan  3 18:11 /dev/stm0
     root@genericarmv8:~#
 
-Details on how to use the generic STM API can be found here [#second]_.
+Details on how to use the generic STM API can be found here:- :doc:`../stm` [#second]_.
 
 .. [#first] Documentation/ABI/testing/sysfs-bus-coresight-devices-stm
 
diff --git a/Documentation/trace/coresight/index.rst b/Documentation/trace/coresight/index.rst
new file mode 100644
index 000000000000..8d31b155a87c
--- /dev/null
+++ b/Documentation/trace/coresight/index.rst
@@ -0,0 +1,9 @@
+==============================
+CoreSight - ARM Hardware Trace
+==============================
+
+.. toctree::
+   :maxdepth: 2
+   :glob:
+
+   *
diff --git a/Documentation/trace/index.rst b/Documentation/trace/index.rst
index b7891cb1ab4d..04acd277c5f6 100644
--- a/Documentation/trace/index.rst
+++ b/Documentation/trace/index.rst
@@ -23,5 +23,4 @@ Linux Tracing Technologies
    intel_th
    stm
    sys-t
-   coresight
-   coresight-cpu-debug
+   coresight/index
diff --git a/MAINTAINERS b/MAINTAINERS
index 296de2b51c83..f903160b507c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1608,8 +1608,7 @@ R:	Suzuki K Poulose <suzuki.poulose@arm.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/hwtracing/coresight/*
-F:	Documentation/trace/coresight.rst
-F:	Documentation/trace/coresight-cpu-debug.rst
+F:	Documentation/trace/coresight/*
 F:	Documentation/devicetree/bindings/arm/coresight.txt
 F:	Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
 F:	Documentation/ABI/testing/sysfs-bus-coresight-devices-*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
