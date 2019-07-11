Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E9B65636
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 13:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=arQdyo/bqiQ2wmWh0V07GNzk3iZpLRiTVlrAvkLuGQ4=; b=KMP
	11nAr6lBeyza2aXaeTyC1yHklWg5dTAEZwf35lx4/CpnP1T851ul0mRw4mbAnPVr6tQYjDvk9Cjwk
	BTKz4WwSEt/0p7cgQuXCUc0G3cKgysye4oFV9Jys0C77A/qz47AKMAPdzKGeDs3u+UVuuodzssv+b
	BLEQsTSkAeBnPwrH/Y4xJscGRZC9B+E2LieKr5OwQ3F5hnFCvmZJj7Rd3R149nYSkHWQKvxz3KP+7
	M0ieiDv8pqcixuRVhFiaagfHuiXcQKFDy5k5BxQRgWouR2T5050ml5P4amFDLYF47/unBcDqllZtc
	naW2rDVcf95Uy+CSzjymHelZJQ77Bcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXhv-0000KM-5Z; Thu, 11 Jul 2019 11:57:51 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXhm-0000JT-QF
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 11:57:44 +0000
Received: by mail-pg1-f196.google.com with SMTP id i8so2814920pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 04:57:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/89CZRgzvFAkSINRRIbp3KoG062u70Hc6qn2oNL8CRk=;
 b=HcNf3Wf4h4FVTU3WYZIeBRdLBqGrRr+Ri4MpwhvSfyJOlf5q3gCXLjlW841zzJQPt1
 hKzeCPe2O9HTu7NzRVr6bABVnyWY9G2UjIP8ph4y5sGJPg2aZNNS7mkvrVnowHfedlDt
 8d2BBrs3rjJewbs6SxhLUbS8ZG81eU3ScsVxr0c9jb4kv/gnzTB0Rkxb1l8BMs2DgwNs
 9XiCnQtfayQDf8YpEOGGUyJ6cmA3MHsAna6Tl+VCWjppZ8Y73s1zCsHvz/wCLWFSIf0k
 C9LrVbZNxh/es0iDetN0gCzQ4nLVzziUOSQFSOYTU+77JnMxOlpGTla/rZ+LTidgTpTT
 mBJw==
X-Gm-Message-State: APjAAAV+EyOoGNvJH3Z5aP+sdpEnHsy3tclSm5B4QKa08g3gGrIylmqI
 sYZf0ChFisQOoj0da2QNp3TdSxTHXIo=
X-Google-Smtp-Source: APXvYqw9WNwaKzYxtFvEIWl+TLX+n//1jtdZj2qCBnT2IWM3UQYkYN053Qrs3muiXLZFtptMQuf0ug==
X-Received: by 2002:a17:90a:20c6:: with SMTP id
 f64mr4441415pjg.57.1562846260621; 
 Thu, 11 Jul 2019 04:57:40 -0700 (PDT)
Received: from localhost ([182.69.207.54])
 by smtp.gmail.com with ESMTPSA id u2sm5155277pgo.92.2019.07.11.04.57.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 04:57:39 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/kexec: Use consistent convention of initializing
 'kxec_buf.mem' with KEXEC_BUF_MEM_UNKNOWN
Date: Thu, 11 Jul 2019 17:27:32 +0530
Message-Id: <1562846252-7441-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_045742_852313_EB8BB6B9 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bhupesh Sharma <bhsharma@redhat.com>, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, takahiro.akashi@linaro.org, james.morse@arm.com,
 bhupesh.linux@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With commit b6664ba42f14 ("s390, kexec_file: drop arch_kexec_mem_walk()"),
we introduced the KEXEC_BUF_MEM_UNKNOWN macro. If kexec_buf.mem is set
to this value, kexec_locate_mem_hole() will try to allocate free memory.

While other arch(s) like s390 and x86_64 already use this macro to
initialize kexec_buf.mem with, arm64 uses an equivalent value of 0.
Replace it with KEXEC_BUF_MEM_UNKNOWN, to keep the convention of
initializing 'kxec_buf.mem' consistent across various archs.

Cc: takahiro.akashi@linaro.org
Cc: james.morse@arm.com
Cc: will.deacon@arm.com
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 arch/arm64/kernel/kexec_image.c        | 2 +-
 arch/arm64/kernel/machine_kexec_file.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/kexec_image.c b/arch/arm64/kernel/kexec_image.c
index 2514fd6f12cb..29a9428486a5 100644
--- a/arch/arm64/kernel/kexec_image.c
+++ b/arch/arm64/kernel/kexec_image.c
@@ -84,7 +84,7 @@ static void *image_load(struct kimage *image,
 
 	kbuf.buffer = kernel;
 	kbuf.bufsz = kernel_len;
-	kbuf.mem = 0;
+	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
 	kbuf.memsz = le64_to_cpu(h->image_size);
 	text_offset = le64_to_cpu(h->text_offset);
 	kbuf.buf_align = MIN_KIMG_ALIGN;
diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index 58871333737a..ba78ee7ca990 100644
--- a/arch/arm64/kernel/machine_kexec_file.c
+++ b/arch/arm64/kernel/machine_kexec_file.c
@@ -177,7 +177,7 @@ int load_other_segments(struct kimage *image,
 	if (initrd) {
 		kbuf.buffer = initrd;
 		kbuf.bufsz = initrd_len;
-		kbuf.mem = 0;
+		kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
 		kbuf.memsz = initrd_len;
 		kbuf.buf_align = 0;
 		/* within 1GB-aligned window of up to 32GB in size */
@@ -204,7 +204,7 @@ int load_other_segments(struct kimage *image,
 	dtb_len = fdt_totalsize(dtb);
 	kbuf.buffer = dtb;
 	kbuf.bufsz = dtb_len;
-	kbuf.mem = 0;
+	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
 	kbuf.memsz = dtb_len;
 	/* not across 2MB boundary */
 	kbuf.buf_align = SZ_2M;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
