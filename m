Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E239490C55
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 04:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5YnGWHHpTpUBzwl8FRAcwT8nipvNXXKQzEbqMTjuCA=; b=aGW3CWCbeSTsDt
	vEgBq3PfKiTRa9BMj9wOneMMIiwCPbnlvGoSV3kPw+awXuo4+qLCZiWlvzRpLTTnmFQoXSmqKEw4F
	STVjAWibiLwnSthCzivJw+PMROQdvcuyQldkrBEQg/Pxup809lormSWNJABxexTJWhmvQIIxJ3Ccq
	pnPP55Hu9Eb6I1WQ/ORXLhP5gx8iaTCSg0FYCRbADAyRleXw5WQBfVQGAYvTW1sKYEXrdLpK1I8fw
	L2BsReIFy7xFYlDBb5fI0nzLwGiet7aSGB1am5Xo41Pukj0FMoeHjiI+NAwJBFJacKZ2wCKKU7wnk
	oEnBOH+/YmRWBi0mjMfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyomr-00057X-02; Sat, 17 Aug 2019 02:49:49 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyoju-0002bI-V2
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 02:46:48 +0000
Received: by mail-qt1-x844.google.com with SMTP id b11so8195507qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 19:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Gnt8yazO3N8sExIXY3j+u+ZqminYZIsiqJs/+B6OhTk=;
 b=cWRB2kBTWh4/y+MMGqB3R/WWgZ7sLaFYtihcnoSwSt6r7xSqwl4+S+IhqH4xOnp0vq
 ySf3411CzGXNQBIcDU+KzwjgmaJLR7fVjhfDpEJc1SruBOh25M0jDoOVJaEMEKNOil/3
 hVbjYxlfCLhJGujq6rLK9H6BlMLoTORcd81nvMdoc2GpMEtVkgD/aXP06Luk6cE/7pE8
 AB7O6RFL6XiMdpb3vCKLa1UAsgPUVEnO7Rmp5pIjbq7MYSSI6BvECvUA2YzN0rp2JTgy
 j2Ay7njDh/dyDW5KG1tPtOgqTCJkiwYA7wdLnaoHh8kHEsapZh1ufoTOsXnD8g9n8gc7
 LJyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gnt8yazO3N8sExIXY3j+u+ZqminYZIsiqJs/+B6OhTk=;
 b=LYghdL5YgLeyahn5whe0lnK2jX51svx3ysHCGE8pK7IC7P8RSzuGdSSInLD978gx5t
 y76qkHNeWrvFufvL3MHPHsfzN07z8z1gTAA+KJUyOz6ExQZiindUjQk+KGQnrQAY2qc9
 nZL1X+P8SzrdWGnO0A5dDGdah3cFmroHJm8EbLyIHccClcTuTJYBKG6Hr1RjA12qAoNd
 pTpxfJJVz21ySeHDf/vWeNE7D8QMgy9ztat7b1a5oVYjXzUqi8sOsDwV/5iLR8bh3jxV
 dikJOFJt+RjBopMvBYQf/IzyxeVZ/DqY+J7LWSXa2yZObNOjFafpoifRnqYpCywBHden
 hLRg==
X-Gm-Message-State: APjAAAW0pr+TBbaVbbe2mxZgLF2EJPbjIxAbcZlRAxYgG7n3oc+q575n
 s78Z1lPF8JvEvZhf06Y9i+SNaEtf9aU=
X-Google-Smtp-Source: APXvYqxszzLWkK2VLd5S53W8Fb3b8NJFaWMc7fwLM8sjAjZ7hGYnI41xlk+tqmjFr45dPKaJJpbf2w==
X-Received: by 2002:aed:31c2:: with SMTP id 60mr10402242qth.331.1566010005435; 
 Fri, 16 Aug 2019 19:46:45 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o9sm3454657qtr.71.2019.08.16.19.46.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 19:46:44 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v2 10/14] kexec: add machine_kexec_post_load()
Date: Fri, 16 Aug 2019 22:46:25 -0400
Message-Id: <20190817024629.26611-11-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190817024629.26611-1-pasha.tatashin@soleen.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_194647_048951_A9DF7BC0 
X-CRM114-Status: GOOD (  11.04  )
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
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
