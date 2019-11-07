Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E089F2AAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vab4IY5pxrVI01gWzzPqYTBI8hBQ+c2L9V4TbNOslTw=; b=dcpENSkC15irQ4
	lWzIs6KS/sI043b7VLjXjUCmiiW97834EWXQ3BkpNgObd1C32ivtkxakFcTNUaHNazEcIXUIPvP3w
	g3eIprP8ddL/qgfU7TI5PNeYxqW9FvI7kBH/hkS219iVqhbde67r1OqHJOqxki05jVjo3OIN7OCVk
	4VGJS4Tr0eMovONB0V6wDJEmwy1TK/vQwQcJTHX/7FKG18nBXz6w0swhtgIUTH8bR5jKzLKyyP/3G
	UgKHVVV0EpD/ydLK683YEltKXL9nF03x0DbdaHQmhGZuf4lseq6m8l/HVF2HQEB0d5GLSzOQUgArU
	EMhI05zojuWLu7I37Tbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSe7g-0000bV-EA; Thu, 07 Nov 2019 09:30:36 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSe74-0007XR-4S; Thu, 07 Nov 2019 09:29:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id j15so2170578wrw.5;
 Thu, 07 Nov 2019 01:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=O+PJ1ZZn/46Tl9iY76CTFXkJGMuUClMcIKHPnfX67PU=;
 b=ExSSkNBMRaqpENwcyHoUMKVHRx3ERHMBPqqA7vNtUGEM8uyNE+q89FAIx4p/bXQ80y
 xuuu2alYaeIc/YDffYAgPI/VkJ9LWRJrTxHFGX8VWQwysDcT+y1iZ0LXPGqx00A3yVUI
 0VXzjUXBPH0RN7eascN/a8xn9B+qwMneU0yD8OKnU5gMKBaaBfvomqid6hshuXeTbDMB
 +VXKMjc2+5O0+iCl8fM083zJgKxW+htnmS36fEw+vt+5jfq6OYKIEJ8ddX6lXd5Y3pPY
 EWUw/neg7duyc37aqN/EAe7EW/YXhUU08xGynlny2LoQgwIOXX6phgXUqroQbuYk/JGa
 eZvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=O+PJ1ZZn/46Tl9iY76CTFXkJGMuUClMcIKHPnfX67PU=;
 b=N2uB95is4PJr/xiOx80p1VtzL+XjQYY3IRKffHIH8lDViRlVERpBKY1HTQOMW5+ffD
 XPAm+atOzTx6bbY0CDOX5IVp9HLlI/U1re+51AZFvIVClJWOTzdOmm3vSbcKj94nPAzl
 FVPaqZ4/z3qM5I+UiDOC1nH50LRXmdgJeXDibao8mLbFN7fuLVL/JBQCDgWSfB7zHaLb
 4TH9s5G2qvGzMyLvs/9i9PrDwpWcB+ghdFSs84evLhPfx21N1/Oknbo3aNX2mVzfebTF
 KbXHo3AY2h5hIAb1+btA+WDmQ/xJ/eKOpBb3pX11bab0gb4rHftjli8dg+G5d3oam5j7
 bDlA==
X-Gm-Message-State: APjAAAVPPIVZkbgesT1yEMGYnWfvuJl4pW1oeNHQ1vY+OpB87cRm7bMw
 fqRIBOZ1mykXt+thD1W9NtE=
X-Google-Smtp-Source: APXvYqwiYbI6O8+aUPp6Ep2W/Inr6Kp4MKn0CHA3p1g484JYEvk7zEomTG0WmL9mVQ81Yz5M61a3fA==
X-Received: by 2002:adf:9d87:: with SMTP id p7mr1829599wre.11.1573118995612;
 Thu, 07 Nov 2019 01:29:55 -0800 (PST)
Received: from localhost.localdomain ([197.254.95.38])
 by smtp.googlemail.com with ESMTPSA id v8sm2323607wra.79.2019.11.07.01.29.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 01:29:54 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: use DRM_DEV_ERROR for log output
Date: Thu,  7 Nov 2019 12:29:45 +0300
Message-Id: <20191107092945.15513-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_012958_282146_A16C95BA 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wambui.karugax[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the use of the dev_err macro with the DRM_DEV_ERROR
DRM helper macro.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index bc073ec5c183..5f23cf702cb4 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -916,7 +916,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 	}
 
 	if (!dsi->cdata) {
-		dev_err(dev, "no dsi-config for %s node\n", np->name);
+		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
 		return -EINVAL;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
