Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F95EC589
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:20:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DdT5/Xtj6XnvYAJRtw46hWRzHyvIDiawcbTHcG0hp68=; b=BxFWUtw/sWYVSQ
	ISCIxI7JTfr6j4Gm/T7Xvz90cczWaZd35BBfWCZFjiXoNnS2h/jzdhM1iSSKPyItK1My3zZ/JY4U4
	t/KrdGDySp+QHj842iav8v/IjD3z6fexXC54qiGbBoUQy9QykumX43Rjv529YioUUBju55jmo5ryV
	nfRgDqXE/pLItsWH962xlW7anf95vIy26dedYdOoqaheVLLWBkZoZRApUO1XhSLPbgv6SPRA5nFRP
	UzgCw3GncIqW7Fc0HNsRaDAo6MS+Nz/lIg6V9V7hRBjqZGqkb6Pe9vyy1cKF/907G0CIWWN3MmaVA
	0l1DufgxbGUavrZImABQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQYj6-0000t0-HG; Fri, 01 Nov 2019 15:20:36 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQYiy-0000sR-Dh
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:20:29 +0000
Received: by mail-wm1-f67.google.com with SMTP id t26so5297664wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 08:20:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YMEz8D3S6e/piMAQ+pM8XO5S9kvzfBwBTg3kkWGraWM=;
 b=kqNM1l+4usi/Z600jVicRQJb9Uw8T61glQuEZN2RtYBwCRO2FaByo5u4fpRtf0kFLi
 dAnTalb4xaFacuYmwToS2ga5+EXRnVwh3tBb9rtsl+RHHF/p94axIB3zCwHdCSxTLCZA
 oYoHRNNggTKsOOe0oz55xZMG/MRuBNBvnjK9nDGD1ZpxGBYaAWcNgh0pVkDnqwIpG7ec
 9ncd25Fif439sMxRMrGZG7G4gKkQAuQWAz9shhG8uzZEYZ1NHRrq0sbW3S1aHytK6uVo
 vE8hyNiu00PIvVFaXW9SmrtKKYTC9pi2Nh/TqioxY2cDru7V866HaV25+9Qb1XdiZmEL
 5e1Q==
X-Gm-Message-State: APjAAAWs6Sr8HA7NbvXBdpsA9062U4Kne+TDbIvP6C17AqgUVHoRF6HV
 FpkzUlODVE4qD9Tpmlk7adi3bx+i8po=
X-Google-Smtp-Source: APXvYqyPYnwLX0ztKWCWcp147LlXxzyXXV46TIFC3kuUqPVizYEW02nQ+IlnuIyUYuZm6hhZO6qE9Q==
X-Received: by 2002:a05:600c:2909:: with SMTP id
 i9mr1866481wmd.39.1572621626378; 
 Fri, 01 Nov 2019 08:20:26 -0700 (PDT)
Received: from localhost.localdomain ([2a03:b0c0:1:e0::503:c001])
 by smtp.gmail.com with ESMTPSA id c137sm4872163wme.37.2019.11.01.08.20.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 08:20:25 -0700 (PDT)
From: Julien Grall <julien@xen.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] docs/arm64: cpu-feature-registers: Rewrite bitfields that
 don't follow [e, s]
Date: Fri,  1 Nov 2019 15:20:22 +0000
Message-Id: <20191101152022.8853-1-julien@xen.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_082028_459661_D1302C7A 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (julien.grall.oss[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
Cc: catalin.marinas@arm.com, Julien Grall <julien.grall@arm.com>,
 will@kernel.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Julien Grall <julien.grall@arm.com>

Commit "docs/arm64: cpu-feature-registers: Documents missing visible
fields" added bitfiels following the convention [s, e]. However, the
documentation is following [s, e] and so does the Arm ARM.

Rewrite the bitfields to match the format [e, s].

Signed-off-by: Julien Grall <julien.grall@arm.com>

---

This is based on the branch for-next/elf-hwcap-docs from the tree
arm64/linux.git.
---
 Documentation/arm64/cpu-feature-registers.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
index ffcf4e2c71ef..7c40e4581bae 100644
--- a/Documentation/arm64/cpu-feature-registers.rst
+++ b/Documentation/arm64/cpu-feature-registers.rst
@@ -193,9 +193,9 @@ infrastructure:
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
      +------------------------------+---------+---------+
-     | SB                           | [36-39] |    y    |
+     | SB                           | [39-36] |    y    |
      +------------------------------+---------+---------+
-     | FRINTTS                      | [32-35] |    y    |
+     | FRINTTS                      | [35-32] |    y    |
      +------------------------------+---------+---------+
      | GPI                          | [31-28] |    y    |
      +------------------------------+---------+---------+
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
