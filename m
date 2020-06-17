Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DA61FD28B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjQ9VFn3SscRko1yFV4Dal4b4IxfBRotguhLBrtwFWo=; b=sZqhnXS8zGgXS9
	o6K1KqPvdw3zZApj3fYBQz1TKWYvaSv9ZqnA/xser48HGawftqCDpEru1l+oIgV8V1UhGpMPKccdQ
	AmB2U0ZYPOrZVzLIzdHkvANbbgIBpWwr97jGEuVN4vrziOIQg64eYOU3yUxHlpMQ13/mrosC2NtYw
	AMpkMOkOa2sKNxR17F0F0qPFtynuNESO/ECz4LhpZLXTiD5yuz0OfbqBUZYhKGHZM2BJ1ja4hUhya
	TjkKb1unWj+67dHaAChxzba25ZhW75X534+5l9BdhqAUcU+llP+wZkCn4QXb2Akfehv0XHWLxRufN
	2hgl32I1uE9aLxPCnl7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbF6-00060V-N2; Wed, 17 Jun 2020 16:48:52 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbEX-0005fk-WA; Wed, 17 Jun 2020 16:48:19 +0000
Received: by mail-ej1-x642.google.com with SMTP id l27so3158588ejc.1;
 Wed, 17 Jun 2020 09:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jZZKUF07v/nlA1jyQTW7KSPjbPs9IKRSHg41mjIxwpk=;
 b=sYQVXWaLgIeNiJ4w4XegGp1tVc+4eLMLhF+EeJsFwFeVs67vr90CoL+lnfw4FlgpHW
 SpwY76GMZg6CvROrI2tEX45wgJoVzpHpG7gkBAMFtM/Swba7fYRXK4Zk3TKKGxRkhJo6
 Ns0P2N02EpwsLIvzj+0SZr3gYVOSimhtb9/XNbRd6dAzBeLgIOYrhiuua1j3yIFHM4xK
 kY99RKkidFqZv5TEp0vxHqYPtVFNFnq9Qlt02JuIYJAN/TwmfAzqw7k1YN+NS6c3LNn6
 qEl9gLRkp7iVWdd+hWxQDEx7buzLAnf4PRcGhXPSMnrs6UGj6WnlCmEqAqpsR8jmtQrH
 sQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jZZKUF07v/nlA1jyQTW7KSPjbPs9IKRSHg41mjIxwpk=;
 b=TaIuv9QMKcWnu6rCm3xv6yZXileouZQ/a4uL5xu0QuW8bXunwApujoZo/yFD7m+d6l
 KY28lhBIiHCwnQTS2DSrnA3N13K1xzFS9qcRFZzidOB0ngc9B0KTDFYOBe8kMlvNBqQ9
 LEdzFcrlIO83OCOhoxan1eRRBiVEhbcJc6eF9jksMELtGAn/qFDaMI9dKn15N8Z7fzR+
 GTl9v+SXS0YET2a4ym1tJL6sW34hC16YZuiQKPo2YBnvkIvcsz8FNxGRkXjyb6mAUvGw
 hhwetsSMWNHvVdYTOq5r8LvmvklFV/SEMYbKeE3o3UzXGEr1n5jLiGySLoQyZhyFqGpw
 m7iw==
X-Gm-Message-State: AOAM531pPeKYHIWAeTosbRh/s9vagqLeKuiPk7jh3PEJd0+bkUcrZGa2
 j5/RA9uVa+8hw9fqsfrrE58=
X-Google-Smtp-Source: ABdhPJzkQ4XoHE0hXyWg9y7w5h3GyxnfvBxCnp283I3LuBNWtWnXUf8nbKu2nCHtLm2+3r0DEwd3xQ==
X-Received: by 2002:a17:906:1116:: with SMTP id
 h22mr69349eja.350.1592412496144; 
 Wed, 17 Jun 2020 09:48:16 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id v3sm127124edj.89.2020.06.17.09.48.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:48:15 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 01/11] clk: actions: Fix h_clk for Actions S500 SoC
Date: Wed, 17 Jun 2020 19:48:01 +0300
Message-Id: <7b50d637e7c69e8c91e16354ca1ee0e91e516f3b.1592407030.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
References: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_094818_029956_30028B48 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The h_clk clock in the Actions Semi S500 SoC clock driver has an
invalid parent. Replace with the correct one.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 drivers/clk/actions/owl-s500.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/actions/owl-s500.c b/drivers/clk/actions/owl-s500.c
index e2007ac4d235..0eb83a0b70bc 100644
--- a/drivers/clk/actions/owl-s500.c
+++ b/drivers/clk/actions/owl-s500.c
@@ -183,7 +183,7 @@ static OWL_GATE(timer_clk, "timer_clk", "hosc", CMU_DEVCLKEN1, 27, 0, 0);
 static OWL_GATE(hdmi_clk, "hdmi_clk", "hosc", CMU_DEVCLKEN1, 3, 0, 0);
 
 /* divider clocks */
-static OWL_DIVIDER(h_clk, "h_clk", "ahbprevdiv_clk", CMU_BUSCLK1, 12, 2, NULL, 0, 0);
+static OWL_DIVIDER(h_clk, "h_clk", "ahbprediv_clk", CMU_BUSCLK1, 12, 2, NULL, 0, 0);
 static OWL_DIVIDER(rmii_ref_clk, "rmii_ref_clk", "ethernet_pll_clk", CMU_ETHERNETPLL, 1, 1, rmii_ref_div_table, 0, 0);
 
 /* factor clocks */
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
