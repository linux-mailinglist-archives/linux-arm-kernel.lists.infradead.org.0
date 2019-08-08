Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F04C786838
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkHVdQXXSOv/9fS2LWbzHdzELLRJ0Cg6fRwTYwwj1cc=; b=ZZGfUQKCAJtTu7
	6P+2ruCRmN1GR3b6Q+JsVAARG7ZHniHkBqlIsh8LitIORbGwfwmi7D1sNxO9awxzleHZzRNMq8c3u
	+HSxWmlRWnA+2hOjzvkKudMwGGtv0HDFqAzKVGMkNck2qI33TO77mg+kTOMeaOB45HNIgsiDyLLWS
	MvcyUeLXh90wLba2W3eTrkzeHECOhS5rvud47rDptZm5UmPuDmu4wIegErxcK37TTwYki0Ed04Oet
	83NqANeOGqBkk16R/sgn69jnEQRK+Mz3IbAERnHu3s5JTMiY/7gIWPpsoCPxMelNptgPWVtxSb0/l
	3kp/NphOdZXQWIbIbDZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvmOK-0007rb-Ks; Thu, 08 Aug 2019 17:39:56 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvmOB-0007qc-14
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 17:39:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id z14so7194967pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 10:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h/yL8Ymy2LB/STS6J+Lq4m9W0ydt77fAXWIWGhH684M=;
 b=C0Tdu9oWw6g8jn0YCy/CUc0vBYErlEDkoKO0ggvyp3/u2SeUmwfPORoGPM4LeaiRRJ
 JnXa11Nr0XT7YDWpmLDBkLw+su/NAcq9L9MuzaABlUQVuFCoRTu/ea1ABq2d51thSbXa
 h3L4/ldUPBQ5CNJ3G5pzpA31cvXgxRP1Gqae0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h/yL8Ymy2LB/STS6J+Lq4m9W0ydt77fAXWIWGhH684M=;
 b=nppPglOwfCdXoeRd06tNLozWJq7PKKi6Gicmfvn+RH8bDrewlbQOHRhUgm8a8oxSir
 MnxE+7bB5XOa7mZs8YlZiE3hDWkfyrf59uWnRmDKI7ktoa7loQwADL3BckIAvAT2bzQE
 hJ314kVKRQJq8RZg8HkjpExi24+QU+ZAmL3a7qljzzt7qpT2k+KspQ/j0XJDVM8azlqD
 nksdx58UZEjiFU/JfLkGA/6EDxw2VBEdDh/8QZzcSePtOb4DJEAz7y4s/2ILimx3AkIT
 CEHWxbVgyTPAG0VMDahyOO0j91XVz+Ywjs3N0cRp1GVT/gCOcKD7o9AH2SSDhJzCDInR
 OMXw==
X-Gm-Message-State: APjAAAUKBHspb1wcQ2CWW1m4l2ly4Z/ci7UbagPFTVFXksC5DGlUVZA9
 Frgzrzl2Bc+JsVB4SMRobkShD5L92fHaAQ==
X-Google-Smtp-Source: APXvYqzhArDX4+b5Tep8MKl/+REDpR8R7lMugu/xbPdlvta78+f9dxTGpX+ohwloxZ3TNOhPSM5uEg==
X-Received: by 2002:aa7:8a0a:: with SMTP id m10mr466871pfa.100.1565285986200; 
 Thu, 08 Aug 2019 10:39:46 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id y12sm105824412pfn.187.2019.08.08.10.39.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 08 Aug 2019 10:39:45 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND v7 3/3] arm64: kexec_file: add rng-seed support
Date: Fri,  9 Aug 2019 01:38:07 +0800
Message-Id: <20190808173803.1146-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808173803.1146-1-hsinyi@chromium.org>
References: <20190808173803.1146-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_103947_084667_12D710D2 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
