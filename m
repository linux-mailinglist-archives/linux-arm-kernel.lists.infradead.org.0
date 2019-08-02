Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862097FD98
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 17:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pZmQJTTle5I1VFUKqp+MQHLQi6OiPlLLsCPucyi5CGc=; b=q4T
	hJJRyXLBll8FI0jvvoWjpRk6HIghMGOuNwbp5SS0GIDTGFn8tjBYEWdpO5Mi/tAuRcP5v+BBTVFRn
	xDxkz+q42uS9Sdyrp6OEaexuT9OVoqYTZajdlAXNTOb2GT2Wp8+I0pShx+TM2T+w55Ociqb7Ijh+x
	UtratQXjVVNau73y7poNPwSYIqiredMEpMKMrEbf+ObyuWuSzlrY+OnBsIfBtrPIP2BATySyHs/oT
	VpfibdqkRjatRrv2G+GFwZ0GHs6djlljq0pEwN41QttjBBNJkW0EwDrogoYtoy0eOVZQGQ/oKx7ph
	rhXgwCkkK81mWIU3r3DXzEgirPdl0xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htZXz-0002sQ-6y; Fri, 02 Aug 2019 15:32:47 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htZXs-0002s1-PV
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 15:32:42 +0000
Received: by mail-qt1-x842.google.com with SMTP id h18so74312909qtm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 08:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=84FAN5plY18NUAIPKsxSSrpBaMCaqBqY01+bJKwhcus=;
 b=UwVEGGkq3hYSS4o3zIyXvt/N40Oo/xnbMug6Y4fvBDh2ZjgaXUand6OLNubfLv+8Jc
 sKCH8BX7uoJaZjjFlCln2lvu/kuO1bMEiaXTogDR32mzdVqc2OcLizGR/2jiQG0zuEtP
 7B+je13L4NoVXaqpdiHqdyadTvY0BjGCSLdr7DCswg44OEAVr3xiN8ap3MLRDZSNvZVV
 ezv/cu/IxbwtoOIjrN6u9UQu+T92sf5Q6SYY+1sOyePhN+uL+4C8C5XN/Bt33x6B3rGx
 viQBttM3ePJeOOz+Dl1snhMebemAY024is0N4w7FOoA/L8ITABK/wmAbqGLHG8qALqTC
 fCqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=84FAN5plY18NUAIPKsxSSrpBaMCaqBqY01+bJKwhcus=;
 b=akJWSRg7TQ0OwUzRHn3nDP4NYY5vGJKrMs49spEh1cj0rnquF4NmiTKQRKVdxqggNv
 3+MrjoGDdzNlb8wyo8mqcG+qQNQ8celbRAVcxYpyznEhfmUNPe2x95ZUbKs5a5TrRdi8
 Wh+gNW5QMSdrFUa24iQm37ze62n7HWsI33wefwl36hZ7MW6SO2loIDv79hQFsi7Ck3LF
 039uWZiw7A3Be03KQY0xs4xjB9mV/kgGYwwv9RE1hnx3Gt6WrR6BtQLiMZuqP8IjTDEF
 fZ7YoyEjIs+lJ2aJSIvjsNw7IP0LF0jyxTmB406N2cLAz3lAxzUEOi7tcLPh48tthPc0
 UJ2w==
X-Gm-Message-State: APjAAAXKZMR3LI+eM64mukacLK5SnMjvUsPXJb2/W7PkQyS2/QVXuhL9
 O3CKEGBvzWqyIew9JpQp+/pENg==
X-Google-Smtp-Source: APXvYqzzg0WWHlFjmv1i2xNZKSEVRDeXkteRnpzhC8HIE2j6yEBACm4hIhub82tVhp/5Cgn8qxBHBg==
X-Received: by 2002:a0c:8774:: with SMTP id 49mr94879794qvi.223.1564759959248; 
 Fri, 02 Aug 2019 08:32:39 -0700 (PDT)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id z12sm30605271qkf.20.2019.08.02.08.32.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 08:32:38 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH] arm64/cache: fix -Woverride-init compiler warnings
Date: Fri,  2 Aug 2019 11:32:24 -0400
Message-Id: <1564759944-2197-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_083240_857396_B9D97BC6 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Qian Cai <cai@lca.pw>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
VIVT I-caches") introduced some compiation warnings from GCC,

arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
overwritten [-Woverride-init]
  [ICACHE_POLICY_VIPT]  = "VIPT",
                          ^~~~~~
arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
'icache_policy_str[2]')
arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
overwritten [-Woverride-init]
  [ICACHE_POLICY_PIPT]  = "PIPT",
                          ^~~~~~
arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
'icache_policy_str[3]')
arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
overwritten [-Woverride-init]
  [ICACHE_POLICY_VPIPT]  = "VPIPT",
                           ^~~~~~~
arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
'icache_policy_str[0]')

because it initializes icache_policy_str[0 ... 3] twice.

Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/kernel/cpuinfo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 876055e37352..193b38da8d96 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -34,10 +34,10 @@
 static struct cpuinfo_arm64 boot_cpu_data;
 
 static char *icache_policy_str[] = {
-	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN",
+	[ICACHE_POLICY_VPIPT]		= "VPIPT",
+	[ICACHE_POLICY_VPIPT + 1]	= "RESERVED/UNKNOWN",
 	[ICACHE_POLICY_VIPT]		= "VIPT",
 	[ICACHE_POLICY_PIPT]		= "PIPT",
-	[ICACHE_POLICY_VPIPT]		= "VPIPT",
 };
 
 unsigned long __icache_flags;
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
