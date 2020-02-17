Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 746051617C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 17:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTbGwlVMydNcMIbJ/zLsJAmYPPxy/8pBkzwIsX8J5f0=; b=BVmqDBhbfWcfUN
	oJ7N2yXhGH2iD8UIA+whKvoQDY1Dorv+x1NjxbSV89XYj6g6GVH6xyY8UrG0AZwAKBmJrKJmEeIYE
	OtfwrQFQJIQEgW37ckI5kxvlMMahCDXzF7V0vTiSnmizFdhysxyn7Zk1r0mdprXuraGtWEBaUUZE0
	42yuNFhRqkETp9Dh8cnclRLhhdV+A5t5IbpEhxsfKbOq18enB4w7N73WgtyRO7Z2eOagq+rOMXiS2
	QCx2Asx4otCjyLkZ6Q+pdpg6L9b4E+tUUBUmPA05KX1der6IzeUDf/pTEoX/RAcp4RAnm7nRZSglN
	EsKXeMpJr8h9W6ZwBaMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3j8g-00043u-Ag; Mon, 17 Feb 2020 16:20:54 +0000
Received: from ip-109-41-129-189.web.vodafone.de ([109.41.129.189]
 helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3j8Y-00042C-3U; Mon, 17 Feb 2020 16:20:46 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92.3)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1j3j8W-000fpb-6o; Mon, 17 Feb 2020 17:20:44 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH v2 13/24] docs: arm64: convert perf.txt to ReST format
Date: Mon, 17 Feb 2020 17:20:31 +0100
Message-Id: <e000ccaf21f899a4c503c0a0e8734a2a3e177ee6.1581956285.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1581956285.git.mchehab+huawei@kernel.org>
References: <cover.1581956285.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This file is almost in ReST. All it needs is a rename and
adding a :field: for the two fields at the beginning
(author and date).

While here, add a proper SPDX header, and use the standard
markup for document titles, just for consistency.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/arm64/index.rst              | 1 +
 Documentation/arm64/{perf.txt => perf.rst} | 7 +++++--
 2 files changed, 6 insertions(+), 2 deletions(-)
 rename Documentation/arm64/{perf.txt => perf.rst} (95%)

diff --git a/Documentation/arm64/index.rst b/Documentation/arm64/index.rst
index 5c0c69dc58aa..c51d0fa80318 100644
--- a/Documentation/arm64/index.rst
+++ b/Documentation/arm64/index.rst
@@ -13,6 +13,7 @@ ARM64 Architecture
     hugetlbpage
     legacy_instructions
     memory
+    perf
     pointer-authentication
     silicon-errata
     sve
diff --git a/Documentation/arm64/perf.txt b/Documentation/arm64/perf.rst
similarity index 95%
rename from Documentation/arm64/perf.txt
rename to Documentation/arm64/perf.rst
index 0d6a7d87d49e..9c76a97baf28 100644
--- a/Documentation/arm64/perf.txt
+++ b/Documentation/arm64/perf.rst
@@ -1,8 +1,11 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=====================
 Perf Event Attributes
 =====================
 
-Author: Andrew Murray <andrew.murray@arm.com>
-Date: 2019-03-06
+:Author: Andrew Murray <andrew.murray@arm.com>
+:Date: 2019-03-06
 
 exclude_user
 ------------
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
