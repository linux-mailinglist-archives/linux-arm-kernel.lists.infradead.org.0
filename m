Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F4610DDF5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 15:59:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5IRATfTdTZlrBTLsbA22q+bHsDst+XRHE4Wmd9rz88=; b=iPzxvxI2JdnZEC
	4A4Sgq30aCGHRqCfTppyoH+ot9bzHpRZib6Pk3vvd8WuC9g6cQnkzY2FHx4oHnk6VU6dbRre1Rb60
	RTgvtIWXhJXuj+M5k/wtup+jipNZNhv+bzFS/dwVL9h8JUtx21YMm+PPU+osRXvZv9JNX2rmBc8vC
	Tta0EfnVUG4PBTQUgGAzaqFfoNW6Cy+gd6v0Lr+x1tWY61ZOnoE7EnShuhhyDWqGXEfl75vx4Vj7Y
	NWLuUzJEPrKgmrB+oD2dFwvV3lZP5zIe0kZAC8CBkMSnMGDzh6DMolpiwBi5+fE+OyarjUZAta8me
	EwjN4UmTAAgYEAhE+EbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib4DW-0008FK-Qc; Sat, 30 Nov 2019 14:59:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib4Cd-0007e7-VW; Sat, 30 Nov 2019 14:58:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id q10so2292017wrm.11;
 Sat, 30 Nov 2019 06:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bUD5FdR6g2ASiBzE14YJrcmNzasb1Y2tz62iUE7N/xc=;
 b=UBvp/ytW4dLm9uvAfDdpEY+sIk0DHBNJsf9eC1RyWRYMIsvDbpmkW8ofy4BC422sTB
 +M1vbn1upImJvydQUcRb4uFJUGQ1E5v6u5UUXQmjkpNllnVCIKwLpd/Loc1l0imHGbNh
 vGOWZTXZ/SHfuhcvMyCAtqoL3oewv7FnK3qiAL4MVjFYXNpK7qUD09bx+r6UDzuqvVqT
 7Q/uxFF/rrWw9q3VcXMdweNFjbc4ehrHVXkXTRN6bX7tGo6FHh3ZqvzJNv9vbfG29tl7
 3TUbqM4XsXs+xz8ovggd2m9Mvwlk81d855Xx9aBSCZjxWhua+JIFgMgcO0zHtV8/riLJ
 MaIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bUD5FdR6g2ASiBzE14YJrcmNzasb1Y2tz62iUE7N/xc=;
 b=dZLMxa70mEEF39wnUlLxviA5NsR9KBpGVrfrCEpVyhkY4cnpYh5Qrbks7ls9J1XGfl
 HA3EYLlckRAVqNBejuF2VhocxAkHlBOsxe5JzgRgwvNXFUCAtV+jnCCA6tKsQNN2CgXA
 gd8GSqv8cJlx69TfDZiyQHJRJ3x8RU6bAyQKgbnQink91LgEFnjtxgPnU/Ltp5DQLqtm
 zKFtqNFjTK/P2CGQuC+R/D5HXQfo0jRqVpH8fwmOqDS3h1zu4jgsfXMtp/eqvs4oOep2
 h7/Dkf6ynWkpV+J2LNnCJBJRTVzeBdT3cKkBj556wXsE3Is5h2UM6N24YcYY3bzKtMn8
 89Nw==
X-Gm-Message-State: APjAAAWQ26fJUHjxmMtduCOjhhi5zKJvCbT8mB3HJ3Q21oU7E7NITngn
 QSSfFaE0LPw6Bmc/b2vNaK/VVeSy
X-Google-Smtp-Source: APXvYqw7/FFUtU7ZgBNzxnCt5W3VfthKgCKSSFdtQHPDyIi7xYUPTHYjqDMaMOPtQVwn54Dr0WNesQ==
X-Received: by 2002:adf:da4d:: with SMTP id r13mr42788144wrl.307.1575125909679; 
 Sat, 30 Nov 2019 06:58:29 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id c9sm3510202wmc.47.2019.11.30.06.58.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2019 06:58:28 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 narmstrong@baylibre.com
Subject: [PATCH RESEND v1 2/2] soc: amlogic: meson-ee-pwrc: propagate errors
 from pm_genpd_init()
Date: Sat, 30 Nov 2019 15:58:21 +0100
Message-Id: <20191130145821.1490349-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191130145821.1490349-1-martin.blumenstingl@googlemail.com>
References: <20191130145821.1490349-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_065832_013452_9608B906 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

pm_genpd_init() can return an error. Propagate the error code to prevent
the driver from indicating that it successfully probed while there were
errors during pm_genpd_init().

Fixes: eef3c2ba0a42a6 ("soc: amlogic: Add support for Everything-Else power domains controller")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/soc/amlogic/meson-ee-pwrc.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/amlogic/meson-ee-pwrc.c b/drivers/soc/amlogic/meson-ee-pwrc.c
index df734a45da56..3f0261d53ad9 100644
--- a/drivers/soc/amlogic/meson-ee-pwrc.c
+++ b/drivers/soc/amlogic/meson-ee-pwrc.c
@@ -323,6 +323,8 @@ static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
 				     struct meson_ee_pwrc *pwrc,
 				     struct meson_ee_pwrc_domain *dom)
 {
+	int ret;
+
 	dom->pwrc = pwrc;
 	dom->num_rstc = dom->desc.reset_names_count;
 	dom->num_clks = dom->desc.clk_names_count;
@@ -368,15 +370,21 @@ static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
          * prepare/enable counters won't be in sync.
          */
 	if (dom->num_clks && dom->desc.get_power && !dom->desc.get_power(dom)) {
-		int ret = clk_bulk_prepare_enable(dom->num_clks, dom->clks);
+		ret = clk_bulk_prepare_enable(dom->num_clks, dom->clks);
 		if (ret)
 			return ret;
 
-		pm_genpd_init(&dom->base, &pm_domain_always_on_gov, false);
-	} else
-		pm_genpd_init(&dom->base, NULL,
-			      (dom->desc.get_power ?
-			       dom->desc.get_power(dom) : true));
+		ret = pm_genpd_init(&dom->base, &pm_domain_always_on_gov,
+				    false);
+		if (ret)
+			return ret;
+	} else {
+		ret = pm_genpd_init(&dom->base, NULL,
+				    (dom->desc.get_power ?
+				     dom->desc.get_power(dom) : true));
+		if (ret)
+			return ret;
+	}
 
 	return 0;
 }
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
