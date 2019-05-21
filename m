Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E71F25352
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHz2DMEVTahTBmaKtyDuQ2AJsRoMQm5sXhpg+QJvPdw=; b=hdrOcHP2M30eX6
	YTOY/WRkGzlKceRYAdnLEYEHA+lHG2LSY1Iryxe7AzT9FyiBGa9ynh4SZA4D9pSz/ccrldQvEsO+F
	EFSNIz7UwwgQXHr0qaylsto/0TEXd3z+d+YttdcicDfaY2ct21Xx8uMvdtrdLtsg0EEG6zHZ25rf8
	s7cawPlUCT3vTvzJdfCdZnJRvTY/bn4MVJc35gCvBkuLGdsOTOV1JQ8bXxSIIBAkmlQc/OIshpf7M
	ogm2yy10AIqnbEmnlBRvy1EiXVxrPNrhBzsbvs8loUTNttgCk9sXQGSckQqEIwDpREbeWLiVkIoU7
	h0ahMx93mhRANTvVrGRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6HN-0007bA-Al; Tue, 21 May 2019 15:02:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6Gp-0006zO-5c
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:01:41 +0000
Received: by mail-wr1-x443.google.com with SMTP id f8so12623389wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 08:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hya6Oxcm01Zg9a8B2aUxovEoEemSR2xPIYhlXd2pWtI=;
 b=dBhRX0gXkRK36yhJmJO4jLCKNM+dhSO4r2g9ikQxmWnfmxRYoiQtKvh9ZbxkouX2gl
 +cx5mgkB2z2xQN6uLO58FuFN144F7NSwgNEDQUFXZtOAq1+m4ZKCRWuid+5L7KYsE2gf
 m+69+L163qwh7+ASSreFa6vR2pQ9RSwuCMNwjaXibFleucsR1CUVcjN3UlJC7S141rN0
 TpK9VEzSQfhy1GHT5w05aYURLxpZNEqr3gwkBRykRVlZOQXWtjEF/v8MLR4gNnSWJS2u
 jPTJgvreHMn5Y9LI3Ie1nhF2GVJIQdoF/5W+LzEmlEIWLuwEApUiB2sKrcesRUa4wjDU
 kJGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hya6Oxcm01Zg9a8B2aUxovEoEemSR2xPIYhlXd2pWtI=;
 b=Rw8/orT6Ig9qdBt+JjEougnJPt6EIDOo2eCFjkCLKYCZUcgaNS6EQ7HWq+LL/Gwdfy
 H7ew9UbgXYVZFHRUbGkE4ttjmjsC9RqglVB4s8d5eiGc/Q5yXuOUSimkRhzvjptu/R23
 JCKLTnUtO6y14sUwkdU8RSOGdEHVrawLlaxk3wZcCSuvBUgr8NWGrVi7XFy69E08Ef7Q
 1cdhFqUdwP7yLkYodi65rN5uWSCQ4NBA9zFQNXHUUoIyRq2UK9+jchchMn3rlgrMkKuB
 T6zNih/vqA1MDpMhhMJoIP8WrBDACVLrzSlZUDmEPbjEh38rnd/1MJBFIY/ESEPbbA0f
 sB0w==
X-Gm-Message-State: APjAAAU153bMLysmTGh/bbSDcRGCmIwhP1IK1lZfA63kjG1dbhyQf1vN
 YdXM0rJPOeoRC2vBa43jksxNPw==
X-Google-Smtp-Source: APXvYqwXgQlgZURhNNRL21mnF9cPN0R/YHRg8kmGR1/Zp2hUWtmqvfEbm6g5T64mtoUraVddL9g3OA==
X-Received: by 2002:adf:e90e:: with SMTP id f14mr13436681wrm.166.1558450897467; 
 Tue, 21 May 2019 08:01:37 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b194sm3407505wmb.23.2019.05.21.08.01.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 21 May 2019 08:01:36 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 3/3] clk: meson: g12a: mark fclk_div3 as critical
Date: Tue, 21 May 2019 17:01:30 +0200
Message-Id: <20190521150130.31684-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190521150130.31684-1-narmstrong@baylibre.com>
References: <20190521150130.31684-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_080139_215880_304D9387 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Amlogic Meson G12b platform, the fclk_div3 seems to be necessary for
the system to operate correctly.

Disabling it cause the entire system to freeze, including peripherals.

Let's mark this clock as critical, fixing boot on G12b platforms.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/g12a.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index 81cb38ac3c85..575e58752aff 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -1244,6 +1244,16 @@ static struct clk_regmap g12a_fclk_div3 = {
 		.ops = &clk_regmap_gate_ops,
 		.parent_names = (const char *[]){ "fclk_div3_div" },
 		.num_parents = 1,
+		/*
+		 * This clock is used by the resident firmware and is required
+		 * by the platform to operate correctly.
+		 * Until the following condition are met, we need this clock to
+		 * be marked as critical:
+		 * a) Mark the clock used by a firmware resource, if possible
+		 * b) CCF has a clock hand-off mechanism to make the sure the
+		 *    clock stays on until the proper driver comes along
+		 */
+		.flags = CLK_IS_CRITICAL,
 	},
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
