Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAE691DAE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pBPxktlsW/2uvkneBDvFpaC7YINwMR7OcEW5q7R0AQ=; b=RE6VtAgze3il7u
	0KLSdqq32dj6Ph09hZf5VEqUe1By7aaKEx9ev/BuRcZNhukggmjj/ZD/r/NfOEoevADWkHV0k8Gbe
	uAxxd6RN1Q3dCWI6euL0nzMJUhcurLGyA/RkEPnErV/79BXozTienFYd57c7aGmcb4KVpt/XMBmSU
	rAAEMNcxwR2TA98n33LoQsrWauxEjJhF/ZTm8s1Dzr7RkToVzXAHMYnFSWSt267x1SIC1lP5+xxcC
	k1xAtWvLA7urPSUnTbjC0ggyjzSt8348f4JaJozirAFFqIpCrc5la8IRAYQAqzCgY9fsXJAkENW4k
	OhuozApQGxcOOiNmIhsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzbvR-0000nz-IO; Mon, 19 Aug 2019 07:17:57 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzbuh-0000QJ-RH
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:17:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id o70so641895pfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 00:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tR696xAAXNPhHQHWLfe5SFLSbtEnSL98XLrp0/RNG7k=;
 b=XUWbUOUNVffLbuYbKroAviugg0hNCu6c0LsB1p5k0zj3Qdmtftgjzhs502Kv30r2r5
 yKf5sQ0E0iFOPrxkWs0+CwLLLDrZaV3Y1j53slHNVQMXFTeHNDxlwhv1OSEt7gAXqvmi
 wtSm2YchTL7KT4XHT8HMfe9UN3zBGQL0sJ+EY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tR696xAAXNPhHQHWLfe5SFLSbtEnSL98XLrp0/RNG7k=;
 b=Bsaj+9k+eBINY1L/vSjDKXgBHyV1ZayZ/3hwpUXiyuhXOyMYe5bgF7P8TGmb4+h14h
 u7I6NmWU5vVWtN2A7zLh7jjJDMRbZFwfThyL0Ea9cuUiTQYnfYA9cvIVl7AoFsJHgo57
 ns3PCzdOOmgqOguAep8QH2ucWA5EBFrD8phexCuskec2vWICQy8MTJxeIil74Tp8443D
 9/aJTw3VktlsFQsjRtblz6lJtazD8gWTC07Bo9rTE/bp4jjhkiq8T9R5uN4O19oByBf7
 lI0Rio6cS1ygpaLrM3AeeD5KwsJpSiRnlcbBa2+mtd2s+4N41VsITe+4YBWMuhq1CyW5
 QOIg==
X-Gm-Message-State: APjAAAUKMQ5/hMZR02KYoNDvLVUEWtnGmYRbhoQiP5OnEAKhba0rDok8
 SHy6RMYUwlAKPwkK6XSjjC7N2pqyGp0=
X-Google-Smtp-Source: APXvYqxbjy8xxbqjY1yDYLo3dzifZ+5rEbkil94KZlbs277/axZ6oTlZhe0X2TtcA6D0EKfdo7cQ0g==
X-Received: by 2002:aa7:83c7:: with SMTP id j7mr23330584pfn.59.1566199030844; 
 Mon, 19 Aug 2019 00:17:10 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id y9sm14691341pfn.152.2019.08.19.00.17.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 00:17:10 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v8 3/3] arm64: kexec_file: add rng-seed support
Date: Mon, 19 Aug 2019 15:16:06 +0800
Message-Id: <20190819071602.139014-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190819071602.139014-1-hsinyi@chromium.org>
References: <20190819071602.139014-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_001711_906228_70ADEE4B 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
fdt doesn't contain it. Since original seed will be wiped after
read, so use a default size 128 bytes here.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---
No change after v7.
---
 arch/arm64/kernel/machine_kexec_file.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index ba78ee7ca990..7b08bf9499b6 100644
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
@@ -102,6 +104,19 @@ static int setup_dtb(struct kimage *image,
 				FDT_PROP_KASLR_SEED);
 	}
 
+	/* add rng-seed */
+	if (rng_is_initialized()) {
+		u8 rng_seed[RNG_SEED_SIZE];
+		get_random_bytes(rng_seed, RNG_SEED_SIZE);
+		ret = fdt_setprop(dtb, off, FDT_PROP_RNG_SEED, rng_seed,
+				RNG_SEED_SIZE);
+		if (ret)
+			goto out;
+	} else {
+		pr_notice("RNG is not initialised: omitting \"%s\" property\n",
+				FDT_PROP_RNG_SEED);
+	}
+
 out:
 	if (ret)
 		return (ret == -FDT_ERR_NOSPACE) ? -ENOMEM : -EINVAL;
@@ -110,7 +125,8 @@ static int setup_dtb(struct kimage *image,
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
