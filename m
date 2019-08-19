Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A4192432
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uRUc7XYzJxwTJgNhDswp7zFUVk2Sg2n1ScP3cFH5+rY=; b=sYcZAy5hAmtYQTiBLyi/eMHDiq
	fEDBTO77qo00LlvP00FVuRJLunJ50cbHrXlbj7SSO8QDf1ILdAPvk3WwsbLk1QTE1Z3dMKTxyRpPt
	u9bj1PfzMYzotlFZDar73Bej18SAtTW5iyrXK4wuf/aUbq5aGEGCuUFhSBI7RBQgSwkqYngF+1UVN
	Z8/NZKZF40rYMm8hi96F0YwMZYS70kNqXNP73bUXwMMy+0Uj9wXTlqiHX6SCv9/kYwgdU1iaPzBDR
	5agUxLZgKraYZGY0H+bj5I20zYyDRiYoAmB9ykmMRoJNPy1EUGwnZXKQVctH//tEaFovRpOhDZBE1
	2oYPK2Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhJ8-0001Yo-8e; Mon, 19 Aug 2019 13:02:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhIY-00012W-FU
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:02:11 +0000
Received: by mail-pf1-x441.google.com with SMTP id 196so1137633pfz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 06:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RtuYujDQbGoE383NaOTW8yNTTYMDfvcRIoYrv77xBo0=;
 b=VufrvbFQdUVgR2KZH4gK/w2WqrjeJ5IRBdIOof/xPx9v+wnLmRXJkXU0NZ+tQd46x/
 QgpAEI4EPbEQz98g1SdK/ngd56fWxtjMn7ufEJDKX+GpEj1LPezUmSQsZaeV6PxxCzxR
 nJuhtz/lNlyEmd9d9qRTRXbAf5mpt+YXyHIvj6DvxaAunQ5qBhuXVy2etf6D6ctX6RWg
 +MiF/EBW3q6oDQbYITP8vWkvmxXON2xA2eW2GjGWuEa8ZKIacjUMkaMIalE3Z0qGBUQI
 9hQyUjeDaJlReNycLRrCuFxmSeQlxAGBHDWJQdhwRfxfs60+zq+mEpH7JitKJWY/imGZ
 YsIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RtuYujDQbGoE383NaOTW8yNTTYMDfvcRIoYrv77xBo0=;
 b=ik7fRsXwBPvFvqn2J/HzjqRVucsr0MNjAS7cwY0iPutAibopTKOJd/q1Wr7D1nSupK
 /aHVDMvo4CyewXONrtk+0BoYJ7bG/S6n6+kUHd6byt03L/XsOAtYo5TXosFNgLJSwWMS
 kA/F0TbuDuSvPAXEYQ5OemsxD2v/BTaF03N5MNIebDwzcjKkonHOKF2nb4ounHIscXMX
 TFk/t2Yj6t8SkDC0dSbk+Zja/Qie6Gj2x/gPEEhagzcUVWvBe3D8eVk1r/XOlMiCcxC1
 c28cSpppAfSKOsJrGE3jPEzacgNM3XqC3ZohsoivZS8IjR+DxwDxWZzkOcHVFne1Y6ca
 kDhw==
X-Gm-Message-State: APjAAAURjsvon3yx3SkeiEm1PFCEwcnKn1GRZjc+XRpGUq0hTGLlgeKg
 ip4tmgwoqnQtp8MI6kbLAily
X-Google-Smtp-Source: APXvYqza6JJp8ZlgyR1NC0a880LnvMs0ZhTG3JLB2Bu7+xPcqZur+6a4KBnvLdCe1L5p6BSFEnUraQ==
X-Received: by 2002:a65:64c4:: with SMTP id t4mr18403845pgv.298.1566219729688; 
 Mon, 19 Aug 2019 06:02:09 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
 by smtp.googlemail.com with ESMTPSA id l123sm20626464pfl.9.2019.08.19.06.02.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 06:02:09 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v3 3/8] clk: Add clk_hw_unregister_composite helper function
 definition
Date: Mon, 19 Aug 2019 18:31:38 +0530
Message-Id: <20190819130143.18778-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
References: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_060210_534336_010B2681 
X-CRM114-Status: GOOD (  10.08  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This function has been delcared but not defined anywhere. Hence, this
commit adds definition for it.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/clk-composite.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 4d579f9d20f6..ccca58a6d271 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -344,3 +344,14 @@ void clk_unregister_composite(struct clk *clk)
 	clk_unregister(clk);
 	kfree(composite);
 }
+
+void clk_hw_unregister_composite(struct clk_hw *hw)
+{
+	struct clk_composite *composite;
+
+	composite = to_clk_composite(hw);
+
+	clk_hw_unregister(hw);
+	kfree(composite);
+}
+EXPORT_SYMBOL_GPL(clk_hw_unregister_composite);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
