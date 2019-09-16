Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E20B3EA0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 18:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uRUc7XYzJxwTJgNhDswp7zFUVk2Sg2n1ScP3cFH5+rY=; b=oDqQNfJ/Iz/fcUb6qvl3RZBnOq
	r5PluRdU6XkfPBjpf36eKBQtnjdQ52FOanZQJFM9qEBYHhy14esKQ55P6NLjIURVYCPWyNw6LhtZN
	IWYx6/GpctSO151zmoD6nIPrjl6rXOPgFUVxQYwlwD2SyzV82kr3nzoF71EvXisprAjdshTMlcyWz
	TBxG9r5PeGYxO6Bd6CIeXNxbc0fex9CLWNRekNBScHMTDtDF1YbPAYFO998TQkCUAnKWNfas4dXWV
	tWp3HC/onGxFB7yS8WUuAkrZ7GyuCJnPYkawG1ht3Qn6jW/eDgwQBwQA0eZmLDKv2DT7LGD9OT/5w
	nE9uyLhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tfw-0004Kv-4R; Mon, 16 Sep 2019 16:16:28 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tem-0003bc-0o
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 16:15:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id n190so293487pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 09:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RtuYujDQbGoE383NaOTW8yNTTYMDfvcRIoYrv77xBo0=;
 b=Hj6QoIN6KZ6+DhiumykPCijqElZfOah/NzphYnS7V98SDfdJQfhOakb9NSOsbAz7ME
 9PmGP929SZ56sAB1fQ17iyymu1/w7wo0r8yJfKfzQwLPCelP2u+rV01jXg++B4kEGtVX
 nL9TljiPJiRSyfMXWTl1ZHFj45Z+zy1ID9LsuXayael/sHHLjGIw4w8hOycBpZ74Wtb2
 ga/10z3Bz5tHOmdC+oMWG3LFl8/UN24QIAemzNhxmSY01cbgc1ReYhF0dv9ykFP89zxD
 YHzeCDmMnOkqD57pJsZKTPpr3ye2+7dKPkFDkPnj8LiApv6XvKqiujop9pXqJbeWGip1
 SvKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RtuYujDQbGoE383NaOTW8yNTTYMDfvcRIoYrv77xBo0=;
 b=NN0ifEwT7RnTMQSxjqGaX7Yvd6mO1tncID3T1Alj+Svw30ysDL/NU2KTCrLPqey73f
 qFsZhJawkSL3Y9aAh4xqSSZeerYI+OsyC2L80G0eP+h1x/2AQws452Kt61QzT0thDStM
 GS8fbSKnEsGGo9r0k37nMrEj5TfN+Hmx3l+y1vJX25gPIS7wiKz8KMNiEMH62h78N48K
 8Eafh99dizFhmwlbPbBxugriAExoacMcHxZuK9btHcmlXHyaKFXSNnPOo8DEViW0BzR6
 FzFZ0bVeFt7Nj73+mzYUnyo/88KcGNKce7H/hEjEshOaw3jZ8vsMyidYc67c7WG9k1u9
 A2BA==
X-Gm-Message-State: APjAAAUyhsBx7IH+Gb54N6AN5SqcU3QsTI+cP0EMFoQU4XLXhGtYUnlg
 1B+LVbQrTGQnoC1amfCmFORT
X-Google-Smtp-Source: APXvYqykGw2se+1YdEpdnu59uhuq+FCf/teB61ZdN3oz9apYHya31RXFapv1QdA8jAI3JZ65NhNx/g==
X-Received: by 2002:a63:10a:: with SMTP id 10mr57256448pgb.281.1568650515328; 
 Mon, 16 Sep 2019 09:15:15 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 h66sm614134pjb.0.2019.09.16.09.15.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 09:15:14 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v5 3/8] clk: Add clk_hw_unregister_composite helper function
 definition
Date: Mon, 16 Sep 2019 21:44:42 +0530
Message-Id: <20190916161447.32715-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_091516_100005_60A9023B 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
