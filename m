Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484214529B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbGh8iqvW5UYgpZmRGTKG41D5K4SX5o0obbS9Yz3WHM=; b=JJ20wQDjC7y9pt
	OA9vz7AWLvqPfPePsKuyr+5WhQ0AUobZlHusuKcX+aCyt3NtrrZch8lfVGFeX9hDfl1egBC6ACOAB
	8Q23AvaPP5atYGgdbMPHf9QpEq6DrBVlfGSvu/uxUcqGapYIhM5XyYNzzi5MYnzGdRb8/AZ+4AuB4
	yhcmjHhCird06hI59jb0+fArb/PoleoDjvqpQfye+W7uDyJM5SlRj9BIE9s8ZRFxMp0YYqFl91AhH
	qpPP2oIdGcXsdQv2CkLa/hsf62bIBAQLd4NGMZQGQlIVLRZiPYaLWutM1TGI4QidU4OJVLsVrVkr3
	1l5tiTQJSIscR3xq5IBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbciO-0005b1-FZ; Fri, 14 Jun 2019 03:17:20 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdh-0000Lq-S5
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:33 +0000
Received: by mail-pf1-x441.google.com with SMTP id d126so502855pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+VnHrOqiLyuTpal1o2zRenzQv7xKEdgOssME91mwrbo=;
 b=Tb47hPFhrekRIM/B4VddOaEWndYWU2Mpfbs111lRorm/o8pnyAoKX5rwgAtdbh9Ccw
 fwb7GLYKgWUtNl8cQJpMYeOvZoNMd7Wu5qd7n6wAz1atAQo8t+VQSLxOEhz9562am+vj
 VWg/seVR9qMm30yB3daUKfVvrwvi/YkYDymDHYZ4mYYiUQZPdeBSQdGrFz/nxMizP2tH
 yYxcEWqg/Jga4CVq0WCtbo1VV+7l2YAP2pyZw6FikYnWiH76f1YfzGyFVJNfVMaAVbWA
 Y3N6VH6UYvlE9futQG+BB1WPjVZ3xk0qI+pY+L/tJrJ2Z6UndfT1oaEkJe4T3EbTckEH
 vF3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+VnHrOqiLyuTpal1o2zRenzQv7xKEdgOssME91mwrbo=;
 b=WeB53bicuU7CfGxXMNIQAjJlUvv29TsMJeYiWN0X0iVXsvzu6alrAxSqtH6iQ045jE
 eYLV07iR9lvIka5+Rp33rsoFtPllWN4Ga7VKXKrrw9EsNTe444uoUZEWyk28rbcwUAaD
 ivxlDqYGeAZVQ3rpx0JyE6fGsUOPjJqymjbj8wzNjc5qFa80HMTrPoejlHwZaR7Rw1yR
 MqQNzP1RJ4JBQ7dpDNe4W8P23NDKbQwsA/rMs1FMjFjZ5RVTkXIzjqu6C60LHSeo2yjL
 1v7DSeXfdl6DhOYaNMF7de2q/9hhesUzdAArfrAnaGPBT69ygdWeY3jk3mCYGMWuv4cO
 MH1g==
X-Gm-Message-State: APjAAAX3f5zWSq3KNJv+bVW24jIJvpAeoUmregl7hAVH/oPbbCvggloR
 ryaptaobXERNIWe2isERyjoUGFodWQ0=
X-Google-Smtp-Source: APXvYqxB1kT4JeouoUecMrtwQioocrM699/ETpWT/9TwmrlHZEVVfCDOCCQfYKs58tBjEcSSaW4k0g==
X-Received: by 2002:a65:4209:: with SMTP id c9mr34462297pgq.111.1560481948541; 
 Thu, 13 Jun 2019 20:12:28 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id g2sm1165232pfb.95.2019.06.13.20.12.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:28 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 13/45] arm64: cpufeature: Pass capability structure to
 ->enable callback
Date: Fri, 14 Jun 2019 08:37:56 +0530
Message-Id: <16cc80ceb76db7e889b16a3d9b8c45ae821087de.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201230_047301_42B98F38 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit 0a0d111d40fd1dc588cc590fab6b55d86ddc71d3 upstream.

In order to invoke the CPU capability ->matches callback from the ->enable
callback for applying local-CPU workarounds, we need a handle on the
capability structure.

This patch passes a pointer to the capability structure to the ->enable
callback.

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Use &caps[i] instead as caps isn't incremented ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/cpufeature.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index c1eddc07d996..c7a2827658fd 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -780,7 +780,7 @@ static void enable_cpu_capabilities(const struct arm64_cpu_capabilities *caps)
 			 * uses an IPI, giving us a PSTATE that disappears when
 			 * we return.
 			 */
-			stop_machine(caps[i].enable, NULL, cpu_online_mask);
+			stop_machine(caps[i].enable, (void *)&caps[i], cpu_online_mask);
 }
 
 #ifdef CONFIG_HOTPLUG_CPU
@@ -894,7 +894,7 @@ void verify_local_cpu_capabilities(void)
 		if (!feature_matches(__raw_read_system_reg(caps[i].sys_reg), &caps[i]))
 			fail_incapable_cpu("arm64_features", &caps[i]);
 		if (caps[i].enable)
-			caps[i].enable(NULL);
+			caps[i].enable((void *)&caps[i]);
 	}
 
 	for (i = 0, caps = arm64_hwcaps; caps[i].desc; i++) {
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
