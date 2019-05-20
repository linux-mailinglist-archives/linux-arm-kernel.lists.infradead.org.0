Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD5B241B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 22:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THErW6+FvPrA90OSFj5GrbZQ5jTQ6PH/VRxUAojaSwg=; b=PFiMDeVd8mXcYG
	5PTb74IJbTgUuGfW93Ptr3YJaKCXEOhUP0n1h8xPZ73iNKKjC2V6AQHzG0ptmSr2LyT8D/ZRALlGg
	1LkJ6MqoL/XmIcRt6VYCuRkOyiZ0Z14tUHyda34OliLZEVZNzWP9U9btMCIIM+xxrmYYFvGiLIq3a
	6k1pYyes+4Z74RUxesybbhQP2m7CjqiLTSquiri07n6W8WDyrYktriWn78vtYiIc8eLiHi7gPPbx+
	g6STmldeFHlv91Cii9Luzs3TKkNbzS9lk2WreFvT8eAeNRMHqsKzDr0uSaK90iZ6lla+ZmJ0WqLbf
	Ar3uIuB76bhCyXkDmskQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoVp-0001xx-Pu; Mon, 20 May 2019 20:03:57 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoVP-0001Y5-9V; Mon, 20 May 2019 20:03:32 +0000
Received: by mail-wm1-x344.google.com with SMTP id j187so703713wma.1;
 Mon, 20 May 2019 13:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HBbcf5smXwn2ERqZmWxMF9pKx3odOzZfT39bu+z+NO0=;
 b=lF2o1SjAnq7Xp1obe3LurDFZKd5BN4khe9sRyPhqgRBSwXBdkoewCBHFf8zoEzEx3t
 waxWgk5yCdtpMkuIOw5iniH4lLAYZqDMMLGCnfXqfrHbgEYFj366Pmunus0UqhMLDz6N
 lUIiposDj1jZjf4bLcYTXv/O61vYSkhJM/7nHXruOZQ5Dc5G28mPA9h5j1CCdfX4yZx6
 Maym0sCKZgVswaiC2gxIrp4w3V2P/K8rwqIMIWm0NAme6TuS7h3Do3JSHUdLUxBnuB3E
 kwQTXI/91n85e85WkrN1yM/EC4WLajIH3hna/bJWB5kFlsm8P8Cn8lGaGXZLXEM7HE5J
 u4RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HBbcf5smXwn2ERqZmWxMF9pKx3odOzZfT39bu+z+NO0=;
 b=fO4eyDpSR3D5YQZwWJrQM6u7iANyeh2OKEf0vADamZtvW0iRqELPynbTgZriQXspCc
 egtBOjJIhSLnqUj7blNilasx1SE1PBxc3s+oh0xUl4rI86q0dkQJDc4G75iIIzHCEBZU
 bafxgHrDoJk3aZRm3Wr064BVz+Tz/RzUOH0ZLkh2qY/Khxu0HOKE7z/HF4zWygAxvuLA
 0Aus/8JPJJx+Ua/ZL2vm4xSKSn5GHXNx3o4ARaJTCgtpZv40+Lp1cyxfOIX1kD3jHp4r
 tjsK2BXmxdS8qlN5yx6HoPweGX+uchySCCWZqhCT42W7XB5uHn4bJqmnC+PRALC0GayG
 vmHQ==
X-Gm-Message-State: APjAAAX0N7hZ1jzYS/IBRfl5p5ZegbeZX4gCe2AdOrEuzkTdXuUynYv8
 aee56nGA54WSqxOn2z+mdI8=
X-Google-Smtp-Source: APXvYqzXRf4StT7i+KCej0246pfMyRIOamHfikr5+acfST7ileYaaYz3AnW9nN10il0xEYLcJxFksA==
X-Received: by 2002:a05:600c:23d2:: with SMTP id
 p18mr613218wmb.66.1558382609718; 
 Mon, 20 May 2019 13:03:29 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133EE71009C356FA1F0E19AF9.dip0.t-ipconnect.de.
 [2003:f1:33ee:7100:9c35:6fa1:f0e1:9af9])
 by smtp.googlemail.com with ESMTPSA id t7sm23583379wrq.76.2019.05.20.13.03.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 13:03:29 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH 1/4] dt-bindings: clock: meson8b: add the audio clocks
Date: Mon, 20 May 2019 22:03:16 +0200
Message-Id: <20190520200319.9265-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520200319.9265-1-martin.blumenstingl@googlemail.com>
References: <20190520200319.9265-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_130331_326252_FCFE9CD5 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The audio controllers on Meson8, Meson8b and Meson8m2 use similar
(potentially the same) audio clocks as GXBB, GXL and GXM. Add the
CLKID_CTS_AMCLK, CLKID_CTS_MCLK_I958 and CLKID_CTS_I958 clock IDs so
they can be used for the audio controllers.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 include/dt-bindings/clock/meson8b-clkc.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/clock/meson8b-clkc.h b/include/dt-bindings/clock/meson8b-clkc.h
index 47556539f0ee..68862aaf977e 100644
--- a/include/dt-bindings/clock/meson8b-clkc.h
+++ b/include/dt-bindings/clock/meson8b-clkc.h
@@ -112,5 +112,8 @@
 #define CLKID_VDEC_HCODEC	199
 #define CLKID_VDEC_2		202
 #define CLKID_VDEC_HEVC		206
+#define CLKID_CTS_AMCLK		209
+#define CLKID_CTS_MCLK_I958	212
+#define CLKID_CTS_I958		213
 
 #endif /* __MESON8B_CLKC_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
