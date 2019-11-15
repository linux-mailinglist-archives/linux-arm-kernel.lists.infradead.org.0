Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD346FE2DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 17:31:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xAEYzTkcTKjoC7c8Ddb3P4Yl3MJ2eOjutMzpmZzf8fw=; b=tajV+ybXeZzzPRmz7eqnm+pjAV
	92S+zO+WxAnHmqVM9m6VOsmQFxXh0V5rPkKOw0AmzhC9Ar+sKZnn0/hw4Uor+xdMNUYE1E2Wtsnjw
	2t9EHfJBCNu3acowGUTreOE64N4GAjEHngqTNa5vpYOVUQ63+foDf/Bm+y2xDKbJZ7HFM2x/7RLcm
	078IfrUw55fF+QtiQo+LRI32LHxUkNNGY1oCo/xyWPeIv/l/OppNcqtvxOU9OpU4QGUT2O78eUqjy
	H9Jvo5x9sLfFBkYMrxLY0rXKLOF3xuqfupR7WEKasrj4xqqJyjgUHBv9oc3ybP/DkrLV+MKYthNBI
	mj+CUAtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVeVS-00010v-EP; Fri, 15 Nov 2019 16:31:34 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVeTv-0006zu-1q
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 16:30:00 +0000
Received: by mail-pg1-x543.google.com with SMTP id f19so6225502pgk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 08:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vyxQq6l0DnXXPlNTL9PGBy7Itz+G0TwXgp9Tr10w+hM=;
 b=vYxpcpmYjKU505XimxG9aE30KFTlxC3O2y6sV+mQAjvNjy/GP0tyg9bWBnxqBHXyup
 kN/FSlMRPGm0nSAEWl/wfvXvZnmCw0CPqq9kszndciTlgHWqgGQT5hW+QPJd6k46wuQp
 EATT0nvCSJztIcTfqEfIFdt5472rcLHHooeMLtjHsmYqr2oo6MZZsZTcGCGAA1vakiop
 ilN1gfkgAc4BE5i9UcBtFMwuMdOHTbFb/vnntnFZyRIm5dbP39LKMxsF74gmUjuL5PkP
 TjSiPci8ZiI5PCKlVMZ5delLH/tJJiycPvCriQrKz28Bkoyr7NRbegbINpM++fZFlk1L
 z7RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vyxQq6l0DnXXPlNTL9PGBy7Itz+G0TwXgp9Tr10w+hM=;
 b=kM0BjzRYbysh2mZrhgw10umJQ8vH5uAacoYY6u0oBpVNHgG6n++3mfL7FSE1/KnZzA
 0DSn2tdcfsxYkFk6O9Ux0k8ujo7Gg2vdmuYVzguaYSjqT/spWzA1hyzyROrKmS1l7tlm
 xkA06i8rP5eujW+qyOHvTMLHGFoP/767sWCSik8vCXsUFXH3qBACZ/YU4D1eHsoWd1dm
 UhEguYHQsOfvPMGGEvnoHp3BjwswMS6BrkTST7DXcU9izRfhiHy52YiRTfSMJPZpjiTH
 x5CkrUAIRlU9DFY4P49rBfoaF8cCDgUfKDY6iJje2DORPlLzwbHa6wSTiU091YJzBuzn
 574Q==
X-Gm-Message-State: APjAAAWI909opmZG8+z7cLxXskJqfwY5+sCHp3DqdH/1rJZHJ4JnKrX/
 zPO4b4SFXsyzI9rRSlFKzgrJ
X-Google-Smtp-Source: APXvYqyHvbWvUHsrotDXNo3Uqb/ciOmuTBbvH69h1MhX5fWECe2j+LdfQeiepIjfp6mk4OXar6ZLVw==
X-Received: by 2002:a62:ae11:: with SMTP id q17mr7393595pff.103.1573835398499; 
 Fri, 15 Nov 2019 08:29:58 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:6183:6d55:8418:2bbc:e6d8:2b4])
 by smtp.gmail.com with ESMTPSA id y24sm12295288pfr.116.2019.11.15.08.29.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 08:29:57 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v7 7/7] MAINTAINERS: Add entry for BM1880 SoC clock driver
Date: Fri, 15 Nov 2019 21:59:01 +0530
Message-Id: <20191115162901.17456-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
References: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_082959_108993_D21E33E7 
X-CRM114-Status: GOOD (  10.14  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add MAINTAINERS entry for Bitmain BM1880 SoC clock driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 52f3ac28b69e..40e9ba15ad2a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1529,8 +1529,10 @@ M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/bitmain/
+F:	drivers/clk/clk-bm1880.c
 F:	drivers/pinctrl/pinctrl-bm1880.c
 F:	Documentation/devicetree/bindings/arm/bitmain.yaml
+F:	Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 F:	Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt
 
 ARM/CALXEDA HIGHBANK ARCHITECTURE
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
