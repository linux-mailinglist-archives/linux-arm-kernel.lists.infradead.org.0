Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3275E1ADD4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 20:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ug8YjHrSykF78fvmayvJS9jp/OAEASh0bQZrn30xHUQ=; b=QY73mNzKLZpPJH
	yloWXL3/7P75/WNajC2nf7qgZei0Kr0/EzdjRcZ9l7FOoBQkQcJj0rrRQZT/dkYJJYSpSLZ+nKuOM
	Xgh6bXxsxkMfmecLYqEUUkSdasEkRSQni96anhHFOlcB8UkKclPIgW0XM2mSTzO/GBZqgzE+bnXgT
	5g7aNip79mOP5xd7GZYJf8H8N+BXTkM5DT29ZnlyIMYS+Fp8VH0s8c0z2lAt5DFDRvAL7BseS5HlC
	Xj30rKnC6n4yVhlbCWdVRRVrdrwzd7wANhGlgC4mPq2FCypp3DOb1y4h1b8iLKRDH0SpcHR1K3I+j
	Qq7tkurF+Y4gvb+a0M8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPtQO-0008MA-SS; Sun, 12 May 2019 18:42:16 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtQ0-0007yq-Hz
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 18:41:55 +0000
Received: by mail-pl1-x643.google.com with SMTP id d21so5287537plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 11:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X/tiqLBXOZvXdZPkWEHxuqsfybmaWhHqaUojJWwn//o=;
 b=gmE7gAbSlzGEhZ8LpGR33W5phzB49ia1QW0WhEOtOQV4k2UM+5pRETcVfWCpKKNILw
 cgDKa+e0YZK+3bK/PXSD01TnlI0nZLmqs/H6hXf77K1sJ5EEbzgDeiNjoWyIB0J/QXCB
 UX5Ea+tsVIzso1qwvUxryk/+dq/YdCVEM5Cn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X/tiqLBXOZvXdZPkWEHxuqsfybmaWhHqaUojJWwn//o=;
 b=HHSz4v+XLHmdxevjAWDNQXcvtzCKinpL6oWAONiISLIj9YtnbxBxp/mpylpYna0N5R
 VUdnGkR2GyEL4ALfvBrtOUfXvGXt/Rl67lu9cXwqOKIbYpfPXtXSrE1UGKqMSbYkeBVg
 XUe0BeC4S2N0aCizmQX1SrDIfoOsBj1TCsFtxNPdsnSNaf1xKS/5W/vxxdNIouMsdsPD
 isq1auhrQi44f09F07zemwhI1nBIZjLL0ZupaBerH9wyHJVKH1DKMRlrZLwMEYVnMBSQ
 8Z4ZUZF+pt7HHVsrUeO8BGbjoyG5qcxGC4u+o1fM+5WKiCNJpQyYofiVRwuHUMTmoqEY
 7BlA==
X-Gm-Message-State: APjAAAVtUzy7/RxHTb2fzJOiMNXKa9Cn2gTt5AvETc7/Z0eghGGfXXwG
 FpCrXuJYJb/wLjAwUJzJuGY+XA==
X-Google-Smtp-Source: APXvYqwLAkLdPyesxE21ArrmkGjGcpu4anTuk5SMx6PYeET8I99rpV7dKeZpH6UnhBbAr5A8i0TpDw==
X-Received: by 2002:a17:902:9a9:: with SMTP id
 38mr26647580pln.10.1557686511560; 
 Sun, 12 May 2019 11:41:51 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id 37sm11041291pgn.21.2019.05.12.11.41.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 11:41:51 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v10 2/2] drm/sun4i: sun6i_mipi_dsi: Support DSI
 GENERIC_SHORT_WRITE_2 transfer
Date: Mon, 13 May 2019 00:11:27 +0530
Message-Id: <20190512184128.13720-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190512184128.13720-1-jagan@amarulasolutions.com>
References: <20190512184128.13720-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_114152_795484_8C8EBBD4 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-sunxi@googlegroups.com, Jagan Teki <jagan@amarulasolutions.com>,
 michael@amarulasolutions.com, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some DSI panels do use GENERIC_SHORT_WRITE_2 transfer protocol to host
DSI driver and which is similar to GENERIC_SHORT_WRITE.

Add support for the same transfer, so-that so-that the panels which are
requesting similar transfer type will process properly.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Merlijn Wajer <merlijn@wizzup.org>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index bfa7e2b146df..a1fc8b520985 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -980,6 +980,7 @@ static ssize_t sun6i_dsi_transfer(struct mipi_dsi_host *host,
 	switch (msg->type) {
 	case MIPI_DSI_DCS_SHORT_WRITE:
 	case MIPI_DSI_DCS_SHORT_WRITE_PARAM:
+	case MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM:
 		ret = sun6i_dsi_dcs_write_short(dsi, msg);
 		break;
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
