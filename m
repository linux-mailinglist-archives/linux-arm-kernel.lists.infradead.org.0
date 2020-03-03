Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDD2178421
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 21:36:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpE9AgqrlZBpBiMsbvmj1JX2z8kVPd77/eaiv9S1aOQ=; b=NKaL+1yLgr19/o
	WAGT7DlcIcyYAVFFZ5fgm8PE+/YQnpgkDVSqWxFpcfzYzoBU3BaE/IEWQfRcs3fFIqWP6oggG13xA
	HjjbtToOG3hZpiJyUfYNbrRsURBR+1H4DETIixCjqpy7WP/iy+z+XbJjAytyclFQppal3dEenWC5s
	oiYVmmmIU5ZFjNAvBfwCvcaOiOIWANWFVoZKsA4nYKPZjbFjwkVvP8Vndz4RGpQwYQ1nREF2sFLVP
	/KY32enfxrHo1nKLxeR5JywXc+XGcQFPd/6Hsb5xEfKdVLuwrye09WU0daK3JFSOsKot7hcEjgO2A
	QUDchhpOVDGhCQaKknnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9EHU-0004vz-5g; Tue, 03 Mar 2020 20:36:44 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9EH6-0004lA-Lb
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 20:36:22 +0000
Received: by mail-lj1-x244.google.com with SMTP id q19so4126807ljp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 12:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3+0UYj3qVJZMwBRFalwhwumi1SLOyZkXHX2X4PQigTk=;
 b=M6nT4o+PaOt0lluB6TctZ125cHNRlgBI/C3zswdbS6bE4Vor6LpM3xul+GzDk3LYMc
 qw+N/dL5nSOCxpgekkdUlti+upKi21MCbPGU/bH9dA31iwdJrjuUmx50lvX4KtVd47p/
 lGSRoDHKlev29S/7Vs+Z/wjbkDTdKZJ3qP6cAKGHBQ4J3m5MJ3pL5+jtoffHYIz8rb/D
 LyJGPV8uyzka1C/i7OsLZ1YfXnjmIl1B6XuEbzK8VLlbznNOGVRIOhySviyL9ZP5yMhT
 CFX4hcgpE/r3MtTYFG9uc6R3sKXfs0gMaoa5+35Hr17dAW1rceC8NKY5fQ9zkfbSVx2u
 Md3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3+0UYj3qVJZMwBRFalwhwumi1SLOyZkXHX2X4PQigTk=;
 b=DiGaPNBZHegd0Svn/P6vsUwbKHBSvlUdyA5crCOnQoKA4FGVhBWQdIGca0WPX1GztA
 UcAXidDnxZ8A8TOky8qhiVw5lep5ptbzXBA8candZuptpKxHHmB7CDuNOR7LRla5B+c/
 LA3cTlr26IeOeqanDNGK533Cyw9ITSm00/VHq7HDyJX4/C71eY6ZKXYxEM8Gy/XO6OES
 hsmRb1kRHi0GSQNT7ZGthZB4HTtn3fUK0HRQE3rfMdyipnKNaNI0x2b/fAXFJ39WE3DZ
 qOsXgbeOckynHNCPaJzJhBkWFd8jmHaq4J1ETsJHEjb7l+fwFPxmrro/2/IN859C3Q8i
 w/Dg==
X-Gm-Message-State: ANhLgQ2oJgPRyeyr8IjWfp0lcZWFkzITwzX60emDW/8LR4Ho8Iss7KTl
 oIZBJvwQHI+S9Fk3XT0QksZ6sg==
X-Google-Smtp-Source: ADFU+vtxH5Gk3A2TqaasCf1CsCDxKPfx3AYiuDLFIZjyb++K4u0hf79plZcWKxwzcA4xfdBGagw2Yg==
X-Received: by 2002:a2e:b442:: with SMTP id o2mr3427232ljm.261.1583267779037; 
 Tue, 03 Mar 2020 12:36:19 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id t195sm1339532lff.0.2020.03.03.12.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 12:36:18 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH v2 1/4] PM / Domains: Allow no domain-idle-states DT property
 in genpd when parsing
Date: Tue,  3 Mar 2020 21:35:56 +0100
Message-Id: <20200303203559.23995-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303203559.23995-1-ulf.hansson@linaro.org>
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_123620_702136_9150BFA8 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 2c361684803e ("PM / Domains: Don't treat zero found compatible idle
states as an error"), moved of_genpd_parse_idle_states() towards allowing
none compatible idle state to be found for the device node, rather than
returning an error code.

However, it didn't consider that the "domain-idle-states" DT property may
be missing as it's optional, which makes of_count_phandle_with_args() to
return -ENOENT. Let's fix this to make the behaviour consistent.

Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Fixes: 2c361684803e ("PM / Domains: Don't treat zero found compatible idle states as an error")
Cc: <stable@vger.kernel.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/base/power/domain.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/power/domain.c b/drivers/base/power/domain.c
index 959d6d5eb000..0a01df608849 100644
--- a/drivers/base/power/domain.c
+++ b/drivers/base/power/domain.c
@@ -2653,7 +2653,7 @@ static int genpd_iterate_idle_states(struct device_node *dn,
 
 	ret = of_count_phandle_with_args(dn, "domain-idle-states", NULL);
 	if (ret <= 0)
-		return ret;
+		return ret == -ENOENT ? 0 : ret;
 
 	/* Loop over the phandles until all the requested entry is found */
 	of_for_each_phandle(&it, ret, dn, "domain-idle-states", NULL, 0) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
