Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B658CEB686
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:59:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lKNwjE5r1NvjuITOZ0SZml0Q9En+vNW/54yqoybDkao=; b=nNTGymdOmbmIf0YsA9RvoZ5wtK
	GbVmZWzr+7S5+aIUOpM0Tzg+Bn1wb8RoYSqDJ4FAW8jHa0+YXGXoGVYuCrX04qkSd115J34UQgwDS
	Mf1TKeeR5rmDkwH55VdSD0CnjlG8+9TOhXSQGhukYuUlZ+86joOEO7wwNawe+S2ms696VtCoIkcxa
	y+bYqPN4sKvUq3EEW2QdnjFRV5e3Tyw+QdKjErcZy3XAzJjY9qpjahrbryF997hoAM0rzk8RUlQ/j
	/wTVae+SczmvM/EVvM7wy2vPREi8xpN1lq1DaR+ztqfesRP3oU+sozy0Ogs3Oh+yeVNl/rIjK4mhy
	vFtA8rzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEjP-0000K2-PW; Thu, 31 Oct 2019 17:59:35 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQEiV-00088v-JE
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:58:41 +0000
Received: by mail-pf1-x441.google.com with SMTP id r4so4870930pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 10:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NdEpwlKLBgKBcXE2fFCtVpGdvVkjrw2sI0goqWCkBdA=;
 b=S1s4ZBDp6uqMHkVpEGnCdWM8Si7bOQukbUsBYHkmhp42sGnfVQUfBqIhbUrZv8/1Bd
 GIPNkDZRN8H2f1dZKKmqB+rzvOwpXGJHC6nQUEkRHPJhGdUa+yfME+7PZSa/gx0aK1Eh
 6TMgI+npdwcCV9RXyX4JrFetgRz9/Uvo5mEm9iVdvha5adtZ7/glQTzdaKySToFqwHIR
 8a1+U2w54ZDu/BPtiMtKgc9QqjqG4DMO35Fj/jWk0i8TUZNTQVH0lxHpxNxc1k2Ednu6
 vqZ9GN9sz3a0gPxRdzFq7uSrrPWpb/dxLWlVNhuFCXaDCVaYvp2hhFpXyxCpd/rD+8nE
 /8Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NdEpwlKLBgKBcXE2fFCtVpGdvVkjrw2sI0goqWCkBdA=;
 b=d8HXxfmG34W6p/mVKJ4Vr6DElAWi6D3TKqqr0aBKA0A+bZrO0En2FdccFwtPLjgN/5
 mVqF9x4MClXPXkuBR7B5PGYb9Xb0qAQBHbNUvnc7UhljDwMpCVCE27NwqWCzTowE1EVL
 n1h51p/XgcfYkX99/bTFm42HvTRs+8kALwbBayKAwdcaWpMuld0PIbhsCo4pVOx05kSW
 YzvBerviqXozhy/PvGoGdpa5+2i9dilVcLSuUco5PGkA7H+hxDEWHYIcds/AoyZrpdzP
 HmT8kIYfv8u5iu2Qg4tOO64Qt0uVwhm2vz8hC8quRAWKkkEk/vobNmOIf6LTTFXI6mmB
 Z4IA==
X-Gm-Message-State: APjAAAXOrbPnlhgDPfBYfRkpEvfVnRAjC7j2vp+X1q+NU7aHoEQXHtMt
 VXBOuzfLbUCM5dujB0INuz+TCQ==
X-Google-Smtp-Source: APXvYqwd3FlgdzgAYcA2WWKMKif4l8T22wIogkRw7QM8/8o0Cj9nXkWHvBlseKOwuTl7PoNVsM3lhQ==
X-Received: by 2002:a17:90a:9306:: with SMTP id
 p6mr9028719pjo.68.1572544718745; 
 Thu, 31 Oct 2019 10:58:38 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c6sm4382210pfj.59.2019.10.31.10.58.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 10:58:38 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: corbet@lwn.net
Subject: [PATCH 3/4] coresight: docs: Create common sub-directory for
 coresight trace.
Date: Thu, 31 Oct 2019 11:58:33 -0600
Message-Id: <20191031175834.17548-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191031175834.17548-1-mathieu.poirier@linaro.org>
References: <20191031175834.17548-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_105839_704533_141D12A0 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

There are two files in the Documentation/trace directory relating to
coresight, with more to follow, so create a Documentation/trace/coresight
directory and move existing files there. Fixup index to reference
new location.

Update MAINTAINERS to reference this sub-directory rather than the
individual files.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
