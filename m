Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CAD135E16
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIpl/u0diF1kkLiuZx73Lv+8LiV91+PnvYs/2IWzhOg=; b=ZzObYQPNlhM0Qu
	g74zHGz92iFQSJpuNxNTLnJoRXnz4gJa8WuxlE4gerZktzHOvlgAhnOXT3S97eLssadkmaYqYPmzf
	QQDlz5BzzXeasBABJFDMHRy/Z2AEU7iGZZS9ouZaNfaBh6smhdo/y6RLq+UdqekewE1PirYlRzrwY
	+RDqoOFfCwzcYNn02PI15x81c47s2v1kzSWUDZku85P/IoPTQkN0NzWjAWa5bDq1I5BjgmxNFAQ+t
	PsQ3gyHXA3VDFd9THY1ul+yFDlGyEG4jv5aQgc+RheJIp0bSeVB1QcewlUZz6h/hXQhIAhbbcjTud
	SqPh//F1wZ1tdjCEANyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaXy-0007Fc-TP; Thu, 09 Jan 2020 16:20:34 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaNN-0002YP-L9
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:09:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586176;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IvAAZHcfP6t4zLwyXztvIUrcq7T/iPtXd+REm1qHjSI=;
 b=LIkK9OsfPfI4FHZLo4LPY4w5ZKD28CWLE+4mcKpI4V5Tr2y6x3bObSIU+Aa5UJ4kntUDbE
 7hb9YyXxU5tGKLSKXgvhs5xsyiS3rvRHP1dnnhspeVRAeRqmHJj5Dy2zV4NOiTGYAibBZK
 c/X61wq3BDaLrPB8WopzsySPDUFCzLk=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-327-aFtrgCRwPaKRKUrUC3jcAg-1; Thu, 09 Jan 2020 11:09:33 -0500
Received: by mail-wr1-f69.google.com with SMTP id u18so3047070wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:09:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+WGb3puDmUzCYPuLm6oXYBSJ99/bjzxumOQhQE5nO+o=;
 b=jhLvMeWZ+xr7LH12/98UqDem2tE1nWBF420wx07k+hr8Z+2XhHWtPgsoDtcbxBpGyz
 pWNAjVW1zbnZTuVVwXHwZFcCiOghWlLHAoN1ShjU/fg5mMAV4DQTy7C1o9YCQESRlZZB
 COAh/uQ9udC/dr2qfxHiDiuINuKaiemdILYtK7uzDOslfC81H6TS5XZ77f+5/N0qkEie
 y2RZ4iB45dx6qZ65ACaXCvCoH9LiVd7VqA8m27t5fqdkH28MH8DUqJ79E8zHN8keItwX
 orZ4n4vpY6+3UvTvZMimv4yngOX+KaOBUkHq7Kkr1oloS8rSewhTV0mX7ya2aXubYi0Y
 4y0Q==
X-Gm-Message-State: APjAAAVQ91enCReCBzSZ5I4EFPoVVhCsqi3VHZm5Pp2UDLwUc7BFWKjF
 z2Sbf5Szvdcj+xlTAHdWOJwS+4+CzKLYkR5VSnxQT+W2ZlqofPzK6Nsm/VdEt5wxeQS0opfrhck
 eO4RrjrWQtG0P3rLQVHidVR6694rf2VBnebI=
X-Received: by 2002:a5d:6a0f:: with SMTP id m15mr11728058wru.40.1578586172085; 
 Thu, 09 Jan 2020 08:09:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqz5V26QjGcxR+qc3PnQJZqKeHaPwzwzDGc3YkRawBmFtmaeyy4yWAZvPxOmJY0ku0p1ZNx85w==
X-Received: by 2002:a5d:6a0f:: with SMTP id m15mr11728054wru.40.1578586171944; 
 Thu, 09 Jan 2020 08:09:31 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id e8sm8517707wrt.7.2020.01.09.08.09.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:09:31 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 50/57] arm64: kernel: Add exception on kuser32 to prevent
 stack analysis
Date: Thu,  9 Jan 2020 16:02:53 +0000
Message-Id: <20200109160300.26150-51-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: aFtrgCRwPaKRKUrUC3jcAg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080937_789675_70E6F49D 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Raphael Gault <raphael.gault@arm.com>

kuser32 being used for compatibility, it contains a32 instructions
which are not recognised by objtool when trying to analyse arm64
object files. Thus, we add an exception to skip validation on this
particular file.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 arch/arm64/kernel/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index fc6488660f64..f5994679db5f 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -33,6 +33,9 @@ ifneq ($(CONFIG_COMPAT_VDSO), y)
 obj-$(CONFIG_COMPAT)			+= sigreturn32.o
 endif
 obj-$(CONFIG_KUSER_HELPERS)		+= kuser32.o
+
+OBJECT_FILES_NON_STANDARD_kuser32.o := y
+
 obj-$(CONFIG_FUNCTION_TRACER)		+= ftrace.o entry-ftrace.o
 obj-$(CONFIG_MODULES)			+= module.o
 obj-$(CONFIG_ARM64_MODULE_PLTS)		+= module-plts.o
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
