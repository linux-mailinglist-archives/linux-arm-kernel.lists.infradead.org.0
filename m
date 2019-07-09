Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF1C63ABB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GqIBGc93sbAh0Ox57zutXlVh/vqT8QDSNNZxBNGAX64=; b=aKDxDFFHUjgCE0
	uGLvRboB2usy3zZsxhod8kNYqEy92xVAfwkFJXeVrKpVO3dTjeUENAtqixiBWcTjEglP8kHCiev0T
	L53cYWMB6SGXkz/Wia65VrxPUZkCTtsc1R4DIuGKNjVVpAAHBhwJgeTHPyGusnugGghFgMUGtdzAU
	/yI15vw//6Oa/DCu1Gf74W9boM4gzTb/CjsjPgkVLB75inPgUj564lISH/RSKhCHByCzk/E9DJHir
	K1DwKVj8wv1JOuZIOwG2RedI8ve6NNzC0tJ7dcQfRZn+wQOyf9WRvi0fj+n4ReoRv2ZdBy1M4VDUn
	daJm9VrCr8xSvjvv5nhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkukI-0000k1-Hx; Tue, 09 Jul 2019 18:21:42 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuiz-0008CD-62
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:20:23 +0000
Received: by mail-qt1-x844.google.com with SMTP id l9so14352680qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 11:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=vxweX2U2+Z856CcsxOG088urab10u3d6VzbrdBwUe6o=;
 b=fROPV6xgBSJhQ01nOcdaPocwDpq/tgqFMzKuQ1aRxe0BdHGYSbE7Mx44Vo+unqXPkG
 2iQxFwNOSDAL+6xrRHgsE+5oOTpNUcaTtUnWzBQnoArvLe1SZxJuhHKRqH6oJXqWWaJp
 mYmJUMNp0hMmxuR5+lUvmF10SjSgGCn+X92RBQXE9trtp4e1hWtwVG70nLYhqgZMEneU
 8FmJGF1qVgPlKmCQFFhG0OpQiGa2Sk5FjgCfMZI5LZbu1a0BxKAkQuR29zt1kcT31VdG
 IC8BDEXiFHBmdYydbK6a2ULNeXX78BJpyz62xQihfh1Y656wUkRhF7ksMuPF83a9UM3a
 2t6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vxweX2U2+Z856CcsxOG088urab10u3d6VzbrdBwUe6o=;
 b=GneA+dEfHrU01CW4EvL+uASJ6VW6Fd32j5CdQuM10pLRwK5jzsOyHCwRjC/W/ZFUW9
 BSDB06rKhMclYHPdDGJqypUfTxtm3Ba6MuH6SLYc3Fu+P4wbIT/RjxeXPRUfw2+71qIc
 Koy/VKSPp/4c7wRRfEAkjWe1+6FqsCScNugcyW1jFqXi42IYlmwQ16veR8JvqwvNTvOv
 cT1ixmgztZ51v2ycLOjoC1uX0SXGen5vetpqeZ8+WDagdm04BXIu1SRpxLK2Vn/KFFsi
 cmoD4CqPyjp66bov8wr2HAox9jLu8EFIdalYeuYGBx7ujzMhWHeDNQltVax+8BwlXcYX
 g5UA==
X-Gm-Message-State: APjAAAVy14zQadAv7/rR9JpWyY1oo1YqrrUe3sN+VoehqvmyCN/1+3nD
 JOdJ8EeTj5ZjDO5uNjqukuyNCQ==
X-Google-Smtp-Source: APXvYqwpag+IBIQrGBDcCLRZVOWUUlgFjtMGgOzroSxhP3WwPBpgsirFrCOkxvY0XxfGhw6CZgULUQ==
X-Received: by 2002:ac8:1106:: with SMTP id c6mr18604187qtj.332.1562696420496; 
 Tue, 09 Jul 2019 11:20:20 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id k123sm9113056qkf.13.2019.07.09.11.20.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 11:20:19 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [v2 3/5] kexec: export common crashkernel/kexeckernel parser
Date: Tue,  9 Jul 2019 14:20:12 -0400
Message-Id: <20190709182014.16052-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190709182014.16052-1-pasha.tatashin@soleen.com>
References: <20190709182014.16052-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_112021_255622_2974F361 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

To reserve memory for normal kexec reboot, the new parameter:
kexeckernel=size[KMG][@offset[KMG]] is used. Its syntax is the
same as craskernel=, therefore they can use the same function to
parse parameter settings.

Rename: __parse_crashkernel() to parse_crash_or_kexec_kernel(), and
make it public.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 .../admin-guide/kernel-parameters.txt         |  7 +++++
 include/linux/crash_core.h                    |  6 +++++
 kernel/crash_core.c                           | 27 ++++++++++---------
 3 files changed, 28 insertions(+), 12 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 5c7a0f5b0a2f..0f5ce665c7f5 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -739,6 +739,13 @@
 			It will be ignored when crashkernel=X,high is not used
 			or memory reserved is below 4G.
 
+	kexeckernel=size[KMG][@offset[KMG]]
+			[KNL] Using kexec, Linux can reboot to a new kernel.
+			This parameter reserves the physical memory region
+			[offset, offset + size] for that kernel. If '@offset' is
+			omitted, then a suitable offset is selected
+			automatically.
+
 	cryptomgr.notests
 			[KNL] Disable crypto self-tests
 
diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
index 525510a9f965..e90789ff0bec 100644
--- a/include/linux/crash_core.h
+++ b/include/linux/crash_core.h
@@ -74,5 +74,11 @@ int parse_crashkernel_high(char *cmdline, unsigned long long system_ram,
 		unsigned long long *crash_size, unsigned long long *crash_base);
 int parse_crashkernel_low(char *cmdline, unsigned long long system_ram,
 		unsigned long long *crash_size, unsigned long long *crash_base);
+int parse_crash_or_kexec_kernel(char *cmdline,
+				unsigned long long system_ram,
+				unsigned long long *crash_size,
+				unsigned long long *crash_base,
+				const char *name,
+				const char *suffix);
 
 #endif /* LINUX_CRASH_CORE_H */
diff --git a/kernel/crash_core.c b/kernel/crash_core.c
index 9f1557b98468..11e0f9837a32 100644
--- a/kernel/crash_core.c
+++ b/kernel/crash_core.c
@@ -224,12 +224,12 @@ static __init char *get_last_crashkernel(char *cmdline,
 	return ck_cmdline;
 }
 
-static int __init __parse_crashkernel(char *cmdline,
-			     unsigned long long system_ram,
-			     unsigned long long *crash_size,
-			     unsigned long long *crash_base,
-			     const char *name,
-			     const char *suffix)
+int __init parse_crash_or_kexec_kernel(char *cmdline,
+				       unsigned long long system_ram,
+				       unsigned long long *crash_size,
+				       unsigned long long *crash_base,
+				       const char *name,
+				       const char *suffix)
 {
 	char	*first_colon, *first_space;
 	char	*ck_cmdline;
@@ -270,8 +270,9 @@ int __init parse_crashkernel(char *cmdline,
 			     unsigned long long *crash_size,
 			     unsigned long long *crash_base)
 {
-	return __parse_crashkernel(cmdline, system_ram, crash_size, crash_base,
-					"crashkernel=", NULL);
+	return parse_crash_or_kexec_kernel(cmdline, system_ram, crash_size,
+					   crash_base, "crashkernel=",
+					   NULL);
 }
 
 int __init parse_crashkernel_high(char *cmdline,
@@ -279,8 +280,9 @@ int __init parse_crashkernel_high(char *cmdline,
 			     unsigned long long *crash_size,
 			     unsigned long long *crash_base)
 {
-	return __parse_crashkernel(cmdline, system_ram, crash_size, crash_base,
-				"crashkernel=", suffix_tbl[SUFFIX_HIGH]);
+	return parse_crash_or_kexec_kernel(cmdline, system_ram, crash_size,
+					   crash_base, "crashkernel=",
+					   suffix_tbl[SUFFIX_HIGH]);
 }
 
 int __init parse_crashkernel_low(char *cmdline,
@@ -288,8 +290,9 @@ int __init parse_crashkernel_low(char *cmdline,
 			     unsigned long long *crash_size,
 			     unsigned long long *crash_base)
 {
-	return __parse_crashkernel(cmdline, system_ram, crash_size, crash_base,
-				"crashkernel=", suffix_tbl[SUFFIX_LOW]);
+	return parse_crash_or_kexec_kernel(cmdline, system_ram, crash_size,
+					   crash_base, "crashkernel=",
+					   suffix_tbl[SUFFIX_LOW]);
 }
 
 Elf_Word *append_elf_note(Elf_Word *buf, char *name, unsigned int type,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
