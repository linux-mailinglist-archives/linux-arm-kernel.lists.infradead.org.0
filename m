Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF15D1E57D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 08:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oTslVZTwLv9HVx/7fCh2BrznDhmOKH5VFTWn0b06sWE=; b=FmIhNZFXou10tD
	ufwqSlNG5ljDUfKBH21AFcZ+1PClPDpS3gvkfK6LLT7sweyGqbxpWpExJw8MBabnMjbkRsuTYYhdc
	r/lR2G0E+i6eMcCagqTSUk2hq2aAz8QoahIKRhkpjGojqWoNN1XzPsaHrUMYV6umN4BS6ux2g8vGH
	XES8cnroMt6Y9wqnVRgYjaD2FDvDhC26mSJs28d+S6v7JPkUfH0hzh7ZvBNzEmhD/F+qf4Q5u5gJQ
	tkJjZCzEUKGFWKexlBn2siq5Xf8wImdlZkV2NeQcgX7+bEppEUyXS+A9pAkPCQYeIDp5wVWXG0Hna
	3uTLbWb0NYzhE5XtqvSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCEz-0003yB-Vg; Thu, 28 May 2020 06:42:09 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCEo-0003v9-Pu
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 06:42:00 +0000
Received: by mail-pj1-x1042.google.com with SMTP id cx22so2629468pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 23:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xrBThDxeaj7xavtiCZsH7YWZDMSxeuAoxlObig/4N/I=;
 b=FLxBZ9um2B2vEtPr7iWB8XrtkQjPngKLYYruLGsgNh0z4zcH/kRn+xf9BjeYNqgn6v
 a1y8YeP8u9KYE8YO90AbBef2V2RHKBFt5Uht42QMif6yLUiSoBF96vNaq3O2mrjUecyY
 7n1PFt5QAypRKHp3c0ajsBka1XeAjra/w41dwwD+ZJLvJoA6iDRzZu5rieTDtEBfc8OH
 XK8eB+Hghu9vQMOaaO+1w5bUxee5WXmODQZsnsKZhcoVUJYU0lTWAJlmakfZzBsw9Qan
 cQPV/i03z77q21dBx2XCO2Qg/wTl24x7aWlKON4pprcUxVi2JtpcDVn9aZOW5joX9rJl
 PPDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xrBThDxeaj7xavtiCZsH7YWZDMSxeuAoxlObig/4N/I=;
 b=UqGmUJY9VTK1VbmQna+h+yRPwPylfcjcmoQyhJOIDDUWf5/juHV1QByjvGJ14A7BM/
 STkpLObfCPeX+r07ZQpV99TLyk3JKjco6uzm1Nq3tD8Mbe+tmcW2lbfHNAz9SUan0AWJ
 8irtiaaE/SEdxwT3qXrO0PWW1TpOBQ9CqA2+rjY2vCUGi03P3HtAQ+IXM/SFSQjO0Ccs
 3dI9XEEx10gMD0BkTvE9L98+6mYM/HxVWn+5rgpcMMJVb68MOYMmlpOx9iq4dL8D62gP
 joz5CAYyULQkOWluLuRHoQAz+3UDgB/jnvDInIdp0e4x9MCSivylqTKQScBBCBDKFqCa
 2J8Q==
X-Gm-Message-State: AOAM532/m1biACIiskOFTcTUumqIV1EYUxH1Cnr/jBdzoOgGpGhfrLQV
 /8x4k9+2GybcSoJexEFbt+A=
X-Google-Smtp-Source: ABdhPJxfyVJYCW6OXxyIdqotYbExAo0vhBiYRCbKzt47PRvIp3kO28WGI5wLHLxB+zAdla2Gy3EPbA==
X-Received: by 2002:a17:902:9695:: with SMTP id
 n21mr2045679plp.137.1590648118126; 
 Wed, 27 May 2020 23:41:58 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id h21sm4284633pjz.6.2020.05.27.23.41.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 23:41:57 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2] media: exynos4-is: Add missed check for
 pinctrl_lookup_state()
Date: Thu, 28 May 2020 14:41:47 +0800
Message-Id: <20200528064147.547158-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_234158_862532_08F6EC0C 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hslester96[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hslester96[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

fimc_md_get_pinctrl() misses a check for pinctrl_lookup_state().
Add the missed check to fix it.

Fixes: 4163851f7b99 ("[media] s5p-fimc: Use pinctrl API for camera ports configuration]") 
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v2:
  - Add fixes tag.

 drivers/media/platform/exynos4-is/media-dev.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/platform/exynos4-is/media-dev.c b/drivers/media/platform/exynos4-is/media-dev.c
index 9aaf3b8060d5..9c31d950cddf 100644
--- a/drivers/media/platform/exynos4-is/media-dev.c
+++ b/drivers/media/platform/exynos4-is/media-dev.c
@@ -1270,6 +1270,9 @@ static int fimc_md_get_pinctrl(struct fimc_md *fmd)
 
 	pctl->state_idle = pinctrl_lookup_state(pctl->pinctrl,
 					PINCTRL_STATE_IDLE);
+	if (IS_ERR(pctl->state_idle))
+		return PTR_ERR(pctl->state_idle);
+
 	return 0;
 }
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
