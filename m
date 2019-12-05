Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA16114488
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 17:14:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FiztS/VM8u41EfqrgHTZx6fcoWK3RaQaQ1OsFvQEKsI=; b=X9qPur1QVKmFyP
	PwRg0Vrzr58J67sP6MXaqIj9kQPDVz+ivUJ7gjAQM6g1mAgccH/c/DoReUzFUZ/8Wsu5l32910QK0
	eaM+vjkwgt02DwbELTRcHd5T5/+ylI5Vi3Lt3GH276fIAOK4ojzIFv9gAtgtCJlJZxb/2k4RAuFkO
	Hf2do0hXLCIBfw9oE57ryew0k8WpieCssVKpUst0JPFioUKZcYHwlvClxxfn+u6i5WcwvI9eWzluU
	mdbKZd5Nz1V+dGyYtwDocsbNvMXgIC0W07zb7NAIVmsUuOMXxZwU+/ejHtmHForm1ioGUqthljtTF
	VmxLP1XUUX8r+Xdblvkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ictlS-0003fX-Kn; Thu, 05 Dec 2019 16:14:02 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ictlL-0003f7-KZ
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 16:13:56 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s35so1474725pjb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 08:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UKlXFmsyCCcDDwPIPUpIzSPGgE4nu5epjuY/dy6jNM4=;
 b=nazofESih7AXvfwNZmyfhH0uQR3YVRvZN2HjlxMs6kzxGlLd7vjEgyDgq2QKlLD9qm
 HegcL1lC8G4DghBfGBWCM2AeXXNK+XSWTbIcJ+Vi+CQ4f+xakpNN9p/bSCYyRNUMvWDa
 tHrFvhdjoSmH7UhcqLfGN/0+9G/k18RkB7bmI3lxPtNtJozmq8fv9+Kl6S6b5My5Su5V
 O2yvei4BgLjTbtnOPUslo8F1w2Xj+ao5bVUEj78KNq6EG7niaoQgsRQmL75lAzW/+jcG
 phxjFgczueN+Pmwyd/tT7G1VYS1hyD7DufECR5GxWgmD4ODqTTZq57h4oPlmAN4RofC6
 d/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UKlXFmsyCCcDDwPIPUpIzSPGgE4nu5epjuY/dy6jNM4=;
 b=NcPSZSArf/Wu3CdY3PIqdLv7TTjnoMjIriDQcdoxgGBwBv9leTx3Ijch8I5gcdsTzV
 2p9eu9wNeme2fQepV2WxJlpozLEziYBetqGUTxxzhqZJIPEQF9AbF1oN+wmgPvajJjUh
 qofmzKay2RMDbfWt2o+AVFzZJGa2uHV5vbVd5WsAT2JwUCqpTx/TBWjOuvsocKIE90R/
 qaayIQCzRz6NuFd0vs2t1ZIwNKUA4bPWQiT2D4+nqJjOOxV/PkDTHg2AgcmTZog6bo5+
 lC8BztB7YlzYDLVo/C7pK8rZWGGhhnKBE+j2yuBBqRcpCqsmip15jJ3RcEJEYKipeLwB
 l9rA==
X-Gm-Message-State: APjAAAXE80C2sC1luRV3jrUjP/Lm0qcqgNbrUJCVoQrBqii4E0QlNh2k
 AmS5Rr0MH0uz2Lj0BELq+hAV6x3s6pQ=
X-Google-Smtp-Source: APXvYqyg6jDDIuUjk0ppe+Py08NjE/qtzDD1oo0Tm7cVTE7k/KaRbCfv99/ONFToupOaJS3e3I5RMw==
X-Received: by 2002:a17:902:bb83:: with SMTP id
 m3mr9424484pls.94.1575561934927; 
 Thu, 05 Dec 2019 08:05:34 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id b2sm13229869pff.6.2019.12.05.08.05.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 08:05:34 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH resend] drm/exynos: gsc: add missed component_del
Date: Fri,  6 Dec 2019 00:05:20 +0800
Message-Id: <20191205160520.31955-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_081355_702572_565D8575 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 David Airlie <airlied@linux.ie>, Chuhong Yuan <hslester96@gmail.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver forgets to call component_del in remove to match component_add
in probe.
Add the missed call to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/gpu/drm/exynos/exynos_drm_gsc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_gsc.c b/drivers/gpu/drm/exynos/exynos_drm_gsc.c
index 7ae087b0504d..88b6fcaa20be 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_gsc.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_gsc.c
@@ -1313,6 +1313,7 @@ static int gsc_remove(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 
+	component_del(dev, &gsc_component_ops);
 	pm_runtime_dont_use_autosuspend(dev);
 	pm_runtime_disable(dev);
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
