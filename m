Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067779A8B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gVifAUArJeiyzXKqfHJnoaSHQfhkk92luIgGDdh51Q8=; b=SDMDcbfQ7bcAm0
	pjVKgjyK4EylIE4oLvQdcH+oKf0QAM06i8E0tjqZ2K/2ydhACpdaSGfv61eA8+pB5T5gSM4VNHaMa
	S8MKpDwwhefet1wzgqgftuDPcIasP0wfagp/bJpKBD8c+HBeubogX+D/Ncjqot2Zn2dvLF9i04ZfD
	j1ER+WQdmracH7t15oUUG777urKzHKnwhrhCPL1dPW8zSaD2dUIwpFYWWcd7uRl/7KiFHiLJuBv91
	SacrWJ0Pyu40erb13jMe35tWH+MUML7hU5JMD/dkonIw6pl963PkAzzT/F4eu1RP8TVci2r2Dzasc
	3bypjlGR7ZtFDpBqQCug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13w2-0007RD-UF; Fri, 23 Aug 2019 07:24:35 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13mT-0007CO-Rl
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:14:49 +0000
Received: by mail-lf1-x143.google.com with SMTP id b29so6401019lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KnDL8S0nYFPZuOGkV7hWvantVpmZ1rr6sKUqGh/Qang=;
 b=C4F3CA9BIwRT6cG0lrQu03QQ7T17Ti/u+9GOwkz/EafvkLjriBsK5KwuThbRK8v9Fk
 XwbVT3YmNPxrNXxmzFRlPRw5qwSjYpucf7Cpg4DS99HOlO58tKslDrZFeBQmFWtVGImu
 YCzoS4JAiTXMuK4+jnLP6dhrum522zYnK9Sr+sI2Eykvwre/GxXIXXAwgTQ/12D2gino
 Oss2NJFKC8pP7IEphCpSDljubqhbMjqBSQr4pd3WM6tinppk2/1Q3EtayWeXOUm3qt9a
 I4gTq2M0P5RY9Ntr4kn9tiid2ff/eJ5T9+ySpO2pV7yIAxrPr4q9peawF7fyLhflhjyb
 mCCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KnDL8S0nYFPZuOGkV7hWvantVpmZ1rr6sKUqGh/Qang=;
 b=fLZ+BbcNQi0XSA/Sy/JDXl9/pHfB7cTWs1Y+kuOPFXA3JPK7fIEmDqd23Ugik7QNcL
 4HvwlTfLk/AbSyON5/gHVB9iHU/SCgHNGNzMlWq7pLtMm4scOjZzFPsXuTBSzYJe5XME
 IoUcgradQ3i3yiyf7VI965AqJiVuGg7RAlly1K3HmI4oMwpMvmLeiLehSRcR+jIo2G1U
 UsACMu5r2WS6G2kn8YhzpwFH9K42yppPTUh8uQ+CU+D5kvlhifW8xe8j6sPhtIJSxLAp
 HVX7pNCFQAhLNCNEbieTgZo5u9mDqeZznDgjwphl/PaOhwGR7hU0PMiznGpqtP4B8ucY
 2XUQ==
X-Gm-Message-State: APjAAAUeXRFhiNE9rOQFSma9G4wuMYVCnF2Pm8L6cuEoepUVZZZ+/+mR
 OblvJEq7hKQRbd0yc369Kzk5xrRrdQE=
X-Google-Smtp-Source: APXvYqz2Zvq7MNQVB42tAcYJVPQ1nSI8t5nqPcSa3zDpvbk2eY8bX/DL5PpbQDxNNhHTirZYu3iqYw==
X-Received: by 2002:a05:6512:50f:: with SMTP id
 o15mr990933lfb.63.1566544474967; 
 Fri, 23 Aug 2019 00:14:34 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id m21sm482721ljj.48.2019.08.23.00.14.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 00:14:33 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH] drm/sti: Include the right header
Date: Fri, 23 Aug 2019 09:14:28 +0200
Message-Id: <20190823071428.6155-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_001444_027171_A130F0C6 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Vincent Abriou <vincent.abriou@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sti_hdmi.c file include <linux/of_gpio.h> despite not even
using any GPIOs.

What it does use is devm_ioremap_nocache() which comes from
<linux/io.h> implicitly by including that header.

Fix this up by including the right header instead.

Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Cc: Vincent Abriou <vincent.abriou@st.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/sti/sti_hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sti/sti_hdmi.c b/drivers/gpu/drm/sti/sti_hdmi.c
index f03d617edc4c..4f1aaf222cb0 100644
--- a/drivers/gpu/drm/sti/sti_hdmi.c
+++ b/drivers/gpu/drm/sti/sti_hdmi.c
@@ -9,7 +9,7 @@
 #include <linux/debugfs.h>
 #include <linux/hdmi.h>
 #include <linux/module.h>
-#include <linux/of_gpio.h>
+#include <linux/io.h>
 #include <linux/platform_device.h>
 #include <linux/reset.h>
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
