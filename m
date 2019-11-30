Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F1F10DDF4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 15:59:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DAYfpntb6VqCkt/iHyDXHMQSeizcP8jQRSRrY83ftw=; b=OXa+hhNMzdKU1k
	09da1HU2pUwLY8hcZTE47rUC0nxIMeozRnPytPd7+E0/bDyjWaiI3pYKNTfvqgJRc5zFiWdVVvPxl
	RVdmTeDENbb4TiqsXuN6spqSBiYBLhaPs8/KKKRgbp1YphNLumRRHj8+MNXMiHBBBUbheds4XAiwR
	mDa7ZO7JbIUjDIZJ5ODktICpql/RbThqs2LJ7T5ZX1nlo6e6R0lSQZ3VW4FvqzaU0rFqk3F7CSdW/
	07wnoDGUQKuShw9Umn4rUNTyI6x2VXYt1acdaPKBeI0A7wFqxDC3Uon23qugRItYM0oQomAhh2XFP
	wQMvN6GmX49Lqg9Whcgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib4DH-0007yH-91; Sat, 30 Nov 2019 14:59:11 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib4Cc-0007df-7P; Sat, 30 Nov 2019 14:58:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id g17so6424099wro.2;
 Sat, 30 Nov 2019 06:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TvmFsbPfOa+mv76uPLkgNY/Uv2Lmgpor1GwCekjIwTs=;
 b=C7r7GQYfN+SJUSYh3Qq2WfTdJVSBL3+1F8fd6dbxvbCL2OMYK6GGFJtYy5A6X0s3As
 PumjRIJhiTD9ofDKJl7JKQtr7MvPOH+hWPpKuUO0iV+a9DiDHMYwdONIcyTAJC31YgWN
 XWfmNHosgJwBMCZBuSSWTQrkyc/AfB3J0BFsWww6ofIltCZNr52RfOnynhAcdb8CPhMa
 AR+ePx7YMX9L6BidWDsGNW3HyIExyOtnahzPcd6pD/aMSm8YY1HSxIBFA4DBFfLejPtJ
 xJgfjNO8ST3SZLIy0Hc+aIu42DXB9E1Au8K1/a746phe8NWoFPyvDKxtDLlS6chT6Con
 KLQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TvmFsbPfOa+mv76uPLkgNY/Uv2Lmgpor1GwCekjIwTs=;
 b=Z2GdilAiKHbg0psSl51k7zX2L4DweXu+rlC557G1FNQU3sPcufQgKLaRZkcvgXGiVO
 v5KnpBFXP/ozGCJl71iWmrQ6XZYncwZVwISokN2B19stZaeZ1LgSm2MJFmNz/eH9fJrA
 Ok//veEwlwOBS56kNLOo77MSPFjLNFWsX1BhC4yqa3O1RWYYlusXo0NJuipd9+XSgAOj
 R/W9myff2Q37+USRQ82tIprQebwpGLDouBywfJdnyRUqYLUs4kOg9F66gI//AlcDgzM8
 fcHsoPAsZtx3RysH+YkoHft2DP2jWinhDKKHX7fo1sgK9OeIHKKrhnAp7wjWeZz8uuNF
 q9Xw==
X-Gm-Message-State: APjAAAXXcIxS6JlbtMpmIQ4gKbxNNCiku5EqfGZv1xlsUyEIjPesIIlZ
 eOJdAv0hCgStaaSGdwP9uMF5gDXw
X-Google-Smtp-Source: APXvYqw6q7llKdWIQhnu7cnXnzRzfZlN7B/2ycw5wfSusXp7b3e5xNCvRHA6YlpzLy5NL9+bB3isQw==
X-Received: by 2002:adf:f5c2:: with SMTP id k2mr59575140wrp.118.1575125908498; 
 Sat, 30 Nov 2019 06:58:28 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id c9sm3510202wmc.47.2019.11.30.06.58.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2019 06:58:27 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 narmstrong@baylibre.com
Subject: [PATCH RESEND v1 1/2] soc: amlogic: meson-ee-pwrc: propagate PD
 provider registration errors
Date: Sat, 30 Nov 2019 15:58:20 +0100
Message-Id: <20191130145821.1490349-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191130145821.1490349-1-martin.blumenstingl@googlemail.com>
References: <20191130145821.1490349-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_065830_269775_38250330 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
