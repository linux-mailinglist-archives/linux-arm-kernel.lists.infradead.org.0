Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBDB10DDEB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 15:57:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DAYfpntb6VqCkt/iHyDXHMQSeizcP8jQRSRrY83ftw=; b=s6C5N3iU6H51Dw
	udHEJJAENjBFqcQWKLRVCSvvqrbdxi4Shgbnv6O1X64MvATksAFWPHabY5TL+zEilREBoblYhijoB
	OKEh86d4M9GpZs5mF+4vFkyrHQJ5bvQ6rUT8Qj9TKI+NpOlDofEAce16haNj/jYS98HzasyUz8CD6
	KenWW6gAHE/TcH8/GQohCXRnLg9Y6zatffuYnh+jzvISedVF2jZsxmtyEJnfhNw8GsBY3AsGPmV/Q
	JY+lRJRqqtlPeINwxYKUJ2vtWjWTUWgSTkSi8DD1zVd9NblTTcX+wfPJlzUOuWIl2/F4xiWqOZIFn
	MogRCyA3dtVTPwCOL1sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib4BA-0006va-Am; Sat, 30 Nov 2019 14:57:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib4Aj-0006mV-MD
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 14:56:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id i12so38545732wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 Nov 2019 06:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TvmFsbPfOa+mv76uPLkgNY/Uv2Lmgpor1GwCekjIwTs=;
 b=M2OY4GgAq/acdIl+mLclGxdW7OPPxsfPVW6tx+1uxT23OQtQ+pBYSHIgH39w4Reb6x
 a/hBY4u4JfiMV+PSPDdI6/tDdeYyb21nQ/Yzehie+IZ50SxNRy3IhcuT87SaJ6ORtylG
 aX2NVXNKAgmzvpFqdjZR2D/aCTwN3yqwsVVmaomo8/MQJZGbjbRf937V0PB/XWHhS7yo
 4te8IW4rw8JkK7CwxZt8AtozOgfmBCDLOLyD3FktNhWtTyEn7YpdhG7l3iqPgT8NvL5y
 v4VofhZEft5rujuTS3aw2ovXWKeU/SDDNQXNmTwEkmwQW8azQDN4QKChGxa7O6j4CYLZ
 AMYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TvmFsbPfOa+mv76uPLkgNY/Uv2Lmgpor1GwCekjIwTs=;
 b=BZsneyqRFZSvhfyYyJ6CuC1i6F2jjr4t4SWolykKedGOB2X5xeTj6rs4Vy/Rxc2JKM
 VBxV7EqDpkNuV2naH7QDdSIfmi14ZJpVM2zW/gF4c0PXJP/fQwzjRDvPv+BK4czlIrle
 tEDU0y7Y/iTBC78jczL8iGnO+WIJkI+RN8RVDDZEV7gPwcEu3tedS4W7XWzb9LFHYsNZ
 3rYZ7/88z+vS61f9L/5jJ+i2GleJ+EdAg10MMWJOeXvME2r9TqggLOTa6G4jag1SijOX
 9GmuSMOvp64Ze6emhfwOeAKvgNV2L29UAvy82OSXww6YcJbtATzVRlBP/DPwcgppj+09
 SXMA==
X-Gm-Message-State: APjAAAUglXl7TbTFFk2cFw2pl2w//troYDQOScKfU8N1bfegUyv+7WmT
 nbSaV8B1V8XQfQCr2xqLXOI=
X-Google-Smtp-Source: APXvYqwq7I+JJ+i8EqMxpzPkWUJ0pqcwjJqfhJ6Cg2Qmyw5KvOuUGPnjOjJ66CYi44eYij/VVO0nVw==
X-Received: by 2002:a5d:5704:: with SMTP id a4mr39371160wrv.198.1575125791823; 
 Sat, 30 Nov 2019 06:56:31 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b17sm7163391wrx.15.2019.11.30.06.56.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2019 06:56:31 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: khilman@baylibre.com,
	narmstrong@baylibre.com
Subject: [PATCH 1/2] soc: amlogic: meson-ee-pwrc: propagate PD provider
 registration errors
Date: Sat, 30 Nov 2019 15:56:16 +0100
Message-Id: <20191130145617.1490233-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191130145617.1490233-1-martin.blumenstingl@googlemail.com>
References: <20191130145617.1490233-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_065633_720250_7BA0281D 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

of_genpd_add_provider_onecell() can return an error. Propagate the error
so the driver registration fails when of_genpd_add_provider_onecell()
did not work.

Fixes: eef3c2ba0a42a6 ("soc: amlogic: Add support for Everything-Else power domains controller")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/soc/amlogic/meson-ee-pwrc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/soc/amlogic/meson-ee-pwrc.c b/drivers/soc/amlogic/meson-ee-pwrc.c
index 5823f5b67d16..df734a45da56 100644
--- a/drivers/soc/amlogic/meson-ee-pwrc.c
+++ b/drivers/soc/amlogic/meson-ee-pwrc.c
@@ -441,9 +441,7 @@ static int meson_ee_pwrc_probe(struct platform_device *pdev)
 		pwrc->xlate.domains[i] = &dom->base;
 	}
 
-	of_genpd_add_provider_onecell(pdev->dev.of_node, &pwrc->xlate);
-
-	return 0;
+	return of_genpd_add_provider_onecell(pdev->dev.of_node, &pwrc->xlate);
 }
 
 static void meson_ee_pwrc_shutdown(struct platform_device *pdev)
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
