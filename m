Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F106F07F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:14:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9RiR4XGR575PzulcwcU4/gLIqc5U89HvvnxOmLf4leI=; b=peMe6l6gDORrFA
	iO3XHkyx57sGpTtltdmtklqWziFXBl1Tdb4nbVN6L0i8PFGumLugmeRgAnA5ESmQnpVhrzuvnc+l8
	gfbeGuGfSNUBQVn3+ImoBQm9LaBoi3QqTmWOwmWxmP93pB4EhZSe+XitTbm+bNvBz9c5RtpEWN8je
	iW69y8P/2+NVpLZwr6yZIIAj5C1lzjif0a6ER0N4FrDRRVYjq2Q5DXriHwa+X4yJmQbllffFebOve
	hzkyrHem54bQOhGyOez9TMas1RaAIFKbP+8I2ouzWThl/LxiduMgb7j8+iFRMMqp78i+Ke7HDaOxR
	xs5FqECYjxtp3ECbYDcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS69h-0006hI-TJ; Tue, 05 Nov 2019 21:14:25 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS661-0002fP-TQ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:10:39 +0000
Received: by mail-yb1-xb42.google.com with SMTP id b2so10004583ybr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 13:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5GhjUCkz3ocQmrG6PmUyRxi5BVK7ftViRGTD2rrmkKI=;
 b=Uuid+vkuIMoEPu11BJV35oCzoqSefDW9ZuIPEB7sSMRiLblnbvGw2td5OwAl0HYFEs
 UQF0Rnc3aJGQnFA+a1sDH1IvqHqKfMbeIYvLNjeLoB5eNFEKXyiis9Altea1PfmHu5zm
 GPdFmGda9zTFKHcAxkl3at79EyN9ESPetMHCcnN1+X6WVw0tU0K3Az1E6S8p0FiRbVV9
 w1KOI8RL2KFZg/hZpLEe5JjxApP5DcS9nGCc5X8v4le9Gep+hxkTdws36dbptVGnOFfX
 7yfQXQ6miw0VHXsnRDzXgNcPuMcdwP9ZW1Dzld4Ok8GP6z0UTNzUzDnTh8G5fJWTGHX2
 zgHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5GhjUCkz3ocQmrG6PmUyRxi5BVK7ftViRGTD2rrmkKI=;
 b=LtD8m/t9wL8uvTon9HvjQA22WiA8clZHYclH7C/Z5wjZTeRp1+GPc+9O48hPlWAqlP
 tkt1KAPhdTUNqd3aeYtatOrGFA2GUPqmpuDdJKIlK9TmOHgYZmaplXhm27iwmNLephMn
 1X6XJFjD8XLWNdU9YmgMvkRHUNOJTICc+q54L4ImueIEA1QkN24y0FMJ7TkIzSiPW/jZ
 0qfWIRKNWXsNOqSyi+DGviQAQQkLyxGsdnaBHI0ETyD++pXChBv8tbse8ta9Pqiyw0uA
 drdCZfyzGEF0XxRv7aGHMA4HW7IxMd8W1JDlVYB+bKg9i8/9LiSE+uTJ2LyHo70TOQ1/
 YW4Q==
X-Gm-Message-State: APjAAAUOBmx8lMGio4JyQTgZ4p4QjWMQTRiz5CcBxbWkRid4RhJ/Cjaa
 x4fY2px5XZpEtSM3xvvBY5qryg==
X-Google-Smtp-Source: APXvYqwZpVTKw7wEDsr9syi4VlENMgrIrYl9+rQ/rlZeFQSHvVhD8rMyrCSti6ffViFWSs7d4O4Rog==
X-Received: by 2002:a5b:d0a:: with SMTP id y10mr6596220ybp.36.1572988235921;
 Tue, 05 Nov 2019 13:10:35 -0800 (PST)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j66sm1815216ywb.101.2019.11.05.13.10.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 13:10:35 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 0/7] drm/mediatek: Refactor plane init/check and support
 rotation
Date: Tue,  5 Nov 2019 16:10:17 -0500
Message-Id: <20191105211034.123937-1-sean@poorly.run>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_131038_033450_25D8CC6D 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
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

Hello,
This is a follow-on to [1], which supports the original Y-flip. I've
added X-flip and 180 degree rotate. Additionally, the rotation property
is only exposed for ovl planes, not rdma planes since rdma doesn't
support it. In order to differentiate between the two types, I had to
do some plumbing in order to surface the supported rotations of a
component as well as allowing a component to implement plane checks.

I've tested this on a 4.19 kernel on mt8183. The set was then forward
ported to mainline and build tested. The forward port was relatively
collision free, but there were a few.

Sean

[1]- https://lists.freedesktop.org/archives/dri-devel/2019-November/242312.html


Sean Paul (7):
  drm/mediatek: Refactor plane init
  drm/mediatek: Add helper to get component for a plane
  drm/mediatek: Add plumbing for layer_check hook
  drm/mediatek: Plumb supported rotation values from components to plane
    init
  drm/mediatek: Support reflect-y plane rotation
  drm/mediatek: Support reflect-x plane rotation
  drm/mediatek: Support 180 degree rotation

 drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  50 +++++++
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 145 ++++++++++++++------
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h     |   2 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  22 +++
 drivers/gpu/drm/mediatek/mtk_drm_plane.c    |  18 ++-
 drivers/gpu/drm/mediatek/mtk_drm_plane.h    |   4 +-
 6 files changed, 199 insertions(+), 42 deletions(-)

-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
