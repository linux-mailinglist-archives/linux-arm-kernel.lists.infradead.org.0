Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 668F311EDC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 23:31:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DIhSr/Jdj8YivQzvttAeRdCbQHxC5316yDoZKJf+frw=; b=BnvkTzfYcjOuJ9d0knxT4WS/OA
	Ndr7vYpGAvQUrlMamPZEDiEVY9+r5rcVlw28yr/6ip3jnub+rLw2xB+KIA6FUubQxzJYv2nAllaEm
	g+mPWV4G7gkC7sRIkhEKCAXxsU4gdnZUvtZ9QTeC3h64K0ZfVTQ0CMN6AiHXUwB2CTx7hG1Id5fCf
	sYuPGxPcHx5leKQufPCA24IrYLoIPGsUupjLwtynOxXfSWCZFOQPk4Rf6XhUmjKLRfJ8XdNo2gnul
	si6HSpz5T4VVGFK1PbsjSFBqZeUEsjmxk4YNSZJB8d/0oTYa0Ul7h2+onb2SLdwL3tbZx0twBjcLz
	+85QW4rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iftTD-0000M8-O9; Fri, 13 Dec 2019 22:31:35 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iftSp-0000Cc-Uk
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 22:31:13 +0000
Received: by mail-pj1-x1042.google.com with SMTP id l4so323490pjt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 14:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6xiPB4V1MquUiOmcSV74SL5uCSBXsqT0lweR/qYDigQ=;
 b=RD/8Wp23u2HL+Of7WXX/WBYuFgXFrxWHZT9+pRV1xNQmg6N/L1av0fnq378xoYuMGK
 gXqnEvWiYxdnv07ysfWJHJS3kc4NlOy8vd7UgpJMXh8QfL2i1Q7cJEkB4hhHPZVa8Sc/
 ycW8+VVbe8xvjJFP/6dy4MaIAHldnUrAsOOhJmgnYaqMd3isSTJMJcPNJ0tyO1KsyLvu
 u1kb+nA4PhxoHaNtwdd19jfcrI0FBKMVfnwxA4drknbIhWjRVY96Fm1T8Y3sTiQ1PrtF
 QekxQqU5UQty1cozgGdsWfMqkI7FQ+fpQR34xTByrgCfgverDuhyVhMqyHjlS5ptMEQi
 vUMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6xiPB4V1MquUiOmcSV74SL5uCSBXsqT0lweR/qYDigQ=;
 b=EuNOHChrSUTUfsp328HFDSF7swQA+E8j8iCffVEDBrwTVXgbX8M7GTzl7n34ID3QdC
 QP8loOHWbMWWl7CwKQBMj9RP80C0dD6CvsZhDX4DRiO/gEWmQRNdAXqaYb1rim8Fq9aY
 AV60jOnfSrOpOjmUxhRmnb9Lvtp5CyAye7UN9l0fsuYs0d/iEwFdVAxqZ8ztZLyPARV+
 AZut3jC63jwaTmhH0RTpdeslD3IfMB3TVi3rVgn0lm4tzR8cwGVEOQNhKGOPvFdrX1Sz
 QqiLRIm2QeD4VdDELcTB9ZydVN1AcTdShIEZrpaZjuIiIksVnWd5sb87Vb7xw1zB5vyG
 DXjA==
X-Gm-Message-State: APjAAAXIH2+tsjn/XiLXMoEQ9gITFsz6dlfNenFnUeSXlXrd51sM2+7d
 yPiZRDmRahUzU+08pd9S3ur/jw==
X-Google-Smtp-Source: APXvYqxQn0YUbrOLh36feQfvxK5Y5frN9aMYM1JviFC9pwwWoUhOT1jRHwqaDvdGV1oRSaZ3PdMtmQ==
X-Received: by 2002:a17:902:a9c7:: with SMTP id
 b7mr1912322plr.23.1576276270618; 
 Fri, 13 Dec 2019 14:31:10 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id d26sm11556782pgv.66.2019.12.13.14.31.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 14:31:10 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/1] coresight: etm4x: Fix unused function warning
Date: Fri, 13 Dec 2019 15:31:07 -0700
Message-Id: <20191213223107.1484-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191213223107.1484-1-mathieu.poirier@linaro.org>
References: <20191213223107.1484-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_143111_991116_0A39C332 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
