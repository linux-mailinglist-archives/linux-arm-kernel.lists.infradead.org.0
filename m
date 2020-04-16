Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985351AC9B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpoeNOO+Pdfj0Iouw4OSl6Aiil6DqQ1FKLM8mfcVejE=; b=hHJIFgcl+EecvB
	UqI3JOAh4YcV7bpgJk0XlXnfFWSLjAUexmWKVTTL9a/Mu+pxNnMRekJQmRpE2RuotNawJrvkgXI7p
	HbVeOlzR1RKK2x5XB6RiBjjctl6wtINr9psdMysEGickxH6LTxA2l0VWM2hw/Ir/4WnYmfuCSminZ
	fMSr+L9IFVpeRSbnNtWvFvfsy5gUMSLRJHovdzE/dYuZVgo6QFLeqkJsDeZJHkLpvB9ZILny6KFCW
	UdgLRnxKDFwhcwoNJWe8bJkoB73jwxskr4WWx+vh8NBFidxDY8nMjpf2+wEZu7rYsb3jDU5D7eXQH
	dEzbWNBCk4XwN6DpxZuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6PX-00083P-Q9; Thu, 16 Apr 2020 15:26:39 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6OE-0006we-4Z
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:25:21 +0000
Received: by mail-wm1-x342.google.com with SMTP id h2so5017038wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 08:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DzaSKn4cSSk3k+NN0i6pGCPn8vqE61m//mTImjLqruU=;
 b=WhOJRALYh24x37/GjVj9Zd9bfz3f/KUeQQrju/ctwcoa/3SdbeZoJf5HHRF+xv8u8I
 CBScgJnoMMs+kI3bS5XlCxMaqGGLVaQgjyqxYNqQ27vLL2/h1/XlWP6212Y5/3+4/YeH
 qu53cPfcioCAb2Z772lwuoyf16sGAxRYn+QRFcbkdfSsocBM7izk25GEFRTVKKdCX0CZ
 0wWoLh8MZTN4Euk3OPB5hHS5NsFRSEufZvhXKucOistUQdMennsoN6PuLN4uzCl/8MxV
 6X3KOXwVmVoTKmbf+WCJKhcgKcTbzjNovBgTGWUkOeOFbG4j9B/K2/0p9Ez2QROiy1w4
 i/Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DzaSKn4cSSk3k+NN0i6pGCPn8vqE61m//mTImjLqruU=;
 b=JVS4TRI4ArzOsk9VEFns0gguU0ypnoi6NH+5CxIG+eHj8OkfDFXRAqpLEO5mqvY/Tm
 Bt7lxE0toD+0BMhakJODbsbkpd/1a73+MIqK8eQcg7kdCUZcE2vPozyXLwMTSMSODtuG
 yqTwUNOHMqxHpzEPyvRJthsFcsSx2Jth+Ux/9sAX3t8nexEp1TMuVUQbE5B3aB+bGdv6
 RmKD4vNk6YEsWgBhNfLtO73ieEAxYWE4aWA3F3TL+jEr4d0xvgfeoCZ3oNmx4JhtKZhA
 IRGkrQeIQav5nugw/g+Yj0ypeJ5rOrIB3ARULwygJnVMUhSROcvKmtKefcxn/jccGsXp
 qixA==
X-Gm-Message-State: AGi0PubljtErCakIqU9+tJe6sXWY5XkuE1l0/cxrfsVHfWp8GdgAhG2s
 wTB8Vb4liiCnN2Ds5E8kkVZVIg==
X-Google-Smtp-Source: APiQypLaZFDZc8S5mgnDvOeQEVBVo+Ns/ShJ+crrWMRHJL15JEjj44C7VXY4PkyqeskL3CNTJD4UKQ==
X-Received: by 2002:a7b:c0d5:: with SMTP id s21mr5340614wmh.107.1587050715289; 
 Thu, 16 Apr 2020 08:25:15 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 i17sm18019489wru.39.2020.04.16.08.25.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 08:25:14 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 5/8] drm/fourcc: amlogic: Add modifier definitions for
 Memory Saving option
Date: Thu, 16 Apr 2020 17:24:57 +0200
Message-Id: <20200416152500.29429-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200416152500.29429-1-narmstrong@baylibre.com>
References: <20200416152500.29429-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_082518_275168_51B21BFE 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amlogic uses a proprietary lossless image compression protocol and format
for their hardware video codec accelerators, either video decoders or
video input encoders.

An option exist changing the layout superblock size to save memory when
using 8bit components pixels size.

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 include/uapi/drm/drm_fourcc.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index a1b163a5641f..664dd238574a 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -843,6 +843,21 @@ extern "C" {
  */
 #define DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_BASIC		(1ULL << 0)
 
+/* Amlogic FBC Layout Options */
+#define DRM_FORMAT_MOD_AMLOGIC_FBC_OPTIONS_MASK		(0xf << 8)
+
+/*
+ * Amlogic FBC Memory Saving mode
+ *
+ * Indicates the storage is packed when pixel size is multiple of word
+ * boudaries, i.e. 8bit should be stored in this mode to save allocation
+ * memory.
+ *
+ * This mode reduces body layout to 3072 bytes per 64x32 superblock with
+ * the basic layout.
+ */
+#define DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING	(1ULL << 8)
+
 #if defined(__cplusplus)
 }
 #endif
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
