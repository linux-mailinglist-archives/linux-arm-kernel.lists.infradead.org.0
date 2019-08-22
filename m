Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B73ED99B8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uRUc7XYzJxwTJgNhDswp7zFUVk2Sg2n1ScP3cFH5+rY=; b=e3jLb2XZIa/0aYZxGnlCaxwImy
	9/dE+1kQQXuM3UwLwflRJz7BKnmVlAQKvj6dJuGZjsFaDiJ2L0A9Qy6wTA6P/WAlUbpiLym/xVGyT
	xqpxeJgKEdquy83mt5fTv2pd+nx8WMwcHrdxNzhbG3toNoSD18OpynVV5vZ4VGp2rsmUwjsuk6k+D
	NpHw8hhBaWVFGe24xNDWqplb/HyP+XF0JEMrR5DCt7yzzD4GjX3/8xdy97iXsln/hSdzUNlLG76CO
	DOtn2BK9JIrHaPo64PXcY7p+8PVwHR4Olu6AMVqXvSiGxLBupidoIUnfdp8wKIKZaXyOMoQvk2oLp
	jbpZcWgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0qqV-0006IN-5k; Thu, 22 Aug 2019 17:25:59 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0qpc-0004kq-Vo
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:25:07 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so3824415plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 10:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RtuYujDQbGoE383NaOTW8yNTTYMDfvcRIoYrv77xBo0=;
 b=euLLhY+946DfyFpuvIdyFGJfMj0knyI7kYwiFDLPxTrrpqBXt30egdCgq3fEB/sL88
 GJZHY1upb9230M9+Zx2VsXWQbb6terlbASK2Y8NjIXMYqZYxmMrwPJrKbYsdrXVKdKVp
 h3oLBX6Xq2Kyr7bh2rZD1m3sNpfVxJEePoY4q7+bX1Usir70lWfAZ2Q5Wm9c3x/iC2oF
 i845R9dxFgTKai1UsSQc1aFVXhbltY2Rql4zSkj4KmwbqXDJHZOd0ZxLP53dYJHtXhvW
 PFZDbnj5L0kebFpNB0KndJJvUuR+yNkmwD89p/IsdVDOyVRCYiob6rsRKOyrv39tDlJH
 213g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RtuYujDQbGoE383NaOTW8yNTTYMDfvcRIoYrv77xBo0=;
 b=XeVbF+hXVmrfEBiDnYpzonM4NDcgZdp0DZTUAXobmZyiOdYbjS9eQMgfg+DZrJ3sPu
 m/hXXhGQ15anrrwLiHocYzkg1T5PsUZVhXTHV1/xc82HzdGQpHUQhNIn2/jK6WeNXiuG
 JzvGHbdLJZfNQUy++zBCHSW0LJ2HO6teBvL13fM5bqMUQsHbVQtHxQhVbSXifkSSCsMw
 Vq8b6wtGeYt7hOKYyG17ne1H3/6Xl2dA6IhdSDT3afHLN4zjPqY/kcjn0B3nkIkQpjCn
 AsncWTz0OXdIbOwhzU+Lz6fMJPvSX50XopVElSXqayIuUNmL22+h4QuPKoDNjyHTkaCN
 nXpg==
X-Gm-Message-State: APjAAAXu7e46m0C327L7JWtaExZHPHHSzSfdyewBDtophzsa3KyFbm8B
 i7V7J7NgaG6SXeqK6ppSm5CL
X-Google-Smtp-Source: APXvYqz5vFIuN706iVqol8q3EsrpnwcsQfBFEXMXn/Nwi/SX1PpPwoQhg1LPT7MBQ1EhYyTnuzzXkA==
X-Received: by 2002:a17:902:788b:: with SMTP id
 q11mr40640145pll.308.1566494703001; 
 Thu, 22 Aug 2019 10:25:03 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:71cc:5738:24ad:193e:4b59:8a76])
 by smtp.gmail.com with ESMTPSA id r12sm31705798pgb.73.2019.08.22.10.24.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 10:25:02 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v4 3/8] clk: Add clk_hw_unregister_composite helper function
 definition
Date: Thu, 22 Aug 2019 22:54:21 +0530
Message-Id: <20190822172426.25879-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
References: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_102505_097580_BA0ED578 
X-CRM114-Status: UNSURE (   9.47  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
