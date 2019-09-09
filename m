Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0689EADE85
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6A0SD/5QBOe0BjG+avL/iXzdPANqEI1KO1svsvQDzfM=; b=lcGPz8/rsd+Hpb
	5tR+CwT6MKh27mQL3oNZH1oHAztTqOnSx4TUYQBWH80vKKaE9f93jVBxsZbBopsiaQDDp7SmYlwA5
	YHyzSfrAMJhM3qVLUUrdpQ62yFOiTzb0BQXyWSN73HHGLqdZOh3ZS4VAigFDh6A7dGtoYdxL/LPcD
	0dttwQtNOPWBeRNVAGOrDzydGpmsHFq/3OUPAfSTzYlCB9zEile4Q+bX4qJ1EOeiwcd/3LEFFJyx/
	n5DNLkyQlW+Mg5oYFXetByCsMkvzkPacAeVGFG3WLqPz+chuNLox+XSwRtsaDlqdTvTc4suAlSPlD
	G9VkEI7y1YA3iO+XBwlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OAQ-0000x4-Dh; Mon, 09 Sep 2019 18:13:34 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9K-0008H2-HF
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:12:29 +0000
Received: by mail-qt1-x844.google.com with SMTP id l22so17243628qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KZlSM1+HYlx5AabYJySSHWoh4S6JQNg+E/eloF1WuIo=;
 b=GJFu06c6b4ZEhDQxac7Ve4vAwFHNQhisIoJMubb/W8uwe/MrKpZAsrxNQcd4Jt7g5J
 e4MiEhIHIZFc0CSkOjzAFJt5WxtVG7fjoQzEZfBjGiK4PnOzAQqYggmgip0rS3UjFkby
 IEn2kXuW+ZA/7BhqbRDUv0NteV9mBcLQei1106HP4bWY/NH2IzNUdo8DGHHYDUfIiLFz
 8gRB2ZS9V/MExaDThngqFosNAd/W335oiclHxgCS64sgHqkapgnUdv1u/sH0MsWHKKTe
 cC+q7016fokkyS14WHlyKW1VcDfYEHq13tZzXK/nNPIn+Cz4yS65A1M2qPE1C3bOZZf1
 4gFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KZlSM1+HYlx5AabYJySSHWoh4S6JQNg+E/eloF1WuIo=;
 b=BhhYPmryW3QwUyElrf3aI47sPFblmbj+9k9APwwg7297e9Od5+u5XmSeOu3SZiloiH
 0DnakDGLI3dhsqet6PySvTovxuvEffN2ApEsR0I+152E3uLD2EhSjjVt0FrjLpJarIOf
 FnUTZ9UbH+9+MjzmM1S+KRRsScy4QL4udPYpAXeVcae9a2Z63pqAXlX6lkmGuM5QyQxn
 SXKq5QDxdqU13K7wNFvYAwkAhF6JWbbJBxU5k6FyJfFYDvR8d48Y2KwoonHUHSljef5j
 VOIqpbvKG2YDB5Q3BXSuKmuYkQ+d74cLQv7R4ggMX1y5c2jLAnDST3js6iAHAS7bF4Xo
 qroQ==
X-Gm-Message-State: APjAAAXNGubENHr/Yf3mg7qE+3JPv7cGz4NNPKuNLTFcNPwHnY39lhRV
 FFkHQEpr79RUmvGOkPtJ+Vxb4g==
X-Google-Smtp-Source: APXvYqwsApv+H9SarYLtc162JJu+MtiHP3Mrfk3gX2yiHqY711FHTOWynPIJ6PSuaanROg7YMihraA==
X-Received: by 2002:a0c:c15d:: with SMTP id i29mr15399213qvh.5.1568052745416; 
 Mon, 09 Sep 2019 11:12:25 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:24 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 01/17] kexec: quiet down kexec reboot
Date: Mon,  9 Sep 2019 14:12:05 -0400
Message-Id: <20190909181221.309510-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111226_575490_C11FB949 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
