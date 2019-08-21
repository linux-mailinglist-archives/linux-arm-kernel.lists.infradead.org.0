Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE90982DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6A0SD/5QBOe0BjG+avL/iXzdPANqEI1KO1svsvQDzfM=; b=U4DILin2x3lFk8
	Eq7okkp87wMtp97hVgBn+9v7PJrDOVJhdbs0HVHyQ8XUbsVIiCXI6/k1LtjJNV6egsMWdiTLQ63d+
	KjwND/Q90Uwe5SxfltTJiQ9N9pPRa3KMVHY3nhplxYqkmQKob8QhSqwxUq6V2rSZtY129w32XTcOq
	4eGdpbyKgLQVh4lVPt1vq3DetIE5mUXF/Ctk9rJAG8RiqbSG1aGHJjXq3nFClbq5wUMrkN6sDiV/L
	Ogz659US4jn0JXkZZATf/7RYLNm3cdE3kTxyaEa9S+UmfwnJ9wlSF2+yZo2+CfR/K+IDlL/lvWJFb
	vAaSGjjrVP4Nvt/GMfrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VPD-00041K-JA; Wed, 21 Aug 2019 18:32:23 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VOz-0003xf-5f
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:32:10 +0000
Received: by mail-qk1-x741.google.com with SMTP id r21so2745095qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 11:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KZlSM1+HYlx5AabYJySSHWoh4S6JQNg+E/eloF1WuIo=;
 b=EAK9aWCollpH9xmdUtaiVBS6Ul8Grpce2v4a96pxnxYp2IBX8da/99b/wGOvABGtwu
 YGsbf5Rf/sZVH8SNTtDy0XpnvFV5C9IC9WYVDSpYpMbwVzm7ArMz9PW52kFErZTTXCsL
 WTyBvzhkpiiRAQw8xhZCkbesGdEv3+KaY8OAZ6E7bzieO3RZcGtLLT0Pz48c7wl8J3Zh
 tOImm/Vrp/7Gj+QIPxNlt0oaaMZyfLcgYRPH40jynE+MITM4+xI0XYdvt3v88kfQeRO6
 7KdjAnbtkEeJP3UjA9HD358p6hLYn9PO5svHWmEYjnXYtYqKE97d1nQSshP1W53Wo27L
 IM5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KZlSM1+HYlx5AabYJySSHWoh4S6JQNg+E/eloF1WuIo=;
 b=TUDWP+ZkCmzZsmDI2kRohM7nlWzhD3F/B1C/5zqd3SesMchXZFcCG1pYP2qm1KsQvu
 Z2Ib845O0U1OeAi2cvBPp+xuZ9IPmklKjHzGtRRjH+T558I97781M0wNYLwIXi+Hkara
 A8usq9Q/mtsTK8mI5OzHVjnQGhn/6v4+jT+oCEdRBTSBqV5Sl3dDYHPwi2j6uMvknxBb
 dcy1+HhL9keNO1AvGANeqGQzpVWfb9/QJTSBNyqKdGIzn0L4VPyWEE0/EzNCJy2GBLT0
 g9N4xE1CYg13qBRklA+82Ak+g3sy/L1+yxAeG7nCzcGx3GUHBlw0s/hvCCun4nVIkl7e
 gKBw==
X-Gm-Message-State: APjAAAXR6nE2qg50mEgQAV4PXAo7JAEZTa7wRH1u+0Ic4dWNv3K2kvll
 ClrXGs2b+i86SmSsdvTA80wLQQ==
X-Google-Smtp-Source: APXvYqxa+1nBillHVTD1wUyey0q2i0nGT/ot1gRBODj0C6eDdzfP5MOz2GYbi9GTD87ibQ+3R7pbkA==
X-Received: by 2002:a05:620a:4d4:: with SMTP id
 20mr30837041qks.95.1566412327681; 
 Wed, 21 Aug 2019 11:32:07 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q13sm10443332qkm.120.2019.08.21.11.32.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:32:07 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v3 01/17] kexec: quiet down kexec reboot
Date: Wed, 21 Aug 2019 14:31:48 -0400
Message-Id: <20190821183204.23576-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190821183204.23576-1-pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113209_395997_938CFCC1 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here is a regular kexec command sequence and output:
=====
$ kexec --reuse-cmdline -i --load Image
$ kexec -e
[  161.342002] kexec_core: Starting new kernel

Welcome to Buildroot
buildroot login:
=====

Even when "quiet" kernel parameter is specified, "kexec_core: Starting
new kernel" is printed.

This message has  KERN_EMERG level, but there is no emergency, it is a
normal kexec operation, so quiet it down to appropriate KERN_NOTICE.

Machines that have slow console baud rate benefit from less output.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: Simon Horman <horms@verge.net.au>
---
 kernel/kexec_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index d5870723b8ad..2c5b72863b7b 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -1169,7 +1169,7 @@ int kernel_kexec(void)
 		 * CPU hotplug again; so re-enable it here.
 		 */
 		cpu_hotplug_enable();
-		pr_emerg("Starting new kernel\n");
+		pr_notice("Starting new kernel\n");
 		machine_shutdown();
 	}
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
