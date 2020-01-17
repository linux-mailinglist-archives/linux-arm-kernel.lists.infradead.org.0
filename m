Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9E214113D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:56:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ri5MbUsIrxDFRuIIYbQUMSZ0yFQkbf/4ef8EtwvLG3o=; b=RS2haFwRo5tsgr
	Odua3PNNLQWdVumZKsc2c3/taUcE0suur6+oWlbaWLuCiXQUCIzIUuhEs/m5yG4mjdmxChKVJQH1i
	m4YjYHFEXIEvuVnsiY6BcdYAGE0MRN0+cL+Kzo0xvdhyTJuRKtdwMayZTunTF5/sHUwOgzV/O/BBS
	LuUrpnAIaZ8N0G+55p9+7gN+a8Auk2bzvpcwAJC04v5o9VMlntWGyL8ZXs7sCdkN/9L+gMAJhkdwd
	JbXw186A+KgORWUuf5LRWQ5qp5ZjFqd2OHIFjdYLGf92VaW9/S6PPxHDrdCN8PrtqVryBsjV+yKi2
	ka23t1tPf5vPAm8Bnq0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isWnL-00070S-Rc; Fri, 17 Jan 2020 18:56:35 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWmy-0006pj-9I
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:56:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id w62so12351144pfw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 10:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UkoQ4nyifh7YprS+4/LmLf8NkjkvRebOrTXBRE37Y34=;
 b=Afi57NmSu6mVLyLVY2bm5P9bxE6WIrfLdGkFkU+xutZbEiG2AmufMLW0vvw+smTrNd
 eK+90elSwPoIWkEHzAtqtnVSSk9EJdEtweqBTtHVr3+T3atlRnopLa5JFI4E0xBaVDxF
 qzM0KHQlnQ47aAv7WOpKffUWZj51sFf6ayBB82Ydt9W7BC+bxte4jrlpQlF3Xs163gBf
 Pt3ZUyWoGdPA0av2tfL9qgoFGkFrQ8GY4VdlgTxy7W/N6j56vO+MMxvMo2v2jeL3CbNd
 CtPfaWIUgMzVmDiTx/Z175FBnpNL8ztWjNA1VP2jQ67nsogSH7A6Zz5QtEOo5/RAsFLe
 jNPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UkoQ4nyifh7YprS+4/LmLf8NkjkvRebOrTXBRE37Y34=;
 b=Di0staZHA37iCroRjMIsA2FYGPe9wZkG39UF8DJwYbwvpvQJEHBGKrolqkXbBk7Vjh
 uuuvKJgmmkoIg5LRWGevnF23IdqI/6EYMjbaCF1379pW4B11+b41kJuabVTCYUM7rJkb
 n1a7JsfzHKfk+ThkeCva5IBWfVD9ta+9wieJS/GqxUlf6xLg/XGz5f3YF909vv1+wRhC
 rhmOeQpU2LjFA1d3UbspfbH1nKb2tMurej8mf3BzefMrcN5fwCCiSpkv388SC0LN567L
 PuQsC5x7+W7qznDtF296EVq7F6ZWH6Istvcoep4whx/lBdzt5QjCdIfuv2zGKJn8IMPA
 SNRw==
X-Gm-Message-State: APjAAAV8WOVB75p9Y1sqeu8H3d1thoYXQtjd4wJ6JIMQzKIBOB2GnBxM
 xZlWqqd/FTsiKYnM0W5dyeMhEGDGmdw=
X-Google-Smtp-Source: APXvYqwuqnHTthBlGcBYhcMhhAoDEc/iVnS8+lDVO/wVH/677XnbZTEn0iNg7nF/LNPKmKcdlfnyoA==
X-Received: by 2002:a65:621a:: with SMTP id d26mr45686355pgv.151.1579287370272; 
 Fri, 17 Jan 2020 10:56:10 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id r8sm5899181pjo.22.2020.01.17.10.56.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 10:56:09 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/1] coresight: etm4x: Fix unused function warning
Date: Fri, 17 Jan 2020 11:56:07 -0700
Message-Id: <20200117185607.24244-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200117185607.24244-1-mathieu.poirier@linaro.org>
References: <20200117185607.24244-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_105612_389933_9F6D14DC 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

Some of the newly added code in the etm4x driver is inside of an #ifdef,
and some other code is outside of it, leading to a harmless warning when
CONFIG_CPU_PM is disabled:

drivers/hwtracing/coresight/coresight-etm4x.c:68:13: error: 'etm4_os_lock' defined but not used [-Werror=unused-function]
 static void etm4_os_lock(struct etmv4_drvdata *drvdata)
             ^~~~~~~~~~~~

To avoid the warning and simplify the the #ifdef checks, use
IS_ENABLED() instead, so the compiler can drop the unused functions
without complaining.

Fixes: f188b5e76aae ("coresight: etm4x: Save/restore state across CPU low power states")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
[Fixed capital 'f' in title]
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index dc3f507e7562..a90d757f7043 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1132,7 +1132,6 @@ static void etm4_init_trace_id(struct etmv4_drvdata *drvdata)
 	drvdata->trcid = coresight_get_trace_id(drvdata->cpu);
 }
 
-#ifdef CONFIG_CPU_PM
 static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
 {
 	int i, ret = 0;
@@ -1402,17 +1401,17 @@ static struct notifier_block etm4_cpu_pm_nb = {
 
 static int etm4_cpu_pm_register(void)
 {
-	return cpu_pm_register_notifier(&etm4_cpu_pm_nb);
+	if (IS_ENABLED(CONFIG_CPU_PM))
+		return cpu_pm_register_notifier(&etm4_cpu_pm_nb);
+
+	return 0;
 }
 
 static void etm4_cpu_pm_unregister(void)
 {
-	cpu_pm_unregister_notifier(&etm4_cpu_pm_nb);
+	if (IS_ENABLED(CONFIG_CPU_PM))
+		cpu_pm_unregister_notifier(&etm4_cpu_pm_nb);
 }
-#else
-static int etm4_cpu_pm_register(void) { return 0; }
-static void etm4_cpu_pm_unregister(void) { }
-#endif
 
 static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
