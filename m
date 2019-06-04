Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8A535142
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 22:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APf7gs3VZSlzFBU79wFyT6lJqA5vvEftVJ6Ow8xEQLg=; b=rUsINazowBDgzC
	IHKD+Yc1BpHuagcum8WX4L3NOub2idS0SfD3ddJgHwQaXDPKeLaj7k/1JRjhBYZymayg8nO3dCyC2
	oz0ppau4OF6tSvIsXRdeaj/kdlt6sdpaF5KLkr8F+FQE0j55/h35KvlFdiJf1RxjNnQ0Hl6YJjy8F
	+YMXaGxazjw2/B8bqnPZj9vmPCAL7diZRVsRSWhhj8+oatC8TYp7kL9NbN98NfcX4iT9S7pWgCMq+
	MadkjonrbC8vInDf/lHv8p+xAPhD2SKA0YomtsLOrlzjxfhsmd+zwdX5CqpEJOALHT9mvEip69Myf
	miXigqHkWsxKScHhQcbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYGGX-0000SO-PK; Tue, 04 Jun 2019 20:42:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYGGP-0000Qz-Mc
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 20:42:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id a186so12692279pfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 13:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NL5DPTKKMNZWvD7Hnx1KIRpy/8nRGAMXIh44aNGHSaY=;
 b=TVOLIvqXNvIKZDyIwK8wpLxqIpKlUqfTCiUrsEkG21UZPFVpKJ6u/ERmqbwBnZ100J
 MXZP+S/ZMqjo48TC2q466d1DX8mhAZ31orqtTrnRjWiiiEZT++FMmvnf+4CFvTY0hdRh
 jRJliijhyE9rK1ULJ56hNMxT1YaXl3L8Q43wg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NL5DPTKKMNZWvD7Hnx1KIRpy/8nRGAMXIh44aNGHSaY=;
 b=V0kT9e+IZeWVGwphn150PtwN9neF1NSrEmyWKa1VnUmU46pLSF/16L8KmhsJnhEhUx
 EkUJS3VJPcgz3sb5ruP6djcT0kgNiYpgD58ZPRUtftgJ81iLHyMyf90S8/K/C8Ns2IXY
 z1PncTNtWMQk3J11U1wGF0IhC89YLu7tZv+FsnTHKqk5Mk/3fvUSoNm7jHsLHW8TQfYn
 KgxaE2L6SpE3REPdZMePEs7cHMzHDeFNCPiCh3Guf4AutqKSHT+XCyIgWDmWQGL8ewQ9
 xVNl69T+MpbCNH8KNOO2Anaj5WZs0AZes+oREhAe3UvuvQ6F1OcH2hEgWa/V0nkz6Oj1
 qjdQ==
X-Gm-Message-State: APjAAAUCnySRtMPTNT27H+cjr/7rPE8xJzo/ufXeyOogSLYckssZdQXo
 gOZb7tw3JmUHO+cITohpbgOyIQ==
X-Google-Smtp-Source: APXvYqy6yGca0NfMnlay8Iio+11gDCTu9XCNqkdRwwop7IybVxYxXjJ3nlJNPRuR6O5jg/ll53xR3w==
X-Received: by 2002:a63:2bd1:: with SMTP id r200mr633202pgr.202.1559680952939; 
 Tue, 04 Jun 2019 13:42:32 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id m5sm11553616pgn.59.2019.06.04.13.42.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 13:42:32 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Sean Paul <seanpaul@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v3 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Date: Tue,  4 Jun 2019 13:42:07 -0700
Message-Id: <20190604204207.168085-2-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
In-Reply-To: <20190604204207.168085-1-dianders@chromium.org>
References: <20190604204207.168085-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_134233_735307_9F70A954 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Rockchip rk3288-based Chromebooks when you do a suspend/resume
cycle:

1. You lose the ability to detect an HDMI device being plugged in.

2. If you're using the i2c bus built in to dw_hdmi then it stops
working.

Let's call the core dw-hdmi's suspend/resume functions to restore
things.

NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
"late/early" versions of suspend/resume because we found that the VOP
was sometimes resuming before dw_hdmi and then calling into us before
we were fully resumed.  For now I have gone back to the normal
suspend/resume because I can't reproduce the problems.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v3:
- dw_hdmi_resume() is now a void function (Laurent)

Changes in v2:
- Add forgotten static (Laurent)
- No empty stub for suspend (Laurent)

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 4cdc9f86c2e5..7bb0f922b303 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -542,11 +542,25 @@ static int dw_hdmi_rockchip_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
+{
+	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
+
+	dw_hdmi_resume(hdmi->hdmi);
+
+	return 0;
+}
+
+static const struct dev_pm_ops dw_hdmi_rockchip_pm = {
+	SET_SYSTEM_SLEEP_PM_OPS(NULL, dw_hdmi_rockchip_resume)
+};
+
 struct platform_driver dw_hdmi_rockchip_pltfm_driver = {
 	.probe  = dw_hdmi_rockchip_probe,
 	.remove = dw_hdmi_rockchip_remove,
 	.driver = {
 		.name = "dwhdmi-rockchip",
+		.pm = &dw_hdmi_rockchip_pm,
 		.of_match_table = dw_hdmi_rockchip_dt_ids,
 	},
 };
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
