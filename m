Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C7ECC329
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 20:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8wj9Lo/iSKk30ryZSjhiSnDPHjAZfyDDhUzGpVbdZo=; b=j8KxEhCJUD9htZ
	XzdfRB4L2f/tIwWYEF4PHcBODDE+lK2v/3jtDGPcYPZx6l1HjXIzmqVIYaUs78McV48GFa5cRsaXl
	duoCsnjZTDlMvJMsIQd5KDvVuhR9SkMm4EEsc6Jp0cFeo4eEc/RmbavT1kcgY8C76kO0IJIkljiYE
	yj6TC0gRRJ2NivVz6Oje+CWdOB/qFXcBYN3cf6VMBUqZJ8/yOs2VEbS/tbgJrKVbG8d+Jsbwf5DwJ
	cHUeeCLWQKxCq2xnaG5HEbvWib3VdQLvbvSelnydjVY0MddMNHbx+P/h8faqo91I75riKBOcz0Nc1
	oSoqTcyiHXXmg1yZNVYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSmC-0007lX-4a; Fri, 04 Oct 2019 18:58:04 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGShG-0002K9-0u
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 18:53:02 +0000
Received: by mail-qk1-x744.google.com with SMTP id y189so6782387qkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 11:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=XbQaUimD78vcQ5YhGt3SAqPD0eC6PCpt9aPKURlFvbA=;
 b=T3HSMOsCC7MVlPJHQkMuk8eh/ngyjURlVWD+pEyqUObu1vLcvCV1KihS2VJd5EHh4x
 6Gt9YscgCCnZlG2b2GH133S/moS24v0RANnkaZji6KEb2A2/AR1zs5HSLFNrE1crGVUO
 93+iAhb2NBRetq53GDzx6AuY0LshLWMb9Izo46ZT0WVt2vTHX5ZVbjROVUGiasHKRrg+
 8HSu/vmrHXeDgx9MBtTx1VTfpdJZ0Z6uu70TmlyVP5aTnkP/xIkgocR43XzFuMRfY7et
 k+/Gyh+HPhrUWHD2N2rLGbTWrRdbS1ipeYd2ReBRjSTHvsOPDXezAkX8q3k4bzd7fv1D
 nUhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XbQaUimD78vcQ5YhGt3SAqPD0eC6PCpt9aPKURlFvbA=;
 b=SBjNsvBRGLt6rZPCsUfVEkdRw3BNVliFoZbYYjBx/155fe2w+rF8yctBF0RcQ4vS0l
 OGMKagYnHlNpyCC9mhp7Zh7mVoQq/0Q9uM1TwpmeQ/ZOrDZE6M08mHsvLiRJY0yCEQJw
 /EykPjVr1pWwJw9Ibb5f8hEu/Jw8Ob16G1hH5WV+1m1d1M9l3LiH58Bge1jpxz9bgxBt
 lH/lJWbbCvmfGsEaWUwvGgdP3ET4cn0Knwzov2lP9ygt4WXYHlSbettotMppDBJrHbl9
 cDBMZJbabMwznSfBa7WEP/xqWdqQsy9PwKRqoVCL5oEGVxOSyN+BR7seIK7TR3zXxP6F
 IlgA==
X-Gm-Message-State: APjAAAW6ZsvOmL6QvXv1kYhe4YPphrWgFcz0vO50LcF/HVqr7TpTjNIW
 GPGBUDuXQ9qOBxZpFXzGfh/JRQ==
X-Google-Smtp-Source: APXvYqyXNbkCwVmR0CUBX2ljNW39KDWX97Q+N0JERDBOfmUDqQlQHHKsgP5kmx41XkPyxQ3t3F45eg==
X-Received: by 2002:a05:620a:13ce:: with SMTP id
 g14mr11609764qkl.199.1570215175626; 
 Fri, 04 Oct 2019 11:52:55 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id p77sm4042514qke.6.2019.10.04.11.52.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:52:55 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v6 13/17] kexec: add machine_kexec_post_load()
Date: Fri,  4 Oct 2019 14:52:30 -0400
Message-Id: <20191004185234.31471-14-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004185234.31471-1-pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_115258_263279_636E3FB7 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

It is the same as machine_kexec_prepare(), but is called after segments are
loaded. This way, can do processing work with already loaded relocation
segments. One such example is arm64: it has to have segments loaded in
order to create a page table, but it cannot do it during kexec time,
because at that time allocations won't be possible anymore.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Acked-by: Dave Young <dyoung@redhat.com>
---
 kernel/kexec.c          | 4 ++++
 kernel/kexec_core.c     | 6 ++++++
 kernel/kexec_file.c     | 4 ++++
 kernel/kexec_internal.h | 2 ++
 4 files changed, 16 insertions(+)

diff --git a/kernel/kexec.c b/kernel/kexec.c
index bc933c0db9bf..f977786fe498 100644
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
index f7ae04b8de6f..c19c0dad1ebe 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -589,6 +589,12 @@ static void kimage_free_extra_pages(struct kimage *image)
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
index 79f252af7dee..5b7f802be177 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -441,6 +441,10 @@ SYSCALL_DEFINE5(kexec_file_load, int, kernel_fd, int, initrd_fd,
 
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
