Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D57BBCE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 22:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6A0SD/5QBOe0BjG+avL/iXzdPANqEI1KO1svsvQDzfM=; b=fT8qM5MzDk/vkK
	Y2nINbPLxNgXom25yXhwR8r7JUzD6fsK2nktlsZVxMSsuOg6CgTsefgHYv+12tc3erzevtvWEhFVn
	lG1sqbwbobw5x2vU2dnzRKnkEFogPpPa6bflGr6+tkpdCvmyQQekEWokX2nVu073ims7YfiK1+NC2
	FWtJbfaybi0VzZTDdsMjt0PB5RPv+8l2aMEVT67qavbWXwW9WMsdY8wiyiAzEtIyaWI5JgLZi/Cfe
	x82yElSbU5769S2Rvp8PESftOrxVb7OOUMnAsp78U8rHp+4TTrVQHFoImiweqgwTAdVYepuAkPgeX
	A5RVirbD96NkBArKUKZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCV34-0002IP-BW; Mon, 23 Sep 2019 20:35:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCV2e-0002Cx-6W
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 20:34:41 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so9863915pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 13:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KZlSM1+HYlx5AabYJySSHWoh4S6JQNg+E/eloF1WuIo=;
 b=g7DE7rX2uCp8tfoUWCXCLl034/utkvLPBdVIKc8+powWUExFWSItdszP8Cm/yR3bQA
 INyWFFWB57bbdD2iHNW1/fZENA+1VBlqYaMxRwKUwsr13wORyC7Njz/SoqYlIMCXWndy
 +2lPVOCdcRmjy3opEnn14+U9nd/vOCxsE7gGnmOczmK8wF6uSKK9ePWHSOSG4IdNhWL4
 i6B0jQ3c/Hc+3IQ4XVvxJF0T0VSgEARneLSQ8kgrBRVlnEy0OVPrm3FAAWvjOBu96um6
 TJyjAuN1XqnAdwdM/bythEqz6HBUc9ctqw1AsAPVwpa9SaVxY5Z1wKyBAHCKwQ0/s4aD
 R+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KZlSM1+HYlx5AabYJySSHWoh4S6JQNg+E/eloF1WuIo=;
 b=CIG9Rm0ln5kGkd1U46zfQtZ8rLIhlu2BM7SYdOsXQbL0ODJrnTXEA9bk/EGcAtWEOS
 iGiNLUSG7AvgfqVSydIIZ7TyqUkTDDWhYaKLTCQFyD0VRSWjX1nkRGBG8kvyA1l33v3h
 uFyJy78jwwwHJhjpqayDPXRexBoJpwAImZIUiA5ohRG7cno3TNfuNWmb/O5IbY2vPpEC
 lFWSjsDvuEXacnLTExQULGr5pl28ro2cbu8a9yIwS3OnwrQJEazhdfxk6f00ndg3x1QH
 ufCBI8tlIoxTMSeX9Ro+voZgh8UpBHSSVZwA0FjkloAo2inzUy9GZzoHdyakbNtv7cPO
 xZyw==
X-Gm-Message-State: APjAAAWP/fJsnVS959zo7TEhfOLxZBhI59ZJ2Bxf7vTCUrwvLjnC7HR2
 5EBbOgcoizJYFwu7mk1mR19H/A==
X-Google-Smtp-Source: APXvYqy145da1OUiQVlRDiBy/OIzvCU32t+7Zhz/DSbXEWYlU+3nmVsNL564Bq6FlkTk3IW8uBpmsA==
X-Received: by 2002:a63:c947:: with SMTP id y7mr1755459pgg.345.1569270879589; 
 Mon, 23 Sep 2019 13:34:39 -0700 (PDT)
Received: from xakep.corp.microsoft.com (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id n29sm12798676pgm.4.2019.09.23.13.34.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 13:34:38 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v5 01/17] kexec: quiet down kexec reboot
Date: Mon, 23 Sep 2019 16:34:11 -0400
Message-Id: <20190923203427.294286-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923203427.294286-1-pasha.tatashin@soleen.com>
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_133440_237590_E1DEC2A8 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
