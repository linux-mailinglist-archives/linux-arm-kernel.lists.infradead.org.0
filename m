Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B324112F3E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:01:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFzh1C3EsAmw658HZsQjMQSYShHodg5xTDPOTT1H0Lk=; b=YNjI6EsXNT1tZC
	xDd9EwwtNtxPwnGHc2ruYyV0MCv5cZx8C6SyZa8aKalSfMUTVgqHQqXNjo7H1ateWTX0H34E54Czb
	2e9Cbau5nrGorcADvMt/rB3aA5G8dGmmZThjCAgTLVaseWgmgWvDtT02WU0umwD+kM2nN/LgflRT3
	x9BAycdeCG1ol/NjPUtGi49+RelPwrsNx/EBP/YBJnr07g2I1bmFTHQrSooEa2c+VOB+TS/MwEaT/
	+rLOrsu6NXjNePlEVhuzOQGIvBGQGZhhUSTrTbng/PNALHSjYSjQDtfUPkP3jHND3IEHVJXcNX3Tm
	RuaVjDhNAxBr152Yay9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX59-0000jV-5M; Wed, 04 Dec 2019 16:00:51 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX45-0007G6-0p
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:59:48 +0000
Received: by mail-qk1-x742.google.com with SMTP id q28so324139qkn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=uS5983uJoHZy5JiqeIGQWhAtmT2ue7W1CVbOZjIqk6g=;
 b=ZtlqW1OByAmf47tXyRsopiX+BaNBesr84wke0vTVLOd+GkIrY+k3iBOCn8+k3BhroD
 UNPyg/sFg82rChe6aGKjY90pK15vcnyPSHWI/ntL/xrCb92iqtTCUuFQDgzNKJ3heYcj
 aamqSO5AfV4WR7UoOsASk9fB/ywo0S5VTXfuTqiZNofg+uS4jCiKICD+fWy0+/ahLoap
 dC7A63cF49Lmtymqy1AMRt03PDqSLFIz9dhvMvNL4HhZmvcOOqWAj0KpmU9tEjjVDK+Z
 LjhirTdzsonzWezv7RaT1Qz2fpdpTFzh8noDuDAhec1ZgziXt4/L1/RYgTO0O77TxhMn
 VFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uS5983uJoHZy5JiqeIGQWhAtmT2ue7W1CVbOZjIqk6g=;
 b=kHCVgz2bCIZkSMn1Y2Or7siQKjU0t4gzVdMq2P1tz5fBl4IjM7S9w7Jb5Hlo1QvWN+
 1MkKyznVXAcW2Ib7OGKjVK0tBju5cRAH6ZAKDFI/xBpFCBDNS9bJTq3hBAeMDgzqW7Vx
 YdryWA4blPF/z+S0ZTlf50usSD+2Sz9SMkmvVi8xrGApnVlpepkcppZU4vVdFU1qA0OC
 SaGCB8YDcGsNeUN1WDvfYmN+cz/CgX8iDyx3LLyswKGSOYvWd/L2NUW8H/moz5O+F5ZL
 RDhoX1awCniptVBrB3Hphc5luMVurD9Kh6vtMDO75fbF4SwHJWfX4/HeDJAP+nEXQf1I
 TIxQ==
X-Gm-Message-State: APjAAAU6nvG1u2dT8S0KIruYzHApcz8qm49hLHnV6Mtu6u6pHXyy8Jxo
 qxfnIEXYLUS25OxRz9TaDIRRsg==
X-Google-Smtp-Source: APXvYqxd8yp8Dngio2HO2NRx40UjWPIBx2dPgEFDiwpELJdmzYKJ7ihFd7m3wohPBcadKXvewYRGxg==
X-Received: by 2002:a37:8e45:: with SMTP id q66mr3685650qkd.129.1575475183874; 
 Wed, 04 Dec 2019 07:59:43 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:43 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 02/25] kexec: add machine_kexec_post_load()
Date: Wed,  4 Dec 2019 10:59:15 -0500
Message-Id: <20191204155938.2279686-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075945_074487_B7489C6A 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index a2df93948665..faa74d5f6941 100644
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
