Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3982ADC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 06:51:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HQutQMRRBYLYx8XyKUvt3qhmLMg76cZAcQU7/PGyY34=; b=oWxGt48kvpULUu
	MIx2RLpVxm2N0odPZcHNKezPdq/i+EOq6qkOJTdkJ7XRyCwDyiYKnrqxa9s+RQZa/Xuq0q7WTNbtg
	M2JLm5SoR08GbW43ROX29ScFEGe1ZrF32gSz7ScHyc3upYbdIgXYraMoHvFHOAwfCF7ckXrg7SOGa
	xYTPNn1Q89DW1xMimaPDVGVTERaq0wza1Bb5EcCgmM/EUjugnaC2fQXIUmVy/X7FTX5M0YHa+LmP/
	GjsKu6zsLYKEznsWCs9f1GzJd6tf4LhgKawnneu5NMfCdeH0RtFuskf/9WTPG6IprESxIvQCKNSiS
	Gl2yfmoiBQ+vIpF678iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV7bi-0007fK-9N; Mon, 27 May 2019 04:51:34 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV7ba-0007eH-Rk
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 04:51:28 +0000
Received: by mail-pg1-x535.google.com with SMTP id h17so8396491pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 21:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+pghJ3QtYkbMJ3TCzTPXHLJ/5p1F8C3Os/Bvo/JdKfg=;
 b=SEIZZEXrBAFGXzBgVAyoamK5sJIK5UZGppPItkKO+xGbuTud9szjLsxir/q5ZtHRrY
 A6F0w/RQHS5wiv/Nho1yKYDHxKHYaA5JpGEmYIpfAcbYpjfIzRVJNrpN6iaLC2IHuAsV
 aCbVQcAzDSmQyKMwyqZftwxAW5d/ld3/Cj9C4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+pghJ3QtYkbMJ3TCzTPXHLJ/5p1F8C3Os/Bvo/JdKfg=;
 b=i2wiqJ+u8iDrEgylgT5ENW+LCQv4nwLl7FUezaL/yD151d2VaO4IMY/7xVD2beYmoE
 CcrXsl+15Shf9Gc105kr7NuySh5nq+PSSvHDx5S6l8ue6OMDLsLWM3zkEv5mAGuU4kc3
 ycPqHLMV3TsG9jPvRQKrZa9ciXTTbZatd1uGyr88Qd+FvhUC2bAdZyZG5AXFyB/FhJLK
 nU4yzHLVIPvs3Gun6c4n7XxSd3vV2m42bnpVyZWS3yY6bEGEOFPAAlNl1OQyETjLW3nd
 d+ffu2Nrtt5cdHCRbf7iHWGWHsOtK+fkvZ00VfCASYstXof6xO4KAXdxc3c0vbTnGCHb
 QylA==
X-Gm-Message-State: APjAAAW2BcRa9WuLvZMGm1HEo2ZU9Acl8cjs2a2sIWzGhhMXM9AG/KQc
 xbfvkVOLUF80bgD8Fpcmkdt4TL7y13voxw==
X-Google-Smtp-Source: APXvYqwh/5/rhXpwbURGFIHVfZLO0fYXK7K8Mlv98GJtnZi4raWyoWkb3AtxYitbz76kcJUga2aqBw==
X-Received: by 2002:a17:90a:2e89:: with SMTP id
 r9mr28510768pjd.117.1558932685483; 
 Sun, 26 May 2019 21:51:25 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id t18sm8082745pgm.69.2019.05.26.21.51.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 26 May 2019 21:51:25 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] fix mediatek drm, dis, and disp-* unbind/bind
Date: Mon, 27 May 2019 12:50:51 +0800
Message-Id: <20190527045054.113259-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_215126_892256_C18AC258 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
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
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are some errors when unbinding and rebinding mediatek drm, dsi,
and disp-* drivers. This series is to fix those errors and warnings.

Hsin-Yi Wang (3):
  drm: mediatek: fix unbind functions
  drm: mediatek: remove clk_unprepare() in mtk_drm_crtc_destroy()
  drm: mediatek: unbind components in mtk_drm_unbind()

 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 4 ----
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 8 +++-----
 drivers/gpu/drm/mediatek/mtk_dsi.c      | 4 +++-
 3 files changed, 6 insertions(+), 10 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
