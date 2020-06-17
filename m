Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8B61FD413
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 20:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fX4V/Z9eGq6URvjsXjeuG0iuUgLVMFyfZvr3SToH+YY=; b=U+Moamg/GoWxCO
	EoL5TeyVDag5gqHCHUHs6k6iKpOXQVoEjj0BQYBypQcG+wYORnJjU/XlJcy5sqSGdkCC6rOtpXnK2
	pUVhSiPhw4WGogCpd+TpOAb8vLAk/0j4jqaEYVM5GPvtjKYSPBHRlwmBEWkXFcScoJlzSk1akniaC
	KELdqbCQvY2g0K6GleFfryiikpOLnieWrI3Vfn7SPOgBAIJPz1/+lX2b5U0UYJm5pYrMJoA6GEhQQ
	w3C2olwoUxecaD7xK2MQncVsrEqSScb0KxMmsbAdMncjpAQL3DH7XJSX2UoInocKJFzPCACi7uhol
	dFg8GJlVPCXGrrG7tC6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlcRg-0006iG-Qa; Wed, 17 Jun 2020 18:05:56 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlcRZ-0006hn-59
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 18:05:50 +0000
Received: by mail-ej1-x644.google.com with SMTP id mb16so3472213ejb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 11:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=yDJt73mw7weaay3nFZ2M3lWsQoLaL8FRFjLnlYqrKi0=;
 b=1pp7YrVnknNM8LvbhqviZfKRvt81ldvDhhGsjRDo3NxyU+iQtzVy5HnFYycmwRt3HZ
 8kXQwp6KqzKKCgAEuL7X4AaMYTUL5AzZimCdK2+ZkoarZQ2nb7sWmI8waAMh73e544Of
 8W4pFCivlUMvYydSxAexRpQ/u0omhoVZrom6sC8wqe/dPPd0dxgPnX/xRtAsMvzTWrSd
 cg0tCOjc0RVArkFtzbAnZE9mxuTdIsZcoYhWwmRkxPXqIfrpKd+DqtY5XeQ1KWxNct41
 NDB4ME9I5woyo8wnVcumDy9syS2m2y/JCFIKZLKUGf99feP4bI3cWv5/D8Aig4l5eZTi
 xgCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=yDJt73mw7weaay3nFZ2M3lWsQoLaL8FRFjLnlYqrKi0=;
 b=qy8psGuF3u3Nb8Hi8kVsV9gRV97ZxFm/lCpZYL7ui4OCZ/aIk5KcJNQie1uqxDgJ/p
 Ipo6vn5OLqGCfM776KzhtghMlya31JwlHZ1W2iqCER9Ch5y14R6I733np66PyPwL1P4s
 3NGd89JWvthMlYfxtv90YCLchCmoaYNm0nCeFS54yijUAIEtcI4GM3m+VhRVyyRosbOC
 1w3VQiODmDXRllzW2ZLjZkAWmlIaqipUc/17/rqCTFP8BC8VYi2N6NnzopIhCvf3vy4a
 pCkHZEqB6S0TotHSk2RvH7h9O2nFV7Dd3SNxvbGF6xRMtwlL8N/1QbpRuU+gSpilWsxW
 ILIg==
X-Gm-Message-State: AOAM530PNAfcicaaAP4H1CUrTuiGkxscQ1QYxnG7KD1cnZCqiUrvENGE
 WJiswO36Brmm8V4JxPwTGuKjxA==
X-Google-Smtp-Source: ABdhPJzMWK4g+FCDDXKT/NqpY8aSLOan2cBspKMr8Txzql3WBYoiuuE6IFAEwnRnzTYR8iJpw6uTrw==
X-Received: by 2002:a17:906:7ad7:: with SMTP id
 k23mr336797ejo.439.1592417147096; 
 Wed, 17 Jun 2020 11:05:47 -0700 (PDT)
Received: from x1 (i59F66838.versanet.de. [89.246.104.56])
 by smtp.gmail.com with ESMTPSA id r6sm253016edq.44.2020.06.17.11.05.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 11:05:46 -0700 (PDT)
Date: Wed, 17 Jun 2020 20:05:43 +0200
From: Drew Fustini <drew@beagleboard.org>
To: trivial@kernel.org, Tony Lindgren <tony@atomide.com>,
 Haojian Zhuang <haojian.zhuang@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] pinctrl: single: fix function name in documentation
Message-ID: <20200617180543.GA4186054@x1>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_110549_248755_DB533C12 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 4.2 (++++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (4.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [89.246.104.56 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the correct the function name in the documentation for
"pcs_parse_one_pinctrl_entry()".

"smux_parse_one_pinctrl_entry()" appears to be an artifact from the
development of a prior patch series ("simple pinmux driver") which
transformed into pinctrl-single.

Fixes: 8b8b091bf07f ("pinctrl: Add one-register-per-pin type device tree based pinctrl driver")
Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
v2:
- add trivial@kernel.org
- add Fixes: tag

 drivers/pinctrl/pinctrl-single.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index a9d511982780..02f677eb1d53 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -958,7 +958,7 @@ static int pcs_parse_pinconf(struct pcs_device *pcs, struct device_node *np,
 }
 
 /**
- * smux_parse_one_pinctrl_entry() - parses a device tree mux entry
+ * pcs_parse_one_pinctrl_entry() - parses a device tree mux entry
  * @pctldev: pin controller device
  * @pcs: pinctrl driver instance
  * @np: device node of the mux entry
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
