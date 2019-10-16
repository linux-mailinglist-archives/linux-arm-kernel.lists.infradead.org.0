Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123F1D863B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 05:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdFhFwaHoHPKywSK4278R0xuEn8bElJqWISKlD7XMVw=; b=pWl3s/KkOPbMOg
	/eMZSWAvymf49UFSqFF0qrMOtg3VLQi9Cr1zvcrkFvZIDnFmeuq47bhMfatCioSAG0rpCPVnfS75j
	zFufYmUsIip/xQpMTwrZQ4+MD6frbDnHhYlzqDJOsy49Y1vK957Kd0m9c7hjhf0mLrVg46aWVYw6a
	ht/xrICWHqmkc4+QiwnB1oJMqlmGWytdmJpr9RSB7DLgKzKOUVGsHCgozNxtBuamYfX7gsl7arcv+
	aJcUjOV4V4glPPkNAAGLZu/kwtHjo2/n9efXKb2ItZm8qMCBATqTCgEGmYWHkVrzmctAUJjI5RWqt
	C02woQmPStCB7F+PCQIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKZkE-000766-5a; Wed, 16 Oct 2019 03:13:02 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKZk5-00075e-M0
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 03:12:54 +0000
Received: by mail-oi1-x243.google.com with SMTP id k9so18770534oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 20:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ps4EVuybUtMjAwr2oDyFkpx78Fm0dPag8RJXIQ6sLRI=;
 b=ZrQSV0DSQt7/CAKfrEigLHdIDxlswOYjHDG8Db1U4KxJFnjeaWuWtikRq/3XpXID1M
 gEDgZDoEhzsJGePOYjhPxfdCfpEHlJ7Dq//a01bSFAAAlShkI0FOhqh5fY5IR+SKMwmv
 VHlJUHMZbeE1WhKSkougzM4IAzZwPQC9NqTFKvmijHSJiLgsCiBJW2/kboNMG7DBnfcA
 NIL/mxk50sekpXtHWP3hT0HFd2VKHnfTm5YfqaOCLuiGjlUZ6rxf3EIGNJ4QYyuaAi5+
 JeBECp//LbCgcWj8DCInG85WHymzN6y1arfB5rJoJgSKaMx2CKyOOe6w5HJ7iSp/U/T7
 qJIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ps4EVuybUtMjAwr2oDyFkpx78Fm0dPag8RJXIQ6sLRI=;
 b=p+4N8/avTQ6lKoHSux7jKybAAwc/EsM323z4vSIK6RLGSklocZwdnU6Reu/syCVcf2
 AwStf6TY7CaANNzO5PH65ZFRqgVu3cQqRsOl+xs8bN4ZBiSmCgpdNQzLegTy5ySWsLDT
 kItZlquSCZqiaUz9zjiEtfPTwxozICzz4a1GZGypD1hlyku1XAJUqIded5/ZhGkR3ZiA
 sv228JyEaMIz1O5Ltw7ZvXASIs90sFk1cO58QoZTfBteWxnUsCDyHm+89d0g27GQZioj
 T5udBQ16FLOTEPPgDa071LVwH1PILi1oAH9SNAK2NEBG721hIMQHCVi8KFDD059kg11z
 Y8sA==
X-Gm-Message-State: APjAAAW8LGRWbKPOKf5fl9k6nqV5OHtjGUM4JadonvHpt+k0YDjWLXfY
 pcdqUizu4DZNfgEgdC6C8z0=
X-Google-Smtp-Source: APXvYqzemvPwAicUlAsZF5hC3V69o0sHDC/Cuz34m2aXl5tSu0Nnv1l9LFQAJXp8eeTxDpJgZqStsQ==
X-Received: by 2002:aca:48d8:: with SMTP id v207mr1499400oia.113.1571195572447; 
 Tue, 15 Oct 2019 20:12:52 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id z10sm7854337ote.54.2019.10.15.20.12.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 20:12:51 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH -next v2] arm64: mm: Fix unused variable warning in
 zone_sizes_init
Date: Tue, 15 Oct 2019 20:11:08 -0700
Message-Id: <20191016031107.30045-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015224304.20963-1-natechancellor@gmail.com>
References: <20191015224304.20963-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_201253_720303_29DCB55D 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building arm64 allnoconfig, CONFIG_ZONE_DMA and CONFIG_ZONE_DMA32
get disabled so there is a warning about max_dma being unused.

../arch/arm64/mm/init.c:215:16: warning: unused variable 'max_dma'
[-Wunused-variable]
        unsigned long max_dma = min;
                      ^
1 warning generated.

Add an ifdef around the variable to fix this.

Fixes: 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Fix check for CONFIG_ZONE_DMA32 as pointed out by Will.

 arch/arm64/mm/init.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 44f07fdf7a59..359c3b08b968 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -212,7 +212,9 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 	struct memblock_region *reg;
 	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
 	unsigned long max_dma32 = min;
+#if defined(CONFIG_ZONE_DMA) || defined(CONFIG_ZONE_DMA32)
 	unsigned long max_dma = min;
+#endif
 
 	memset(zone_size, 0, sizeof(zone_size));
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
