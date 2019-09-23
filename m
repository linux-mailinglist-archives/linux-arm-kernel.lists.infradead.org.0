Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD35BBD1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 22:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C79fV+DgNkvPqVI+xy8uhbAn2pyNJ/uXeaFJYbaFc4M=; b=gjhmvFM7Uok5du
	s8OLRYBTYrnemD8Tg7efIjll3vYkqcCT3AK/JMduDMvcDp40sW/p2vAWVza6JoO6LKwguzGmF0We1
	2rYoimUgaT70Rg1dOacTrFnu6KcY+Ss2HsBe7Gc6rmkHfBjkPZx255cSdbiy/q1tQD+87XdKMdtov
	IqQGv62H/tzGzRLT1QLeZd0CYdJcHMWmMnHfEL21M18cb+lw/odRYdBG9rUfKtYbQzNDf69Lr8DlN
	iBwC5CWADxd262E0xnNpOCagXmztp4I4Ws7Jfe7Mg5CjDASEAN3kSlgckV6w3O3WujMvJl1xAkkcd
	GsT/iNareRUXBVAji1Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCV6o-0007SG-Q0; Mon, 23 Sep 2019 20:38:59 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCV3I-00047E-JS
 for linux-arm-kernel@bombadil.infradead.org; Mon, 23 Sep 2019 20:35:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kCOV/SKGyCS/idoYOjNn3DaQRL2Ie2fUru8T4/v0tiY=; b=Pt3n7L8liIrfHxceFzFbUA6VNc
 cG0QYdrkuKjpe8S89vfyq1KgPgD2uNhDaXREALwz2RAGIRUizhrzG7JL9BEkB7ilD1j++AAbhbFMt
 jGrAnFGhXtfC/KVMtT7tO6F1p5gZwFIbFC88PdH8rHWXHl0eiJO9sZP2B6bNyi1Wt/6SSnnJ65ibs
 +5uR/+VFz/eW2uPoC2hqapObZepIm4vfrJUZN18+3ppZUqNJrCrNs0GupHMi2MRURR3DwFun8QdX4
 DgovLqs//evbc0qfh27/tK49giJqaJG/wNeA5Y5FfQzY6pzeuYYPYz8YgfZkbd96JmlMHUnW94uRW
 sbp4uOXw==;
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCV3G-0006m5-08
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 20:35:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id q12so9823059pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 13:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=kCOV/SKGyCS/idoYOjNn3DaQRL2Ie2fUru8T4/v0tiY=;
 b=hECEW80OowucfYu/52sXrIDun1tK80j3pQv+b2fbBgabumiVdSJyvqrVXtrioJldNd
 urMLV5iHCV3KA3E/4qiZfwr6Z9WIteQzsU21H1akcamSGkDklOdO0o22VbxIYwDU4OII
 YXT7LW+oVJg2xvLIWYmceBLLXADhdoVm/He4N2R4NnICbF5ZpRvuBYeCnVE7KlBMmSy8
 sX4PsszBAesbNLnSIu9ancRbbrLfOiQySP1b1fnOWoPRtK4xURhLl+EDRFi/KjeM7c7i
 Rl8+8rDh0FeE7pU0wB4hm2pFfl4L7VoTGrmZJoK4y/ViGTtjNcJFT+ZwkhsfY4SBhnn5
 Phvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kCOV/SKGyCS/idoYOjNn3DaQRL2Ie2fUru8T4/v0tiY=;
 b=iUY83FdDZEiAMabj2pYrqp7ChErE4Tu+k0apffi6xsAb0Tu+l+1wnsjXsBPut1q45t
 fbf3cWFXaES8BkVkPMtuq4UEtLap+hQUdlFSLONBGrb9+CjcQzcjTSWaksnuY4ibxN7n
 CePxWQ3ud2fAJe7exKtXldZIo+eZX8t0qMrnjZEFpxvoMWV15nSdUPMxSs2lCVkWAPrL
 9gz4GAmVWMyLIWCf5wnkQB5RmIAz9vpEy6no+B/8fHXNxSnLUFdDSpnRrgQV1xFJbWuN
 +1JRmo+Y8CPjJedRorwwK/YMc1bedBXZh7j0dCpTcMh/fP/QjSimhJzO2S8PMyjsxngz
 5Arw==
X-Gm-Message-State: APjAAAXlzkUlA4VJTz3muH50Wz4CfqGkUxfuuVjhuIIDWhHUllBCh8Ht
 qvEJf47yXJy6qz7XPnSOxy5qgg==
X-Google-Smtp-Source: APXvYqyh0pHM+T1vgCjrUaqwaXzl27erGlVnBJX3ECpzLMx0ZfHUDTjGJiel8N46eTWPvVx5gcFZhA==
X-Received: by 2002:aa7:953c:: with SMTP id c28mr1610359pfp.106.1569270911771; 
 Mon, 23 Sep 2019 13:35:11 -0700 (PDT)
Received: from xakep.corp.microsoft.com (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id n29sm12798676pgm.4.2019.09.23.13.35.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 13:35:11 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v5 13/17] kexec: add machine_kexec_post_load()
Date: Mon, 23 Sep 2019 16:34:23 -0400
Message-Id: <20190923203427.294286-14-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923203427.294286-1-pasha.tatashin@soleen.com>
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

It is the same as machine_kexec_prepare(), but is called after segments are
loaded. This way, can do processing work with already loaded relocation
segments. One such example is arm64: it has to have segments loaded in
order to create a page table, but it cannot do it during kexec time,
because at that time allocations won't be possible anymore.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 kernel/kexec.c          | 4 ++++
 kernel/kexec_core.c     | 6 ++++++
 kernel/kexec_file.c     | 4 ++++
 kernel/kexec_internal.h | 2 ++
 4 files changed, 16 insertions(+)

diff --git a/kernel/kexec.c b/kernel/kexec.c
index 1b018f1a6e0d..27b71dc7b35a 100644
--- a/kernel/kexec.c
+++ b/kernel/kexec.c
@@ -159,6 +159,10 @@ static int do_kexec_load(unsigned long entry, unsigned long nr_segments,
 
 	kimage_terminate(image);
 
+	ret = machine_kexec_post_load(image);
+	if (ret)
+		goto out;
+
 	/* Install the new kernel and uninstall the old */
 	image = xchg(dest_image, image);
 
diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 2c5b72863b7b..8360645d1bbe 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -587,6 +587,12 @@ static void kimage_free_extra_pages(struct kimage *image)
 	kimage_free_page_list(&image->unusable_pages);
 
 }
+
+int __weak machine_kexec_post_load(struct kimage *image)
+{
+	return 0;
+}
+
 void kimage_terminate(struct kimage *image)
 {
 	if (*image->entry != 0)
diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index b8cc032d5620..cb531d768114 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -391,6 +391,10 @@ SYSCALL_DEFINE5(kexec_file_load, int, kernel_fd, int, initrd_fd,
 
 	kimage_terminate(image);
 
+	ret = machine_kexec_post_load(image);
+	if (ret)
+		goto out;
+
 	/*
 	 * Free up any temporary buffers allocated which are not needed
 	 * after image has been loaded
diff --git a/kernel/kexec_internal.h b/kernel/kexec_internal.h
index 48aaf2ac0d0d..39d30ccf8d87 100644
--- a/kernel/kexec_internal.h
+++ b/kernel/kexec_internal.h
@@ -13,6 +13,8 @@ void kimage_terminate(struct kimage *image);
 int kimage_is_destination_range(struct kimage *image,
 				unsigned long start, unsigned long end);
 
+int machine_kexec_post_load(struct kimage *image);
+
 extern struct mutex kexec_mutex;
 
 #ifdef CONFIG_KEXEC_FILE
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
