Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3633FFA03
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 15:01:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/82OMyfCvTtJyPYhF4kg9Ji/Aw40IAZhgUfKbYk30Ho=; b=JPQJw05mzP/SJY
	BhXGjHtqKrt8Yx9OQWOGNRE9Ns9FITLQTwlYQH0lVAqAtfCnZ1+5MD3f4eGrFALtLe1WevfFUhIq1
	yNy7fzZKgq62QLt3hVED9A8lYxswG2a2nphmBvvb1gOmNvZTNDaLuPbFkAJpFAiNPHNoPA4R8l1fo
	AcIi52LfctK4wQJaGwGqe0liB3VYcOd1o7mtDBGAA+xjtroDDQobvYGVz4RW3c9NYvenBMQTUtt0e
	qF36tCeNxpj6cnjUfYjDTX9VaN39Po9rxRjMe/FWcPsvfT/YC5Id5u1jFv79kmEUjgRmGkZBF9FgX
	0hAyP8USq1pZqHpNPWvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWL6p-0002aw-SS; Sun, 17 Nov 2019 14:00:59 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWL5q-0000mk-Tx; Sun, 17 Nov 2019 14:00:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id s5so16386374wrw.2;
 Sun, 17 Nov 2019 05:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wYheJOg1NZzECr658le7NqXjuqImUz/Kw+GoeDiCAg0=;
 b=Ci1s6DmFUtw7M7Vs9pzJsGsOCzUinirsXZj6J48Hg0YKhROz57Hk+s2q26eJHg/1wV
 Lxr97WsLsrpsjq4IftTRlxBdkWZFGdlywbdBYglWo7hZUsHJQtv3K0+dONSpIDEiZ8dR
 xXIhJc+PuHWryoprmGQbzxZuys59fqmsUhvHIPjImnGbMw6LSPUNGeci0fY/V8wbVkJu
 LsRdB2CI547U+UWOPQhbVuLQ0enwHFK3UfxmVWA2DNyBmTRVQigHVdBFzOJX1mUHd0kI
 4dx1U0yy8uq1NXaQxMAYJbyRlhXkk7ilZtwuJ021OnjnM5Mc2zVNwofMuS53WMtSzfAb
 ZsPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wYheJOg1NZzECr658le7NqXjuqImUz/Kw+GoeDiCAg0=;
 b=dLHzi0gbotNKEykcOi5DhvUCvNoxqXtYrzWdNbuXRvhi+Ob9lNYyRxC4mLVR9CaCti
 XPwLwu451iiwUUHv6cK1MYcpOsohbtB8qKw7ZgdLbfvFDjIeZJZG3xpgv384hAaIivXF
 4eVNL+0aDS/IptFVTi318pf9mXUdaR/1IpNkbMFpfxGnrTVLZhatRUSpDKsFU9hPB1Rc
 lL8vF+MHruCdtJRr2PjEil3dObrbm45oUCarS3r3GnvKUwNFglLN28VUsk1wQIWBYAR0
 ZXyz1CV4MeDg8lLymDwbfYM9/xD2ccTOgS4Wb7/rKU6Z0Rx7iizhi8+bsfV62BhM77+u
 PvJw==
X-Gm-Message-State: APjAAAW1dhpjuwZ4m86M4gYjSfrqLSvMqR5tbKaZo5nn51w6d4Zss3dj
 usyvYgn6lrmN9Fx8cJD/A8umOFWP
X-Google-Smtp-Source: APXvYqzuRu/LHBhYR7+sZR5cemFrtpnOuzCWp3HT/9ni5iw/xVQKsmBZEyrmCCUYY4F2wIxyjxefCQ==
X-Received: by 2002:adf:c50a:: with SMTP id q10mr26940232wrf.374.1573999197651; 
 Sun, 17 Nov 2019 05:59:57 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id n65sm18004803wmf.28.2019.11.17.05.59.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 05:59:57 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH v3 2/5] clk: meson: meson8b: use clk_hw_set_parent in the CPU
 clock notifier
Date: Sun, 17 Nov 2019 14:59:24 +0100
Message-Id: <20191117135927.135428-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191117135927.135428-1-martin.blumenstingl@googlemail.com>
References: <20191117135927.135428-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_055958_959673_A86A2358 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch from clk_set_parent() to clk_hw_set_parent() now that we have a
way to configure a mux clock based on clk_hw pointers. This simplifies
the meson8b_cpu_clk_notifier_cb logic. No functional changes.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 67e6691e080c..d376f80e806d 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -3585,7 +3585,7 @@ static const struct reset_control_ops meson8b_clk_reset_ops = {
 
 struct meson8b_nb_data {
 	struct notifier_block nb;
-	struct clk_hw_onecell_data *onecell_data;
+	struct clk_hw *cpu_clk;
 };
 
 static int meson8b_cpu_clk_notifier_cb(struct notifier_block *nb,
@@ -3593,30 +3593,25 @@ static int meson8b_cpu_clk_notifier_cb(struct notifier_block *nb,
 {
 	struct meson8b_nb_data *nb_data =
 		container_of(nb, struct meson8b_nb_data, nb);
-	struct clk_hw **hws = nb_data->onecell_data->hws;
-	struct clk_hw *cpu_clk_hw, *parent_clk_hw;
-	struct clk *cpu_clk, *parent_clk;
+	struct clk_hw *parent_clk;
 	int ret;
 
 	switch (event) {
 	case PRE_RATE_CHANGE:
-		parent_clk_hw = hws[CLKID_XTAL];
+		/* xtal */
+		parent_clk = clk_hw_get_parent_by_index(nb_data->cpu_clk, 0);
 		break;
 
 	case POST_RATE_CHANGE:
-		parent_clk_hw = hws[CLKID_CPU_SCALE_OUT_SEL];
+		/* cpu_scale_out_sel */
+		parent_clk = clk_hw_get_parent_by_index(nb_data->cpu_clk, 1);
 		break;
 
 	default:
 		return NOTIFY_DONE;
 	}
 
-	cpu_clk_hw = hws[CLKID_CPUCLK];
-	cpu_clk = __clk_lookup(clk_hw_get_name(cpu_clk_hw));
-
-	parent_clk = __clk_lookup(clk_hw_get_name(parent_clk_hw));
-
-	ret = clk_set_parent(cpu_clk, parent_clk);
+	ret = clk_hw_set_parent(nb_data->cpu_clk, parent_clk);
 	if (ret)
 		return notifier_from_errno(ret);
 
@@ -3695,7 +3690,7 @@ static void __init meson8b_clkc_init_common(struct device_node *np,
 			return;
 	}
 
-	meson8b_cpu_nb_data.onecell_data = clk_hw_onecell_data;
+	meson8b_cpu_nb_data.cpu_clk = clk_hw_onecell_data->hws[CLKID_CPUCLK];
 
 	/*
 	 * FIXME we shouldn't program the muxes in notifier handlers. The
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
