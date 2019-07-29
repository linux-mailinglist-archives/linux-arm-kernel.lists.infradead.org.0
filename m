Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7D279345
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 20:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9PBcvnGLzx+71ZWcxRIR/Xz2WvV8bHg/xDA6srHos8=; b=FO9rrXKT0GLuft
	M97pP4UdKNU186V7wYtOUc4uYJBys+PQ5BE4QqxF3gTxx0a9+8dFxfHU7rrFJ1qURYGK3JPfQZLDb
	lVByRTOOurbaxFij7w0JqNWlrIzcp4Kvf/L8SXvBZnTM3fTo2CBbvYoxZqdfhGqupXwjdw3/qUcZx
	23yQyUF9BlnffY7gm39Q3Jh/c/sjc32McxVKmfJVMsIBNzRVg1E+oxWDbBM1d7u/bEz805ItO3ke1
	3N6wqX7HRU3Mkh+P5NgwWLvLm8jZA4//2ihohcvnzvXl9y7gYEFYmJwFiBFG3DWJfxW9rUjYggs+t
	vJhFyILFUhL+M05NiNAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsAaR-0004Gg-6V; Mon, 29 Jul 2019 18:41:31 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAZQ-0003gh-Qr
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 18:40:31 +0000
Received: by mail-wm1-x342.google.com with SMTP id l2so54341847wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 11:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NL/5zTQnhohIGaIYxAmHMipqwG7WMic3sqIDS1WvWAs=;
 b=Ljx2SdXOenWk9HylJB0m7+GqCQWJ8bOa7rynX0A+nTLES1zIBX6aYXSnDNk6NU88HP
 itdZ60+0KuP8W8UE4ccMSxtZAaJQYznz+WZHwkdvmxOS6FYBoK7tVBBxlqHPadxw7Mfe
 sGs56zxmzg7avXy+SUU6EMm+nymDm5iY3o91KrfMIhPpG/0GTGbuACRflDKgjB20U+V4
 +QRsX/ob4CoDHyWAs/FJlWN/2JkLP9HI+6H4LWOlroC6dCaHuNlqTTiUlcTHcVNJ/vtn
 w947f/pBV8rHgLFWcRO/lY9rniZisw6PS1b6RKp3gwuSu3Jpx6b/8AWRuAphDf6ZGXN5
 7kJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NL/5zTQnhohIGaIYxAmHMipqwG7WMic3sqIDS1WvWAs=;
 b=eCSTeGtXxxdhBWBKs6491tERGMFkd3fjaH+8Pv3vvXK9cirZRNCpoQNd9gakBvo694
 /Rwl3CqN1k8AbJ5RzaH7vkQZPWLfbcfpurromA+NtovIZVjyv+z3cCWkhTt2WK+z55Fq
 voc7Wm2Dpyvzj/IM5ml8khFT960TauC1TW+0SUwOKdUMsxY3DADHw0ey3ycsFbjODmm8
 0/comOpko1AHd1Wus/d5QDGktZ/ATGtmOCAfhbJYRNpx+t/pRsYuCq1MuHu/21ACZeBO
 UMTSTzqXMkmONbbnyYXBcz/M49OtBdLEF8NVZGaqy5vK342bVe06F6Nv+OEx9/9buuaE
 5Cjw==
X-Gm-Message-State: APjAAAW3OqMKEGj+Cb5Z2JCGbYUdRPbNwrUs+GZ25D6gEtdWuOwKnMsM
 Fci0STIFz+Klx6vyznvq+6MFkw==
X-Google-Smtp-Source: APXvYqzO8CDDHffNjKGGHAThG+qAQeZSgvJNfczqVERJbnhJ/UQrCuabRFPykRcFcXO0leXZ4ffb5g==
X-Received: by 2002:a1c:f20f:: with SMTP id s15mr25140377wmc.33.1564425627289; 
 Mon, 29 Jul 2019 11:40:27 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
 by smtp.gmail.com with ESMTPSA id g8sm60735790wmf.17.2019.07.29.11.40.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 11:40:26 -0700 (PDT)
From: Carlo Caione <ccaione@baylibre.com>
To: srinivas.kandagatla@linaro.org, khilman@baylibre.com,
 narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
 jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 2/5] firmware: meson_sm: Mark chip struct as static const
Date: Mon, 29 Jul 2019 19:39:38 +0100
Message-Id: <20190729183941.18164-3-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729183941.18164-1-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_114028_899162_E687354E 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Carlo Caione <ccaione@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No need to be a global struct.

Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
 drivers/firmware/meson/meson_sm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
index 8d908a8e0d20..772ca6726e7b 100644
--- a/drivers/firmware/meson/meson_sm.c
+++ b/drivers/firmware/meson/meson_sm.c
@@ -35,7 +35,7 @@ struct meson_sm_chip {
 	struct meson_sm_cmd cmd[];
 };
 
-struct meson_sm_chip gxbb_chip = {
+static const struct meson_sm_chip gxbb_chip = {
 	.shmem_size		= SZ_4K,
 	.cmd_shmem_in_base	= 0x82000020,
 	.cmd_shmem_out_base	= 0x82000021,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
