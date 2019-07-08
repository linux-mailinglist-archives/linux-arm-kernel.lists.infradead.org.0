Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0B062AD4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 23:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLuN509HlKt/4onRSyP8aZn2yfJvqbqKw2JYBDzlJi8=; b=CTVvYn3CPE4fBq
	f86Oj4ofxE+HU6+6I0I+zwucL8ePG182n0Qd9mNIo3oNqeD7Z5lcyaLcNKAtJOKrCGAPdktZt3ezS
	TOwMEs07jexeHFh3YUQHC1AGJx2N9VUfwS/xrjlpxpGU/9F0QNl9OYQSiz4jnhpy/BLU4s46liTQo
	ywlMSKwsvKhL6VW1U/uNV2fXQXnN+1xmJX1VDDN7PngESqjhCxuUoqfqkyVzXvof2/6bFsIU348hN
	vRDnVEFxupGOmKEEl4v7vF2lZ0y23JMn7iIq5HuSPUjGXnW/W9rIgTfaU32/j4MmhK6TXspxnIeb4
	P2WEWohxkC5rJPao+Q2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkb0A-0002BP-0I; Mon, 08 Jul 2019 21:16:46 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkaz0-0001OR-Vm
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 21:15:37 +0000
Received: by mail-qt1-x844.google.com with SMTP id h18so12089874qtm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 14:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=VdsesycGrscxvl9VUJv2OrYGiO6I5hjIVNNGDZpPz+A=;
 b=mbcbklPnE9aSK5WgO3DjHoIPCmDRPu0y6gFhVqT2wERSQkqrlINfT1Dum/1YBHqVIA
 MHfCGiZYhNcyqdpiDNvMZSUSkBjk9mmUm2UzAXxyreXwkDarMe79+dMnFwRPOh7+l6Tk
 aB6rNkHgLO7Y1Jiz9NmlCAtxcQsnJZJn3GDc2qcLNW/H2zSoSBaJvjnwMgsVYjZasY6h
 wMgRHG4K4lnwl6PWSVbLTrSouwk/nknjx/sQIWAwaSwgSoByC78yhCB9mcQr5qM4iUFx
 zS5tOkS+Tj8MCjoQW99WEy4HdQ8WxAlpnEJNn0bceuRbwkIodt64QR6c1sZewin18v6i
 Sqww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VdsesycGrscxvl9VUJv2OrYGiO6I5hjIVNNGDZpPz+A=;
 b=kfguVBm9gaFFBKmiY8oousPtzytYZwTp9kTmNBk3W1s2A/5qW1TvisT9Y3lRfWAWlh
 wKHJbdU4aWgdVXTwC6z/BEnDenSh9PJ3AZzyzTzUaJpeAfySyLwFH2/SpkXPkryAAcZy
 IcbE+9Kmut41VdGjniGrRci2Px6B0bnLacFs6+UTEV39HVgjB1rBBeMrmHk2lfSrantZ
 1dVnBtlgeJ1Ir620gGBvy78m7Wp4rftMfHP3Id2CJo6xAiekwZqKNl5xQGeC5SoSuAG/
 2Yfqv0f8iLdWk14k1mjOgfO3n6870Mkx0EZ/nmQIcC7gAEqG8Swsgk75V6x8M8z9EqZl
 xIsA==
X-Gm-Message-State: APjAAAUfYf8PXrI0Ivaf/kbq4Uup6MOGWuz2eUaaH2Jdc1tPTKnbe/Vz
 1uh3pIMrT/g+rZ26/Gie3IR7RbikiAI=
X-Google-Smtp-Source: APXvYqxh88FuDHDTA50xcvkZxoDS6gx6EQNHyyvXUFPd1oxFXlmv0rBVOQea/c8sZqigS6xV/quFaw==
X-Received: by 2002:a0c:89b7:: with SMTP id 52mr16660367qvr.199.1562620533833; 
 Mon, 08 Jul 2019 14:15:33 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id b67sm8335620qkd.82.2019.07.08.14.15.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 14:15:33 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [v1 2/5] kexec: add resource for normal kexec region
Date: Mon,  8 Jul 2019 17:15:25 -0400
Message-Id: <20190708211528.12392-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190708211528.12392-1-pasha.tatashin@soleen.com>
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_141535_290180_3C3408E1 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

crashk_res resource is used to reserve memory for crash kernel. There is
also, however, a benefit to reserve memory for normal kernel to speed up
reboot performance. This is because during regular kexec reboot, kernel
performs relocations to the final destination of the loaded segments, and
the relocation might take a long time especially if initramfs is big.

Therefore, similarly to crashk_res, add kexeck_res that will be used to
reserve memory for normal kexec kernel.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 include/linux/ioport.h | 1 +
 include/linux/kexec.h  | 6 ++++--
 kernel/kexec_core.c    | 9 +++++++++
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index da0ebaec25f0..3b18a3c112f3 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -133,6 +133,7 @@ enum {
 	IORES_DESC_PERSISTENT_MEMORY_LEGACY	= 5,
 	IORES_DESC_DEVICE_PRIVATE_MEMORY	= 6,
 	IORES_DESC_DEVICE_PUBLIC_MEMORY		= 7,
+	IORES_DESC_KEXEC_KERNEL			= 8,
 };
 
 /* helpers to define resources */
diff --git a/include/linux/kexec.h b/include/linux/kexec.h
index b9b1bc5f9669..4c1121b385fb 100644
--- a/include/linux/kexec.h
+++ b/include/linux/kexec.h
@@ -303,12 +303,14 @@ extern int kexec_load_disabled;
 #define KEXEC_FILE_FLAGS	(KEXEC_FILE_UNLOAD | KEXEC_FILE_ON_CRASH | \
 				 KEXEC_FILE_NO_INITRAMFS)
 
-/* Location of a reserved region to hold the crash kernel.
- */
+/* Location of a reserved region to hold the crash kernel. */
 extern struct resource crashk_res;
 extern struct resource crashk_low_res;
 extern note_buf_t __percpu *crash_notes;
 
+/* Location of a reserved region to hold normal kexec kernel. */
+extern struct resource kexeck_res;
+
 /* flag to track if kexec reboot is in progress */
 extern bool kexec_in_progress;
 
diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 2c5b72863b7b..932feadbeb3a 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -70,6 +70,15 @@ struct resource crashk_low_res = {
 	.desc  = IORES_DESC_CRASH_KERNEL
 };
 
+/* Location of the reserved area for the normal kexec kernel */
+struct resource kexeck_res = {
+	.name  = "Kexec kernel",
+	.start = 0,
+	.end   = 0,
+	.flags = IORESOURCE_BUSY | IORESOURCE_SYSTEM_RAM,
+	.desc  = IORES_DESC_KEXEC_KERNEL
+};
+
 int kexec_should_crash(struct task_struct *p)
 {
 	/*
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
