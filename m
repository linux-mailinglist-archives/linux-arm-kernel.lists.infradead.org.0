Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB7F3C074
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 02:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5hF4GQfMmnKAM3M8VFDpPaDv3SnDxz9YPMubYs4Wm4=; b=jaXk1/02X/GqTu
	uqlBRuurbKwBvgFwh6ErFcUSI0GpxM6cDhxD21tkALEUevagpG4WlHI17jHEGBUFvi51wrd2LnuST
	KjdSwJagbKG8GjnAMcB0WyVCIUmPUedgQ4n5lgEXYBE4ZAGFn9bfNXM//NAXiBZFgD6yjqW4Q6tcM
	WdUbfjo3Jl9VStxQeyOW1vY8XLa/ifP2csWopJTSq9a2Yhmd72dqhOIs/cJUMs5J1J2EbtW/6mcp6
	X3I4yzRYmy3s/M8i2iDTgPtIkNXXM0UsLXvRzCyMYFnCOyqVtUq53VUQns0ytmDKgYXFF4IkSNOX5
	ISRAwA+pnTN9z//IpmRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUap-0005gn-Q6; Tue, 11 Jun 2019 00:24:51 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haUZD-0004Pt-Hi
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 00:23:13 +0000
Received: by mail-pf1-x442.google.com with SMTP id r7so355978pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 17:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M8dK47yPhynvSehskkuhR0uoKpp2uUP0x/D6+OPbrUg=;
 b=f8RsE3S/kfdDH6v5icBqkYxG44gp7sMpthCwyaqeVVv/htgQ5HpcDI6Wv0iU/zWNcb
 oatVGJ4axZtIjvktwE9gYtDNHp4sChejjwJoasvq2NwX71M8H6s0JQby/OGPhBngYau6
 PLZre9cxMKoOn5+neuim6KE3BHgm+44DhuGtg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M8dK47yPhynvSehskkuhR0uoKpp2uUP0x/D6+OPbrUg=;
 b=XFXdpBdF0eqZ0ftUQAzYLVlyKZGgDlUsLCjSPyZJuAKFlUgHCc/eutNHbOohbc3emE
 qtOFRUUIG83gz5ufasQ6Mc9jA1ZnsW0OecW6djKQc+0cVjBI1TDgnXkUB8+101eJq01x
 DXpEMUrV2VCzWE0ufeox7z3eXll1gN6Bb2UrxAu2KPKUiNp6qOKl5CeIqEWzrmd2vvUw
 EcBZcXDnkC1sRbx6EaqxYmwWMT6Mrms/oQvjx0P2A/EmC/NmbkT/ABd/Ep0y+B3rFUKv
 oaw/9A+Q3QhgyVbxy6u6M+oFOLZhvkiGXMEozuHBt9EloMomD6grt9q1e3JeHULtVZ8m
 IsQQ==
X-Gm-Message-State: APjAAAUC7/zuoiR6/hdsuS/jfh2gCrn4QJC1kH+xp4fMGVTSpWTVgSDH
 9A5AqFNZ3Ie/eHvHlH/QopVfbQ==
X-Google-Smtp-Source: APXvYqxgskg5maq+JeiMbuvV7nLdRyi6nn4eQ55SV9Rs1d3bhqZcPjSw0Twk7BzvTbHKQzN5RyBSvg==
X-Received: by 2002:a63:8249:: with SMTP id w70mr15859377pgd.33.1560212590903; 
 Mon, 10 Jun 2019 17:23:10 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t4sm540317pjq.19.2019.06.10.17.23.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 17:23:10 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] drm/mtk: add panel orientation property
Date: Mon, 10 Jun 2019 17:22:56 -0700
Message-Id: <20190611002256.186969-6-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611002256.186969-1-dbasehore@chromium.org>
References: <20190611002256.186969-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_172311_628176_5398E5F8 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Derek Basehore <dbasehore@chromium.org>, p.zabel@pengutronix.de,
 maxime.ripard@bootlin.com, sam@ravnborg.org, intel-gfx@lists.freedesktop.org,
 joonas.lahtinen@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@linux.intel.com, airlied@linux.ie, thierry.reding@gmail.com,
 matthias.bgg@gmail.com, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 rodrigo.vivi@intel.com, ck.hu@mediatek.com, linux-mediatek@lists.infradead.org,
 sean@poorly.run, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This inits the panel orientation property for the mediatek dsi driver
if the panel orientation (connector.display_info.panel_orientation) is
not DRM_MODE_PANEL_ORIENTATION_UNKNOWN.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 4a0b9150a7bb..08ffdc7526dd 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -782,10 +782,18 @@ static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
 			DRM_ERROR("Failed to attach panel to drm\n");
 			goto err_connector_cleanup;
 		}
+
+		ret = drm_connector_init_panel_orientation_property(&dsi->conn);
+		if (ret) {
+			DRM_ERROR("Failed to init panel orientation\n");
+			goto err_panel_detach;
+		}
 	}
 
 	return 0;
 
+err_panel_detach:
+	drm_panel_detach(dsi->panel);
 err_connector_cleanup:
 	drm_connector_cleanup(&dsi->conn);
 	return ret;
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
