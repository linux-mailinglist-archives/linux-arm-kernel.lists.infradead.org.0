Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28278005E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 20:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DFT3NhlgnVUkqhUPHWWwBQsJdNwQTXz/bntDAQCZgf8=; b=oxJISEfFwk6KwB
	4arkx+IXL3LUbNPkCkUrox51U2iA6Um9XrnWOdxL+AGj41eOOEopzbLq5N6x8NxfOkQSPXR6EkDho
	3dCEcjlACsExVLGOL4IxUQmsvmQIdNvObTOF5YNEZU8Im1H47EaC5s3be4bHENxNhW+uSRDEevJny
	6IuVJn1bAyDXS2JAQicr7k0RJLB5DlxdrAPumLMrY3Vf57vI0zLX0k2xuDMbK4NRqQafenFcyOVmB
	wP5q8uicvhTuTQVdciMtaLibUccASAU6Iu9iLLUSqHiv6ChZb9fWcyakZXKCpXSMdxMWM1weFe/yo
	21O/2v2J8uDsX2fylmHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htca2-0002Ds-1J; Fri, 02 Aug 2019 18:47:06 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htcZi-0002Ck-98
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 18:46:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id k8so33985041plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 11:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NIy8h5wSfDH2K7xzDnBEs97s43/jf77iM8+1t5qbcTA=;
 b=dM2JCKG4ZUdCfNsWMCALyfKMUlMYXJR1Ny3J8w66b56pgCzx9krV9g/X89YcVbqo19
 05Hw1m1UpMW0MmMsBYCojTQBt56r4WJImUvbKsmgjzA/PcpjOl/lII2MX/R4BfBJH5fG
 XEBK2PEP1UZjsjFqxDsMfeIoZ0TIeDfIePL1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NIy8h5wSfDH2K7xzDnBEs97s43/jf77iM8+1t5qbcTA=;
 b=P9QDn7/zDReLvo0FIBl+ktpXdqPj/3Gu1oY2C5uJKaJkSn5CQAAuaExqTP5zuDc3HR
 myVHoz6xftx+b70B/LT6B895GunnsqDCCoNBn3xzwcXiamy5pxcCfUtLmBGrCz2bgmn8
 G+w5tHDP3nipxz76ZVZPQqfMWYNCJAJT8swVZK0uSgdtXyS0qy0jHzQEF9j/EBWu3dax
 aYNGA5TbwwHvTFeiv5uXfjfZwv1E7Fz5TAj6iUiQ7UJN6fRToDImAPFtnXAV/XXW5lar
 yKTJXq4iXS0HZ1GrottUX2kxtJ+enm098DNVhH2PVXXRmtHuL/B+5LbHon/bPc6q4aLL
 rv2Q==
X-Gm-Message-State: APjAAAUwjHUA/C8MZuBYI8RPZ2wcfpdKwVM5wyBaRAjl/NdHZhpu2mVu
 kq7cC8qY9Ufiz+WR3wsGMfmL5g==
X-Google-Smtp-Source: APXvYqyzzypa/BIcIJw4+CL+ZCerUphjYpafPzUroZSN13bv9VpeTF9YJah3URQns8ZT10F1jhisNA==
X-Received: by 2002:a17:902:2aa8:: with SMTP id
 j37mr126464818plb.316.1564771600984; 
 Fri, 02 Aug 2019 11:46:40 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id f19sm112071104pfk.180.2019.08.02.11.46.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 11:46:40 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, seanpaul@chromium.org
Subject: [PATCH] drm/rockchip: Suspend DP late
Date: Fri,  2 Aug 2019 11:46:16 -0700
Message-Id: <20190802184616.44822-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_114646_324481_53438C0D 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit fe64ba5c6323 ("drm/rockchip: Resume DP early") we moved
resume to be early but left suspend at its normal time.  This seems
like it could be OK, but casues problems if a suspend gets interrupted
partway through.  The OS only balances matching suspend/resume levels.
...so if suspend was called then resume will be called.  If suspend
late was called then resume early will be called.  ...but if suspend
was called resume early might not get called.  This leads to an
unbalance in the clock enables / disables.

Lets take the simple fix and just move suspend to be late to match.
This makes the PM core take proper care in keeping things balanced.

Fixes: fe64ba5c6323 ("drm/rockchip: Resume DP early")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 7d7cb57410fc..f38f5e113c6b 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -436,7 +436,7 @@ static int rockchip_dp_resume(struct device *dev)
 
 static const struct dev_pm_ops rockchip_dp_pm_ops = {
 #ifdef CONFIG_PM_SLEEP
-	.suspend = rockchip_dp_suspend,
+	.suspend_late = rockchip_dp_suspend,
 	.resume_early = rockchip_dp_resume,
 #endif
 };
-- 
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
