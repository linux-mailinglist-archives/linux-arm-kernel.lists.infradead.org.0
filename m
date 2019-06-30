Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86DC5AEE2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 08:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YpP9PXcEwLsRNFLmM6CtXegTNr2tpZsf71rNRzrj9vw=; b=rZO73O7ljCPEaq
	OVboq9Bdc5yHqn2nyBIPZ3+GW11crlJC/PRFLNThz6jBz/LjB/i5ivSQDtEqv9FETGcUQYzxZYY90
	nkV0vI0nWrGQQGbyxFl4uVwV84gXr3i5FdV3SoietcxPeVYFzqLkAFTeR37AuhoMywB0qQBjdVPGv
	oYgPzaWC0fDesUaWzQXarNbzFoEQTvQVg4ewqltueVW5nsTjEbwnGTdd5qMkgyGGTpVYuJVVYOJi3
	Ib9qtdGDSZUHTU1bpaEmDT6CBoNpm7G/WUAsKxIr3bzPpSX9E7ArxfI9OQugmX5amDWT/dtnZfZNK
	UZAQosk6CF2ipQo9Nmmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhTBk-0001Gd-8v; Sun, 30 Jun 2019 06:19:48 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhTBW-0001FG-Be
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 06:19:37 +0000
Received: by mail-lf1-x141.google.com with SMTP id j29so6559611lfk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 23:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WBff9Q31WytToFILW5VoVwYEkxeSh4M7iWNthN+AK6I=;
 b=Gu+je+QvkPfwZwmVMBiAW+7QjNESKrsPTusBSrnlL6x3cKKjMpcKVv6OOktztRyFkm
 LNDS/CQnqpeioeg2vD+CZRyTWXv7GVVUIYCi2LaxfNuCJrBh+SJt4ID4aN49YR8rW5sq
 f0VKml1Mo1WCKiM614KKxegV0o566gY0yHAvQ1xhDPqtm9Z6+5664z/TfdPjNg0Kt3Py
 RG8dQpnvd4zoSMtsFhbY4AKE68BUQ3LJVqix+9c6IYUVGSXXNiMBsDiDEw1SnbZpNeDY
 59Q0MlyqpbqjIk2cOKZEggFOph1f4OOES8KGKe9pjBPK7OWN2Il9qM+IlmBfa9oyxHXq
 8EyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=WBff9Q31WytToFILW5VoVwYEkxeSh4M7iWNthN+AK6I=;
 b=MsYpG9LuutfJYklfmmqUKzt3biamSHKUPp5yJNT1N6MGzAI801AJVsurLkSBQk9KIh
 3X8FwDAVLrADcE5uDWnRZN+NjO9HYj+YCihdtV5nmvyJsLx0fsJsOzR1RF5/IcP/4MX3
 F9+4hybooEGEMw+2Yr8748XjRMNDEmuX28dQVD/CAveoT/iEr+Qk3OaAadutZzBi/t8u
 PYAJeeFeK+O8NnjEfaR5ctZGlh7l78j/HbZ3En1gAV7XI1hoo+OB+Lps85bBwTTSAYUQ
 bsypFtWKqAibT0LEK57FBsOIQEn1lAvVZqnzxNy7qRh0hFgXw/3aFe2NxfVTkmBcn7iO
 8MWA==
X-Gm-Message-State: APjAAAWDCUTLc8HwGmGpGarfmPqAYGqgd0PFL5PjWPARrK4Ih/7bY7Kp
 YJec6VGStDV8dtcrte+5Uls=
X-Google-Smtp-Source: APXvYqwrcoTpWP5VhHTwC52oXSKcJgARlMY1UIo4OQXUv7/qwWhLp2ZyI7Xek4qR9uaa3DSxLagPRA==
X-Received: by 2002:ac2:46ce:: with SMTP id p14mr9097784lfo.148.1561875571620; 
 Sat, 29 Jun 2019 23:19:31 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 o74sm1794024lff.46.2019.06.29.23.19.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 23:19:31 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v1 03/33] drm/stm: drop use of drmP.h
Date: Sun, 30 Jun 2019 08:18:52 +0200
Message-Id: <20190630061922.7254-4-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190630061922.7254-1-sam@ravnborg.org>
References: <20190630061922.7254-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_231934_403847_8EC11B2D 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Sam Ravnborg <sam@ravnborg.org>, Philippe Cornu <philippe.cornu@st.com>,
 Yannick Fertre <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop use of the deprecated header file drmP.h
from the sole user in the stm driver.
Replace with necessary include files.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Yannick Fertre <yannick.fertre@st.com>
Cc: Philippe Cornu <philippe.cornu@st.com>
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Cc: Vincent Abriou <vincent.abriou@st.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
---
The list of cc: was too large to add all recipients to the cover letter.
Please find cover letter here:
https://lists.freedesktop.org/archives/dri-devel/2019-June/thread.html
Search for "drm: drop use of drmp.h in drm-misc"

        Sam

 drivers/gpu/drm/stm/dw_mipi_dsi-stm.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
index 0ab32fee6c1b..a03a642c147c 100644
--- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
+++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
@@ -8,13 +8,17 @@
 
 #include <linux/clk.h>
 #include <linux/iopoll.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
+#include <linux/platform_device.h>
 #include <linux/regulator/consumer.h>
-#include <drm/drmP.h>
-#include <drm/drm_mipi_dsi.h>
-#include <drm/bridge/dw_mipi_dsi.h>
+
 #include <video/mipi_display.h>
 
+#include <drm/bridge/dw_mipi_dsi.h>
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_print.h>
+
 #define HWVER_130			0x31333000	/* IP version 1.30 */
 #define HWVER_131			0x31333100	/* IP version 1.31 */
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
