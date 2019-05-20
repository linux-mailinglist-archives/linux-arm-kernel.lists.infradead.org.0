Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8ED2310D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IS3fRH6Dqg6JN9VwScprhoFo/vhTSvm0ylaWRtP9IVQ=; b=C9xMmaDhFfgdJfznPrAASzypyd
	qFotfxtxRCxvT9Gnt1Q9yJYKE3oaZqhf3qqwX7djXR9rRsnzobYOilZ3ioAceITwju47h0og1L73U
	vWkGSx0KWkVob50f3o+LLLm6P5iKJtvxxnrWyf6ktWLeIL8tJma3H/6e+I4XpkbXWqJ3g0I7e+HWU
	lKM2RA5BmZwwDfcjo+RGW64d9gnqzFltksFGaY5vqWKRMPazGhvTLEfIU5aYuncjSdJTqM5aVSYrJ
	NOjLPcwJLOFtQhjFLiKijvKXYzeMlZxRpe99+n3vtlxveNxKaDloQx3Zq6rPi6N8UTE1RoLrI3lxD
	E3ShM+cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfHr-00044y-G2; Mon, 20 May 2019 10:12:55 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfHU-0003mf-OD
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:12:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id z28so7013674pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 03:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=e4QisK5dlRTGLzT7/Rg8a2odjBOSln7PHE3O27n2JN8=;
 b=TwF5AsO5zpsHXKDVSh6tLAWFsy5YsMSB+N+B8/kqQ1zchDjm9CqFwdP5lcVriNwKE2
 Z8h+rqxbhmbhKy67tOYP6XzYzp3Q25nrcuXw4uBwDDdNAb8CkwdIjmte5MoAnoM+RkDB
 8mVUKrOOgzaOeS8aYkgHgTetDi8Sagwsh1irm28lnaydlZNXkVXRq87vrqLRA70YmgHs
 4uJCYf1w5y1rMiPLHxs/00M56zU0FWvbAWb72CfmMXcCU7uR1yoYXfm+ekppfHyL0A/7
 2OEFUWA+gsM5aC+gfH/J/99QDee8CBtIQj+NE3StWzhdJVOLYdFu1owAhp+A830cjBYh
 mcTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=e4QisK5dlRTGLzT7/Rg8a2odjBOSln7PHE3O27n2JN8=;
 b=qjYqEDqRK8L6hGBXWpNns15gLjguoizQ3kaeMcf8iwFGV0mtO5zk2gs6AKLaPra3lP
 h0LJ5Xi3kvC1/9yhCPPlQeSbG2KPw7tFToGVvVv5tPg08B31KZyXfUs+qNyB54ucY35+
 ys46X6kSxY4+N9xqGCDRal7Nl9cdoYAnr7ODe4iW2uMxeCTmsZa5sVjXXKG//linsDn2
 Jhun1vf8MXexQ8VtJD72mEjtajRMtd1ExEqK+g67Wu9ea+jmD1E9T+iS1Hjz3sP7CCkN
 3MAd6b8Gluu5ch9QtGwiQc5ORihdCRljdxn0AbAE/GbhN9wGtUyLrogeqZyhQEC3fYoJ
 TGaw==
X-Gm-Message-State: APjAAAXdPwTiWVtQVWd6ZeAdsCRJtGEUfOc6dIGu6GOJC3tpwdSVypJI
 uOQkIfz2BMgfRv/dPd3ovGigwg==
X-Google-Smtp-Source: APXvYqwcAZDdcUPPLz7jaZHV8PzDymn8O/Vo0pRi78sKNC1rTBbmH5DNKY7ezKJmPTZOMLYnygiLyA==
X-Received: by 2002:aa7:9577:: with SMTP id x23mr78981496pfq.164.1558347151948; 
 Mon, 20 May 2019 03:12:31 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id b3sm30098127pfr.146.2019.05.20.03.12.27
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 03:12:31 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH 2/9] dt-bindings: mmc: sprd: Add another optional clock
 documentation
Date: Mon, 20 May 2019 18:11:55 +0800
Message-Id: <ee4ad0e7e131e4d639dbf6bd25ad93726648ce1c.1558346019.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_031233_288474_CAA8D003 
X-CRM114-Status: GOOD (  10.72  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, vincent.guittot@linaro.org,
 baolin.wang@linaro.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For some Spreadtrum platforms like SC9860 platform, we should enable another
gate clock '2x_enable' to make the SD host controller work well. Thus add
documentation for this optional clock.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 .../devicetree/bindings/mmc/sdhci-sprd.txt         |    1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
index 45c9978..a285c77 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
+++ b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
@@ -14,6 +14,7 @@ Required properties:
 - clock-names: Should contain the following:
 	"sdio" - SDIO source clock (required)
 	"enable" - gate clock which used for enabling/disabling the device (required)
+	"2x_enable" - gate clock controlling the device for some special platforms (optional)
 
 Optional properties:
 - assigned-clocks: the same with "sdio" clock
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
