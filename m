Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5FE2ADB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 06:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WpkjW+63Vfj1jkEx0mCU/JGYgAlyMfih9qiXiW59YEU=; b=rrHjaX5oo6LXT6
	DjDMSRYTMe7ZIUHKFe23OTZ9d2w2WGCrYbs8xXgEBB8TTb6LA0WF2Vwf5jSUsYJHblO1uhmo/5GIV
	rcuzSbLYN7aykb0jn9Imr5nQTuq5WQRf0MM4KMb0K1P6sdQ0AJQUPp/rqQhQbXjvom4OA7tpwysN/
	UfiKpHtmHyA3JN3HlBElguj4j3wBZzRn5JmHcA6sW2360XySP4vgBEe/KdR/k3YG2fa2NMi+w+vop
	BLoFhWBPWlsztE03mB5a4oIOydnu4PD5NLde1qgPoR+S54OHgv/sUVXaaIaxfKByzppe2xuQQTp05
	vxGv8CdibhF2Wx7boxag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV7LX-0001Hh-8D; Mon, 27 May 2019 04:34:51 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV7LO-0001EX-1k
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 04:34:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id d21so6536540plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 21:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ck+F9ON2fnwh5hsuCM2qk61O5ay8betZRUcLdrsV0zI=;
 b=j+IVUH4GD9iVi5AQ0tl+V0V07fGHYVGHoxVefzWndaQjrffPAm/mM+Y1a4MoHG/U89
 p4QW6JgFkcgCvXvu44W+yz5LXEyov6GrVrVr2UVCx0STuRuG3ubwLcBI05O8KwYQQfLS
 qLZSfJ4qa29snAGa1sfVHjphAC1pcvgYZ2mSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ck+F9ON2fnwh5hsuCM2qk61O5ay8betZRUcLdrsV0zI=;
 b=cV0M0VFDjVZv0dXLCHTr3lszeOSGNFqEJbj/eUOgNAiPjDQzg0JXlNt0uqYzXyP6Nc
 NlbcGYKUbpsaLfxc2hjvXnwtbs1RgOLYQdcSTbLmpXGq+BMDixECWDkd0E6Sc280fR0F
 GccB5jBWKrRm+WOJj+WF/VDbkEc4TbEpIMkqHSLZfv66jro8osw8+xA6ZxmqWNNHQHbc
 jjP5b9iA7gIdpZNsFbOwCeZWCrRkGa6NH4ZpaQTi3fH9HyeqyQ1rhNAqF2fWqOImvytI
 /FO7xnyfN0R0S7auEjJy4dFvYGT40fX3mX0w/Ps8aDnHoSZPaQ/tkJ2z69uhfxcUuCVQ
 6S3g==
X-Gm-Message-State: APjAAAWLvZ2HiyP/SP2gFY8PJrj++jsTCpJw+OCkZto9akeVHfg6pLIY
 3lpIUSWAOiKIkNDki9MskLn6oDmC9Veabw==
X-Google-Smtp-Source: APXvYqyFrdw0mUt2bWg6+Evu1JeLd/Bd0yblbKAiu9bKbdKsHxgMYuF4cWcEbZG6DgbrO2oVmrykTQ==
X-Received: by 2002:a17:902:42d:: with SMTP id
 42mr3916281ple.228.1558931681051; 
 Sun, 26 May 2019 21:34:41 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id g9sm8236061pgs.78.2019.05.26.21.34.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 26 May 2019 21:34:40 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 3/3] arm64: kexec_file: add rng-seed support
Date: Mon, 27 May 2019 12:33:36 +0800
Message-Id: <20190527043336.112854-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527043336.112854-1-hsinyi@chromium.org>
References: <20190527043336.112854-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_213442_110597_CE8D534B 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Nicolas Boichat <drinkcat@chromium.org>, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
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
