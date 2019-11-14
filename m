Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDF9FBF55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 06:18:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZGXS+n83oarWNReJABAOOy+gEVoTDsYcKtTYMitgv0=; b=Cl2CNyvyKLyYE3
	WGuL8LKnRKf9Jmm1jpLsA9H7YeXShQ+RSQG3mvtiz6O22+CoBGbSg209kCYgX+cDJDt7moeYQ0n4R
	b0yxj3IacbNIvs5s62bv/bFzQDmUHJKc1ygl+Q/aTQqy1OTTY66xArKR+Fsrw9eLpSAsZxln4K/Nm
	rEtW9oApJdcmozK1SNX98JHtUm1IOf0+vtR2chBk2gaLmZNoFI4Meh6DrS1qsCgzOQCuMXoIPXkqy
	WiKp4eNhLy7k5Vie8CjUpX01+ZTWnSWO4XWTYwaSzPfF8e+J52tE1HlO6i6OeTAbkVUAp9MoUgHok
	NTv0yBptldfS8L9KdYfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV7Wl-0004EA-MU; Thu, 14 Nov 2019 05:18:43 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV7Sr-0007PQ-RO
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 05:14:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id 29so2926355pgm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 21:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K2wlRR3w/KTNdVqCYnrEwvs7sg2WubrsMP6gUzcCK3w=;
 b=zppns9CQ9NJAosr/LOsW1qDHdqq9EqFz5ZPBd7ZGpXbY79fJ2UVFUjsC9feu+OeRHH
 jtupVXzvx24ZZtmezz8rILhUwtykHm72bbXRADz/wG5Xyooq0ab2j+kPJKt4jiwKJl2d
 FH2/0qcxqyE1pxV4oVsrEIrqwNllLXxa5i0qQnqNr1U07RISfVBVpvjI8JKBOtAyQMtG
 TPcfcF9CbhRNOJM8m+sCcSigAOWit4iAi+t6k1O8M6SDs42jo6jnMYYpF+IBAn8AYM/g
 LA6GbbSwny1FrxmFPJ0PUtas1pgDTEqsAhyHs9QWGcgeXZClDrz4iDqFg1KfJvQXdYx3
 Qp5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K2wlRR3w/KTNdVqCYnrEwvs7sg2WubrsMP6gUzcCK3w=;
 b=b0OpthB4ZXdxY9csyR1D1sTmFAAxPgS6TJ7iSKZtyEzyhtrIbUqpww9rciZTqGnRWq
 h2/eJtGajpHLzD3/0r/+gteP09wOysQ8b/k+MVHW7kVbkxsbsusaF3Nlq8oF04+j+5+e
 A6RSliNJOjkB5NuBOj13559BKlZOyRFCC+vsWiUBOfzlcepnikwxATnQZ1OcK0VRFyHd
 B9Lk2q3uga2c6TsrcJFHLXgbXTBLss0JRYgrCumg9mmaCKjVvh8r6qj1ZJf7LhBJW56R
 uPjscAj2CIvT5v9DBTQ5dJLoxbxmE2L4LqSTfsaSoYFRNlBGunn/XHTl6mKYap4yUZLY
 ZRbg==
X-Gm-Message-State: APjAAAVxs0Eey+VDsbjYR3OgZ+2SP5fBz/MXR4bCSEmBDrJu/vNT1Haj
 mPmQyiLryftDHLPUNN7O3sdzjQ==
X-Google-Smtp-Source: APXvYqwlEusLa94m5U+3WaWntarTbEi19zhc16zy/LNNcM+ekH+5cMHfghn0WaJojuUTkNWrbbbtHA==
X-Received: by 2002:a62:5e04:: with SMTP id s4mr8967673pfb.63.1573708481126;
 Wed, 13 Nov 2019 21:14:41 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id f5sm7329049pjp.1.2019.11.13.21.14.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 Nov 2019 21:14:40 -0800 (PST)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH v2 1/3] libfdt: define UINT32_MAX in libfdt_env.h
Date: Thu, 14 Nov 2019 14:15:08 +0900
Message-Id: <20191114051510.17037-2-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191114051510.17037-1-takahiro.akashi@linaro.org>
References: <20191114051510.17037-1-takahiro.akashi@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_211441_911088_94EAF4AC 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kexec@lists.infradead.org, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the implementation of kexec_file_load-based kdump for arm64,
fdt_appendprop_addrrange() will be used, but fdt_addresses.c
will fail to compile due to missing UINT32_MAX.

So just define it in libfdt_env.h.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
---
 include/linux/libfdt_env.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
index edb0f0c30904..9ca00f11d9b1 100644
--- a/include/linux/libfdt_env.h
+++ b/include/linux/libfdt_env.h
@@ -3,6 +3,7 @@
 #define LIBFDT_ENV_H
 
 #include <linux/kernel.h>	/* For INT_MAX */
+#include <linux/limits.h>	/* For UINT32_MAX */
 #include <linux/string.h>
 
 #include <asm/byteorder.h>
@@ -11,6 +12,8 @@ typedef __be16 fdt16_t;
 typedef __be32 fdt32_t;
 typedef __be64 fdt64_t;
 
+#define UINT32_MAX U32_MAX
+
 #define fdt32_to_cpu(x) be32_to_cpu(x)
 #define cpu_to_fdt32(x) cpu_to_be32(x)
 #define fdt64_to_cpu(x) be64_to_cpu(x)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
