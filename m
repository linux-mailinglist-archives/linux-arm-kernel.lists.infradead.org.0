Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7871717C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpE9AgqrlZBpBiMsbvmj1JX2z8kVPd77/eaiv9S1aOQ=; b=CJOd4QUrdovSUG
	cfoKbzUGm3/p7n8U+oHwNMue1Dm44kEJn1E8cWUBNXi2b9sHVWxW3/r5JLv9Vf4mhKeP/Vy+pulRW
	5v1sKvVV08U+Ol9fq9vFLbDYnh7q9D/04gCJ5HlO3fabKdJKZIA2G3WzciIzcjin9IT8oTfxPix3C
	z8c1N2cWrjckvSPMELgYcRUhR4x0Y7TtcNRfDaeg1NkMZxeRADXBjEo8cQB2lwAT3DpLuodI0fzqM
	UNxNRlWKgsUwNnifSI2soulbtFCJnkfInR9Rllyxl8V34qq6XnVaY2ov4iVGafPMEf8qCRbdbH5wb
	qMhgXqmM4LPKwSnHEzWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IYv-0000Sx-8y; Thu, 27 Feb 2020 12:46:45 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IYT-0000Ja-Eu
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:46:18 +0000
Received: by mail-lf1-x143.google.com with SMTP id b15so1987671lfc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 04:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3+0UYj3qVJZMwBRFalwhwumi1SLOyZkXHX2X4PQigTk=;
 b=mXb6at++ivddD2NTVyokGX6Bv9FhnYBxuwJBu37CLMiC7ZKw+agfQ8IcqYkg5R62dV
 UbBJskVFA9v0xAAj88zbm115M1Ky/Shbongm6s1uqNzblmPlJpA2AlhbNzAonTqF6KVT
 3f/G2VBMbDM89Gh1lBSYuFEgrllGeNDN08WuURX9P9tevKQmiXieDsY0P2yJqyq3PT9i
 oVHssqDaQ1V4wZZAid9+NJ84Jnb46rLodKD+SSpZ/3FX0TCDUBxHuSYZBntM+ZH66VrM
 J7J/NKuN7xia8AKCAQQtvg87aTIL4OKo8vWc6bJ6Ce5c9W/CjOlDCG+LC+WNFAbe2hcJ
 eX7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3+0UYj3qVJZMwBRFalwhwumi1SLOyZkXHX2X4PQigTk=;
 b=RfrgoddLs/PbE2xU7Cket85Dz4XCxFTq5xBbn34e9husijXVHiXoMWHnQrvaqCPdx0
 ipSj7vyd6QNb/hwv82wkJ37rhdtsKKmflqLwKv3fUij7Yk4QBEwgFOo7P43Sr+Xp3i6J
 sYAzOGX1xDECWOae2jys3F02KcknA+lStDgDboWQSZP6pGCXRLzInbeJkAFKD8e4dhYz
 ywAs/vkdn63hIsMaeoU0EB8spvVQqZEmjyIBDWTMeHVg4nHrxawtyhxTlsbjLEj8kMkU
 ydR5ze6vmuw96ry7kfNc45cqj9PR5wBW34yYL0qYKNix7wIvBnckhp+0vnFpKCQKuBKJ
 bwRw==
X-Gm-Message-State: ANhLgQ02yF7DUcGMIFt03HkgC6S6w/Gx/OV90tyZKN7GsWEWVwbb3f9f
 wF6EFDO2Mj9wy7Y6JYiC/S3c/w==
X-Google-Smtp-Source: ADFU+vsHQVosAGa6s8cq304/BYeC23/PJ+nzRpBSOGRg4zjwsWrSheAAC7nA+O5n//KNTf0/gfXSPw==
X-Received: by 2002:ac2:5299:: with SMTP id q25mr2092593lfm.213.1582807575348; 
 Thu, 27 Feb 2020 04:46:15 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id l16sm2669334lfh.74.2020.02.27.04.46.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 04:46:12 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org
Subject: [PATCH 1/4] PM / Domains: Allow no domain-idle-states DT property in
 genpd when parsing
Date: Thu, 27 Feb 2020 13:45:48 +0100
Message-Id: <20200227124551.31860-2-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227124551.31860-1-ulf.hansson@linaro.org>
References: <20200227124551.31860-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_044617_513715_8BF6E1C3 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
