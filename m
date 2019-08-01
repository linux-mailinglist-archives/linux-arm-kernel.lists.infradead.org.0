Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C95F47DEC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:25:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8LxXPMQ1wSJznE/4k58emuiSdHaruNV/0M1hKxpD1M=; b=k5CJZGbxge5RUY
	xOonbZiPcW/3R6bA/JSOG4T1vgGHhXSbh4m13liJEHvQPS/aP3Ku1RIaw9YUiSamTU9aOYovtZICy
	BywwdSWyjap00CQaDxrCAcyVCnkaTDgTtpUE9tB4LHMCEclKbj3xfeR/QiQ+wbJn6ui7FNpgOScnf
	p6krxICuIkQPDkuvtW99iyqJTW+31INLZGk/BUKOsLzpdmvFrUbaDnA6t2+Mp5lFkiwAtey5oTUh6
	SaC6pBqrL8H+qkypdKsO0VPhfJ7D78x2AA1+CaagcnT4ie8AQEBDByBsfZ6TNb1zB9v3P7vvVEKSO
	qC8qTASdHpD+bcq0KXLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCxA-00023b-8O; Thu, 01 Aug 2019 15:25:16 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCwe-0001Ns-Df
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 15:24:49 +0000
Received: by mail-qt1-x843.google.com with SMTP id h18so70636059qtm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 08:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=O8sp7Ivz1alrz3xXygPalicyjdu3OPu+GkykS7h2DZg=;
 b=a+ZyqbSBLkROpB7/yFWxbV2nj0nJ9hDxmgh4mRALQnnKBGnNtH8T0nQUrv8UkRBg/i
 4WX88zAuhNmFQq77+4y9mbgKsQZx5e9p3+RTf3BDWqFUkEYmwTQiOs5gYkKye9q+UvGm
 rrW5X8jWdRpvHieYaQYWoZO7jd7RenFKNBqyDhphJmxbDqSMnHn0S9ugABAV4ojKAMrt
 WMN9dfleQMPrUVx/sM+TkzfX29W6VxjDfELNF5QfxwUOSuvm2EHT5TT4TGH3P1ovyQfC
 Tun6cAtooJ8I/i3nI/74KesTqVzHXq8LFMEI+AszpJeoxYJQBZnZJq8ze4JJS7mFJy2d
 N/jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O8sp7Ivz1alrz3xXygPalicyjdu3OPu+GkykS7h2DZg=;
 b=OWmoKyrRlG3U4n1HNGmfSfmTaoF0BcAyk3PH0bXpTha7aXjnxTDlabkRw+2GjG6bzn
 Pp0dEQKRrriiQjios3Gr9IVusLu09PrSyCfIvTR5+LYzGM3/zsw+AgUFXcyJ9Gt+GTR+
 +VA+odyCtT4lzJQ+CqtdnvxaNwkgxg1KZoYrJB6D4iPsAFMOvJU1dnAnfzZYyRHn9kJ6
 KAdwN7QXbRXXtRLcEGb4rSDbjTkMtha95BJJd7XZNqYviox2J+JpDQXj5Ke8+wSmM3cw
 Ln5Vb8o9Y7fuigVxdLeSlvo7tGXiwaNFLW3Yt/kBwW53u8DNPD6bubcmOU+g47OP0gR2
 umUg==
X-Gm-Message-State: APjAAAUr05iSjedLqDl/L73nFS10f+SMO3RZi85Q63hgYkhQuXkhlvjS
 Sotap2CwV/XuYISGmU8/PUg=
X-Google-Smtp-Source: APXvYqwsbycuknfqaOcSU+c+nk0JiA4YbLBMUrdb658pVMpdB83rdKhorAeSqVY6ZrvSIKM3oMvfcA==
X-Received: by 2002:aed:355d:: with SMTP id b29mr90861643qte.12.1564673083294; 
 Thu, 01 Aug 2019 08:24:43 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o5sm30899952qkf.10.2019.08.01.08.24.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 08:24:42 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v1 1/8] kexec: quiet down kexec reboot
Date: Thu,  1 Aug 2019 11:24:32 -0400
Message-Id: <20190801152439.11363-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801152439.11363-1-pasha.tatashin@soleen.com>
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_082444_457631_59BB18C8 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
