Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FE2FFA08
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 15:01:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyV0zf+2HjQfq/nTECjtRWIC/3C33ZO1xxFyFyVpytM=; b=V31gk4+o8eSHio
	SswgD4z+ZC63G+7i5qvakr6iJ55y1ij09HfZaYInwnViBxcS/NKdxWVxQ7w05IBGT15rj3hLPi5hv
	P7hNA0W6HgoLOhZx81CwlVBPjzPyjZdz2oNPJI5++yW1nXujgMjhNIO9xv07h4yf9IuE1irtWa5j7
	dUT8fEDwxGwlW9rHMe+DuOCiheiiH8ABOFj/jXKf55ER7IuftjTBpztdiZSdQVMFQF0lzdObajh5b
	FaDowXGIjccjcOtjmNJ2ovtlzouWH8M+i1twYLay5L8LChFggSUSDVvcXuzKmxK07dRMVR2R3+Njs
	JdrTAEP+Oya258X5WXGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWL7P-00037H-0N; Sun, 17 Nov 2019 14:01:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWL5t-0000nh-Ry; Sun, 17 Nov 2019 14:00:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id q15so3552964wrw.7;
 Sun, 17 Nov 2019 06:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ALb0D3ZQCosHbu3XTz0Zl3zN169Kwv6XSNmMst3JsiU=;
 b=bOVqlywY/TN2WcGCQ6kihefkhnThvBvgSgqVpzw1sHaJcCOhgj31mlHerwO7cQ4tDE
 xEPorDMERAqXbU5AyaDE+rTC8v1wbzAmprTg99RL5u8dtY7wPnA2M+1ChWzbA/WTlR2T
 tdsgK1XJYDXFnfRcJiqjnjFq2lg9tlf3rReuufmQnWmjrxkYmr5pnFWi21Di7Rr9ShNK
 lHfiUgTZqGoxlh7P2o6vb9embjtkJzSwIaDd4hZ+g7fCnV4C87Q/N+S+zJBUa4OOXaUN
 kXJirZOOQzYLMuAUfbclBvw7S7Z5Xu34TSpiVa/+BbsRgosW9FWI3qu1+NDndwtvh6Qn
 z23g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ALb0D3ZQCosHbu3XTz0Zl3zN169Kwv6XSNmMst3JsiU=;
 b=NVeVfYkmLN3uOCrr8kmbw3kZaJgmcmEiWNVMC3PD0gen6QMutkpvmSOUCkw9Mfhwux
 2awx/5679Ly0xyR4BP7wgxUae4Wep6InWWrw9c/EU8CQiH4/brVPMU9lrxWdUO3ogNys
 sd7Yh5QqLpT6lnZqN4J4s95bO+8uwpEqfpLuuXnJqh6xrEv/HRiHJab6DxPScyLSabtj
 azxmT65bydH/ZxrbdShexC4waIEW1wCkM73J28/SrJhdBoPjSYrxPtTE/9hdkgZRMJtq
 UZk8kGXd8Azl+7/beKKhI6iqlYSKgquU0HZ/9ASZ31PxUL3yuVaLK7hqVC3Z/BXBpiNT
 sY5Q==
X-Gm-Message-State: APjAAAUsfMuyqtW0L4sGzbSS52I0OmWyoiPglt3rpdioq6blS/e8LFW8
 CkNZDu0FGWlixZlE16p2AsvOh240
X-Google-Smtp-Source: APXvYqxodTdB4qW5P1m2ak/Tvv3QB8ZeIwlDZopM35wEeu5DhwcBl7avlGwHw4rIhIcjP9Ki91UvDg==
X-Received: by 2002:adf:a119:: with SMTP id o25mr16461312wro.74.1573999200043; 
 Sun, 17 Nov 2019 06:00:00 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id n65sm18004803wmf.28.2019.11.17.05.59.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 05:59:59 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH v3 4/5] clk: meson: meson8b: don't register the XTAL clock
 when provided via OF
Date: Sun, 17 Nov 2019 14:59:26 +0100
Message-Id: <20191117135927.135428-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191117135927.135428-1-martin.blumenstingl@googlemail.com>
References: <20191117135927.135428-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_060001_907357_8A55A24A 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

The XTAL clock is an actual crystal on the PCB. Thus the meson8b clock
driver should not register the XTAL clock - instead it should be
provided via .dts and then passed to the clock controller.

Skip the registration of the XTAL clock if a parent clock is provided
via OF. Fall back to registering the XTAL clock if this is not the case
to keep support for old .dtbs.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index f857a2c4d025..44e97bacd628 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -3687,10 +3687,16 @@ static void __init meson8b_clkc_init_common(struct device_node *np,
 		meson8b_clk_regmaps[i]->map = map;
 
 	/*
-	 * register all clks
-	 * CLKID_UNUSED = 0, so skip it and start with CLKID_XTAL = 1
+	 * always skip CLKID_UNUSED and also skip XTAL if the .dtb provides the
+	 * XTAL clock as input.
 	 */
-	for (i = CLKID_XTAL; i < CLK_NR_CLKS; i++) {
+	if (!IS_ERR(of_clk_get_by_name(np, "xtal")))
+		i = CLKID_PLL_FIXED;
+	else
+		i = CLKID_XTAL;
+
+	/* register all clks */
+	for (; i < CLK_NR_CLKS; i++) {
 		/* array might be sparse */
 		if (!clk_hw_onecell_data->hws[i])
 			continue;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
