Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDB110DEAD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 19:54:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CafUZymA4VAnCOG933yAxeQXFu0oAmT/eMf9FL6yMW0=; b=EoqqagW7/0woJo
	i3uevSbz9SiZoscT7ytKehsuRTxudGdZKiowjURgF1htKM8OtPPAPUbRa+9NgvKHMy0CtlEw41grL
	o6s5/bz45/gsmtIXNlCHdmBwNkvDtmkD8Z1iL6HuhSC80J5mYqfJ1ZXJZNYkXAIJ6jD7yLpDOi3e0
	XFxmkFP5pLcOwS/yPHC7Rz6IMqJnV2FOnPOn9VcrlrZ9yn4cW2paKISXzB8GEjK+UlWvQz4qh5/Bw
	0xMlUcw32brQsX3q+XEEZENVf4EJx+DuBtJ7+ozkeery+4uqfrl4WYBlOC0dIB5uW6HCa2sghLfIv
	CTEYL7mUVrFKVRTlgqqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib7se-00051M-Im; Sat, 30 Nov 2019 18:54:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib7sS-0004zT-U6; Sat, 30 Nov 2019 18:53:58 +0000
Received: by mail-wm1-x342.google.com with SMTP id u8so2874198wmu.0;
 Sat, 30 Nov 2019 10:53:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+kgxHfmrLrW74snZZglbmg5V/YCpIUHU33YjewUkzMA=;
 b=tBO5/eSaNaTn3qZ5phIDYDVnDD/KurOdupHxeZOSTuhWIP8nSsFhAm/g9TZ0MrOTty
 N1qkRdu2uEu15LuO9FJnXJqk1y44ZBoz7uU6bpqfP2TJwRDdmGUEzBLoxukNyke6HTSa
 YeJ8SbdVnjX6KTlHHDtBtHmqfAyWwR4xPF/kLZKjPI9HGtTZwx+RKsgEKzrqG5WmPFJ+
 0kPEihJQsJvLZ+U9OaXyaxUv4GQCj2xX/Acro4FowuGOnyRGCoLdaLQRP1DVrLm/Uq6q
 RJ9hjfDX81UtmVAOOJVIh/0hvyR4h5ZWaacb+Nw4Z5JpCaqU6p8e3ONvzpVA1aoakD7p
 8ZMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+kgxHfmrLrW74snZZglbmg5V/YCpIUHU33YjewUkzMA=;
 b=WT1dwgh1hIY5wRLCjPP3uDasqgcPYvQ2mhitsFKkKopa4L7NshpLuSqIjDQ/K1Z+JS
 GbeaI9lnIVDrbK6i/xAg62YEwXp3k6pRhfJANoY4qipZGGNR6pclcM8vGgkG+DBRsddL
 Tl5HGmgqQB5sxTpJKCHl/0ajlaAva+oIoDgaupwnE9C0WbTyv2MDMrrBy3sq0x25HGmV
 LLc/r3WcecUfPQJF6Ph3OYr6WzIB+RNbLSSdKT7cKtwdtuAn7FnQIzgnkoip9dyH3lta
 tCEkbCFTxtHaplQ18hCT3ETSPviARu0YaMgQtY1fJkQax5q1528FNL/jpDCTlig7dQf7
 goVg==
X-Gm-Message-State: APjAAAVJQoUvZDkptacHyjDEB77jI73h251Wu8dy/gacqHFKRRWPulP9
 bXycU9L+Kvu2kNK0e6SCLlYdDINy
X-Google-Smtp-Source: APXvYqy+AptLFvOg56oiPA3eBF+V/0bqwP6CitN+KxZd1XEwAi/fIeyCYGRVq/t79HRYvwAZ1FDOOg==
X-Received: by 2002:a1c:a5c2:: with SMTP id o185mr19716529wme.35.1575140034761; 
 Sat, 30 Nov 2019 10:53:54 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id r6sm19295637wrq.92.2019.11.30.10.53.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2019 10:53:54 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: p.zabel@pengutronix.de,
	linux-amlogic@lists.infradead.org
Subject: [PATCH] dt-bindings: reset: meson8b: fix duplicate reset IDs
Date: Sat, 30 Nov 2019 19:53:37 +0100
Message-Id: <20191130185337.1757000-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_105357_000194_B8AFD408 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the public S805 datasheet the RESET2 register uses the
following bits for the PIC_DC, PSC and NAND reset lines:
- PIC_DC is at bit 3 (meaning: RESET_VD_RMEM + 3)
- PSC is at bit 4 (meaning: RESET_VD_RMEM + 4)
- NAND is at bit 5 (meaning: RESET_VD_RMEM + 4)

Update the reset IDs of these three reset lines so they don't conflict
with PIC_DC and map to the actual hardware reset lines.

Fixes: 79795e20a184eb ("dt-bindings: reset: Add bindings for the Meson SoC Reset Controller")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 include/dt-bindings/reset/amlogic,meson8b-reset.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/dt-bindings/reset/amlogic,meson8b-reset.h b/include/dt-bindings/reset/amlogic,meson8b-reset.h
index c614438bcbdb..fbc524a900da 100644
--- a/include/dt-bindings/reset/amlogic,meson8b-reset.h
+++ b/include/dt-bindings/reset/amlogic,meson8b-reset.h
@@ -46,9 +46,9 @@
 #define RESET_VD_RMEM			64
 #define RESET_AUDIN			65
 #define RESET_DBLK			66
-#define RESET_PIC_DC			66
-#define RESET_PSC			66
-#define RESET_NAND			66
+#define RESET_PIC_DC			67
+#define RESET_PSC			68
+#define RESET_NAND			69
 #define RESET_GE2D			70
 #define RESET_PARSER_REG		71
 #define RESET_PARSER_FETCH		72
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
