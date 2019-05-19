Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E3222721
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 18:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jG7X12ZktBArWX/rvbZy2go3GWWO8N/5E96JhQN4ba0=; b=JrJWNEX7dVNxAk
	76Vq6xa43f/QSewqEamZlwTl1ODeO35kgFd4prcbPFiS76aaD6T14yF3a3ZU2w0wv3sIXf754zgNA
	hONW8SKfo+qoB1e8qhnKMZTGfagh2IiNWT8K3uuwa3dbrmsa65e9TUczp9nsrQuAfcyqHsmxx3SEj
	1mUPGl/iAuEaqjrxDPrm0Avtot9GBlp5qclFWVPbmlmlRAXAMqcTChqoB/9Vj+MrfDmP5WJsx+Lr7
	1a+8/NZ5P0mkalGWy9qGLGV8nJsDLbeC78O/p9xcHD1J4XPYlhFO604+OFen5ZacaKcTVrICicGgN
	lB5ByN1oKmIj6ZM3T1iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSOJg-0006Yt-51; Sun, 19 May 2019 16:05:40 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSOJJ-0006Es-1V
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 16:05:18 +0000
Received: by mail-pg1-x543.google.com with SMTP id z3so5573110pgp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 May 2019 09:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w75P38v9z8QHVdxS6R3Brz2jpMYqR+5eP/w8pQb1nPA=;
 b=myLhk+2HXFCrC8o/7PfbYOhTcA2jCqzU4GnMO+/qE7+tzW5/ihlU7K3wVqAd3P3qFp
 xICCMbgzhgD631AA2NeQrSpXLwscwnDUO0aBm5iHLE0zRWfGzEbHCzknrCjQkhuHMmxX
 hGH4+kQwZHWBpzmD1p050soj0o6GVYepZs0Mw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w75P38v9z8QHVdxS6R3Brz2jpMYqR+5eP/w8pQb1nPA=;
 b=G2PUz8DY+nR/c/bMwCkvn4ii/qpV0z7aH1hJ2s4ty81SzPMxG6In3kBcW6x6Qh/yNp
 m5e1zFoM5tLqnZPIk6b7/fvE4TuHQufOYgynpjSyzjvWOruTUNzgqsPQP5w2TWRopbjk
 p0vRoMa+KtX3Gv+awiXRZofcPgFcQrHidZ4YPkaX7+mfuhxdZogWsOQ3PJ+7fqt4aVAK
 vMtc0AuQIzZb/VMkRqBRDqF43DyTuQveMVxIn5wkj9XxYjXFIb9P84nI7GIk63BllZrh
 wxUKuAjJU2Z5/0rQHFavTgOhgE3EUFhmFTnMlFGzzau6Z01We7TECwYAo4w1oTIQZ7Yl
 IIYQ==
X-Gm-Message-State: APjAAAX4mcH4jAB0V0hEBVyik1jMmvqmN3oVJmiCgx2XL9yJeRoSSgJc
 //TUOSXI8YulxqUEY17a1tS+lA69VAHCNQ==
X-Google-Smtp-Source: APXvYqwrm3lDeGRnJx7g5EY5lJ5ZBzglEq7ClMbsGc6X8fVoF80Kv6SGb8mBvxA9elUTdo5UIIKIrw==
X-Received: by 2002:a63:6884:: with SMTP id
 d126mr70417545pgc.154.1558281916225; 
 Sun, 19 May 2019 09:05:16 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id b23sm17547007pfi.6.2019.05.19.09.05.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 19 May 2019 09:05:15 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 3/3] arm64: kexec_file: add rng-seed support
Date: Mon, 20 May 2019 00:04:46 +0800
Message-Id: <20190519160446.320-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190519160446.320-1-hsinyi@chromium.org>
References: <20190519160446.320-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_090517_169365_6043C059 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adding "rng-seed" to dtb. It's fine to add this property if original
fdt doesn't contain it. Since original seed will be deleted after
read, so use a default size 128 bytes here.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
* Will add corresponding part to userspace kexec-tools if this is accepted.
---
 arch/arm64/kernel/machine_kexec_file.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index 58871333737a..d40fde72a023 100644
--- a/arch/arm64/kernel/machine_kexec_file.c
+++ b/arch/arm64/kernel/machine_kexec_file.c
@@ -27,6 +27,8 @@
 #define FDT_PROP_INITRD_END	"linux,initrd-end"
 #define FDT_PROP_BOOTARGS	"bootargs"
 #define FDT_PROP_KASLR_SEED	"kaslr-seed"
+#define FDT_PROP_RNG_SEED	"rng-seed"
+#define RNG_SEED_SIZE		128
 
 const struct kexec_file_ops * const kexec_file_loaders[] = {
 	&kexec_image_ops,
@@ -102,6 +104,23 @@ static int setup_dtb(struct kimage *image,
 				FDT_PROP_KASLR_SEED);
 	}
 
+	/* add rng-seed */
+	if (rng_is_initialized()) {
+		void *rng_seed = kmalloc(RNG_SEED_SIZE, GFP_ATOMIC);
+		get_random_bytes(rng_seed, RNG_SEED_SIZE);
+
+		ret = fdt_setprop(dtb, off, FDT_PROP_RNG_SEED, rng_seed,
+				RNG_SEED_SIZE);
+		kfree(rng_seed);
+
+		if (ret)
+			goto out;
+
+	} else {
+		pr_notice("RNG is not initialised: omitting \"%s\" property\n",
+				FDT_PROP_RNG_SEED);
+	}
+
 out:
 	if (ret)
 		return (ret == -FDT_ERR_NOSPACE) ? -ENOMEM : -EINVAL;
@@ -110,7 +129,8 @@ static int setup_dtb(struct kimage *image,
 }
 
 /*
- * More space needed so that we can add initrd, bootargs and kaslr-seed.
+ * More space needed so that we can add initrd, bootargs, kaslr-seed, and
+ * rng-seed.
  */
 #define DTB_EXTRA_SPACE 0x1000
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
