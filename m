Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EA7CC30D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 20:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToEKAvq6TdWvfBmGZoiNKuzlpBWwBvvOTYDaYAD24aI=; b=anRGEg63jHAWqq
	bYjQIvoR+jaCQAEKIlc4b7JP9sNjinlyg7bhAnCc2hZEA2uLh0Z7gn0SW6WERu+SoJKw0fX6OHQrl
	bZs0gULxdDnB7gnoUFomyXODDpxeTrCoWd7wy8czmp+zPiXghLHu0xb+4QX1yEFFFu92vTCc9C7w1
	99h+SvdotqnbDMz5fEBIxGkE5prOYZCeRjiAJpV85pWMPJfQwSYFLGXFv3xMdv29yYcmYv1Y/NzlB
	BnRW4V08fvFGD/d9Mc/1g1prMMmcQIKsYILm6y6IzkA8ARhTvCXL1PSwT2mINdpvtyv8F1uCudaei
	2AWWSPBuf5c2FcgGqv6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSi1-0002if-2x; Fri, 04 Oct 2019 18:53:45 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSgx-00022H-9n
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 18:52:42 +0000
Received: by mail-qt1-x841.google.com with SMTP id f7so9928870qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 11:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=7bTbY9wWGaJLNQvZeFd+1QuaD6S0qAHt0InnROLT/Os=;
 b=KXyyk/U3a3Ake5uIAGMpLeR7Q0kB8Wyp7yvAxZlB92sLZghjiV0BDpeYoj/wbGt1l5
 R3q6AjsnUJ6GLrTbwcmOjdnD4CfHBskZbK8TylbWz6ggsmCqOLReOj7ep29t7/s1EeMG
 KGyTKjJxepS8HkKhwSwFy8BmvkL8yDyMXA17xxIXrqwj6MbaKGqKD2QLoip8jD45Hegf
 4b2L8PDJJB/IHOltXinsIZSRf0VXkxxhBpgSD9OdK0kkj6VLz2CSySr0rYTU/+Mt/vHw
 q3shV+dlqn+vajvIWrEMx872Uhxs3k0r5vXSsN52gKNReVdOlx/YZVeqOKeqmQWibfwZ
 k5KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7bTbY9wWGaJLNQvZeFd+1QuaD6S0qAHt0InnROLT/Os=;
 b=mFgRPfh5v+td8Fxz6+Zb1COue7z4GnhxapoFYSXuNFpTBZ2KEBQ42oPhPuNpHdBUWz
 YajzZz578aN0wwGxceVrht+BkRg9yyrjmxTk3t3iTR+VidXh2Z1g+2fb4Hp7F2GgQr0S
 IGGhk+4DmhnUlSEne+q7rbmRMri2UCpwxl1oRxTgv0xq+N8WjNcaTBg2UIOLGvc5S8r/
 p7wnIZMHGm9+UM6GjIrxlpLOeWkKAlMmWkrnFWZZz6btNH1uIRuFWR2CrcROe6ZXvO7o
 69R5B/Fzs7tEryfUR0vZqDTNdrsO/hdk/1uzxVGbDBZVZ3k3fq0da8WrLM87aeS0KoKi
 yIDA==
X-Gm-Message-State: APjAAAUZOqV3fEos1ZJQVoKCs+GtU4SYtNEGwQoFHCEXgkyk+NcX8YQq
 6E/TEpUWoCLF4sDXmvnUqN8yXg==
X-Google-Smtp-Source: APXvYqyThUzTiS+dwSZXvbUyY+dR397sqlmVrBPBWuKY07TnEBwjhKxQlTHaFo2sBRO2G5DpOma8FQ==
X-Received: by 2002:ac8:3061:: with SMTP id g30mr17524356qte.46.1570215158266; 
 Fri, 04 Oct 2019 11:52:38 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id p77sm4042514qke.6.2019.10.04.11.52.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:52:37 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v6 01/17] kexec: quiet down kexec reboot
Date: Fri,  4 Oct 2019 14:52:18 -0400
Message-Id: <20191004185234.31471-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004185234.31471-1-pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_115239_362264_7D78CD84 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
Acked-by: Dave Young <dyoung@redhat.com>
---
 kernel/kexec_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 15d70a90b50d..f7ae04b8de6f 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -1171,7 +1171,7 @@ int kernel_kexec(void)
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
