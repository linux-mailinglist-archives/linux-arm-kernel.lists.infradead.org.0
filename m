Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3676FE59CC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 13:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EMos2qMT6f8b4Mxc0kUfBNPG+x3cg1kKeKnU0dA7t6Y=; b=IcqwMYwbaX0Iqgnbn4STUnBsnT
	NFfMCFx9crO9mLIVDXXLlWXxdykHFNLJeLnXx+JsVP/VHDDJ5o+YoPig1ix1oLrmrvza0M4Vfe67d
	8ZvFaSvP4uirvFYle7gRwbkH5yNWvWNmy2KNYJrA3ycNQpHHZf0nV4XP8JH2wOCnwRE8pqWUhN2ne
	ig1XNt6YsHJCODoqA/bXjxhmuuzGlhn9IRyl+aqzrkmrht9W42eXrqJK8MDqXxzFLPaBZlCd9/Hyc
	zDSm/AnCsexd/sgTkkVws7y8NWXd1i5JYcIAlusrz+A7gmMt2cXvskc3rYSUdQuLI/Z91AmBuBgXj
	6BHyK5+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOJrh-0001Nk-9A; Sat, 26 Oct 2019 11:04:13 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOJqo-0000rK-Tm
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 11:03:20 +0000
Received: by mail-pl1-x643.google.com with SMTP id q16so2536508pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 26 Oct 2019 04:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LG1a1A4v+UDy0LaHh34rRqStYpMLpkQr762xn5ClOV4=;
 b=BStLCrRVcfc9W2U7icjoCMX1Gj2iRhLpWeDE7qvJtv6LcI9rhj70IuJbL0jmQZ3NuP
 Thp+P7E0x4aeamgW204c1aDtCszgv5gf5jDU8zIG+As1R5vO6Pgqvttvz11RxCs5eYiM
 YSJWVo0gp6EVaeN/5LeNqOF5MpAodMT00ThV4Yx8A2kM4v/FDfk78BfgqU2k5uFk9R7k
 Nu+1gfqE3TflzF8j3navuOEVe0cgZU95yYeI3V6CaHemVb6LgzUwd5jng+DST/+eK+uf
 wrhytSbHS4AHuggxdSCgeZc1knDQgChWTwclqOxabp5ZpXH1DZFUkaCKTdIEysWNrMC2
 fYzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LG1a1A4v+UDy0LaHh34rRqStYpMLpkQr762xn5ClOV4=;
 b=QdVDweNffjaZl+uMeLTaYXCNdEtHHVXa9XLpVezw6w6HIdmKoEfSiopiNkWBaMNG2j
 wfPOCd9fIJrfzBCVzbBt/AlQCPNW+ot4Q5wULjHiO1c8y2op4JSprBkHvHqex4CaqJzP
 lcMYMzNJ+C02JAS5XLxS3eJNeiAYGcSOq+hS+NsMRv414ePYEZ7xqCw6mArDtIRlaFM8
 1cemwujoLol/LEUP8rWuXMTAmA0WjJ70O0uOb4//TrGacszy6pFR9sGiMPWqDPP1FWyp
 abtkvWT9jBJym239NEmWqkA1kbUY5J0/IRRY87ZXejuaHsNhgONmrtWfHOm9/JriMLLe
 hXOA==
X-Gm-Message-State: APjAAAVbsb/J4tsO8sAnS98Hgrlt2v/IFP89H5w3oXyA8OyPBBqZoZyS
 hR6MV5SUR09YTEsPRkU4Slgi
X-Google-Smtp-Source: APXvYqz1uqRPaKKF0vNoP/cKXvuFKk9g7nVxs3J+M5W2qBHBPSzRNdJaW7SN2BUOGyi9FoXo7mqZoA==
X-Received: by 2002:a17:902:700b:: with SMTP id
 y11mr9348966plk.29.1572087798132; 
 Sat, 26 Oct 2019 04:03:18 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6214:69c4:49ad:ba3c:6f9:2d8a])
 by smtp.gmail.com with ESMTPSA id x129sm5543379pfx.14.2019.10.26.04.03.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 04:03:17 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v6 2/7] clk: Add clk_hw_unregister_composite helper function
 definition
Date: Sat, 26 Oct 2019 16:32:48 +0530
Message-Id: <20191026110253.18426-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
References: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_040318_973447_0430DD29 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Fixes: 49cb392d3639 ("clk: composite: Add hw based registration APIs")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/clk-composite.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 28aaf4a3b28a..3e9c3e608769 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -343,3 +343,14 @@ void clk_unregister_composite(struct clk *clk)
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
