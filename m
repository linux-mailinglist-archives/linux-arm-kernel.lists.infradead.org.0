Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7AAF080C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YmRn/wZrAFP5o662K6XN4tupJlGDN3y9mSkSFtUl3nk=; b=usm58GGbCRefiJ
	0KUnbPaTNimo4+EX2Pss2CDd2sIyYuMyl65r6pBD0eoTwDigs+dtIMnLG0GO9TwI/RsL3MNGIYt6e
	kPAcLz2AfEO/mmIBmoPVvToyXJX0+4DcnMY2QC36ISFQwH0GmyOKo/ZiOlVX51E+jr/qsYxG10liE
	rf3Owuikvjxhqiaq7VSANZKz9A68gPfSr2LHg5fI0EGUX6ZAJ2t3o76GnV9ErSFG2bj9CGwLkAD44
	mNYu6YECzEf/8wy9atfF5Khldq3Qvo5zv98n6R2WZytH4dgspY/kYudhoYkry2ZZUHU/+HMINrtCF
	8DoUh8RtfoRXn0KE00CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6Bv-0001nM-I0; Tue, 05 Nov 2019 21:16:43 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS66P-00035F-Ij
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:11:08 +0000
Received: by mail-yw1-xc42.google.com with SMTP id g77so8825646ywb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 13:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+WiVxRRU/BsDC4YALJAt3eFqvdwKtmFyjMHuXXIhN00=;
 b=b7BvNVaq55rSQstmyVb7FVPxaDzfpQvfg2LWzAsNLXIw4Zgl5nKJ8oQMM9S+74IlZf
 6evcHrczQNvXo4hfr/qCgBgUU1QXMEibjDd9StKHdtKFZ8/2d2HqLAUO9A0UGR3lsrpn
 HUzkGW8k5Dvge9poGrqF0sURTtUNKfmb4kwUAnaOXEdwRJJVKqRDDS3P8DeScfku51AJ
 xBYemInVm9isbevgdMHl1h6n0R4KLDQ6m+CMiC1pHpmibukZ66lHryHliW1ga6HcwnVx
 mC2RhQ1///qyMnhFQh6+pp/VxcsN1UPACfXKltS0IxDOD9OPpCxKfbtpVGrKHi0jUkDc
 yxmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+WiVxRRU/BsDC4YALJAt3eFqvdwKtmFyjMHuXXIhN00=;
 b=s8dLZ0jbzbLK7YF7UnnXaMIoVPg3NHGw4tzn43HJf7lK0QZUaeTR3d8cdCfQYAd9sO
 dMjcEeOjF+eqIRCkHEDFLTHSR8Z7xQLj7S1U/sUHc1Mwb6ohLp9YnbY26jBMIarwF19p
 KqD/MGGfn8HaYw5MtBSxBPwQW1nKAOKbqBy5gIuGFo30mfkM5OK/wShyWUBH1JvTXBDn
 QL/0kPO46g0HsReDmzznf+6UheVsCBaUBUM9gGlZCFUUEAYPitGKDOmlPBrfy1TWmdPq
 7Q5+L7XI94afQt+j3nkGNu2iumINimltFAtyq5GXufYb3LldX+x7S/BHvwUlT/C8hiu+
 AEtQ==
X-Gm-Message-State: APjAAAXcxikc9LeGDFevitiPdZ3farEjbsZ5AhFIULVzhj+Rk571lafT
 lQ6WBU6dUyqP4iMjtwwieUb19g==
X-Google-Smtp-Source: APXvYqzqhKbfG6uj0C9QtCsk5hTcg0qnCB5SoNKDWw01NkumaG0mVUCnnbjJ/lO9GqEJnRlx8UxkVA==
X-Received: by 2002:a81:7053:: with SMTP id l80mr23239678ywc.377.1572988260799; 
 Tue, 05 Nov 2019 13:11:00 -0800 (PST)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j66sm1815216ywb.101.2019.11.05.13.11.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 13:11:00 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 7/7] drm/mediatek: Support 180 degree rotation
Date: Tue,  5 Nov 2019 16:10:24 -0500
Message-Id: <20191105211034.123937-8-sean@poorly.run>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
In-Reply-To: <20191105211034.123937-1-sean@poorly.run>
References: <20191105211034.123937-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_131101_654604_E6F25A57 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dcastagna@chromium.org, matthias.bgg@gmail.com, mcasas@chromium.org,
 Sean Paul <seanpaul@chromium.org>, p.zabel@pengutronix.de,
 frkoenig@chromium.org, ck.hu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, markyacoub@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Now that we support both reflections, we can expose 180 degree rotation
and rely on the simplify routine to convert that into REFLECT_X |
REFLECT_Y

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index f4c4d3fedc5f..4a55bb6e2213 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -143,8 +143,8 @@ static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
 
 static unsigned int mtk_ovl_supported_rotations(struct mtk_ddp_comp *comp)
 {
-	return DRM_MODE_ROTATE_0 | DRM_MODE_REFLECT_Y |
-	       DRM_MODE_REFLECT_X;
+	return DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180 |
+	       DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y;
 }
 
 static int mtk_ovl_layer_check(struct mtk_ddp_comp *comp, unsigned int idx,
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
